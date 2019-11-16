; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70ea90_type = type <{ [8 x i8] }>
%G_0x70ea98_type = type <{ [8 x i8] }>
%G_0x70eaa0_type = type <{ [4 x i8] }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
%G_0x70eaac_type = type <{ [4 x i8] }>
%G_0x722b20_type = type <{ [8 x i8] }>
%G_0x722b28_type = type <{ [8 x i8] }>
%G_0x722c98_type = type <{ [4 x i8] }>
%G_0x7247b0_type = type <{ [4 x i8] }>
%G_0x7247b4_type = type <{ [4 x i8] }>
%G__0x44d620_type = type <{ [8 x i8] }>
%G__0x44d690_type = type <{ [8 x i8] }>
%G__0x44d700_type = type <{ [8 x i8] }>
%G__0x44dad0_type = type <{ [8 x i8] }>
%G__0x44db40_type = type <{ [8 x i8] }>
%G__0x44dbb0_type = type <{ [8 x i8] }>
%G__0x44dc20_type = type <{ [8 x i8] }>
%G__0x44dc90_type = type <{ [8 x i8] }>
%G__0x4c1921_type = type <{ [8 x i8] }>
%G__0x4c1936_type = type <{ [8 x i8] }>
%G__0x4c194c_type = type <{ [8 x i8] }>
%G__0x7247b0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70ea90 = local_unnamed_addr global %G_0x70ea90_type zeroinitializer
@G_0x70ea98 = local_unnamed_addr global %G_0x70ea98_type zeroinitializer
@G_0x70eaa0 = local_unnamed_addr global %G_0x70eaa0_type zeroinitializer
@G_0x70eaa8 = local_unnamed_addr global %G_0x70eaa8_type zeroinitializer
@G_0x70eaac = local_unnamed_addr global %G_0x70eaac_type zeroinitializer
@G_0x722b20 = local_unnamed_addr global %G_0x722b20_type zeroinitializer
@G_0x722b28 = local_unnamed_addr global %G_0x722b28_type zeroinitializer
@G_0x722c98 = local_unnamed_addr global %G_0x722c98_type zeroinitializer
@G_0x7247b0 = local_unnamed_addr global %G_0x7247b0_type zeroinitializer
@G_0x7247b4 = local_unnamed_addr global %G_0x7247b4_type zeroinitializer
@G__0x44d620 = global %G__0x44d620_type zeroinitializer
@G__0x44d690 = global %G__0x44d690_type zeroinitializer
@G__0x44d700 = global %G__0x44d700_type zeroinitializer
@G__0x44dad0 = global %G__0x44dad0_type zeroinitializer
@G__0x44db40 = global %G__0x44db40_type zeroinitializer
@G__0x44dbb0 = global %G__0x44dbb0_type zeroinitializer
@G__0x44dc20 = global %G__0x44dc20_type zeroinitializer
@G__0x44dc90 = global %G__0x44dc90_type zeroinitializer
@G__0x4c1921 = global %G__0x4c1921_type zeroinitializer
@G__0x4c1936 = global %G__0x4c1936_type zeroinitializer
@G__0x4c194c = global %G__0x4c194c_type zeroinitializer
@G__0x7247b0 = global %G__0x7247b0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @init_lists(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -200
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i205 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 1, i64* %RAX.i205, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 18
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i858 = bitcast %union.anon* %24 to i32*
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI.i858, align 4
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -12
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 7
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %32 to i32*
  store i32 0, i32* %35, align 4
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -16
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 7
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %37 to i32*
  store i32 0, i32* %40, align 4
  %RSI.i1586 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*), align 8
  %43 = add i32 %42, 4
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RSI.i1586, align 8
  %45 = icmp ugt i32 %42, -5
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %12, align 1
  %47 = and i32 %43, 255
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47)
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  store i8 %51, i8* %13, align 1
  %52 = xor i32 %43, %42
  %53 = lshr i32 %52, 4
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, i8* %14, align 1
  %56 = icmp eq i32 %43, 0
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %15, align 1
  %58 = lshr i32 %43, 31
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %16, align 1
  %60 = lshr i32 %42, 31
  %61 = xor i32 %58, %60
  %62 = add nuw nsw i32 %61, %58
  %63 = icmp eq i32 %62, 2
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %17, align 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1946 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  store i64 %44, i64* %RCX.i1946, align 8
  %66 = load i64, i64* %RAX.i205, align 8
  %67 = add i64 %41, 14
  store i64 %67, i64* %3, align 8
  %68 = trunc i32 %43 to i5
  %69 = trunc i64 %66 to i32
  switch i5 %68, label %75 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %70
  ]

; <label>:70:                                     ; preds = %entry
  %71 = shl i32 %69, 1
  %72 = icmp slt i32 %69, 0
  %73 = icmp slt i32 %71, 0
  %74 = xor i1 %72, %73
  br label %85

; <label>:75:                                     ; preds = %entry
  %76 = and i32 %43, 31
  %77 = zext i32 %76 to i64
  %78 = add nuw nsw i64 %77, 4294967295
  %79 = and i64 %66, 4294967295
  %80 = and i64 %78, 4294967295
  %81 = shl i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = icmp slt i32 %82, 0
  %84 = shl i32 %82, 1
  br label %85

; <label>:85:                                     ; preds = %75, %70
  %86 = phi i1 [ %72, %70 ], [ %83, %75 ]
  %87 = phi i1 [ %74, %70 ], [ false, %75 ]
  %88 = phi i32 [ %71, %70 ], [ %84, %75 ]
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX.i205, align 8
  %90 = zext i1 %86 to i8
  store i8 %90, i8* %12, align 1
  %91 = and i32 %88, 254
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91)
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %96 = icmp eq i32 %88, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %15, align 1
  %98 = lshr i32 %88, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %16, align 1
  %100 = zext i1 %87 to i8
  store i8 %100, i8* %17, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %85, %entry
  %101 = phi i32 [ %88, %85 ], [ %69, %entry ]
  %EAX.i2713 = bitcast %union.anon* %18 to i32*
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -28
  %104 = add i64 %41, 17
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 %101, i32* %105, align 4
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -36
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 7
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %107 to i32*
  store i32 0, i32* %110, align 4
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -40
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 7
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %112 to i32*
  store i32 0, i32* %115, align 4
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -44
  %118 = load i64, i64* %3, align 8
  %119 = add i64 %118, 7
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 0, i32* %120, align 4
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -8
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125, align 4
  store i8 0, i8* %12, align 1
  %127 = and i32 %126, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %132 = icmp eq i32 %126, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %15, align 1
  %134 = lshr i32 %126, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v204 = select i1 %132, i64 10, i64 358
  %136 = add i64 %123, %.v204
  store i64 %136, i64* %3, align 8
  br i1 %132, label %block_44c214, label %block_.L_44c370

block_44c214:                                     ; preds = %routine_shll__cl___eax.exit
  %137 = add i64 %121, -20
  %138 = add i64 %136, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 0, i32* %139, align 4
  %RDX.i2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44c21b

block_.L_44c21b:                                  ; preds = %block_.L_44c358, %block_44c214
  %140 = phi i64 [ %460, %block_.L_44c358 ], [ %.pre, %block_44c214 ]
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -20
  %143 = add i64 %140, 3
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX.i205, align 8
  %147 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %148 = sub i32 %145, %147
  %149 = icmp ult i32 %145, %147
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %12, align 1
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151)
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %13, align 1
  %156 = xor i32 %147, %145
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %14, align 1
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %15, align 1
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %16, align 1
  %165 = lshr i32 %145, 31
  %166 = lshr i32 %147, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %163, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %17, align 1
  %.v269 = select i1 %149, i64 16, i64 336
  %172 = add i64 %140, %.v269
  store i64 %172, i64* %3, align 8
  br i1 %149, label %block_44c22b, label %block_.L_44c36b

block_44c22b:                                     ; preds = %block_.L_44c21b
  %173 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %173, i64* %RAX.i205, align 8
  %174 = add i64 %172, 11
  store i64 %174, i64* %3, align 8
  %175 = load i32, i32* %144, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX.i1946, align 8
  store i64 %176, i64* %RDX.i2689, align 8
  %177 = shl nuw nsw i64 %176, 3
  %178 = add i64 %173, %177
  %179 = add i64 %172, 17
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX.i205, align 8
  %182 = add i64 %172, 20
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, -3
  %186 = icmp ult i32 %184, 3
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %12, align 1
  %188 = and i32 %185, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %13, align 1
  %193 = xor i32 %185, %184
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %14, align 1
  %197 = icmp eq i32 %185, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %15, align 1
  %199 = lshr i32 %185, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %16, align 1
  %201 = lshr i32 %184, 31
  %202 = xor i32 %199, %201
  %203 = add nuw nsw i32 %202, %201
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %17, align 1
  %.v270 = select i1 %197, i64 26, i64 301
  %206 = add i64 %172, %.v270
  store i64 %206, i64* %3, align 8
  br i1 %197, label %block_44c245, label %block_.L_44c358

block_44c245:                                     ; preds = %block_44c22b
  store i64 %173, i64* %RAX.i205, align 8
  %207 = add i64 %206, 11
  store i64 %207, i64* %3, align 8
  %208 = load i32, i32* %144, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RCX.i1946, align 8
  store i64 %209, i64* %RDX.i2689, align 8
  %210 = shl nuw nsw i64 %209, 3
  %211 = add i64 %173, %210
  %212 = add i64 %206, 17
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i205, align 8
  %215 = add i64 %214, 40
  %216 = add i64 %206, 21
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RAX.i205, align 8
  %219 = add i64 %218, 6380
  %220 = add i64 %206, 28
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  store i8 0, i8* %12, align 1
  %223 = and i32 %222, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %228 = icmp eq i32 %222, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %15, align 1
  %230 = lshr i32 %222, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v271 = select i1 %228, i64 270, i64 34
  %232 = add i64 %206, %.v271
  store i64 %232, i64* %3, align 8
  br i1 %228, label %block_.L_44c353, label %block_44c267

block_44c267:                                     ; preds = %block_44c245
  store i64 %173, i64* %RAX.i205, align 8
  %233 = add i64 %232, 11
  store i64 %233, i64* %3, align 8
  %234 = load i32, i32* %144, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RCX.i1946, align 8
  store i64 %235, i64* %RDX.i2689, align 8
  %236 = shl nuw nsw i64 %235, 3
  %237 = add i64 %173, %236
  %238 = add i64 %232, 17
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX.i205, align 8
  %241 = add i64 %240, 40
  %242 = add i64 %232, 21
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX.i205, align 8
  %245 = add i64 %244, 6376
  %246 = add i64 %232, 28
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  store i8 0, i8* %12, align 1
  %249 = and i32 %248, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %254 = icmp eq i32 %248, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %15, align 1
  %256 = lshr i32 %248, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v272 = select i1 %254, i64 34, i64 236
  %258 = add i64 %232, %.v272
  store i64 %258, i64* %3, align 8
  br i1 %254, label %block_44c289, label %block_.L_44c353

block_44c289:                                     ; preds = %block_44c267
  store i64 %173, i64* %RAX.i205, align 8
  %259 = add i64 %258, 11
  store i64 %259, i64* %3, align 8
  %260 = load i32, i32* %144, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RCX.i1946, align 8
  store i64 %261, i64* %RDX.i2689, align 8
  %262 = shl nuw nsw i64 %261, 3
  %263 = add i64 %173, %262
  %264 = add i64 %258, 17
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RAX.i205, align 8
  %267 = add i64 %266, 20
  %268 = add i64 %258, 20
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RCX.i1946, align 8
  %272 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %272, i64* %RAX.i205, align 8
  %273 = add i64 %272, 72464
  %274 = add i64 %258, 34
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = sub i32 %270, %276
  %278 = icmp ult i32 %270, %276
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %12, align 1
  %280 = and i32 %277, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %13, align 1
  %285 = xor i32 %276, %270
  %286 = xor i32 %285, %277
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %14, align 1
  %290 = icmp eq i32 %277, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %15, align 1
  %292 = lshr i32 %277, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %16, align 1
  %294 = lshr i32 %270, 31
  %295 = lshr i32 %276, 31
  %296 = xor i32 %295, %294
  %297 = xor i32 %292, %294
  %298 = add nuw nsw i32 %297, %296
  %299 = icmp eq i32 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %17, align 1
  %301 = or i1 %290, %278
  %.v273 = select i1 %301, i64 88, i64 40
  %302 = add i64 %258, %.v273
  store i64 %173, i64* %RAX.i205, align 8
  %303 = add i64 %302, 11
  store i64 %303, i64* %3, align 8
  %304 = load i32, i32* %144, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RCX.i1946, align 8
  store i64 %305, i64* %RDX.i2689, align 8
  %306 = shl nuw nsw i64 %305, 3
  %307 = add i64 %173, %306
  %308 = add i64 %302, 17
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RAX.i205, align 8
  %311 = add i64 %310, 20
  %312 = add i64 %302, 20
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RCX.i1946, align 8
  br i1 %301, label %block_.L_44c2e1, label %block_44c2b1

block_44c2b1:                                     ; preds = %block_44c289
  %316 = add i64 %141, -28
  %317 = add i64 %302, 23
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = sub i32 %314, %319
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RCX.i1946, align 8
  %322 = icmp ult i32 %314, %319
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %12, align 1
  %324 = and i32 %320, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %13, align 1
  %329 = xor i32 %319, %314
  %330 = xor i32 %329, %320
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %14, align 1
  %334 = icmp eq i32 %320, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %15, align 1
  %336 = lshr i32 %320, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %16, align 1
  %338 = lshr i32 %314, 31
  %339 = lshr i32 %319, 31
  %340 = xor i32 %339, %338
  %341 = xor i32 %336, %338
  %342 = add nuw nsw i32 %341, %340
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %17, align 1
  store i64 %173, i64* %RAX.i205, align 8
  %345 = add i64 %302, 34
  store i64 %345, i64* %3, align 8
  %346 = load i32, i32* %144, align 4
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RSI.i1586, align 8
  store i64 %347, i64* %RDX.i2689, align 8
  %348 = shl nuw nsw i64 %347, 3
  %349 = add i64 %173, %348
  %350 = add i64 %302, 40
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RAX.i205, align 8
  %353 = add i64 %352, 24
  %354 = add i64 %302, 43
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 %320, i32* %355, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, 45
  store i64 %357, i64* %3, align 8
  br label %block_.L_44c309

block_.L_44c2e1:                                  ; preds = %block_44c289
  store i64 %173, i64* %RAX.i205, align 8
  %358 = add i64 %302, 31
  store i64 %358, i64* %3, align 8
  %359 = load i32, i32* %144, align 4
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RSI.i1586, align 8
  store i64 %360, i64* %RDX.i2689, align 8
  %361 = shl nuw nsw i64 %360, 3
  %362 = add i64 %173, %361
  %363 = add i64 %302, 37
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RAX.i205, align 8
  %366 = add i64 %365, 24
  %367 = add i64 %302, 40
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 %314, i32* %368, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_44c309

block_.L_44c309:                                  ; preds = %block_.L_44c2e1, %block_44c2b1
  %369 = phi i64 [ %.pre120, %block_.L_44c2e1 ], [ %357, %block_44c2b1 ]
  %370 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %370, i64* %RAX.i205, align 8
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -20
  %373 = add i64 %369, 11
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RCX.i1946, align 8
  store i64 %376, i64* %RDX.i2689, align 8
  %377 = shl nuw nsw i64 %376, 3
  %378 = add i64 %370, %377
  %379 = add i64 %369, 17
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RAX.i205, align 8
  %382 = add i64 %381, 24
  %383 = add i64 %369, 20
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RCX.i1946, align 8
  store i64 %370, i64* %RAX.i205, align 8
  %387 = add i64 %369, 31
  store i64 %387, i64* %3, align 8
  %388 = load i32, i32* %374, align 4
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RSI.i1586, align 8
  store i64 %389, i64* %RDX.i2689, align 8
  %390 = shl nuw nsw i64 %389, 3
  %391 = add i64 %370, %390
  %392 = add i64 %369, 37
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RAX.i205, align 8
  %395 = add i64 %394, 40
  %396 = add i64 %369, 41
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RAX.i205, align 8
  %399 = add i64 %398, 6364
  %400 = add i64 %369, 47
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  store i32 %385, i32* %401, align 4
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -36
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 3
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i1946, align 8
  %409 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %409, i64* %RAX.i205, align 8
  %410 = add i64 %402, -20
  %411 = add i64 %404, 14
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RSI.i1586, align 8
  store i64 %414, i64* %RDX.i2689, align 8
  %415 = shl nuw nsw i64 %414, 3
  %416 = add i64 %409, %415
  %417 = add i64 %404, 20
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RAX.i205, align 8
  %420 = add i64 %419, 40
  %421 = add i64 %404, 24
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RAX.i205, align 8
  %424 = add i64 %423, 20
  %425 = add i64 %404, 27
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  store i32 %407, i32* %426, align 4
  %.pre121 = load i64, i64* %3, align 8
  %.pre122.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c353

block_.L_44c353:                                  ; preds = %block_44c267, %block_.L_44c309, %block_44c245
  %.pre122 = phi i64 [ %.pre122.pre, %block_.L_44c309 ], [ %141, %block_44c267 ], [ %141, %block_44c245 ]
  %427 = phi i64 [ %.pre121, %block_.L_44c309 ], [ %258, %block_44c267 ], [ %232, %block_44c245 ]
  %428 = add i64 %427, 5
  store i64 %428, i64* %3, align 8
  br label %block_.L_44c358

block_.L_44c358:                                  ; preds = %block_44c22b, %block_.L_44c353
  %429 = phi i64 [ %.pre122, %block_.L_44c353 ], [ %141, %block_44c22b ]
  %430 = phi i64 [ %428, %block_.L_44c353 ], [ %206, %block_44c22b ]
  %431 = add i64 %429, -20
  %432 = add i64 %430, 8
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %434, 1
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX.i205, align 8
  %437 = icmp eq i32 %434, -1
  %438 = icmp eq i32 %435, 0
  %439 = or i1 %437, %438
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %12, align 1
  %441 = and i32 %435, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %13, align 1
  %446 = xor i32 %435, %434
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %14, align 1
  %450 = zext i1 %438 to i8
  store i8 %450, i8* %15, align 1
  %451 = lshr i32 %435, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %16, align 1
  %453 = lshr i32 %434, 31
  %454 = xor i32 %451, %453
  %455 = add nuw nsw i32 %454, %451
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %17, align 1
  %458 = add i64 %430, 14
  store i64 %458, i64* %3, align 8
  store i32 %435, i32* %433, align 4
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, -331
  store i64 %460, i64* %3, align 8
  br label %block_.L_44c21b

block_.L_44c36b:                                  ; preds = %block_.L_44c21b
  %461 = add i64 %172, 425
  br label %block_.L_44c514

block_.L_44c370:                                  ; preds = %routine_shll__cl___eax.exit
  %462 = add i64 %136, 4
  store i64 %462, i64* %3, align 8
  %463 = load i32, i32* %125, align 4
  %464 = add i32 %463, -1
  %465 = icmp eq i32 %463, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %12, align 1
  %467 = and i32 %464, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %13, align 1
  %472 = xor i32 %464, %463
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %14, align 1
  %476 = icmp eq i32 %464, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %15, align 1
  %478 = lshr i32 %464, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %16, align 1
  %480 = lshr i32 %463, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %480
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %17, align 1
  %.v = select i1 %476, i64 10, i64 29
  %485 = add i64 %136, %.v
  %486 = add i64 %121, -12
  %487 = add i64 %485, 7
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  br i1 %476, label %block_44c37a, label %block_.L_44c38d

block_44c37a:                                     ; preds = %block_.L_44c370
  store i32 1, i32* %488, align 4
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -16
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, 7
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %490 to i32*
  store i32 0, i32* %493, align 4
  %494 = load i64, i64* %3, align 8
  %495 = add i64 %494, 19
  store i64 %495, i64* %3, align 8
  br label %block_.L_44c39b

block_.L_44c38d:                                  ; preds = %block_.L_44c370
  store i32 0, i32* %488, align 4
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -16
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 7
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i32*
  store i32 1, i32* %500, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_44c39b

block_.L_44c39b:                                  ; preds = %block_.L_44c38d, %block_44c37a
  %501 = phi i64 [ %.pre123, %block_.L_44c38d ], [ %495, %block_44c37a ]
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -20
  %504 = add i64 %501, 7
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  store i32 0, i32* %505, align 4
  %RDX.i2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_44c3a2

block_.L_44c3a2:                                  ; preds = %block_.L_44c4fc, %block_.L_44c39b
  %506 = phi i64 [ %909, %block_.L_44c4fc ], [ %.pre124, %block_.L_44c39b ]
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -20
  %509 = add i64 %506, 3
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX.i205, align 8
  %513 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %514 = sub i32 %511, %513
  %515 = icmp ult i32 %511, %513
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %12, align 1
  %517 = and i32 %514, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %13, align 1
  %522 = xor i32 %513, %511
  %523 = xor i32 %522, %514
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %14, align 1
  %527 = icmp eq i32 %514, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %15, align 1
  %529 = lshr i32 %514, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %16, align 1
  %531 = lshr i32 %511, 31
  %532 = lshr i32 %513, 31
  %533 = xor i32 %532, %531
  %534 = xor i32 %529, %531
  %535 = add nuw nsw i32 %534, %533
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %17, align 1
  %.v206 = select i1 %515, i64 16, i64 365
  %538 = add i64 %506, %.v206
  store i64 %538, i64* %3, align 8
  br i1 %515, label %block_44c3b2, label %block_.L_44c50f

block_44c3b2:                                     ; preds = %block_.L_44c3a2
  %539 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %539, i64* %RAX.i205, align 8
  %540 = add i64 %538, 11
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %510, align 4
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RCX.i1946, align 8
  store i64 %542, i64* %RDX.i2482, align 8
  %543 = shl nuw nsw i64 %542, 3
  %544 = add i64 %539, %543
  %545 = add i64 %538, 17
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RAX.i205, align 8
  %548 = add i64 %547, 4
  %549 = add i64 %538, 21
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  store i8 0, i8* %12, align 1
  %552 = and i32 %551, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %557 = icmp eq i32 %551, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %15, align 1
  %559 = lshr i32 %551, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v265 = select i1 %557, i64 330, i64 27
  %561 = add i64 %538, %.v265
  store i64 %561, i64* %3, align 8
  br i1 %557, label %block_.L_44c4fc, label %block_44c3cd

block_44c3cd:                                     ; preds = %block_44c3b2
  store i64 %539, i64* %RAX.i205, align 8
  %562 = add i64 %561, 11
  store i64 %562, i64* %3, align 8
  %563 = load i32, i32* %510, align 4
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RCX.i1946, align 8
  store i64 %564, i64* %RDX.i2482, align 8
  %565 = shl nuw nsw i64 %564, 3
  %566 = add i64 %539, %565
  %567 = add i64 %561, 17
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RAX.i205, align 8
  %570 = add i64 %569, 20
  %571 = add i64 %561, 20
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RCX.i1946, align 8
  %575 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %575, i64* %RAX.i205, align 8
  %576 = add i64 %575, 72464
  %577 = add i64 %561, 34
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sub i32 %573, %579
  %581 = icmp ult i32 %573, %579
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %12, align 1
  %583 = and i32 %580, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %13, align 1
  %588 = xor i32 %579, %573
  %589 = xor i32 %588, %580
  %590 = lshr i32 %589, 4
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %14, align 1
  %593 = icmp eq i32 %580, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %15, align 1
  %595 = lshr i32 %580, 31
  %596 = trunc i32 %595 to i8
  store i8 %596, i8* %16, align 1
  %597 = lshr i32 %573, 31
  %598 = lshr i32 %579, 31
  %599 = xor i32 %598, %597
  %600 = xor i32 %595, %597
  %601 = add nuw nsw i32 %600, %599
  %602 = icmp eq i32 %601, 2
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %17, align 1
  %604 = or i1 %593, %581
  %.v266 = select i1 %604, i64 88, i64 40
  %605 = add i64 %561, %.v266
  store i64 %539, i64* %RAX.i205, align 8
  %606 = add i64 %605, 11
  store i64 %606, i64* %3, align 8
  %607 = load i32, i32* %510, align 4
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RCX.i1946, align 8
  store i64 %608, i64* %RDX.i2482, align 8
  %609 = shl nuw nsw i64 %608, 3
  %610 = add i64 %539, %609
  %611 = add i64 %605, 17
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i64*
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %RAX.i205, align 8
  %614 = add i64 %613, 20
  %615 = add i64 %605, 20
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RCX.i1946, align 8
  br i1 %604, label %block_.L_44c425, label %block_44c3f5

block_44c3f5:                                     ; preds = %block_44c3cd
  %619 = add i64 %507, -28
  %620 = add i64 %605, 23
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = sub i32 %617, %622
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RCX.i1946, align 8
  %625 = icmp ult i32 %617, %622
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %12, align 1
  %627 = and i32 %623, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %13, align 1
  %632 = xor i32 %622, %617
  %633 = xor i32 %632, %623
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %14, align 1
  %637 = icmp eq i32 %623, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %15, align 1
  %639 = lshr i32 %623, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %16, align 1
  %641 = lshr i32 %617, 31
  %642 = lshr i32 %622, 31
  %643 = xor i32 %642, %641
  %644 = xor i32 %639, %641
  %645 = add nuw nsw i32 %644, %643
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %17, align 1
  store i64 %539, i64* %RAX.i205, align 8
  %648 = add i64 %605, 34
  store i64 %648, i64* %3, align 8
  %649 = load i32, i32* %510, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RSI.i1586, align 8
  store i64 %650, i64* %RDX.i2482, align 8
  %651 = shl nuw nsw i64 %650, 3
  %652 = add i64 %539, %651
  %653 = add i64 %605, 40
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %RAX.i205, align 8
  %656 = add i64 %655, 24
  %657 = add i64 %605, 43
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  store i32 %623, i32* %658, align 4
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, 45
  store i64 %660, i64* %3, align 8
  br label %block_.L_44c44d

block_.L_44c425:                                  ; preds = %block_44c3cd
  store i64 %539, i64* %RAX.i205, align 8
  %661 = add i64 %605, 31
  store i64 %661, i64* %3, align 8
  %662 = load i32, i32* %510, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RSI.i1586, align 8
  store i64 %663, i64* %RDX.i2482, align 8
  %664 = shl nuw nsw i64 %663, 3
  %665 = add i64 %539, %664
  %666 = add i64 %605, 37
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RAX.i205, align 8
  %669 = add i64 %668, 24
  %670 = add i64 %605, 40
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  store i32 %617, i32* %671, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_44c44d

block_.L_44c44d:                                  ; preds = %block_.L_44c425, %block_44c3f5
  %672 = phi i64 [ %.pre125, %block_.L_44c425 ], [ %660, %block_44c3f5 ]
  %673 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %673, i64* %RAX.i205, align 8
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -20
  %676 = add i64 %672, 11
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RCX.i1946, align 8
  store i64 %679, i64* %RDX.i2482, align 8
  %680 = shl nuw nsw i64 %679, 3
  %681 = add i64 %673, %680
  %682 = add i64 %672, 17
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RAX.i205, align 8
  %685 = add i64 %684, 4
  %686 = add i64 %672, 20
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = and i32 %688, 1
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  %691 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %692 = trunc i32 %691 to i8
  %693 = xor i8 %692, 1
  store i8 %693, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %694 = icmp eq i32 %689, 0
  %695 = trunc i32 %689 to i8
  %696 = xor i8 %695, 1
  store i8 %696, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v267 = select i1 %694, i64 85, i64 32
  %697 = add i64 %672, %.v267
  store i64 %697, i64* %3, align 8
  br i1 %694, label %block_.L_44c4a2, label %block_44c46d

block_44c46d:                                     ; preds = %block_.L_44c44d
  store i64 %673, i64* %RAX.i205, align 8
  %698 = add i64 %697, 11
  store i64 %698, i64* %3, align 8
  %699 = load i32, i32* %677, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RCX.i1946, align 8
  store i64 %700, i64* %RDX.i2482, align 8
  %701 = shl nuw nsw i64 %700, 3
  %702 = add i64 %673, %701
  %703 = add i64 %697, 17
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RAX.i205, align 8
  %706 = add i64 %705, 24
  %707 = add i64 %697, 20
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = shl i32 %709, 1
  %711 = icmp slt i32 %709, 0
  %712 = icmp slt i32 %710, 0
  %713 = xor i1 %711, %712
  %714 = zext i32 %710 to i64
  store i64 %714, i64* %RCX.i1946, align 8
  %.lobit81 = lshr i32 %709, 31
  %715 = trunc i32 %.lobit81 to i8
  store i8 %715, i8* %12, align 1
  %716 = and i32 %710, 254
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %721 = icmp eq i32 %710, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %15, align 1
  %723 = lshr i32 %709, 30
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %16, align 1
  %726 = zext i1 %713 to i8
  store i8 %726, i8* %17, align 1
  %727 = add i64 %674, -12
  %728 = add i64 %697, 25
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = add i32 %730, %710
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RCX.i1946, align 8
  %733 = icmp ult i32 %731, %710
  %734 = icmp ult i32 %731, %730
  %735 = or i1 %733, %734
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %12, align 1
  %737 = and i32 %731, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %13, align 1
  %742 = xor i32 %730, %710
  %743 = xor i32 %742, %731
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %14, align 1
  %747 = icmp eq i32 %731, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %15, align 1
  %749 = lshr i32 %731, 31
  %750 = trunc i32 %749 to i8
  store i8 %750, i8* %16, align 1
  %751 = lshr i32 %709, 30
  %752 = and i32 %751, 1
  %753 = lshr i32 %730, 31
  %754 = xor i32 %749, %752
  %755 = xor i32 %749, %753
  %756 = add nuw nsw i32 %754, %755
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %17, align 1
  store i64 %673, i64* %RAX.i205, align 8
  %759 = add i64 %697, 36
  store i64 %759, i64* %3, align 8
  %760 = load i32, i32* %677, align 4
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RSI.i1586, align 8
  store i64 %761, i64* %RDX.i2482, align 8
  %762 = shl nuw nsw i64 %761, 3
  %763 = add i64 %673, %762
  %764 = add i64 %697, 42
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i64*
  %766 = load i64, i64* %765, align 8
  store i64 %766, i64* %RAX.i205, align 8
  %767 = add i64 %766, 48
  %768 = add i64 %697, 46
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %RAX.i205, align 8
  %771 = add i64 %770, 6364
  %772 = add i64 %697, 52
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  store i32 %731, i32* %773, align 4
  %.pre126 = load i64, i64* %3, align 8
  %.pre127 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  %.pre128 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c4a2

block_.L_44c4a2:                                  ; preds = %block_44c46d, %block_.L_44c44d
  %774 = phi i64 [ %.pre128, %block_44c46d ], [ %674, %block_.L_44c44d ]
  %775 = phi i64 [ %.pre127, %block_44c46d ], [ %673, %block_.L_44c44d ]
  %776 = phi i64 [ %.pre126, %block_44c46d ], [ %697, %block_.L_44c44d ]
  store i64 %775, i64* %RAX.i205, align 8
  %777 = add i64 %774, -20
  %778 = add i64 %776, 11
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RCX.i1946, align 8
  store i64 %781, i64* %RDX.i2482, align 8
  %782 = shl nuw nsw i64 %781, 3
  %783 = add i64 %775, %782
  %784 = add i64 %776, 17
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %RAX.i205, align 8
  %787 = add i64 %786, 4
  %788 = add i64 %776, 20
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = and i32 %790, 2
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  %793 = tail call i32 @llvm.ctpop.i32(i32 %791)
  %794 = trunc i32 %793 to i8
  %795 = xor i8 %794, 1
  store i8 %795, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %796 = icmp eq i32 %791, 0
  %.lobit205 = lshr exact i32 %791, 1
  %797 = trunc i32 %.lobit205 to i8
  %798 = xor i8 %797, 1
  store i8 %798, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v268 = select i1 %796, i64 85, i64 32
  %799 = add i64 %776, %.v268
  store i64 %799, i64* %3, align 8
  br i1 %796, label %block_.L_44c4f7, label %block_44c4c2

block_44c4c2:                                     ; preds = %block_.L_44c4a2
  store i64 %775, i64* %RAX.i205, align 8
  %800 = add i64 %799, 11
  store i64 %800, i64* %3, align 8
  %801 = load i32, i32* %779, align 4
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RCX.i1946, align 8
  store i64 %802, i64* %RDX.i2482, align 8
  %803 = shl nuw nsw i64 %802, 3
  %804 = add i64 %775, %803
  %805 = add i64 %799, 17
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i64*
  %807 = load i64, i64* %806, align 8
  store i64 %807, i64* %RAX.i205, align 8
  %808 = add i64 %807, 24
  %809 = add i64 %799, 20
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = shl i32 %811, 1
  %813 = icmp slt i32 %811, 0
  %814 = icmp slt i32 %812, 0
  %815 = xor i1 %813, %814
  %816 = zext i32 %812 to i64
  store i64 %816, i64* %RCX.i1946, align 8
  %.lobit83 = lshr i32 %811, 31
  %817 = trunc i32 %.lobit83 to i8
  store i8 %817, i8* %12, align 1
  %818 = and i32 %812, 254
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %823 = icmp eq i32 %812, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %15, align 1
  %825 = lshr i32 %811, 30
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %16, align 1
  %828 = zext i1 %815 to i8
  store i8 %828, i8* %17, align 1
  %829 = add i64 %774, -16
  %830 = add i64 %799, 25
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = add i32 %832, %812
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RCX.i1946, align 8
  %835 = icmp ult i32 %833, %812
  %836 = icmp ult i32 %833, %832
  %837 = or i1 %835, %836
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %12, align 1
  %839 = and i32 %833, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %13, align 1
  %844 = xor i32 %832, %812
  %845 = xor i32 %844, %833
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %14, align 1
  %849 = icmp eq i32 %833, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %15, align 1
  %851 = lshr i32 %833, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %16, align 1
  %853 = lshr i32 %811, 30
  %854 = and i32 %853, 1
  %855 = lshr i32 %832, 31
  %856 = xor i32 %851, %854
  %857 = xor i32 %851, %855
  %858 = add nuw nsw i32 %856, %857
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %17, align 1
  store i64 %775, i64* %RAX.i205, align 8
  %861 = add i64 %799, 36
  store i64 %861, i64* %3, align 8
  %862 = load i32, i32* %779, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RSI.i1586, align 8
  store i64 %863, i64* %RDX.i2482, align 8
  %864 = shl nuw nsw i64 %863, 3
  %865 = add i64 %775, %864
  %866 = add i64 %799, 42
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  store i64 %868, i64* %RAX.i205, align 8
  %869 = add i64 %868, 56
  %870 = add i64 %799, 46
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  store i64 %872, i64* %RAX.i205, align 8
  %873 = add i64 %872, 6364
  %874 = add i64 %799, 52
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  store i32 %833, i32* %875, align 4
  %.pre129 = load i64, i64* %3, align 8
  %.pre130.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c4f7

block_.L_44c4f7:                                  ; preds = %block_44c4c2, %block_.L_44c4a2
  %.pre130 = phi i64 [ %.pre130.pre, %block_44c4c2 ], [ %774, %block_.L_44c4a2 ]
  %876 = phi i64 [ %.pre129, %block_44c4c2 ], [ %799, %block_.L_44c4a2 ]
  %877 = add i64 %876, 5
  store i64 %877, i64* %3, align 8
  br label %block_.L_44c4fc

block_.L_44c4fc:                                  ; preds = %block_.L_44c4f7, %block_44c3b2
  %878 = phi i64 [ %.pre130, %block_.L_44c4f7 ], [ %507, %block_44c3b2 ]
  %879 = phi i64 [ %877, %block_.L_44c4f7 ], [ %561, %block_44c3b2 ]
  %880 = add i64 %878, -20
  %881 = add i64 %879, 8
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = add i32 %883, 1
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i205, align 8
  %886 = icmp eq i32 %883, -1
  %887 = icmp eq i32 %884, 0
  %888 = or i1 %886, %887
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %12, align 1
  %890 = and i32 %884, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %13, align 1
  %895 = xor i32 %884, %883
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %14, align 1
  %899 = zext i1 %887 to i8
  store i8 %899, i8* %15, align 1
  %900 = lshr i32 %884, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %16, align 1
  %902 = lshr i32 %883, 31
  %903 = xor i32 %900, %902
  %904 = add nuw nsw i32 %903, %900
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %17, align 1
  %907 = add i64 %879, 14
  store i64 %907, i64* %3, align 8
  store i32 %884, i32* %882, align 4
  %908 = load i64, i64* %3, align 8
  %909 = add i64 %908, -360
  store i64 %909, i64* %3, align 8
  br label %block_.L_44c3a2

block_.L_44c50f:                                  ; preds = %block_.L_44c3a2
  %910 = add i64 %538, 5
  store i64 %910, i64* %3, align 8
  br label %block_.L_44c514

block_.L_44c514:                                  ; preds = %block_.L_44c50f, %block_.L_44c36b
  %911 = phi i64 [ %141, %block_.L_44c36b ], [ %507, %block_.L_44c50f ]
  %storemerge = phi i64 [ %461, %block_.L_44c36b ], [ %910, %block_.L_44c50f ]
  %912 = add i64 %911, -4
  %913 = add i64 %storemerge, 4
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = add i32 %915, -2
  %917 = icmp ult i32 %915, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %12, align 1
  %919 = and i32 %916, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %13, align 1
  %924 = xor i32 %916, %915
  %925 = lshr i32 %924, 4
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %14, align 1
  %928 = icmp eq i32 %916, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %15, align 1
  %930 = lshr i32 %916, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %16, align 1
  %932 = lshr i32 %915, 31
  %933 = xor i32 %930, %932
  %934 = add nuw nsw i32 %933, %932
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %17, align 1
  %.v207 = select i1 %928, i64 20, i64 10
  %937 = add i64 %storemerge, %.v207
  store i64 %937, i64* %3, align 8
  br i1 %928, label %block_.L_44c528, label %block_44c51e

block_44c51e:                                     ; preds = %block_.L_44c514
  %938 = add i64 %937, 4
  store i64 %938, i64* %3, align 8
  %939 = load i32, i32* %914, align 4
  %940 = add i32 %939, -4
  %941 = icmp ult i32 %939, 4
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %12, align 1
  %943 = and i32 %940, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %13, align 1
  %948 = xor i32 %940, %939
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %14, align 1
  %952 = icmp eq i32 %940, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %15, align 1
  %954 = lshr i32 %940, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %16, align 1
  %956 = lshr i32 %939, 31
  %957 = xor i32 %954, %956
  %958 = add nuw nsw i32 %957, %956
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %17, align 1
  %.v208 = select i1 %952, i64 10, i64 37
  %961 = add i64 %937, %.v208
  store i64 %961, i64* %3, align 8
  br i1 %952, label %block_.L_44c528, label %block_.L_44c543

block_.L_44c528:                                  ; preds = %block_44c51e, %block_.L_44c514
  %962 = phi i64 [ %961, %block_44c51e ], [ %937, %block_.L_44c514 ]
  store i32 0, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %963 = add i64 %962, 4321
  store i64 %963, i64* %3, align 8
  br label %block_.L_44d609

block_.L_44c543:                                  ; preds = %block_44c51e
  %964 = add i64 %961, 4
  store i64 %964, i64* %3, align 8
  %965 = load i32, i32* %914, align 4
  store i8 0, i8* %12, align 1
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %971 = icmp eq i32 %965, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %15, align 1
  %973 = lshr i32 %965, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v209 = select i1 %971, i64 20, i64 10
  %975 = add i64 %961, %.v209
  store i64 %975, i64* %3, align 8
  br i1 %971, label %block_.L_44c557, label %block_44c54d

block_44c54d:                                     ; preds = %block_.L_44c543
  %976 = add i64 %975, 4
  store i64 %976, i64* %3, align 8
  %977 = load i32, i32* %914, align 4
  %978 = add i32 %977, -3
  %979 = icmp ult i32 %977, 3
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %12, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %13, align 1
  %986 = xor i32 %978, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %14, align 1
  %990 = icmp eq i32 %978, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %15, align 1
  %992 = lshr i32 %978, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %16, align 1
  %994 = lshr i32 %977, 31
  %995 = xor i32 %992, %994
  %996 = add nuw nsw i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %17, align 1
  %.v210 = select i1 %990, i64 10, i64 1271
  %999 = add i64 %975, %.v210
  store i64 %999, i64* %3, align 8
  br i1 %990, label %block_.L_44c557, label %block_.L_44ca44

block_.L_44c557:                                  ; preds = %block_44c54d, %block_.L_44c543
  %1000 = phi i64 [ %999, %block_44c54d ], [ %975, %block_.L_44c543 ]
  %1001 = add i64 %911, -8
  %1002 = add i64 %1000, 4
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  store i8 0, i8* %12, align 1
  %1005 = and i32 %1004, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1010 = icmp eq i32 %1004, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %15, align 1
  %1012 = lshr i32 %1004, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v250 = select i1 %1010, i64 10, i64 572
  %1014 = add i64 %1000, %.v250
  store i64 %1014, i64* %3, align 8
  br i1 %1010, label %block_44c561, label %block_.L_44c793

block_44c561:                                     ; preds = %block_.L_44c557
  %1015 = add i64 %911, -20
  %1016 = add i64 %1014, 7
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  store i32 0, i32* %1017, align 4
  %ECX.i2241 = bitcast %union.anon* %65 to i32*
  %RDX.i2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i2175 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_44c568

block_.L_44c568:                                  ; preds = %block_.L_44c60a, %block_44c561
  %1018 = phi i64 [ %1221, %block_.L_44c60a ], [ %.pre161, %block_44c561 ]
  %1019 = load i64, i64* %RBP.i, align 8
  %1020 = add i64 %1019, -20
  %1021 = add i64 %1018, 3
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX.i205, align 8
  %1025 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %1026 = sub i32 %1023, %1025
  %1027 = icmp ult i32 %1023, %1025
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %12, align 1
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %13, align 1
  %1034 = xor i32 %1025, %1023
  %1035 = xor i32 %1034, %1026
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %14, align 1
  %1039 = icmp eq i32 %1026, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %15, align 1
  %1041 = lshr i32 %1026, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %16, align 1
  %1043 = lshr i32 %1023, 31
  %1044 = lshr i32 %1025, 31
  %1045 = xor i32 %1044, %1043
  %1046 = xor i32 %1041, %1043
  %1047 = add nuw nsw i32 %1046, %1045
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %17, align 1
  %.v258 = select i1 %1027, i64 16, i64 181
  %1050 = add i64 %1018, %.v258
  store i64 %1050, i64* %3, align 8
  br i1 %1027, label %block_44c578, label %block_.L_44c61d

block_44c578:                                     ; preds = %block_.L_44c568
  %1051 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %1051, i64* %RAX.i205, align 8
  %1052 = add i64 %1050, 11
  store i64 %1052, i64* %3, align 8
  %1053 = load i32, i32* %1022, align 4
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RCX.i1946, align 8
  store i64 %1054, i64* %RDX.i2242, align 8
  %1055 = shl nuw nsw i64 %1054, 3
  %1056 = add i64 %1051, %1055
  %1057 = add i64 %1050, 17
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RAX.i205, align 8
  %1060 = add i64 %1050, 20
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = add i32 %1062, -3
  %1064 = icmp ult i32 %1062, 3
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %12, align 1
  %1066 = and i32 %1063, 255
  %1067 = tail call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  store i8 %1070, i8* %13, align 1
  %1071 = xor i32 %1063, %1062
  %1072 = lshr i32 %1071, 4
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  store i8 %1074, i8* %14, align 1
  %1075 = icmp eq i32 %1063, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %15, align 1
  %1077 = lshr i32 %1063, 31
  %1078 = trunc i32 %1077 to i8
  store i8 %1078, i8* %16, align 1
  %1079 = lshr i32 %1062, 31
  %1080 = xor i32 %1077, %1079
  %1081 = add nuw nsw i32 %1080, %1079
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %17, align 1
  %.v262 = select i1 %1075, i64 26, i64 146
  %1084 = add i64 %1050, %.v262
  store i64 %1084, i64* %3, align 8
  br i1 %1075, label %block_44c592, label %block_.L_44c60a

block_44c592:                                     ; preds = %block_44c578
  store i64 %1051, i64* %RAX.i205, align 8
  %1085 = add i64 %1084, 11
  store i64 %1085, i64* %3, align 8
  %1086 = load i32, i32* %1022, align 4
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RCX.i1946, align 8
  store i64 %1087, i64* %RDX.i2242, align 8
  %1088 = shl nuw nsw i64 %1087, 3
  %1089 = add i64 %1051, %1088
  %1090 = add i64 %1084, 17
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i64*
  %1092 = load i64, i64* %1091, align 8
  store i64 %1092, i64* %RAX.i205, align 8
  %1093 = add i64 %1092, 40
  %1094 = add i64 %1084, 21
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i64*
  %1096 = load i64, i64* %1095, align 8
  store i64 %1096, i64* %RAX.i205, align 8
  %1097 = add i64 %1096, 6380
  %1098 = add i64 %1084, 28
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  store i8 0, i8* %12, align 1
  %1101 = and i32 %1100, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1106 = icmp eq i32 %1100, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %15, align 1
  %1108 = lshr i32 %1100, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v263 = select i1 %1106, i64 115, i64 34
  %1110 = add i64 %1084, %.v263
  store i64 %1110, i64* %3, align 8
  br i1 %1106, label %block_.L_44c605, label %block_44c5b4

block_44c5b4:                                     ; preds = %block_44c592
  store i64 %1051, i64* %RAX.i205, align 8
  %1111 = add i64 %1110, 11
  store i64 %1111, i64* %3, align 8
  %1112 = load i32, i32* %1022, align 4
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RCX.i1946, align 8
  store i64 %1113, i64* %RDX.i2242, align 8
  %1114 = shl nuw nsw i64 %1113, 3
  %1115 = add i64 %1051, %1114
  %1116 = add i64 %1110, 17
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i64*
  %1118 = load i64, i64* %1117, align 8
  store i64 %1118, i64* %RAX.i205, align 8
  %1119 = add i64 %1118, 40
  %1120 = add i64 %1110, 21
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to i64*
  %1122 = load i64, i64* %1121, align 8
  store i64 %1122, i64* %RAX.i205, align 8
  %1123 = add i64 %1122, 6376
  %1124 = add i64 %1110, 28
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i32*
  %1126 = load i32, i32* %1125, align 4
  store i8 0, i8* %12, align 1
  %1127 = and i32 %1126, 255
  %1128 = tail call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  store i8 %1131, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1132 = icmp eq i32 %1126, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %15, align 1
  %1134 = lshr i32 %1126, 31
  %1135 = trunc i32 %1134 to i8
  store i8 %1135, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v264 = select i1 %1132, i64 34, i64 81
  %1136 = add i64 %1110, %.v264
  store i64 %1136, i64* %3, align 8
  br i1 %1132, label %block_44c5d6, label %block_.L_44c605

block_44c5d6:                                     ; preds = %block_44c5b4
  store i64 %1051, i64* %RAX.i205, align 8
  %1137 = add i64 %1136, 11
  store i64 %1137, i64* %3, align 8
  %1138 = load i32, i32* %1022, align 4
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RCX.i1946, align 8
  store i64 %1139, i64* %RDX.i2242, align 8
  %1140 = shl nuw nsw i64 %1139, 3
  %1141 = add i64 %1051, %1140
  %1142 = add i64 %1136, 17
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RAX.i205, align 8
  %1145 = add i64 %1144, 40
  %1146 = add i64 %1136, 21
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i64 %1148, i64* %RAX.i205, align 8
  %1149 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1149, i64* %RDX.i2242, align 8
  %1150 = add i64 %1019, -36
  %1151 = add i64 %1136, 32
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RCX.i1946, align 8
  %1155 = add i32 %1153, 1
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RSI.i1586, align 8
  %1157 = icmp eq i32 %1153, -1
  %1158 = icmp eq i32 %1155, 0
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %12, align 1
  %1161 = and i32 %1155, 255
  %1162 = tail call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  store i8 %1165, i8* %13, align 1
  %1166 = xor i32 %1155, %1153
  %1167 = lshr i32 %1166, 4
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %14, align 1
  %1170 = zext i1 %1158 to i8
  store i8 %1170, i8* %15, align 1
  %1171 = lshr i32 %1155, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %16, align 1
  %1173 = lshr i32 %1153, 31
  %1174 = xor i32 %1171, %1173
  %1175 = add nuw nsw i32 %1174, %1171
  %1176 = icmp eq i32 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %17, align 1
  %1178 = add i64 %1136, 40
  store i64 %1178, i64* %3, align 8
  store i32 %1155, i32* %1152, align 4
  %1179 = load i32, i32* %ECX.i2241, align 4
  %1180 = load i64, i64* %3, align 8
  %1181 = sext i32 %1179 to i64
  store i64 %1181, i64* %RDI.i2175, align 8
  %1182 = load i64, i64* %RDX.i2242, align 8
  %1183 = shl nsw i64 %1181, 3
  %1184 = add i64 %1182, %1183
  %1185 = load i64, i64* %RAX.i205, align 8
  %1186 = add i64 %1180, 7
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1184 to i64*
  store i64 %1185, i64* %1187, align 8
  %.pre162 = load i64, i64* %3, align 8
  %.pre163.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c605

block_.L_44c605:                                  ; preds = %block_44c5b4, %block_44c5d6, %block_44c592
  %.pre163 = phi i64 [ %.pre163.pre, %block_44c5d6 ], [ %1019, %block_44c5b4 ], [ %1019, %block_44c592 ]
  %1188 = phi i64 [ %.pre162, %block_44c5d6 ], [ %1136, %block_44c5b4 ], [ %1110, %block_44c592 ]
  %1189 = add i64 %1188, 5
  store i64 %1189, i64* %3, align 8
  br label %block_.L_44c60a

block_.L_44c60a:                                  ; preds = %block_44c578, %block_.L_44c605
  %1190 = phi i64 [ %.pre163, %block_.L_44c605 ], [ %1019, %block_44c578 ]
  %1191 = phi i64 [ %1189, %block_.L_44c605 ], [ %1084, %block_44c578 ]
  %1192 = add i64 %1190, -20
  %1193 = add i64 %1191, 8
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = add i32 %1195, 1
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX.i205, align 8
  %1198 = icmp eq i32 %1195, -1
  %1199 = icmp eq i32 %1196, 0
  %1200 = or i1 %1198, %1199
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %12, align 1
  %1202 = and i32 %1196, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %13, align 1
  %1207 = xor i32 %1196, %1195
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %14, align 1
  %1211 = zext i1 %1199 to i8
  store i8 %1211, i8* %15, align 1
  %1212 = lshr i32 %1196, 31
  %1213 = trunc i32 %1212 to i8
  store i8 %1213, i8* %16, align 1
  %1214 = lshr i32 %1195, 31
  %1215 = xor i32 %1212, %1214
  %1216 = add nuw nsw i32 %1215, %1212
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %17, align 1
  %1219 = add i64 %1191, 14
  store i64 %1219, i64* %3, align 8
  store i32 %1196, i32* %1194, align 4
  %1220 = load i64, i64* %3, align 8
  %1221 = add i64 %1220, -176
  store i64 %1221, i64* %3, align 8
  br label %block_.L_44c568

block_.L_44c61d:                                  ; preds = %block_.L_44c568
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i2242, align 8
  store i64 ptrtoint (%G__0x44d620_type* @G__0x44d620 to i64), i64* %RCX.i1946, align 8
  %1222 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1222, i64* %RSI.i1586, align 8
  %1223 = add i64 %1019, -36
  %1224 = add i64 %1050, 29
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sext i32 %1226 to i64
  %1228 = add i64 %1019, -88
  %1229 = add i64 %1050, 33
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i64*
  store i64 %1227, i64* %1230, align 8
  %1231 = load i64, i64* %RSI.i1586, align 8
  %1232 = load i64, i64* %3, align 8
  store i64 %1231, i64* %RDI.i2175, align 8
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -88
  %1235 = add i64 %1232, 7
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %RSI.i1586, align 8
  %1238 = add i64 %1232, -308830
  %1239 = add i64 %1232, 12
  %1240 = load i64, i64* %6, align 8
  %1241 = add i64 %1240, -8
  %1242 = inttoptr i64 %1241 to i64*
  store i64 %1239, i64* %1242, align 8
  store i64 %1241, i64* %6, align 8
  store i64 %1238, i64* %3, align 8
  %call2_44c645 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %1238, %struct.Memory* %2)
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -36
  %1245 = load i64, i64* %3, align 8
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RAX.i205, align 8
  store i32 %1248, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %1250 = add i64 %1243, -20
  %1251 = add i64 %1245, 17
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  store i32 0, i32* %1252, align 4
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_44c65b

block_.L_44c65b:                                  ; preds = %block_.L_44c72c, %block_.L_44c61d
  %1253 = phi i64 [ %1492, %block_.L_44c72c ], [ %.pre164, %block_.L_44c61d ]
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -20
  %1256 = add i64 %1253, 3
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RAX.i205, align 8
  %1260 = load i32, i32* bitcast (%G_0x70eaac_type* @G_0x70eaac to i32*), align 8
  %1261 = sub i32 %1258, %1260
  %1262 = icmp ult i32 %1258, %1260
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %12, align 1
  %1264 = and i32 %1261, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %13, align 1
  %1269 = xor i32 %1260, %1258
  %1270 = xor i32 %1269, %1261
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %14, align 1
  %1274 = icmp eq i32 %1261, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %15, align 1
  %1276 = lshr i32 %1261, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %16, align 1
  %1278 = lshr i32 %1258, 31
  %1279 = lshr i32 %1260, 31
  %1280 = xor i32 %1279, %1278
  %1281 = xor i32 %1276, %1278
  %1282 = add nuw nsw i32 %1281, %1280
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %17, align 1
  %.v259 = select i1 %1262, i64 16, i64 228
  %1285 = add i64 %1253, %.v259
  store i64 %1285, i64* %3, align 8
  br i1 %1262, label %block_44c66b, label %block_.L_44c73f

block_44c66b:                                     ; preds = %block_.L_44c65b
  %1286 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %1286, i64* %RAX.i205, align 8
  %1287 = add i64 %1285, 11
  store i64 %1287, i64* %3, align 8
  %1288 = load i32, i32* %1257, align 4
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RCX.i1946, align 8
  store i64 %1289, i64* %RDX.i2242, align 8
  %1290 = shl nuw nsw i64 %1289, 3
  %1291 = add i64 %1286, %1290
  %1292 = add i64 %1285, 17
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i64*
  %1294 = load i64, i64* %1293, align 8
  store i64 %1294, i64* %RAX.i205, align 8
  %1295 = add i64 %1285, 20
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = add i32 %1297, -3
  %1299 = icmp ult i32 %1297, 3
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %12, align 1
  %1301 = and i32 %1298, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %13, align 1
  %1306 = xor i32 %1298, %1297
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %14, align 1
  %1310 = icmp eq i32 %1298, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %15, align 1
  %1312 = lshr i32 %1298, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %16, align 1
  %1314 = lshr i32 %1297, 31
  %1315 = xor i32 %1312, %1314
  %1316 = add nuw nsw i32 %1315, %1314
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %17, align 1
  %.v260 = select i1 %1310, i64 26, i64 193
  %1319 = add i64 %1285, %.v260
  store i64 %1319, i64* %3, align 8
  br i1 %1310, label %block_44c685, label %block_.L_44c72c

block_44c685:                                     ; preds = %block_44c66b
  store i64 %1286, i64* %RAX.i205, align 8
  %1320 = add i64 %1319, 11
  store i64 %1320, i64* %3, align 8
  %1321 = load i32, i32* %1257, align 4
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RCX.i1946, align 8
  store i64 %1322, i64* %RDX.i2242, align 8
  %1323 = shl nuw nsw i64 %1322, 3
  %1324 = add i64 %1286, %1323
  %1325 = add i64 %1319, 17
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RAX.i205, align 8
  %1328 = add i64 %1327, 40
  %1329 = add i64 %1319, 21
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  store i64 %1331, i64* %RAX.i205, align 8
  %1332 = add i64 %1331, 6376
  %1333 = add i64 %1319, 28
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  store i8 0, i8* %12, align 1
  %1336 = and i32 %1335, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1341 = icmp eq i32 %1335, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %15, align 1
  %1343 = lshr i32 %1335, 31
  %1344 = trunc i32 %1343 to i8
  store i8 %1344, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v261 = select i1 %1341, i64 162, i64 34
  %1345 = add i64 %1319, %.v261
  store i64 %1345, i64* %3, align 8
  br i1 %1341, label %block_.L_44c727, label %block_44c6a7

block_44c6a7:                                     ; preds = %block_44c685
  store i64 %1286, i64* %RAX.i205, align 8
  %1346 = add i64 %1345, 11
  store i64 %1346, i64* %3, align 8
  %1347 = load i32, i32* %1257, align 4
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RCX.i1946, align 8
  store i64 %1348, i64* %RDX.i2242, align 8
  %1349 = shl nuw nsw i64 %1348, 3
  %1350 = add i64 %1286, %1349
  %1351 = add i64 %1345, 17
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RAX.i205, align 8
  %1354 = add i64 %1353, 40
  %1355 = add i64 %1345, 21
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RAX.i205, align 8
  %1358 = add i64 %1357, 6372
  %1359 = add i64 %1345, 27
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RCX.i1946, align 8
  store i64 %1286, i64* %RAX.i205, align 8
  %1363 = add i64 %1345, 38
  store i64 %1363, i64* %3, align 8
  %1364 = load i32, i32* %1257, align 4
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RSI.i1586, align 8
  store i64 %1365, i64* %RDX.i2242, align 8
  %1366 = shl nuw nsw i64 %1365, 3
  %1367 = add i64 %1286, %1366
  %1368 = add i64 %1345, 44
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i64*
  %1370 = load i64, i64* %1369, align 8
  store i64 %1370, i64* %RAX.i205, align 8
  %1371 = add i64 %1370, 40
  %1372 = add i64 %1345, 48
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RAX.i205, align 8
  %1375 = add i64 %1374, 6368
  %1376 = add i64 %1345, 54
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  store i32 %1361, i32* %1377, align 4
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -36
  %1380 = load i64, i64* %3, align 8
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1379 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RCX.i1946, align 8
  %1385 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %1385, i64* %RAX.i205, align 8
  %1386 = add i64 %1378, -20
  %1387 = add i64 %1380, 14
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RSI.i1586, align 8
  store i64 %1390, i64* %RDX.i2242, align 8
  %1391 = shl nuw nsw i64 %1390, 3
  %1392 = add i64 %1385, %1391
  %1393 = add i64 %1380, 20
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  store i64 %1395, i64* %RAX.i205, align 8
  %1396 = add i64 %1395, 40
  %1397 = add i64 %1380, 24
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i64*
  %1399 = load i64, i64* %1398, align 8
  %1400 = add i64 %1399, 20
  %1401 = add i64 %1380, 27
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  store i32 %1383, i32* %1402, align 4
  %1403 = load i64, i64* %3, align 8
  %1404 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %1404, i64* %RAX.i205, align 8
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -20
  %1407 = add i64 %1403, 11
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %RCX.i1946, align 8
  store i64 %1410, i64* %RDX.i2242, align 8
  %1411 = shl nuw nsw i64 %1410, 3
  %1412 = add i64 %1404, %1411
  %1413 = add i64 %1403, 17
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RAX.i205, align 8
  %1416 = add i64 %1415, 40
  %1417 = add i64 %1403, 21
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RAX.i205, align 8
  %1420 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1420, i64* %RDX.i2242, align 8
  %1421 = add i64 %1405, -36
  %1422 = add i64 %1403, 32
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RCX.i1946, align 8
  %1426 = add i32 %1424, 1
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RSI.i1586, align 8
  %1428 = icmp eq i32 %1424, -1
  %1429 = icmp eq i32 %1426, 0
  %1430 = or i1 %1428, %1429
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %12, align 1
  %1432 = and i32 %1426, 255
  %1433 = tail call i32 @llvm.ctpop.i32(i32 %1432)
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  store i8 %1436, i8* %13, align 1
  %1437 = xor i32 %1426, %1424
  %1438 = lshr i32 %1437, 4
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  store i8 %1440, i8* %14, align 1
  %1441 = zext i1 %1429 to i8
  store i8 %1441, i8* %15, align 1
  %1442 = lshr i32 %1426, 31
  %1443 = trunc i32 %1442 to i8
  store i8 %1443, i8* %16, align 1
  %1444 = lshr i32 %1424, 31
  %1445 = xor i32 %1442, %1444
  %1446 = add nuw nsw i32 %1445, %1442
  %1447 = icmp eq i32 %1446, 2
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %17, align 1
  %1449 = add i64 %1403, 40
  store i64 %1449, i64* %3, align 8
  store i32 %1426, i32* %1423, align 4
  %1450 = load i32, i32* %ECX.i2241, align 4
  %1451 = load i64, i64* %3, align 8
  %1452 = sext i32 %1450 to i64
  store i64 %1452, i64* %RDI.i2175, align 8
  %1453 = load i64, i64* %RDX.i2242, align 8
  %1454 = shl nsw i64 %1452, 3
  %1455 = add i64 %1453, %1454
  %1456 = load i64, i64* %RAX.i205, align 8
  %1457 = add i64 %1451, 7
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1455 to i64*
  store i64 %1456, i64* %1458, align 8
  %.pre165 = load i64, i64* %3, align 8
  %.pre166.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c727

block_.L_44c727:                                  ; preds = %block_44c6a7, %block_44c685
  %.pre166 = phi i64 [ %.pre166.pre, %block_44c6a7 ], [ %1254, %block_44c685 ]
  %1459 = phi i64 [ %.pre165, %block_44c6a7 ], [ %1345, %block_44c685 ]
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %3, align 8
  br label %block_.L_44c72c

block_.L_44c72c:                                  ; preds = %block_44c66b, %block_.L_44c727
  %1461 = phi i64 [ %.pre166, %block_.L_44c727 ], [ %1254, %block_44c66b ]
  %1462 = phi i64 [ %1460, %block_.L_44c727 ], [ %1319, %block_44c66b ]
  %1463 = add i64 %1461, -20
  %1464 = add i64 %1462, 8
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = add i32 %1466, 1
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RAX.i205, align 8
  %1469 = icmp eq i32 %1466, -1
  %1470 = icmp eq i32 %1467, 0
  %1471 = or i1 %1469, %1470
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %12, align 1
  %1473 = and i32 %1467, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %13, align 1
  %1478 = xor i32 %1467, %1466
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %14, align 1
  %1482 = zext i1 %1470 to i8
  store i8 %1482, i8* %15, align 1
  %1483 = lshr i32 %1467, 31
  %1484 = trunc i32 %1483 to i8
  store i8 %1484, i8* %16, align 1
  %1485 = lshr i32 %1466, 31
  %1486 = xor i32 %1483, %1485
  %1487 = add nuw nsw i32 %1486, %1483
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %17, align 1
  %1490 = add i64 %1462, 14
  store i64 %1490, i64* %3, align 8
  store i32 %1467, i32* %1465, align 4
  %1491 = load i64, i64* %3, align 8
  %1492 = add i64 %1491, -223
  store i64 %1492, i64* %3, align 8
  br label %block_.L_44c65b

block_.L_44c73f:                                  ; preds = %block_.L_44c65b
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i2242, align 8
  store i64 ptrtoint (%G__0x44d690_type* @G__0x44d690 to i64), i64* %RCX.i1946, align 8
  %1493 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  %1494 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %1495 = sext i32 %1494 to i64
  %1496 = shl nsw i64 %1495, 3
  store i64 %1496, i64* %RDI.i2175, align 8
  %.lobit = lshr i32 %1494, 31
  %1497 = add i64 %1496, %1493
  store i64 %1497, i64* %RSI.i1586, align 8
  %1498 = icmp ult i64 %1497, %1493
  %1499 = icmp ult i64 %1497, %1496
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %12, align 1
  %1502 = trunc i64 %1497 to i32
  %1503 = and i32 %1502, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %13, align 1
  %1508 = xor i64 %1496, %1493
  %1509 = xor i64 %1508, %1497
  %1510 = lshr i64 %1509, 4
  %1511 = trunc i64 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %14, align 1
  %1513 = icmp eq i64 %1497, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %15, align 1
  %1515 = lshr i64 %1497, 63
  %1516 = trunc i64 %1515 to i8
  store i8 %1516, i8* %16, align 1
  %1517 = lshr i64 %1493, 63
  %1518 = lshr i64 %1495, 60
  %1519 = and i64 %1518, 1
  %1520 = xor i64 %1515, %1517
  %1521 = xor i64 %1515, %1519
  %1522 = add nuw nsw i64 %1520, %1521
  %1523 = icmp eq i64 %1522, 2
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %17, align 1
  %1525 = add i64 %1254, -36
  %1526 = add i64 %1285, 43
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i32*
  %1528 = load i32, i32* %1527, align 4
  %1529 = sub i32 %1528, %1494
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RAX.i205, align 8
  %1531 = icmp ult i32 %1528, %1494
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %12, align 1
  %1533 = and i32 %1529, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %13, align 1
  %1538 = xor i32 %1494, %1528
  %1539 = xor i32 %1538, %1529
  %1540 = lshr i32 %1539, 4
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  store i8 %1542, i8* %14, align 1
  %1543 = icmp eq i32 %1529, 0
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %15, align 1
  %1545 = lshr i32 %1529, 31
  %1546 = trunc i32 %1545 to i8
  store i8 %1546, i8* %16, align 1
  %1547 = lshr i32 %1528, 31
  %1548 = xor i32 %.lobit, %1547
  %1549 = xor i32 %1545, %1547
  %1550 = add nuw nsw i32 %1549, %1548
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %17, align 1
  %1553 = sext i32 %1529 to i64
  %1554 = load i64, i64* %RBP.i, align 8
  %1555 = add i64 %1554, -96
  %1556 = add i64 %1285, 57
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i64*
  store i64 %1553, i64* %1557, align 8
  %1558 = load i64, i64* %RSI.i1586, align 8
  %1559 = load i64, i64* %3, align 8
  store i64 %1558, i64* %RDI.i2175, align 8
  %1560 = load i64, i64* %RBP.i, align 8
  %1561 = add i64 %1560, -96
  %1562 = add i64 %1559, 7
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i64*
  %1564 = load i64, i64* %1563, align 8
  store i64 %1564, i64* %RSI.i1586, align 8
  %1565 = add i64 %1559, -309144
  %1566 = add i64 %1559, 12
  %1567 = load i64, i64* %6, align 8
  %1568 = add i64 %1567, -8
  %1569 = inttoptr i64 %1568 to i64*
  store i64 %1566, i64* %1569, align 8
  store i64 %1568, i64* %6, align 8
  store i64 %1565, i64* %3, align 8
  %call2_44c77f = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %1565, %struct.Memory* %call2_44c645)
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -36
  %1572 = load i64, i64* %3, align 8
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574, align 4
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX.i205, align 8
  store i32 %1575, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %1577 = add i64 %1572, 688
  store i64 %1577, i64* %3, align 8
  br label %block_.L_44ca34

block_.L_44c793:                                  ; preds = %block_.L_44c557
  store i64 8, i64* %RSI.i1586, align 8
  %1578 = load i32, i32* bitcast (%G_0x70eaa0_type* @G_0x70eaa0 to i32*), align 8
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RAX.i205, align 8
  %RDI.i1950 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 %1579, i64* %RDI.i1950, align 8
  %1580 = add i64 %1014, -308915
  %1581 = add i64 %1014, 21
  %1582 = load i64, i64* %6, align 8
  %1583 = add i64 %1582, -8
  %1584 = inttoptr i64 %1583 to i64*
  store i64 %1581, i64* %1584, align 8
  store i64 %1583, i64* %6, align 8
  store i64 %1580, i64* %3, align 8
  %1585 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %ECX.i1942 = bitcast %union.anon* %65 to i32*
  %1586 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RSI.i1586, align 8
  %1587 = load i64, i64* %RBP.i, align 8
  %1588 = add i64 %1587, -56
  %1589 = load i64, i64* %RAX.i205, align 8
  %1590 = add i64 %1586, 8
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1588 to i64*
  store i64 %1589, i64* %1591, align 8
  %1592 = load i64, i64* %RSI.i1586, align 8
  %1593 = load i64, i64* %RBP.i, align 8
  %1594 = add i64 %1593, -56
  %1595 = load i64, i64* %3, align 8
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1594 to i64*
  %1598 = load i64, i64* %1597, align 8
  %1599 = sub i64 %1592, %1598
  %1600 = icmp ult i64 %1592, %1598
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %12, align 1
  %1602 = trunc i64 %1599 to i32
  %1603 = and i32 %1602, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %13, align 1
  %1608 = xor i64 %1598, %1592
  %1609 = xor i64 %1608, %1599
  %1610 = lshr i64 %1609, 4
  %1611 = trunc i64 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %14, align 1
  %1613 = icmp eq i64 %1599, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %15, align 1
  %1615 = lshr i64 %1599, 63
  %1616 = trunc i64 %1615 to i8
  store i8 %1616, i8* %16, align 1
  %1617 = lshr i64 %1592, 63
  %1618 = lshr i64 %1598, 63
  %1619 = xor i64 %1618, %1617
  %1620 = xor i64 %1615, %1617
  %1621 = add nuw nsw i64 %1620, %1619
  %1622 = icmp eq i64 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %17, align 1
  %.v251 = select i1 %1613, i64 10, i64 25
  %1624 = add i64 %1595, %.v251
  store i64 %1624, i64* %3, align 8
  br i1 %1613, label %block_44c7ba, label %block_.L_44c7c9

block_44c7ba:                                     ; preds = %block_.L_44c793
  store i64 ptrtoint (%G__0x4c1921_type* @G__0x4c1921 to i64), i64* %RDI.i1950, align 8
  %1625 = add i64 %1624, 52278
  %1626 = add i64 %1624, 15
  %1627 = load i64, i64* %6, align 8
  %1628 = add i64 %1627, -8
  %1629 = inttoptr i64 %1628 to i64*
  store i64 %1626, i64* %1629, align 8
  store i64 %1628, i64* %6, align 8
  store i64 %1625, i64* %3, align 8
  %call2_44c7c4 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %1625, %struct.Memory* %1585)
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_44c7c9

block_.L_44c7c9:                                  ; preds = %block_.L_44c793, %block_44c7ba
  %1630 = phi i64 [ %1624, %block_.L_44c793 ], [ %.pre167, %block_44c7ba ]
  %MEMORY.19 = phi %struct.Memory* [ %1585, %block_.L_44c793 ], [ %call2_44c7c4, %block_44c7ba ]
  store i64 8, i64* %RSI.i1586, align 8
  %1631 = load i32, i32* bitcast (%G_0x70eaa0_type* @G_0x70eaa0 to i32*), align 8
  %1632 = zext i32 %1631 to i64
  store i64 %1632, i64* %RAX.i205, align 8
  store i64 %1632, i64* %RDI.i1950, align 8
  %1633 = add i64 %1630, -308969
  %1634 = add i64 %1630, 21
  %1635 = load i64, i64* %6, align 8
  %1636 = add i64 %1635, -8
  %1637 = inttoptr i64 %1636 to i64*
  store i64 %1634, i64* %1637, align 8
  store i64 %1636, i64* %6, align 8
  store i64 %1633, i64* %3, align 8
  %1638 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.19)
  %1639 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RSI.i1586, align 8
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -72
  %1642 = load i64, i64* %RAX.i205, align 8
  %1643 = add i64 %1639, 8
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1641 to i64*
  store i64 %1642, i64* %1644, align 8
  %1645 = load i64, i64* %RSI.i1586, align 8
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -72
  %1648 = load i64, i64* %3, align 8
  %1649 = add i64 %1648, 4
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1647 to i64*
  %1651 = load i64, i64* %1650, align 8
  %1652 = sub i64 %1645, %1651
  %1653 = icmp ult i64 %1645, %1651
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %12, align 1
  %1655 = trunc i64 %1652 to i32
  %1656 = and i32 %1655, 255
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %13, align 1
  %1661 = xor i64 %1651, %1645
  %1662 = xor i64 %1661, %1652
  %1663 = lshr i64 %1662, 4
  %1664 = trunc i64 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %14, align 1
  %1666 = icmp eq i64 %1652, 0
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %15, align 1
  %1668 = lshr i64 %1652, 63
  %1669 = trunc i64 %1668 to i8
  store i8 %1669, i8* %16, align 1
  %1670 = lshr i64 %1645, 63
  %1671 = lshr i64 %1651, 63
  %1672 = xor i64 %1671, %1670
  %1673 = xor i64 %1668, %1670
  %1674 = add nuw nsw i64 %1673, %1672
  %1675 = icmp eq i64 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %17, align 1
  %.v252 = select i1 %1666, i64 10, i64 25
  %1677 = add i64 %1648, %.v252
  store i64 %1677, i64* %3, align 8
  br i1 %1666, label %block_44c7f0, label %block_.L_44c7ff

block_44c7f0:                                     ; preds = %block_.L_44c7c9
  store i64 ptrtoint (%G__0x4c1936_type* @G__0x4c1936 to i64), i64* %RDI.i1950, align 8
  %1678 = add i64 %1677, 52224
  %1679 = add i64 %1677, 15
  %1680 = load i64, i64* %6, align 8
  %1681 = add i64 %1680, -8
  %1682 = inttoptr i64 %1681 to i64*
  store i64 %1679, i64* %1682, align 8
  store i64 %1681, i64* %6, align 8
  store i64 %1678, i64* %3, align 8
  %call2_44c7fa = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %1678, %struct.Memory* %1638)
  %.pre168 = load i64, i64* %RBP.i, align 8
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_44c7ff

block_.L_44c7ff:                                  ; preds = %block_.L_44c7c9, %block_44c7f0
  %1683 = phi i64 [ %1677, %block_.L_44c7c9 ], [ %.pre169, %block_44c7f0 ]
  %1684 = phi i64 [ %1646, %block_.L_44c7c9 ], [ %.pre168, %block_44c7f0 ]
  %MEMORY.20 = phi %struct.Memory* [ %1638, %block_.L_44c7c9 ], [ %call2_44c7fa, %block_44c7f0 ]
  %1685 = add i64 %1684, -20
  %1686 = add i64 %1683, 7
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i32*
  store i32 0, i32* %1687, align 4
  %RDX.i1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_44c806

block_.L_44c806:                                  ; preds = %block_.L_44c858, %block_.L_44c7ff
  %1688 = phi i64 [ %1825, %block_.L_44c858 ], [ %.pre170, %block_.L_44c7ff ]
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -20
  %1691 = add i64 %1688, 3
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RAX.i205, align 8
  %1695 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %1696 = sub i32 %1693, %1695
  %1697 = icmp ult i32 %1693, %1695
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %12, align 1
  %1699 = and i32 %1696, 255
  %1700 = tail call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  store i8 %1703, i8* %13, align 1
  %1704 = xor i32 %1695, %1693
  %1705 = xor i32 %1704, %1696
  %1706 = lshr i32 %1705, 4
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  store i8 %1708, i8* %14, align 1
  %1709 = icmp eq i32 %1696, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %15, align 1
  %1711 = lshr i32 %1696, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %16, align 1
  %1713 = lshr i32 %1693, 31
  %1714 = lshr i32 %1695, 31
  %1715 = xor i32 %1714, %1713
  %1716 = xor i32 %1711, %1713
  %1717 = add nuw nsw i32 %1716, %1715
  %1718 = icmp eq i32 %1717, 2
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %17, align 1
  %.v253 = select i1 %1697, i64 16, i64 101
  %1720 = add i64 %1688, %.v253
  store i64 %1720, i64* %3, align 8
  br i1 %1697, label %block_44c816, label %block_.L_44c86b

block_44c816:                                     ; preds = %block_.L_44c806
  %1721 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %1721, i64* %RAX.i205, align 8
  %1722 = add i64 %1720, 11
  store i64 %1722, i64* %3, align 8
  %1723 = load i32, i32* %1692, align 4
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RCX.i1946, align 8
  store i64 %1724, i64* %RDX.i1885, align 8
  %1725 = shl nuw nsw i64 %1724, 3
  %1726 = add i64 %1721, %1725
  %1727 = add i64 %1720, 17
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  %1729 = load i64, i64* %1728, align 8
  store i64 %1729, i64* %RAX.i205, align 8
  %1730 = add i64 %1729, 4
  %1731 = add i64 %1720, 21
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
  %.v257 = select i1 %1739, i64 66, i64 27
  %1743 = add i64 %1720, %.v257
  store i64 %1743, i64* %3, align 8
  br i1 %1739, label %block_.L_44c858, label %block_44c831

block_44c831:                                     ; preds = %block_44c816
  store i64 %1721, i64* %RAX.i205, align 8
  %1744 = add i64 %1743, 11
  store i64 %1744, i64* %3, align 8
  %1745 = load i32, i32* %1692, align 4
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %RCX.i1946, align 8
  store i64 %1746, i64* %RDX.i1885, align 8
  %1747 = shl nuw nsw i64 %1746, 3
  %1748 = add i64 %1721, %1747
  %1749 = add i64 %1743, 17
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i64*
  %1751 = load i64, i64* %1750, align 8
  store i64 %1751, i64* %RAX.i205, align 8
  %1752 = add i64 %1689, -56
  %1753 = add i64 %1743, 21
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i64*
  %1755 = load i64, i64* %1754, align 8
  store i64 %1755, i64* %RDX.i1885, align 8
  %1756 = add i64 %1689, -36
  %1757 = add i64 %1743, 24
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RCX.i1946, align 8
  %1761 = add i32 %1759, 1
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RSI.i1586, align 8
  %1763 = icmp eq i32 %1759, -1
  %1764 = icmp eq i32 %1761, 0
  %1765 = or i1 %1763, %1764
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %12, align 1
  %1767 = and i32 %1761, 255
  %1768 = tail call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, i8* %13, align 1
  %1772 = xor i32 %1761, %1759
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %14, align 1
  %1776 = zext i1 %1764 to i8
  store i8 %1776, i8* %15, align 1
  %1777 = lshr i32 %1761, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %16, align 1
  %1779 = lshr i32 %1759, 31
  %1780 = xor i32 %1777, %1779
  %1781 = add nuw nsw i32 %1780, %1777
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %17, align 1
  %1784 = add i64 %1743, 32
  store i64 %1784, i64* %3, align 8
  store i32 %1761, i32* %1758, align 4
  %1785 = load i32, i32* %ECX.i1942, align 4
  %1786 = load i64, i64* %3, align 8
  %1787 = sext i32 %1785 to i64
  store i64 %1787, i64* %RDI.i1950, align 8
  %1788 = load i64, i64* %RDX.i1885, align 8
  %1789 = shl nsw i64 %1787, 3
  %1790 = add i64 %1788, %1789
  %1791 = load i64, i64* %RAX.i205, align 8
  %1792 = add i64 %1786, 7
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1790 to i64*
  store i64 %1791, i64* %1793, align 8
  %.pre171 = load i64, i64* %3, align 8
  %.pre172 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c858

block_.L_44c858:                                  ; preds = %block_44c831, %block_44c816
  %1794 = phi i64 [ %.pre172, %block_44c831 ], [ %1689, %block_44c816 ]
  %1795 = phi i64 [ %.pre171, %block_44c831 ], [ %1743, %block_44c816 ]
  %1796 = add i64 %1794, -20
  %1797 = add i64 %1795, 8
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = add i32 %1799, 1
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RAX.i205, align 8
  %1802 = icmp eq i32 %1799, -1
  %1803 = icmp eq i32 %1800, 0
  %1804 = or i1 %1802, %1803
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %12, align 1
  %1806 = and i32 %1800, 255
  %1807 = tail call i32 @llvm.ctpop.i32(i32 %1806)
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  %1810 = xor i8 %1809, 1
  store i8 %1810, i8* %13, align 1
  %1811 = xor i32 %1800, %1799
  %1812 = lshr i32 %1811, 4
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  store i8 %1814, i8* %14, align 1
  %1815 = zext i1 %1803 to i8
  store i8 %1815, i8* %15, align 1
  %1816 = lshr i32 %1800, 31
  %1817 = trunc i32 %1816 to i8
  store i8 %1817, i8* %16, align 1
  %1818 = lshr i32 %1799, 31
  %1819 = xor i32 %1816, %1818
  %1820 = add nuw nsw i32 %1819, %1816
  %1821 = icmp eq i32 %1820, 2
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %17, align 1
  %1823 = add i64 %1795, 14
  store i64 %1823, i64* %3, align 8
  store i32 %1800, i32* %1798, align 4
  %1824 = load i64, i64* %3, align 8
  %1825 = add i64 %1824, -96
  store i64 %1825, i64* %3, align 8
  br label %block_.L_44c806

block_.L_44c86b:                                  ; preds = %block_.L_44c806
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i1885, align 8
  store i64 ptrtoint (%G__0x44d700_type* @G__0x44d700 to i64), i64* %RCX.i1946, align 8
  %1826 = add i64 %1689, -56
  %1827 = add i64 %1720, 21
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i64*
  %1829 = load i64, i64* %1828, align 8
  store i64 %1829, i64* %RSI.i1586, align 8
  %1830 = add i64 %1689, -36
  %1831 = add i64 %1720, 25
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = add i64 %1689, -104
  %1836 = add i64 %1720, 29
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i64*
  store i64 %1834, i64* %1837, align 8
  %1838 = load i64, i64* %RSI.i1586, align 8
  %1839 = load i64, i64* %3, align 8
  store i64 %1838, i64* %RDI.i1950, align 8
  %1840 = load i64, i64* %RBP.i, align 8
  %1841 = add i64 %1840, -104
  %1842 = add i64 %1839, 7
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i64 %1844, i64* %RSI.i1586, align 8
  %1845 = add i64 %1839, -309416
  %1846 = add i64 %1839, 12
  %1847 = load i64, i64* %6, align 8
  %1848 = add i64 %1847, -8
  %1849 = inttoptr i64 %1848 to i64*
  store i64 %1846, i64* %1849, align 8
  store i64 %1848, i64* %6, align 8
  store i64 %1845, i64* %3, align 8
  %call2_44c88f = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %1845, %struct.Memory* %MEMORY.20)
  %R8.i1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1850 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64* %R8.i1811, align 8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %1851, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i32 0, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %1852 = load i64, i64* %RBP.i, align 8
  %1853 = add i64 %1852, -8
  %1854 = add i64 %1850, 27
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i32*
  %1856 = load i32, i32* %1855, align 4
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RDI.i1950, align 8
  %1858 = add i64 %1852, -56
  %1859 = add i64 %1850, 31
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %RSI.i1586, align 8
  %1862 = add i64 %1852, -36
  %1863 = add i64 %1850, 34
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = zext i32 %1865 to i64
  store i64 %1866, i64* %RDX.i1885, align 8
  %1867 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1867, i64* %RCX.i1946, align 8
  %1868 = add i64 %1850, 3804
  %1869 = add i64 %1850, 47
  %1870 = load i64, i64* %6, align 8
  %1871 = add i64 %1870, -8
  %1872 = inttoptr i64 %1871 to i64*
  store i64 %1869, i64* %1872, align 8
  store i64 %1871, i64* %6, align 8
  store i64 %1868, i64* %3, align 8
  %call2_44c8be = tail call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* nonnull %0, i64 %1868, %struct.Memory* %call2_44c88f)
  %1873 = load i64, i64* %RBP.i, align 8
  %1874 = add i64 %1873, -20
  %1875 = load i64, i64* %3, align 8
  %1876 = add i64 %1875, 7
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1874 to i32*
  store i32 0, i32* %1877, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_44c8ca

block_.L_44c8ca:                                  ; preds = %block_.L_44c9b9, %block_.L_44c86b
  %1878 = phi i64 [ %2213, %block_.L_44c9b9 ], [ %.pre173, %block_.L_44c86b ]
  %1879 = load i64, i64* %RBP.i, align 8
  %1880 = add i64 %1879, -20
  %1881 = add i64 %1878, 3
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RAX.i205, align 8
  %1885 = load i32, i32* bitcast (%G_0x70eaac_type* @G_0x70eaac to i32*), align 8
  %1886 = sub i32 %1883, %1885
  %1887 = icmp ult i32 %1883, %1885
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %12, align 1
  %1889 = and i32 %1886, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %13, align 1
  %1894 = xor i32 %1885, %1883
  %1895 = xor i32 %1894, %1886
  %1896 = lshr i32 %1895, 4
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  store i8 %1898, i8* %14, align 1
  %1899 = icmp eq i32 %1886, 0
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %15, align 1
  %1901 = lshr i32 %1886, 31
  %1902 = trunc i32 %1901 to i8
  store i8 %1902, i8* %16, align 1
  %1903 = lshr i32 %1883, 31
  %1904 = lshr i32 %1885, 31
  %1905 = xor i32 %1904, %1903
  %1906 = xor i32 %1901, %1903
  %1907 = add nuw nsw i32 %1906, %1905
  %1908 = icmp eq i32 %1907, 2
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %17, align 1
  %.v254 = select i1 %1887, i64 16, i64 258
  %1910 = add i64 %1878, %.v254
  store i64 %1910, i64* %3, align 8
  br i1 %1887, label %block_44c8da, label %block_.L_44c9cc

block_44c8da:                                     ; preds = %block_.L_44c8ca
  %1911 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %1911, i64* %RAX.i205, align 8
  %1912 = add i64 %1910, 11
  store i64 %1912, i64* %3, align 8
  %1913 = load i32, i32* %1882, align 4
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RCX.i1946, align 8
  store i64 %1914, i64* %RDX.i1885, align 8
  %1915 = shl nuw nsw i64 %1914, 3
  %1916 = add i64 %1911, %1915
  %1917 = add i64 %1910, 17
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i205, align 8
  %1920 = add i64 %1879, -72
  %1921 = add i64 %1910, 21
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RDX.i1885, align 8
  %1924 = add i64 %1879, -44
  %1925 = add i64 %1910, 24
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RCX.i1946, align 8
  %1929 = add i32 %1927, 1
  %1930 = zext i32 %1929 to i64
  store i64 %1930, i64* %RSI.i1586, align 8
  %1931 = icmp eq i32 %1927, -1
  %1932 = icmp eq i32 %1929, 0
  %1933 = or i1 %1931, %1932
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %12, align 1
  %1935 = and i32 %1929, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %13, align 1
  %1940 = xor i32 %1929, %1927
  %1941 = lshr i32 %1940, 4
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  store i8 %1943, i8* %14, align 1
  %1944 = zext i1 %1932 to i8
  store i8 %1944, i8* %15, align 1
  %1945 = lshr i32 %1929, 31
  %1946 = trunc i32 %1945 to i8
  store i8 %1946, i8* %16, align 1
  %1947 = lshr i32 %1927, 31
  %1948 = xor i32 %1945, %1947
  %1949 = add nuw nsw i32 %1948, %1945
  %1950 = icmp eq i32 %1949, 2
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %17, align 1
  %1952 = add i64 %1910, 32
  store i64 %1952, i64* %3, align 8
  store i32 %1929, i32* %1926, align 4
  %1953 = load i32, i32* %ECX.i1942, align 4
  %1954 = load i64, i64* %3, align 8
  %1955 = sext i32 %1953 to i64
  store i64 %1955, i64* %RDI.i1950, align 8
  %1956 = load i64, i64* %RDX.i1885, align 8
  %1957 = shl nsw i64 %1955, 3
  %1958 = add i64 %1956, %1957
  %1959 = load i64, i64* %RAX.i205, align 8
  %1960 = add i64 %1954, 7
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1958 to i64*
  store i64 %1959, i64* %1961, align 8
  %1962 = load i64, i64* %3, align 8
  %1963 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %1963, i64* %RAX.i205, align 8
  %1964 = load i64, i64* %RBP.i, align 8
  %1965 = add i64 %1964, -20
  %1966 = add i64 %1962, 11
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i32*
  %1968 = load i32, i32* %1967, align 4
  %1969 = zext i32 %1968 to i64
  store i64 %1969, i64* %RCX.i1946, align 8
  store i64 %1969, i64* %RDX.i1885, align 8
  %1970 = shl nuw nsw i64 %1969, 3
  %1971 = add i64 %1963, %1970
  %1972 = add i64 %1962, 17
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i64*
  %1974 = load i64, i64* %1973, align 8
  store i64 %1974, i64* %RAX.i205, align 8
  %1975 = add i64 %1974, 8
  %1976 = add i64 %1962, 20
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = and i32 %1978, 1
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1979)
  %1982 = trunc i32 %1981 to i8
  %1983 = xor i8 %1982, 1
  store i8 %1983, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1984 = icmp eq i32 %1979, 0
  %1985 = trunc i32 %1979 to i8
  %1986 = xor i8 %1985, 1
  store i8 %1986, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v255 = select i1 %1984, i64 92, i64 32
  %1987 = add i64 %1962, %.v255
  store i64 %1987, i64* %3, align 8
  br i1 %1984, label %block_.L_44c95d, label %block_44c921

block_44c921:                                     ; preds = %block_44c8da
  store i64 %1963, i64* %RAX.i205, align 8
  %1988 = add i64 %1987, 11
  store i64 %1988, i64* %3, align 8
  %1989 = load i32, i32* %1967, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RCX.i1946, align 8
  store i64 %1990, i64* %RDX.i1885, align 8
  %1991 = shl nuw nsw i64 %1990, 3
  %1992 = add i64 %1963, %1991
  %1993 = add i64 %1987, 17
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i64*
  %1995 = load i64, i64* %1994, align 8
  store i64 %1995, i64* %RAX.i205, align 8
  %1996 = add i64 %1995, 48
  %1997 = add i64 %1987, 21
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i64*
  %1999 = load i64, i64* %1998, align 8
  store i64 %1999, i64* %RAX.i205, align 8
  %2000 = add i64 %1999, 6372
  %2001 = add i64 %1987, 27
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = shl i32 %2003, 1
  %2005 = icmp slt i32 %2003, 0
  %2006 = icmp slt i32 %2004, 0
  %2007 = xor i1 %2005, %2006
  %2008 = zext i32 %2004 to i64
  store i64 %2008, i64* %RCX.i1946, align 8
  %.lobit71 = lshr i32 %2003, 31
  %2009 = trunc i32 %.lobit71 to i8
  store i8 %2009, i8* %12, align 1
  %2010 = and i32 %2004, 254
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2015 = icmp eq i32 %2004, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %15, align 1
  %2017 = lshr i32 %2003, 30
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  store i8 %2019, i8* %16, align 1
  %2020 = zext i1 %2007 to i8
  store i8 %2020, i8* %17, align 1
  %2021 = add i64 %1964, -12
  %2022 = add i64 %1987, 32
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = add i32 %2024, %2004
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RCX.i1946, align 8
  %2027 = icmp ult i32 %2025, %2004
  %2028 = icmp ult i32 %2025, %2024
  %2029 = or i1 %2027, %2028
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %12, align 1
  %2031 = and i32 %2025, 255
  %2032 = tail call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  store i8 %2035, i8* %13, align 1
  %2036 = xor i32 %2024, %2004
  %2037 = xor i32 %2036, %2025
  %2038 = lshr i32 %2037, 4
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  store i8 %2040, i8* %14, align 1
  %2041 = icmp eq i32 %2025, 0
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %15, align 1
  %2043 = lshr i32 %2025, 31
  %2044 = trunc i32 %2043 to i8
  store i8 %2044, i8* %16, align 1
  %2045 = lshr i32 %2003, 30
  %2046 = and i32 %2045, 1
  %2047 = lshr i32 %2024, 31
  %2048 = xor i32 %2043, %2046
  %2049 = xor i32 %2043, %2047
  %2050 = add nuw nsw i32 %2048, %2049
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %17, align 1
  %2053 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %2053, i64* %RAX.i205, align 8
  %2054 = load i64, i64* %RBP.i, align 8
  %2055 = add i64 %2054, -20
  %2056 = add i64 %1987, 43
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RSI.i1586, align 8
  store i64 %2059, i64* %RDX.i1885, align 8
  %2060 = shl nuw nsw i64 %2059, 3
  %2061 = add i64 %2053, %2060
  %2062 = add i64 %1987, 49
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to i64*
  %2064 = load i64, i64* %2063, align 8
  store i64 %2064, i64* %RAX.i205, align 8
  %2065 = add i64 %2064, 48
  %2066 = add i64 %1987, 53
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i64*
  %2068 = load i64, i64* %2067, align 8
  store i64 %2068, i64* %RAX.i205, align 8
  %2069 = add i64 %2068, 6368
  %2070 = add i64 %1987, 59
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  store i32 %2025, i32* %2071, align 4
  %.pre174 = load i64, i64* %3, align 8
  %.pre175 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  %.pre176 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c95d

block_.L_44c95d:                                  ; preds = %block_44c921, %block_44c8da
  %2072 = phi i64 [ %.pre176, %block_44c921 ], [ %1964, %block_44c8da ]
  %2073 = phi i64 [ %.pre175, %block_44c921 ], [ %1963, %block_44c8da ]
  %2074 = phi i64 [ %.pre174, %block_44c921 ], [ %1987, %block_44c8da ]
  store i64 %2073, i64* %RAX.i205, align 8
  %2075 = add i64 %2072, -20
  %2076 = add i64 %2074, 11
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RCX.i1946, align 8
  store i64 %2079, i64* %RDX.i1885, align 8
  %2080 = shl nuw nsw i64 %2079, 3
  %2081 = add i64 %2073, %2080
  %2082 = add i64 %2074, 17
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i64*
  %2084 = load i64, i64* %2083, align 8
  store i64 %2084, i64* %RAX.i205, align 8
  %2085 = add i64 %2084, 8
  %2086 = add i64 %2074, 20
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = and i32 %2088, 2
  %2090 = zext i32 %2089 to i64
  store i64 %2090, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  %2091 = tail call i32 @llvm.ctpop.i32(i32 %2089)
  %2092 = trunc i32 %2091 to i8
  %2093 = xor i8 %2092, 1
  store i8 %2093, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2094 = icmp eq i32 %2089, 0
  %.lobit202 = lshr exact i32 %2089, 1
  %2095 = trunc i32 %.lobit202 to i8
  %2096 = xor i8 %2095, 1
  store i8 %2096, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v256 = select i1 %2094, i64 92, i64 32
  %2097 = add i64 %2074, %.v256
  store i64 %2097, i64* %3, align 8
  br i1 %2094, label %block_.L_44c9b9, label %block_44c97d

block_44c97d:                                     ; preds = %block_.L_44c95d
  store i64 %2073, i64* %RAX.i205, align 8
  %2098 = add i64 %2097, 11
  store i64 %2098, i64* %3, align 8
  %2099 = load i32, i32* %2077, align 4
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RCX.i1946, align 8
  store i64 %2100, i64* %RDX.i1885, align 8
  %2101 = shl nuw nsw i64 %2100, 3
  %2102 = add i64 %2073, %2101
  %2103 = add i64 %2097, 17
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i64*
  %2105 = load i64, i64* %2104, align 8
  store i64 %2105, i64* %RAX.i205, align 8
  %2106 = add i64 %2105, 56
  %2107 = add i64 %2097, 21
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i64*
  %2109 = load i64, i64* %2108, align 8
  store i64 %2109, i64* %RAX.i205, align 8
  %2110 = add i64 %2109, 6372
  %2111 = add i64 %2097, 27
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = shl i32 %2113, 1
  %2115 = icmp slt i32 %2113, 0
  %2116 = icmp slt i32 %2114, 0
  %2117 = xor i1 %2115, %2116
  %2118 = zext i32 %2114 to i64
  store i64 %2118, i64* %RCX.i1946, align 8
  %.lobit73 = lshr i32 %2113, 31
  %2119 = trunc i32 %.lobit73 to i8
  store i8 %2119, i8* %12, align 1
  %2120 = and i32 %2114, 254
  %2121 = tail call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  store i8 %2124, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2125 = icmp eq i32 %2114, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %15, align 1
  %2127 = lshr i32 %2113, 30
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  store i8 %2129, i8* %16, align 1
  %2130 = zext i1 %2117 to i8
  store i8 %2130, i8* %17, align 1
  %2131 = add i64 %2072, -16
  %2132 = add i64 %2097, 32
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  %2134 = load i32, i32* %2133, align 4
  %2135 = add i32 %2134, %2114
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RCX.i1946, align 8
  %2137 = icmp ult i32 %2135, %2114
  %2138 = icmp ult i32 %2135, %2134
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %12, align 1
  %2141 = and i32 %2135, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %13, align 1
  %2146 = xor i32 %2134, %2114
  %2147 = xor i32 %2146, %2135
  %2148 = lshr i32 %2147, 4
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  store i8 %2150, i8* %14, align 1
  %2151 = icmp eq i32 %2135, 0
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %15, align 1
  %2153 = lshr i32 %2135, 31
  %2154 = trunc i32 %2153 to i8
  store i8 %2154, i8* %16, align 1
  %2155 = lshr i32 %2113, 30
  %2156 = and i32 %2155, 1
  %2157 = lshr i32 %2134, 31
  %2158 = xor i32 %2153, %2156
  %2159 = xor i32 %2153, %2157
  %2160 = add nuw nsw i32 %2158, %2159
  %2161 = icmp eq i32 %2160, 2
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %17, align 1
  %2163 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %2163, i64* %RAX.i205, align 8
  %2164 = load i64, i64* %RBP.i, align 8
  %2165 = add i64 %2164, -20
  %2166 = add i64 %2097, 43
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i32*
  %2168 = load i32, i32* %2167, align 4
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %RSI.i1586, align 8
  store i64 %2169, i64* %RDX.i1885, align 8
  %2170 = shl nuw nsw i64 %2169, 3
  %2171 = add i64 %2163, %2170
  %2172 = add i64 %2097, 49
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i64*
  %2174 = load i64, i64* %2173, align 8
  store i64 %2174, i64* %RAX.i205, align 8
  %2175 = add i64 %2174, 56
  %2176 = add i64 %2097, 53
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i64*
  %2178 = load i64, i64* %2177, align 8
  store i64 %2178, i64* %RAX.i205, align 8
  %2179 = add i64 %2178, 6368
  %2180 = add i64 %2097, 59
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i32*
  store i32 %2135, i32* %2181, align 4
  %.pre177 = load i64, i64* %3, align 8
  %.pre178 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c9b9

block_.L_44c9b9:                                  ; preds = %block_44c97d, %block_.L_44c95d
  %2182 = phi i64 [ %.pre178, %block_44c97d ], [ %2072, %block_.L_44c95d ]
  %2183 = phi i64 [ %.pre177, %block_44c97d ], [ %2097, %block_.L_44c95d ]
  %2184 = add i64 %2182, -20
  %2185 = add i64 %2183, 8
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  %2188 = add i32 %2187, 1
  %2189 = zext i32 %2188 to i64
  store i64 %2189, i64* %RAX.i205, align 8
  %2190 = icmp eq i32 %2187, -1
  %2191 = icmp eq i32 %2188, 0
  %2192 = or i1 %2190, %2191
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %12, align 1
  %2194 = and i32 %2188, 255
  %2195 = tail call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  store i8 %2198, i8* %13, align 1
  %2199 = xor i32 %2188, %2187
  %2200 = lshr i32 %2199, 4
  %2201 = trunc i32 %2200 to i8
  %2202 = and i8 %2201, 1
  store i8 %2202, i8* %14, align 1
  %2203 = zext i1 %2191 to i8
  store i8 %2203, i8* %15, align 1
  %2204 = lshr i32 %2188, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %16, align 1
  %2206 = lshr i32 %2187, 31
  %2207 = xor i32 %2204, %2206
  %2208 = add nuw nsw i32 %2207, %2204
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %17, align 1
  %2211 = add i64 %2183, 14
  store i64 %2211, i64* %3, align 8
  store i32 %2188, i32* %2186, align 4
  %2212 = load i64, i64* %3, align 8
  %2213 = add i64 %2212, -253
  store i64 %2213, i64* %3, align 8
  br label %block_.L_44c8ca

block_.L_44c9cc:                                  ; preds = %block_.L_44c8ca
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i1885, align 8
  store i64 ptrtoint (%G__0x44dad0_type* @G__0x44dad0 to i64), i64* %RCX.i1946, align 8
  %2214 = add i64 %1879, -72
  %2215 = add i64 %1910, 21
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i64*
  %2217 = load i64, i64* %2216, align 8
  store i64 %2217, i64* %RSI.i1586, align 8
  %2218 = add i64 %1879, -44
  %2219 = add i64 %1910, 25
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i32*
  %2221 = load i32, i32* %2220, align 4
  %2222 = sext i32 %2221 to i64
  %2223 = add i64 %1879, -112
  %2224 = add i64 %1910, 29
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i64*
  store i64 %2222, i64* %2225, align 8
  %2226 = load i64, i64* %RSI.i1586, align 8
  %2227 = load i64, i64* %3, align 8
  store i64 %2226, i64* %RDI.i1950, align 8
  %2228 = load i64, i64* %RBP.i, align 8
  %2229 = add i64 %2228, -112
  %2230 = add i64 %2227, 7
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i64*
  %2232 = load i64, i64* %2231, align 8
  store i64 %2232, i64* %RSI.i1586, align 8
  %2233 = add i64 %2227, -309769
  %2234 = add i64 %2227, 12
  %2235 = load i64, i64* %6, align 8
  %2236 = add i64 %2235, -8
  %2237 = inttoptr i64 %2236 to i64*
  store i64 %2234, i64* %2237, align 8
  store i64 %2236, i64* %6, align 8
  store i64 %2233, i64* %3, align 8
  %call2_44c9f0 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %2233, %struct.Memory* %call2_44c8be)
  %2238 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64* %R8.i1811, align 8
  store i64 1, i64* %1851, align 8
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -8
  %2241 = add i64 %2238, 19
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RDI.i1950, align 8
  %2245 = add i64 %2239, -72
  %2246 = add i64 %2238, 23
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i64*
  %2248 = load i64, i64* %2247, align 8
  store i64 %2248, i64* %RSI.i1586, align 8
  %2249 = add i64 %2239, -44
  %2250 = add i64 %2238, 26
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RDX.i1885, align 8
  %2254 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %2254, i64* %RCX.i1946, align 8
  %2255 = add i64 %2238, 3451
  %2256 = add i64 %2238, 39
  %2257 = load i64, i64* %6, align 8
  %2258 = add i64 %2257, -8
  %2259 = inttoptr i64 %2258 to i64*
  store i64 %2256, i64* %2259, align 8
  store i64 %2258, i64* %6, align 8
  store i64 %2255, i64* %3, align 8
  %call2_44ca17 = tail call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* nonnull %0, i64 %2255, %struct.Memory* %call2_44c9f0)
  %2260 = load i64, i64* %RBP.i, align 8
  %2261 = add i64 %2260, -56
  %2262 = load i64, i64* %3, align 8
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2261 to i64*
  %2265 = load i64, i64* %2264, align 8
  store i64 %2265, i64* %RCX.i1946, align 8
  store i64 %2265, i64* %RDI.i1950, align 8
  %2266 = add i64 %2262, -309916
  %2267 = add i64 %2262, 12
  %2268 = load i64, i64* %6, align 8
  %2269 = add i64 %2268, -8
  %2270 = inttoptr i64 %2269 to i64*
  store i64 %2267, i64* %2270, align 8
  store i64 %2269, i64* %6, align 8
  store i64 %2266, i64* %3, align 8
  %2271 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_44ca17)
  %2272 = load i64, i64* %RBP.i, align 8
  %2273 = add i64 %2272, -72
  %2274 = load i64, i64* %3, align 8
  %2275 = add i64 %2274, 4
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2273 to i64*
  %2277 = load i64, i64* %2276, align 8
  store i64 %2277, i64* %RCX.i1946, align 8
  store i64 %2277, i64* %RDI.i1950, align 8
  %2278 = add i64 %2274, -309928
  %2279 = add i64 %2274, 12
  %2280 = load i64, i64* %6, align 8
  %2281 = add i64 %2280, -8
  %2282 = inttoptr i64 %2281 to i64*
  store i64 %2279, i64* %2282, align 8
  store i64 %2281, i64* %6, align 8
  store i64 %2278, i64* %3, align 8
  %2283 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2271)
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_44ca34

block_.L_44ca34:                                  ; preds = %block_.L_44c9cc, %block_.L_44c73f
  %2284 = phi i64 [ %.pre179, %block_.L_44c9cc ], [ %1577, %block_.L_44c73f ]
  %MEMORY.26 = phi %struct.Memory* [ %2283, %block_.L_44c9cc ], [ %call2_44c77f, %block_.L_44c73f ]
  %2285 = add i64 %2284, 11
  store i64 %2285, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %2286 = add i64 %2284, 2566
  br label %block_.L_44d43a

block_.L_44ca44:                                  ; preds = %block_44c54d
  %2287 = add i64 %911, -8
  %2288 = add i64 %999, 4
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  store i8 0, i8* %12, align 1
  %2291 = and i32 %2290, 255
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2296 = icmp eq i32 %2290, 0
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %15, align 1
  %2298 = lshr i32 %2290, 31
  %2299 = trunc i32 %2298 to i8
  store i8 %2299, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v211 = select i1 %2296, i64 10, i64 1253
  %2300 = add i64 %999, %.v211
  store i64 %2300, i64* %3, align 8
  br i1 %2296, label %block_44ca4e, label %block_.L_44cf29

block_44ca4e:                                     ; preds = %block_.L_44ca44
  %2301 = add i64 %911, -20
  %2302 = add i64 %2300, 7
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i32*
  store i32 0, i32* %2303, align 4
  %ECX.i1556 = bitcast %union.anon* %65 to i32*
  %RDX.i1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i1449 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_44ca55

block_.L_44ca55:                                  ; preds = %block_.L_44cb43, %block_44ca4e
  %2304 = phi i64 [ %2584, %block_.L_44cb43 ], [ %.pre131, %block_44ca4e ]
  %2305 = load i64, i64* %RBP.i, align 8
  %2306 = add i64 %2305, -20
  %2307 = add i64 %2304, 3
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i32*
  %2309 = load i32, i32* %2308, align 4
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RAX.i205, align 8
  %2311 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %2312 = sub i32 %2309, %2311
  %2313 = icmp ult i32 %2309, %2311
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %12, align 1
  %2315 = and i32 %2312, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %13, align 1
  %2320 = xor i32 %2311, %2309
  %2321 = xor i32 %2320, %2312
  %2322 = lshr i32 %2321, 4
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  store i8 %2324, i8* %14, align 1
  %2325 = icmp eq i32 %2312, 0
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %15, align 1
  %2327 = lshr i32 %2312, 31
  %2328 = trunc i32 %2327 to i8
  store i8 %2328, i8* %16, align 1
  %2329 = lshr i32 %2309, 31
  %2330 = lshr i32 %2311, 31
  %2331 = xor i32 %2330, %2329
  %2332 = xor i32 %2327, %2329
  %2333 = add nuw nsw i32 %2332, %2331
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %17, align 1
  %.v235 = select i1 %2313, i64 16, i64 257
  %2336 = add i64 %2304, %.v235
  store i64 %2336, i64* %3, align 8
  br i1 %2313, label %block_44ca65, label %block_.L_44cb56

block_44ca65:                                     ; preds = %block_.L_44ca55
  %2337 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %2337, i64* %RAX.i205, align 8
  %2338 = add i64 %2336, 11
  store i64 %2338, i64* %3, align 8
  %2339 = load i32, i32* %2308, align 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RCX.i1946, align 8
  store i64 %2340, i64* %RDX.i1557, align 8
  %2341 = shl nuw nsw i64 %2340, 3
  %2342 = add i64 %2337, %2341
  %2343 = add i64 %2336, 17
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i64*
  %2345 = load i64, i64* %2344, align 8
  store i64 %2345, i64* %RAX.i205, align 8
  %2346 = add i64 %2336, 20
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = add i32 %2348, -3
  %2350 = icmp ult i32 %2348, 3
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %12, align 1
  %2352 = and i32 %2349, 255
  %2353 = tail call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  store i8 %2356, i8* %13, align 1
  %2357 = xor i32 %2349, %2348
  %2358 = lshr i32 %2357, 4
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  store i8 %2360, i8* %14, align 1
  %2361 = icmp eq i32 %2349, 0
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %15, align 1
  %2363 = lshr i32 %2349, 31
  %2364 = trunc i32 %2363 to i8
  store i8 %2364, i8* %16, align 1
  %2365 = lshr i32 %2348, 31
  %2366 = xor i32 %2363, %2365
  %2367 = add nuw nsw i32 %2366, %2365
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %17, align 1
  %.v246 = select i1 %2361, i64 26, i64 222
  %2370 = add i64 %2336, %.v246
  store i64 %2370, i64* %3, align 8
  br i1 %2361, label %block_44ca7f, label %block_.L_44cb43

block_44ca7f:                                     ; preds = %block_44ca65
  store i64 %2337, i64* %RAX.i205, align 8
  %2371 = add i64 %2370, 11
  store i64 %2371, i64* %3, align 8
  %2372 = load i32, i32* %2308, align 4
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RCX.i1946, align 8
  store i64 %2373, i64* %RDX.i1557, align 8
  %2374 = shl nuw nsw i64 %2373, 3
  %2375 = add i64 %2337, %2374
  %2376 = add i64 %2370, 17
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i64*
  %2378 = load i64, i64* %2377, align 8
  store i64 %2378, i64* %RAX.i205, align 8
  %2379 = add i64 %2378, 40
  %2380 = add i64 %2370, 21
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i64*
  %2382 = load i64, i64* %2381, align 8
  store i64 %2382, i64* %RAX.i205, align 8
  %2383 = add i64 %2382, 6380
  %2384 = add i64 %2370, 28
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  store i8 0, i8* %12, align 1
  %2387 = and i32 %2386, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2392 = icmp eq i32 %2386, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %15, align 1
  %2394 = lshr i32 %2386, 31
  %2395 = trunc i32 %2394 to i8
  store i8 %2395, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v247 = select i1 %2392, i64 191, i64 34
  %2396 = add i64 %2370, %.v247
  store i64 %2396, i64* %3, align 8
  br i1 %2392, label %block_.L_44cb3e, label %block_44caa1

block_44caa1:                                     ; preds = %block_44ca7f
  store i64 %2337, i64* %RAX.i205, align 8
  %2397 = add i64 %2396, 11
  store i64 %2397, i64* %3, align 8
  %2398 = load i32, i32* %2308, align 4
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RCX.i1946, align 8
  store i64 %2399, i64* %RDX.i1557, align 8
  %2400 = shl nuw nsw i64 %2399, 3
  %2401 = add i64 %2337, %2400
  %2402 = add i64 %2396, 17
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i64*
  %2404 = load i64, i64* %2403, align 8
  store i64 %2404, i64* %RAX.i205, align 8
  %2405 = add i64 %2404, 40
  %2406 = add i64 %2396, 21
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i64*
  %2408 = load i64, i64* %2407, align 8
  store i64 %2408, i64* %RAX.i205, align 8
  %2409 = add i64 %2408, 6376
  %2410 = add i64 %2396, 28
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  store i8 0, i8* %12, align 1
  %2413 = and i32 %2412, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2418 = icmp eq i32 %2412, 0
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %15, align 1
  %2420 = lshr i32 %2412, 31
  %2421 = trunc i32 %2420 to i8
  store i8 %2421, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v248 = select i1 %2418, i64 34, i64 157
  %2422 = add i64 %2396, %.v248
  store i64 %2422, i64* %3, align 8
  br i1 %2418, label %block_44cac3, label %block_.L_44cb3e

block_44cac3:                                     ; preds = %block_44caa1
  %2423 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2423, i64* %RAX.i205, align 8
  %2424 = add i64 %2423, 72456
  %2425 = add i64 %2422, 14
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RCX.i1946, align 8
  store i64 %2337, i64* %RAX.i205, align 8
  %2429 = add i64 %2422, 25
  store i64 %2429, i64* %3, align 8
  %2430 = load i32, i32* %2308, align 4
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RDX.i1557, align 8
  store i64 %2431, i64* %RSI.i1586, align 8
  %2432 = shl nuw nsw i64 %2431, 3
  %2433 = add i64 %2337, %2432
  %2434 = add i64 %2422, 31
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i64*
  %2436 = load i64, i64* %2435, align 8
  store i64 %2436, i64* %RAX.i205, align 8
  %2437 = add i64 %2436, 40
  %2438 = add i64 %2422, 35
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i64*
  %2440 = load i64, i64* %2439, align 8
  store i64 %2440, i64* %RAX.i205, align 8
  %2441 = add i64 %2440, 4
  %2442 = add i64 %2422, 38
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = sub i32 %2427, %2444
  %2446 = icmp ult i32 %2427, %2444
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %12, align 1
  %2448 = and i32 %2445, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %13, align 1
  %2453 = xor i32 %2444, %2427
  %2454 = xor i32 %2453, %2445
  %2455 = lshr i32 %2454, 4
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  store i8 %2457, i8* %14, align 1
  %2458 = icmp eq i32 %2445, 0
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %15, align 1
  %2460 = lshr i32 %2445, 31
  %2461 = trunc i32 %2460 to i8
  store i8 %2461, i8* %16, align 1
  %2462 = lshr i32 %2427, 31
  %2463 = lshr i32 %2444, 31
  %2464 = xor i32 %2463, %2462
  %2465 = xor i32 %2460, %2462
  %2466 = add nuw nsw i32 %2465, %2464
  %2467 = icmp eq i32 %2466, 2
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %17, align 1
  %2469 = icmp ne i8 %2461, 0
  %2470 = xor i1 %2469, %2467
  %2471 = or i1 %2458, %2470
  %.v249 = select i1 %2471, i64 118, i64 44
  %2472 = add i64 %2422, %.v249
  store i64 %2472, i64* %3, align 8
  br i1 %2471, label %block_.L_44cb39, label %block_44caef

block_44caef:                                     ; preds = %block_44cac3
  %2473 = add i64 %2305, -36
  %2474 = add i64 %2472, 3
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RAX.i205, align 8
  store i64 %2337, i64* %RCX.i1946, align 8
  %2478 = add i64 %2472, 14
  store i64 %2478, i64* %3, align 8
  %2479 = load i32, i32* %2308, align 4
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RDX.i1557, align 8
  store i64 %2480, i64* %RSI.i1586, align 8
  %2481 = shl nuw nsw i64 %2480, 3
  %2482 = add i64 %2337, %2481
  %2483 = add i64 %2472, 20
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i64*
  %2485 = load i64, i64* %2484, align 8
  store i64 %2485, i64* %RCX.i1946, align 8
  %2486 = add i64 %2485, 40
  %2487 = add i64 %2472, 24
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i64*
  %2489 = load i64, i64* %2488, align 8
  %2490 = add i64 %2489, 20
  %2491 = add i64 %2472, 27
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  store i32 %2476, i32* %2492, align 4
  %2493 = load i64, i64* %3, align 8
  %2494 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %2494, i64* %RCX.i1946, align 8
  %2495 = load i64, i64* %RBP.i, align 8
  %2496 = add i64 %2495, -20
  %2497 = add i64 %2493, 11
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RAX.i205, align 8
  store i64 %2500, i64* %RSI.i1586, align 8
  %2501 = shl nuw nsw i64 %2500, 3
  %2502 = add i64 %2494, %2501
  %2503 = add i64 %2493, 17
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i64*
  %2505 = load i64, i64* %2504, align 8
  store i64 %2505, i64* %RCX.i1946, align 8
  %2506 = add i64 %2505, 40
  %2507 = add i64 %2493, 21
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i64*
  %2509 = load i64, i64* %2508, align 8
  store i64 %2509, i64* %RCX.i1946, align 8
  %2510 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %2510, i64* %RSI.i1586, align 8
  %2511 = add i64 %2495, -36
  %2512 = add i64 %2493, 32
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  %2515 = zext i32 %2514 to i64
  store i64 %2515, i64* %RAX.i205, align 8
  %2516 = add i32 %2514, 1
  %2517 = zext i32 %2516 to i64
  store i64 %2517, i64* %RDX.i1557, align 8
  %2518 = icmp eq i32 %2514, -1
  %2519 = icmp eq i32 %2516, 0
  %2520 = or i1 %2518, %2519
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %12, align 1
  %2522 = and i32 %2516, 255
  %2523 = tail call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  store i8 %2526, i8* %13, align 1
  %2527 = xor i32 %2516, %2514
  %2528 = lshr i32 %2527, 4
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  store i8 %2530, i8* %14, align 1
  %2531 = zext i1 %2519 to i8
  store i8 %2531, i8* %15, align 1
  %2532 = lshr i32 %2516, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %16, align 1
  %2534 = lshr i32 %2514, 31
  %2535 = xor i32 %2532, %2534
  %2536 = add nuw nsw i32 %2535, %2532
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %17, align 1
  %2539 = add i64 %2493, 40
  store i64 %2539, i64* %3, align 8
  store i32 %2516, i32* %2513, align 4
  %2540 = load i32, i32* %EAX.i2713, align 4
  %2541 = load i64, i64* %3, align 8
  %2542 = sext i32 %2540 to i64
  store i64 %2542, i64* %RDI.i1449, align 8
  %2543 = load i64, i64* %RSI.i1586, align 8
  %2544 = shl nsw i64 %2542, 3
  %2545 = add i64 %2543, %2544
  %2546 = load i64, i64* %RCX.i1946, align 8
  %2547 = add i64 %2541, 7
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2545 to i64*
  store i64 %2546, i64* %2548, align 8
  %.pre132 = load i64, i64* %3, align 8
  %.pre133.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44cb39

block_.L_44cb39:                                  ; preds = %block_44caef, %block_44cac3
  %.pre133.pre = phi i64 [ %.pre133.pre.pre, %block_44caef ], [ %2305, %block_44cac3 ]
  %2549 = phi i64 [ %.pre132, %block_44caef ], [ %2472, %block_44cac3 ]
  %2550 = add i64 %2549, 5
  store i64 %2550, i64* %3, align 8
  br label %block_.L_44cb3e

block_.L_44cb3e:                                  ; preds = %block_44caa1, %block_.L_44cb39, %block_44ca7f
  %.pre133 = phi i64 [ %.pre133.pre, %block_.L_44cb39 ], [ %2305, %block_44caa1 ], [ %2305, %block_44ca7f ]
  %2551 = phi i64 [ %2550, %block_.L_44cb39 ], [ %2422, %block_44caa1 ], [ %2396, %block_44ca7f ]
  %2552 = add i64 %2551, 5
  store i64 %2552, i64* %3, align 8
  br label %block_.L_44cb43

block_.L_44cb43:                                  ; preds = %block_44ca65, %block_.L_44cb3e
  %2553 = phi i64 [ %.pre133, %block_.L_44cb3e ], [ %2305, %block_44ca65 ]
  %2554 = phi i64 [ %2552, %block_.L_44cb3e ], [ %2370, %block_44ca65 ]
  %2555 = add i64 %2553, -20
  %2556 = add i64 %2554, 8
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = add i32 %2558, 1
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i205, align 8
  %2561 = icmp eq i32 %2558, -1
  %2562 = icmp eq i32 %2559, 0
  %2563 = or i1 %2561, %2562
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %12, align 1
  %2565 = and i32 %2559, 255
  %2566 = tail call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  store i8 %2569, i8* %13, align 1
  %2570 = xor i32 %2559, %2558
  %2571 = lshr i32 %2570, 4
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  store i8 %2573, i8* %14, align 1
  %2574 = zext i1 %2562 to i8
  store i8 %2574, i8* %15, align 1
  %2575 = lshr i32 %2559, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %16, align 1
  %2577 = lshr i32 %2558, 31
  %2578 = xor i32 %2575, %2577
  %2579 = add nuw nsw i32 %2578, %2575
  %2580 = icmp eq i32 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %17, align 1
  %2582 = add i64 %2554, 14
  store i64 %2582, i64* %3, align 8
  store i32 %2559, i32* %2557, align 4
  %2583 = load i64, i64* %3, align 8
  %2584 = add i64 %2583, -252
  store i64 %2584, i64* %3, align 8
  br label %block_.L_44ca55

block_.L_44cb56:                                  ; preds = %block_.L_44ca55
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i1557, align 8
  store i64 ptrtoint (%G__0x44db40_type* @G__0x44db40 to i64), i64* %RCX.i1946, align 8
  %2585 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %2585, i64* %RSI.i1586, align 8
  %2586 = add i64 %2305, -36
  %2587 = add i64 %2336, 29
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  %2589 = load i32, i32* %2588, align 4
  %2590 = sext i32 %2589 to i64
  %2591 = add i64 %2305, -120
  %2592 = add i64 %2336, 33
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i64*
  store i64 %2590, i64* %2593, align 8
  %2594 = load i64, i64* %RSI.i1586, align 8
  %2595 = load i64, i64* %3, align 8
  store i64 %2594, i64* %RDI.i1449, align 8
  %2596 = load i64, i64* %RBP.i, align 8
  %2597 = add i64 %2596, -120
  %2598 = add i64 %2595, 7
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %RSI.i1586, align 8
  %2601 = add i64 %2595, -310167
  %2602 = add i64 %2595, 12
  %2603 = load i64, i64* %6, align 8
  %2604 = add i64 %2603, -8
  %2605 = inttoptr i64 %2604 to i64*
  store i64 %2602, i64* %2605, align 8
  store i64 %2604, i64* %6, align 8
  store i64 %2601, i64* %3, align 8
  %call2_44cb7e = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %2601, %struct.Memory* %2)
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -36
  %2608 = load i64, i64* %3, align 8
  %2609 = add i64 %2608, 3
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2607 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RAX.i205, align 8
  %2613 = add i64 %2606, -40
  %2614 = add i64 %2608, 6
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  store i32 %2611, i32* %2615, align 4
  %2616 = load i64, i64* %RBP.i, align 8
  %2617 = add i64 %2616, -20
  %2618 = load i64, i64* %3, align 8
  %2619 = add i64 %2618, 7
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2617 to i32*
  store i32 0, i32* %2620, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_44cb90

block_.L_44cb90:                                  ; preds = %block_.L_44cc7e, %block_.L_44cb56
  %2621 = phi i64 [ %2900, %block_.L_44cc7e ], [ %.pre134, %block_.L_44cb56 ]
  %2622 = load i64, i64* %RBP.i, align 8
  %2623 = add i64 %2622, -20
  %2624 = add i64 %2621, 3
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RAX.i205, align 8
  %2628 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %2629 = sub i32 %2626, %2628
  %2630 = icmp ult i32 %2626, %2628
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %12, align 1
  %2632 = and i32 %2629, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %13, align 1
  %2637 = xor i32 %2628, %2626
  %2638 = xor i32 %2637, %2629
  %2639 = lshr i32 %2638, 4
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %14, align 1
  %2642 = icmp eq i32 %2629, 0
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %15, align 1
  %2644 = lshr i32 %2629, 31
  %2645 = trunc i32 %2644 to i8
  store i8 %2645, i8* %16, align 1
  %2646 = lshr i32 %2626, 31
  %2647 = lshr i32 %2628, 31
  %2648 = xor i32 %2647, %2646
  %2649 = xor i32 %2644, %2646
  %2650 = add nuw nsw i32 %2649, %2648
  %2651 = icmp eq i32 %2650, 2
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %17, align 1
  %.v236 = select i1 %2630, i64 16, i64 257
  %2653 = add i64 %2621, %.v236
  store i64 %2653, i64* %3, align 8
  br i1 %2630, label %block_44cba0, label %block_.L_44cc91

block_44cba0:                                     ; preds = %block_.L_44cb90
  %2654 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %2654, i64* %RAX.i205, align 8
  %2655 = add i64 %2653, 11
  store i64 %2655, i64* %3, align 8
  %2656 = load i32, i32* %2625, align 4
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RCX.i1946, align 8
  store i64 %2657, i64* %RDX.i1557, align 8
  %2658 = shl nuw nsw i64 %2657, 3
  %2659 = add i64 %2654, %2658
  %2660 = add i64 %2653, 17
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RAX.i205, align 8
  %2663 = add i64 %2653, 20
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = add i32 %2665, -3
  %2667 = icmp ult i32 %2665, 3
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %12, align 1
  %2669 = and i32 %2666, 255
  %2670 = tail call i32 @llvm.ctpop.i32(i32 %2669)
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  %2673 = xor i8 %2672, 1
  store i8 %2673, i8* %13, align 1
  %2674 = xor i32 %2666, %2665
  %2675 = lshr i32 %2674, 4
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  store i8 %2677, i8* %14, align 1
  %2678 = icmp eq i32 %2666, 0
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %15, align 1
  %2680 = lshr i32 %2666, 31
  %2681 = trunc i32 %2680 to i8
  store i8 %2681, i8* %16, align 1
  %2682 = lshr i32 %2665, 31
  %2683 = xor i32 %2680, %2682
  %2684 = add nuw nsw i32 %2683, %2682
  %2685 = icmp eq i32 %2684, 2
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %17, align 1
  %.v242 = select i1 %2678, i64 26, i64 222
  %2687 = add i64 %2653, %.v242
  store i64 %2687, i64* %3, align 8
  br i1 %2678, label %block_44cbba, label %block_.L_44cc7e

block_44cbba:                                     ; preds = %block_44cba0
  store i64 %2654, i64* %RAX.i205, align 8
  %2688 = add i64 %2687, 11
  store i64 %2688, i64* %3, align 8
  %2689 = load i32, i32* %2625, align 4
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RCX.i1946, align 8
  store i64 %2690, i64* %RDX.i1557, align 8
  %2691 = shl nuw nsw i64 %2690, 3
  %2692 = add i64 %2654, %2691
  %2693 = add i64 %2687, 17
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i64*
  %2695 = load i64, i64* %2694, align 8
  store i64 %2695, i64* %RAX.i205, align 8
  %2696 = add i64 %2695, 40
  %2697 = add i64 %2687, 21
  store i64 %2697, i64* %3, align 8
  %2698 = inttoptr i64 %2696 to i64*
  %2699 = load i64, i64* %2698, align 8
  store i64 %2699, i64* %RAX.i205, align 8
  %2700 = add i64 %2699, 6380
  %2701 = add i64 %2687, 28
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i32*
  %2703 = load i32, i32* %2702, align 4
  store i8 0, i8* %12, align 1
  %2704 = and i32 %2703, 255
  %2705 = tail call i32 @llvm.ctpop.i32(i32 %2704)
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = xor i8 %2707, 1
  store i8 %2708, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2709 = icmp eq i32 %2703, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %15, align 1
  %2711 = lshr i32 %2703, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v243 = select i1 %2709, i64 191, i64 34
  %2713 = add i64 %2687, %.v243
  store i64 %2713, i64* %3, align 8
  br i1 %2709, label %block_.L_44cc79, label %block_44cbdc

block_44cbdc:                                     ; preds = %block_44cbba
  store i64 %2654, i64* %RAX.i205, align 8
  %2714 = add i64 %2713, 11
  store i64 %2714, i64* %3, align 8
  %2715 = load i32, i32* %2625, align 4
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RCX.i1946, align 8
  store i64 %2716, i64* %RDX.i1557, align 8
  %2717 = shl nuw nsw i64 %2716, 3
  %2718 = add i64 %2654, %2717
  %2719 = add i64 %2713, 17
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i64*
  %2721 = load i64, i64* %2720, align 8
  store i64 %2721, i64* %RAX.i205, align 8
  %2722 = add i64 %2721, 40
  %2723 = add i64 %2713, 21
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i64*
  %2725 = load i64, i64* %2724, align 8
  store i64 %2725, i64* %RAX.i205, align 8
  %2726 = add i64 %2725, 6376
  %2727 = add i64 %2713, 28
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  store i8 0, i8* %12, align 1
  %2730 = and i32 %2729, 255
  %2731 = tail call i32 @llvm.ctpop.i32(i32 %2730)
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = xor i8 %2733, 1
  store i8 %2734, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2735 = icmp eq i32 %2729, 0
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %15, align 1
  %2737 = lshr i32 %2729, 31
  %2738 = trunc i32 %2737 to i8
  store i8 %2738, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v244 = select i1 %2735, i64 34, i64 157
  %2739 = add i64 %2713, %.v244
  store i64 %2739, i64* %3, align 8
  br i1 %2735, label %block_44cbfe, label %block_.L_44cc79

block_44cbfe:                                     ; preds = %block_44cbdc
  %2740 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2740, i64* %RAX.i205, align 8
  %2741 = add i64 %2740, 72456
  %2742 = add i64 %2739, 14
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = zext i32 %2744 to i64
  store i64 %2745, i64* %RCX.i1946, align 8
  store i64 %2654, i64* %RAX.i205, align 8
  %2746 = add i64 %2739, 25
  store i64 %2746, i64* %3, align 8
  %2747 = load i32, i32* %2625, align 4
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RDX.i1557, align 8
  store i64 %2748, i64* %RSI.i1586, align 8
  %2749 = shl nuw nsw i64 %2748, 3
  %2750 = add i64 %2654, %2749
  %2751 = add i64 %2739, 31
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i64*
  %2753 = load i64, i64* %2752, align 8
  store i64 %2753, i64* %RAX.i205, align 8
  %2754 = add i64 %2753, 40
  %2755 = add i64 %2739, 35
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i64*
  %2757 = load i64, i64* %2756, align 8
  store i64 %2757, i64* %RAX.i205, align 8
  %2758 = add i64 %2757, 4
  %2759 = add i64 %2739, 38
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i32*
  %2761 = load i32, i32* %2760, align 4
  %2762 = sub i32 %2744, %2761
  %2763 = icmp ult i32 %2744, %2761
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %12, align 1
  %2765 = and i32 %2762, 255
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %13, align 1
  %2770 = xor i32 %2761, %2744
  %2771 = xor i32 %2770, %2762
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %14, align 1
  %2775 = icmp eq i32 %2762, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %15, align 1
  %2777 = lshr i32 %2762, 31
  %2778 = trunc i32 %2777 to i8
  store i8 %2778, i8* %16, align 1
  %2779 = lshr i32 %2744, 31
  %2780 = lshr i32 %2761, 31
  %2781 = xor i32 %2780, %2779
  %2782 = xor i32 %2777, %2779
  %2783 = add nuw nsw i32 %2782, %2781
  %2784 = icmp eq i32 %2783, 2
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %17, align 1
  %2786 = icmp ne i8 %2778, 0
  %2787 = xor i1 %2786, %2784
  %.v245 = select i1 %2787, i64 44, i64 118
  %2788 = add i64 %2739, %.v245
  store i64 %2788, i64* %3, align 8
  br i1 %2787, label %block_44cc2a, label %block_.L_44cc74

block_44cc2a:                                     ; preds = %block_44cbfe
  %2789 = add i64 %2622, -36
  %2790 = add i64 %2788, 3
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RAX.i205, align 8
  store i64 %2654, i64* %RCX.i1946, align 8
  %2794 = add i64 %2788, 14
  store i64 %2794, i64* %3, align 8
  %2795 = load i32, i32* %2625, align 4
  %2796 = zext i32 %2795 to i64
  store i64 %2796, i64* %RDX.i1557, align 8
  store i64 %2796, i64* %RSI.i1586, align 8
  %2797 = shl nuw nsw i64 %2796, 3
  %2798 = add i64 %2654, %2797
  %2799 = add i64 %2788, 20
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i64*
  %2801 = load i64, i64* %2800, align 8
  store i64 %2801, i64* %RCX.i1946, align 8
  %2802 = add i64 %2801, 40
  %2803 = add i64 %2788, 24
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i64*
  %2805 = load i64, i64* %2804, align 8
  %2806 = add i64 %2805, 20
  %2807 = add i64 %2788, 27
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i32*
  store i32 %2792, i32* %2808, align 4
  %2809 = load i64, i64* %3, align 8
  %2810 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %2810, i64* %RCX.i1946, align 8
  %2811 = load i64, i64* %RBP.i, align 8
  %2812 = add i64 %2811, -20
  %2813 = add i64 %2809, 11
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i32*
  %2815 = load i32, i32* %2814, align 4
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RAX.i205, align 8
  store i64 %2816, i64* %RSI.i1586, align 8
  %2817 = shl nuw nsw i64 %2816, 3
  %2818 = add i64 %2810, %2817
  %2819 = add i64 %2809, 17
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i64*
  %2821 = load i64, i64* %2820, align 8
  store i64 %2821, i64* %RCX.i1946, align 8
  %2822 = add i64 %2821, 40
  %2823 = add i64 %2809, 21
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i64*
  %2825 = load i64, i64* %2824, align 8
  store i64 %2825, i64* %RCX.i1946, align 8
  %2826 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %2826, i64* %RSI.i1586, align 8
  %2827 = add i64 %2811, -36
  %2828 = add i64 %2809, 32
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RAX.i205, align 8
  %2832 = add i32 %2830, 1
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RDX.i1557, align 8
  %2834 = icmp eq i32 %2830, -1
  %2835 = icmp eq i32 %2832, 0
  %2836 = or i1 %2834, %2835
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %12, align 1
  %2838 = and i32 %2832, 255
  %2839 = tail call i32 @llvm.ctpop.i32(i32 %2838)
  %2840 = trunc i32 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = xor i8 %2841, 1
  store i8 %2842, i8* %13, align 1
  %2843 = xor i32 %2832, %2830
  %2844 = lshr i32 %2843, 4
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %14, align 1
  %2847 = zext i1 %2835 to i8
  store i8 %2847, i8* %15, align 1
  %2848 = lshr i32 %2832, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %16, align 1
  %2850 = lshr i32 %2830, 31
  %2851 = xor i32 %2848, %2850
  %2852 = add nuw nsw i32 %2851, %2848
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %17, align 1
  %2855 = add i64 %2809, 40
  store i64 %2855, i64* %3, align 8
  store i32 %2832, i32* %2829, align 4
  %2856 = load i32, i32* %EAX.i2713, align 4
  %2857 = load i64, i64* %3, align 8
  %2858 = sext i32 %2856 to i64
  store i64 %2858, i64* %RDI.i1449, align 8
  %2859 = load i64, i64* %RSI.i1586, align 8
  %2860 = shl nsw i64 %2858, 3
  %2861 = add i64 %2859, %2860
  %2862 = load i64, i64* %RCX.i1946, align 8
  %2863 = add i64 %2857, 7
  store i64 %2863, i64* %3, align 8
  %2864 = inttoptr i64 %2861 to i64*
  store i64 %2862, i64* %2864, align 8
  %.pre135 = load i64, i64* %3, align 8
  %.pre136.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44cc74

block_.L_44cc74:                                  ; preds = %block_44cbfe, %block_44cc2a
  %.pre136.pre = phi i64 [ %2622, %block_44cbfe ], [ %.pre136.pre.pre, %block_44cc2a ]
  %2865 = phi i64 [ %2788, %block_44cbfe ], [ %.pre135, %block_44cc2a ]
  %2866 = add i64 %2865, 5
  store i64 %2866, i64* %3, align 8
  br label %block_.L_44cc79

block_.L_44cc79:                                  ; preds = %block_44cbdc, %block_.L_44cc74, %block_44cbba
  %.pre136 = phi i64 [ %.pre136.pre, %block_.L_44cc74 ], [ %2622, %block_44cbdc ], [ %2622, %block_44cbba ]
  %2867 = phi i64 [ %2866, %block_.L_44cc74 ], [ %2739, %block_44cbdc ], [ %2713, %block_44cbba ]
  %2868 = add i64 %2867, 5
  store i64 %2868, i64* %3, align 8
  br label %block_.L_44cc7e

block_.L_44cc7e:                                  ; preds = %block_44cba0, %block_.L_44cc79
  %2869 = phi i64 [ %.pre136, %block_.L_44cc79 ], [ %2622, %block_44cba0 ]
  %2870 = phi i64 [ %2868, %block_.L_44cc79 ], [ %2687, %block_44cba0 ]
  %2871 = add i64 %2869, -20
  %2872 = add i64 %2870, 8
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = add i32 %2874, 1
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RAX.i205, align 8
  %2877 = icmp eq i32 %2874, -1
  %2878 = icmp eq i32 %2875, 0
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %12, align 1
  %2881 = and i32 %2875, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %13, align 1
  %2886 = xor i32 %2875, %2874
  %2887 = lshr i32 %2886, 4
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  store i8 %2889, i8* %14, align 1
  %2890 = zext i1 %2878 to i8
  store i8 %2890, i8* %15, align 1
  %2891 = lshr i32 %2875, 31
  %2892 = trunc i32 %2891 to i8
  store i8 %2892, i8* %16, align 1
  %2893 = lshr i32 %2874, 31
  %2894 = xor i32 %2891, %2893
  %2895 = add nuw nsw i32 %2894, %2891
  %2896 = icmp eq i32 %2895, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %17, align 1
  %2898 = add i64 %2870, 14
  store i64 %2898, i64* %3, align 8
  store i32 %2875, i32* %2873, align 4
  %2899 = load i64, i64* %3, align 8
  %2900 = add i64 %2899, -252
  store i64 %2900, i64* %3, align 8
  br label %block_.L_44cb90

block_.L_44cc91:                                  ; preds = %block_.L_44cb90
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i1557, align 8
  store i64 ptrtoint (%G__0x44dbb0_type* @G__0x44dbb0 to i64), i64* %RCX.i1946, align 8
  %2901 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %2901, i64* %RSI.i1586, align 8
  %2902 = add i64 %2622, -40
  %2903 = add i64 %2653, 29
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = sext i32 %2905 to i64
  %2907 = shl nsw i64 %2906, 3
  store i64 %2907, i64* %RDI.i1449, align 8
  %2908 = add i64 %2907, %2901
  store i64 %2908, i64* %RSI.i1586, align 8
  %2909 = icmp ult i64 %2908, %2901
  %2910 = icmp ult i64 %2908, %2907
  %2911 = or i1 %2909, %2910
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %12, align 1
  %2913 = trunc i64 %2908 to i32
  %2914 = and i32 %2913, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %13, align 1
  %2919 = xor i64 %2907, %2901
  %2920 = xor i64 %2919, %2908
  %2921 = lshr i64 %2920, 4
  %2922 = trunc i64 %2921 to i8
  %2923 = and i8 %2922, 1
  store i8 %2923, i8* %14, align 1
  %2924 = icmp eq i64 %2908, 0
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %15, align 1
  %2926 = lshr i64 %2908, 63
  %2927 = trunc i64 %2926 to i8
  store i8 %2927, i8* %16, align 1
  %2928 = lshr i64 %2901, 63
  %2929 = lshr i64 %2906, 60
  %2930 = and i64 %2929, 1
  %2931 = xor i64 %2926, %2928
  %2932 = xor i64 %2926, %2930
  %2933 = add nuw nsw i64 %2931, %2932
  %2934 = icmp eq i64 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %17, align 1
  %2936 = add i64 %2622, -36
  %2937 = add i64 %2653, 39
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  %2939 = load i32, i32* %2938, align 4
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RAX.i205, align 8
  %2941 = add i64 %2653, 42
  store i64 %2941, i64* %3, align 8
  %2942 = load i32, i32* %2904, align 4
  %2943 = sub i32 %2939, %2942
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RAX.i205, align 8
  %2945 = icmp ult i32 %2939, %2942
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %12, align 1
  %2947 = and i32 %2943, 255
  %2948 = tail call i32 @llvm.ctpop.i32(i32 %2947)
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  store i8 %2951, i8* %13, align 1
  %2952 = xor i32 %2942, %2939
  %2953 = xor i32 %2952, %2943
  %2954 = lshr i32 %2953, 4
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  store i8 %2956, i8* %14, align 1
  %2957 = icmp eq i32 %2943, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %15, align 1
  %2959 = lshr i32 %2943, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %16, align 1
  %2961 = lshr i32 %2939, 31
  %2962 = lshr i32 %2942, 31
  %2963 = xor i32 %2962, %2961
  %2964 = xor i32 %2959, %2961
  %2965 = add nuw nsw i32 %2964, %2963
  %2966 = icmp eq i32 %2965, 2
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %17, align 1
  %2968 = sext i32 %2943 to i64
  %2969 = load i64, i64* %RBP.i, align 8
  %2970 = add i64 %2969, -128
  %2971 = add i64 %2653, 49
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i64*
  store i64 %2968, i64* %2972, align 8
  %2973 = load i64, i64* %RSI.i1586, align 8
  %2974 = load i64, i64* %3, align 8
  store i64 %2973, i64* %RDI.i1449, align 8
  %2975 = load i64, i64* %RBP.i, align 8
  %2976 = add i64 %2975, -128
  %2977 = add i64 %2974, 7
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i64*
  %2979 = load i64, i64* %2978, align 8
  store i64 %2979, i64* %RSI.i1586, align 8
  %2980 = add i64 %2974, -310498
  %2981 = add i64 %2974, 12
  %2982 = load i64, i64* %6, align 8
  %2983 = add i64 %2982, -8
  %2984 = inttoptr i64 %2983 to i64*
  store i64 %2981, i64* %2984, align 8
  store i64 %2983, i64* %6, align 8
  store i64 %2980, i64* %3, align 8
  %call2_44ccc9 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %2980, %struct.Memory* %call2_44cb7e)
  %2985 = load i64, i64* %RBP.i, align 8
  %2986 = add i64 %2985, -24
  %2987 = load i64, i64* %3, align 8
  %2988 = add i64 %2987, 7
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2986 to i32*
  store i32 0, i32* %2989, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_44ccd5

block_.L_44ccd5:                                  ; preds = %block_44cce1, %block_.L_44cc91
  %2990 = phi i64 [ %3134, %block_44cce1 ], [ %.pre137, %block_.L_44cc91 ]
  %2991 = load i64, i64* %RBP.i, align 8
  %2992 = add i64 %2991, -24
  %2993 = add i64 %2990, 3
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i32*
  %2995 = load i32, i32* %2994, align 4
  %2996 = zext i32 %2995 to i64
  store i64 %2996, i64* %RAX.i205, align 8
  %2997 = add i64 %2991, -40
  %2998 = add i64 %2990, 6
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2997 to i32*
  %3000 = load i32, i32* %2999, align 4
  %3001 = sub i32 %2995, %3000
  %3002 = icmp ult i32 %2995, %3000
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %12, align 1
  %3004 = and i32 %3001, 255
  %3005 = tail call i32 @llvm.ctpop.i32(i32 %3004)
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = xor i8 %3007, 1
  store i8 %3008, i8* %13, align 1
  %3009 = xor i32 %3000, %2995
  %3010 = xor i32 %3009, %3001
  %3011 = lshr i32 %3010, 4
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  store i8 %3013, i8* %14, align 1
  %3014 = icmp eq i32 %3001, 0
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %15, align 1
  %3016 = lshr i32 %3001, 31
  %3017 = trunc i32 %3016 to i8
  store i8 %3017, i8* %16, align 1
  %3018 = lshr i32 %2995, 31
  %3019 = lshr i32 %3000, 31
  %3020 = xor i32 %3019, %3018
  %3021 = xor i32 %3016, %3018
  %3022 = add nuw nsw i32 %3021, %3020
  %3023 = icmp eq i32 %3022, 2
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %17, align 1
  %3025 = icmp ne i8 %3017, 0
  %3026 = xor i1 %3025, %3023
  %.v237 = select i1 %3026, i64 12, i64 66
  %3027 = add i64 %2990, %.v237
  store i64 %3027, i64* %3, align 8
  br i1 %3026, label %block_44cce1, label %block_.L_44cd17

block_44cce1:                                     ; preds = %block_.L_44ccd5
  %3028 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %3028, i64* %RAX.i205, align 8
  %3029 = add i64 %3027, 12
  store i64 %3029, i64* %3, align 8
  %3030 = load i32, i32* %2994, align 4
  %3031 = sext i32 %3030 to i64
  store i64 %3031, i64* %RCX.i1946, align 8
  %3032 = shl nsw i64 %3031, 3
  %3033 = add i64 %3032, %3028
  %3034 = add i64 %3027, 16
  store i64 %3034, i64* %3, align 8
  %3035 = inttoptr i64 %3033 to i64*
  %3036 = load i64, i64* %3035, align 8
  store i64 %3036, i64* %RAX.i205, align 8
  %3037 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %3037, i64* %RCX.i1946, align 8
  %3038 = add i64 %2991, -36
  %3039 = add i64 %3027, 27
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i32*
  %3041 = load i32, i32* %3040, align 4
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RDX.i1557, align 8
  %3043 = add i64 %3027, 30
  store i64 %3043, i64* %3, align 8
  %3044 = load i32, i32* %2999, align 4
  %3045 = sub i32 %3041, %3044
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RDX.i1557, align 8
  %3047 = icmp ult i32 %3041, %3044
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %12, align 1
  %3049 = and i32 %3045, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %13, align 1
  %3054 = xor i32 %3044, %3041
  %3055 = xor i32 %3054, %3045
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %14, align 1
  %3059 = icmp eq i32 %3045, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %15, align 1
  %3061 = lshr i32 %3045, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %16, align 1
  %3063 = lshr i32 %3041, 31
  %3064 = lshr i32 %3044, 31
  %3065 = xor i32 %3064, %3063
  %3066 = xor i32 %3061, %3063
  %3067 = add nuw nsw i32 %3066, %3065
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %17, align 1
  %3070 = add i64 %3027, 33
  store i64 %3070, i64* %3, align 8
  %3071 = load i32, i32* %2994, align 4
  %3072 = add i32 %3071, %3045
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RDX.i1557, align 8
  %3074 = icmp ult i32 %3072, %3045
  %3075 = icmp ult i32 %3072, %3071
  %3076 = or i1 %3074, %3075
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %12, align 1
  %3078 = and i32 %3072, 255
  %3079 = tail call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %13, align 1
  %3083 = xor i32 %3071, %3045
  %3084 = xor i32 %3083, %3072
  %3085 = lshr i32 %3084, 4
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %14, align 1
  %3088 = icmp eq i32 %3072, 0
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %15, align 1
  %3090 = lshr i32 %3072, 31
  %3091 = trunc i32 %3090 to i8
  store i8 %3091, i8* %16, align 1
  %3092 = lshr i32 %3071, 31
  %3093 = xor i32 %3090, %3061
  %3094 = xor i32 %3090, %3092
  %3095 = add nuw nsw i32 %3093, %3094
  %3096 = icmp eq i32 %3095, 2
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %17, align 1
  %3098 = sext i32 %3072 to i64
  store i64 %3098, i64* %RSI.i1586, align 8
  %3099 = shl nsw i64 %3098, 3
  %3100 = add i64 %3037, %3099
  %3101 = add i64 %3027, 40
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i64*
  store i64 %3036, i64* %3102, align 8
  %3103 = load i64, i64* %RBP.i, align 8
  %3104 = add i64 %3103, -24
  %3105 = load i64, i64* %3, align 8
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3104 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = add i32 %3108, 1
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RAX.i205, align 8
  %3111 = icmp eq i32 %3108, -1
  %3112 = icmp eq i32 %3109, 0
  %3113 = or i1 %3111, %3112
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %12, align 1
  %3115 = and i32 %3109, 255
  %3116 = tail call i32 @llvm.ctpop.i32(i32 %3115)
  %3117 = trunc i32 %3116 to i8
  %3118 = and i8 %3117, 1
  %3119 = xor i8 %3118, 1
  store i8 %3119, i8* %13, align 1
  %3120 = xor i32 %3109, %3108
  %3121 = lshr i32 %3120, 4
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  store i8 %3123, i8* %14, align 1
  %3124 = zext i1 %3112 to i8
  store i8 %3124, i8* %15, align 1
  %3125 = lshr i32 %3109, 31
  %3126 = trunc i32 %3125 to i8
  store i8 %3126, i8* %16, align 1
  %3127 = lshr i32 %3108, 31
  %3128 = xor i32 %3125, %3127
  %3129 = add nuw nsw i32 %3128, %3125
  %3130 = icmp eq i32 %3129, 2
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %17, align 1
  %3132 = add i64 %3105, 9
  store i64 %3132, i64* %3, align 8
  store i32 %3109, i32* %3107, align 4
  %3133 = load i64, i64* %3, align 8
  %3134 = add i64 %3133, -61
  store i64 %3134, i64* %3, align 8
  br label %block_.L_44ccd5

block_.L_44cd17:                                  ; preds = %block_.L_44ccd5
  %3135 = add i64 %3027, 3
  store i64 %3135, i64* %3, align 8
  %3136 = load i32, i32* %2999, align 4
  %3137 = zext i32 %3136 to i64
  store i64 %3137, i64* %RAX.i205, align 8
  %3138 = add i64 %3027, 6
  store i64 %3138, i64* %3, align 8
  store i32 %3136, i32* %2994, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_44cd1d

block_.L_44cd1d:                                  ; preds = %block_44cd29, %block_.L_44cd17
  %3139 = phi i64 [ %3255, %block_44cd29 ], [ %.pre138, %block_.L_44cd17 ]
  %3140 = load i64, i64* %RBP.i, align 8
  %3141 = add i64 %3140, -24
  %3142 = add i64 %3139, 3
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i32*
  %3144 = load i32, i32* %3143, align 4
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %RAX.i205, align 8
  %3146 = add i64 %3140, -36
  %3147 = add i64 %3139, 6
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = sub i32 %3144, %3149
  %3151 = icmp ult i32 %3144, %3149
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %12, align 1
  %3153 = and i32 %3150, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153)
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %13, align 1
  %3158 = xor i32 %3149, %3144
  %3159 = xor i32 %3158, %3150
  %3160 = lshr i32 %3159, 4
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  store i8 %3162, i8* %14, align 1
  %3163 = icmp eq i32 %3150, 0
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %15, align 1
  %3165 = lshr i32 %3150, 31
  %3166 = trunc i32 %3165 to i8
  store i8 %3166, i8* %16, align 1
  %3167 = lshr i32 %3144, 31
  %3168 = lshr i32 %3149, 31
  %3169 = xor i32 %3168, %3167
  %3170 = xor i32 %3165, %3167
  %3171 = add nuw nsw i32 %3170, %3169
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %17, align 1
  %3174 = icmp ne i8 %3166, 0
  %3175 = xor i1 %3174, %3172
  %.v238 = select i1 %3175, i64 12, i64 63
  %3176 = add i64 %3139, %.v238
  store i64 %3176, i64* %3, align 8
  br i1 %3175, label %block_44cd29, label %block_.L_44cd5c

block_44cd29:                                     ; preds = %block_.L_44cd1d
  %3177 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %3177, i64* %RAX.i205, align 8
  %3178 = add i64 %3176, 12
  store i64 %3178, i64* %3, align 8
  %3179 = load i32, i32* %3143, align 4
  %3180 = sext i32 %3179 to i64
  store i64 %3180, i64* %RCX.i1946, align 8
  %3181 = shl nsw i64 %3180, 3
  %3182 = add i64 %3181, %3177
  %3183 = add i64 %3176, 16
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i64*
  %3185 = load i64, i64* %3184, align 8
  store i64 %3185, i64* %RAX.i205, align 8
  %3186 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %3186, i64* %RCX.i1946, align 8
  %3187 = add i64 %3176, 27
  store i64 %3187, i64* %3, align 8
  %3188 = load i32, i32* %3143, align 4
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RDX.i1557, align 8
  %3190 = add i64 %3140, -40
  %3191 = add i64 %3176, 30
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i32*
  %3193 = load i32, i32* %3192, align 4
  %3194 = sub i32 %3188, %3193
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RDX.i1557, align 8
  %3196 = icmp ult i32 %3188, %3193
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %12, align 1
  %3198 = and i32 %3194, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %13, align 1
  %3203 = xor i32 %3193, %3188
  %3204 = xor i32 %3203, %3194
  %3205 = lshr i32 %3204, 4
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  store i8 %3207, i8* %14, align 1
  %3208 = icmp eq i32 %3194, 0
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %15, align 1
  %3210 = lshr i32 %3194, 31
  %3211 = trunc i32 %3210 to i8
  store i8 %3211, i8* %16, align 1
  %3212 = lshr i32 %3188, 31
  %3213 = lshr i32 %3193, 31
  %3214 = xor i32 %3213, %3212
  %3215 = xor i32 %3210, %3212
  %3216 = add nuw nsw i32 %3215, %3214
  %3217 = icmp eq i32 %3216, 2
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %17, align 1
  %3219 = sext i32 %3194 to i64
  store i64 %3219, i64* %RSI.i1586, align 8
  %3220 = shl nsw i64 %3219, 3
  %3221 = add i64 %3186, %3220
  %3222 = add i64 %3176, 37
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i64*
  store i64 %3185, i64* %3223, align 8
  %3224 = load i64, i64* %RBP.i, align 8
  %3225 = add i64 %3224, -24
  %3226 = load i64, i64* %3, align 8
  %3227 = add i64 %3226, 3
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3225 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = add i32 %3229, 1
  %3231 = zext i32 %3230 to i64
  store i64 %3231, i64* %RAX.i205, align 8
  %3232 = icmp eq i32 %3229, -1
  %3233 = icmp eq i32 %3230, 0
  %3234 = or i1 %3232, %3233
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %12, align 1
  %3236 = and i32 %3230, 255
  %3237 = tail call i32 @llvm.ctpop.i32(i32 %3236)
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  %3240 = xor i8 %3239, 1
  store i8 %3240, i8* %13, align 1
  %3241 = xor i32 %3230, %3229
  %3242 = lshr i32 %3241, 4
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  store i8 %3244, i8* %14, align 1
  %3245 = zext i1 %3233 to i8
  store i8 %3245, i8* %15, align 1
  %3246 = lshr i32 %3230, 31
  %3247 = trunc i32 %3246 to i8
  store i8 %3247, i8* %16, align 1
  %3248 = lshr i32 %3229, 31
  %3249 = xor i32 %3246, %3248
  %3250 = add nuw nsw i32 %3249, %3246
  %3251 = icmp eq i32 %3250, 2
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %17, align 1
  %3253 = add i64 %3226, 9
  store i64 %3253, i64* %3, align 8
  store i32 %3230, i32* %3228, align 4
  %3254 = load i64, i64* %3, align 8
  %3255 = add i64 %3254, -58
  store i64 %3255, i64* %3, align 8
  br label %block_.L_44cd1d

block_.L_44cd5c:                                  ; preds = %block_.L_44cd1d
  %3256 = add i64 %3176, 3
  store i64 %3256, i64* %3, align 8
  %3257 = load i32, i32* %3148, align 4
  %3258 = zext i32 %3257 to i64
  store i64 %3258, i64* %RAX.i205, align 8
  store i32 %3257, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  store i32 %3257, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %3259 = add i64 %3140, -20
  %3260 = add i64 %3176, 24
  store i64 %3260, i64* %3, align 8
  %3261 = inttoptr i64 %3259 to i32*
  store i32 0, i32* %3261, align 4
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_44cd74

block_.L_44cd74:                                  ; preds = %block_.L_44ce6a, %block_.L_44cd5c
  %3262 = phi i64 [ %3528, %block_.L_44ce6a ], [ %.pre139, %block_.L_44cd5c ]
  %3263 = load i64, i64* %RBP.i, align 8
  %3264 = add i64 %3263, -20
  %3265 = add i64 %3262, 3
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i32*
  %3267 = load i32, i32* %3266, align 4
  %3268 = zext i32 %3267 to i64
  store i64 %3268, i64* %RAX.i205, align 8
  %3269 = load i32, i32* bitcast (%G_0x70eaac_type* @G_0x70eaac to i32*), align 8
  %3270 = sub i32 %3267, %3269
  %3271 = icmp ult i32 %3267, %3269
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %12, align 1
  %3273 = and i32 %3270, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %13, align 1
  %3278 = xor i32 %3269, %3267
  %3279 = xor i32 %3278, %3270
  %3280 = lshr i32 %3279, 4
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  store i8 %3282, i8* %14, align 1
  %3283 = icmp eq i32 %3270, 0
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %15, align 1
  %3285 = lshr i32 %3270, 31
  %3286 = trunc i32 %3285 to i8
  store i8 %3286, i8* %16, align 1
  %3287 = lshr i32 %3267, 31
  %3288 = lshr i32 %3269, 31
  %3289 = xor i32 %3288, %3287
  %3290 = xor i32 %3285, %3287
  %3291 = add nuw nsw i32 %3290, %3289
  %3292 = icmp eq i32 %3291, 2
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %17, align 1
  %.v239 = select i1 %3271, i64 16, i64 265
  %3294 = add i64 %3262, %.v239
  store i64 %3294, i64* %3, align 8
  br i1 %3271, label %block_44cd84, label %block_.L_44ce7d

block_44cd84:                                     ; preds = %block_.L_44cd74
  %3295 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %3295, i64* %RAX.i205, align 8
  %3296 = add i64 %3294, 11
  store i64 %3296, i64* %3, align 8
  %3297 = load i32, i32* %3266, align 4
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RCX.i1946, align 8
  store i64 %3298, i64* %RDX.i1557, align 8
  %3299 = shl nuw nsw i64 %3298, 3
  %3300 = add i64 %3295, %3299
  %3301 = add i64 %3294, 17
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i64*
  %3303 = load i64, i64* %3302, align 8
  store i64 %3303, i64* %RAX.i205, align 8
  %3304 = add i64 %3294, 20
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = add i32 %3306, -3
  %3308 = icmp ult i32 %3306, 3
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %12, align 1
  %3310 = and i32 %3307, 255
  %3311 = tail call i32 @llvm.ctpop.i32(i32 %3310)
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  %3314 = xor i8 %3313, 1
  store i8 %3314, i8* %13, align 1
  %3315 = xor i32 %3307, %3306
  %3316 = lshr i32 %3315, 4
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  store i8 %3318, i8* %14, align 1
  %3319 = icmp eq i32 %3307, 0
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %15, align 1
  %3321 = lshr i32 %3307, 31
  %3322 = trunc i32 %3321 to i8
  store i8 %3322, i8* %16, align 1
  %3323 = lshr i32 %3306, 31
  %3324 = xor i32 %3321, %3323
  %3325 = add nuw nsw i32 %3324, %3323
  %3326 = icmp eq i32 %3325, 2
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %17, align 1
  %.v240 = select i1 %3319, i64 26, i64 230
  %3328 = add i64 %3294, %.v240
  store i64 %3328, i64* %3, align 8
  br i1 %3319, label %block_44cd9e, label %block_.L_44ce6a

block_44cd9e:                                     ; preds = %block_44cd84
  store i64 %3295, i64* %RAX.i205, align 8
  %3329 = add i64 %3328, 11
  store i64 %3329, i64* %3, align 8
  %3330 = load i32, i32* %3266, align 4
  %3331 = zext i32 %3330 to i64
  store i64 %3331, i64* %RCX.i1946, align 8
  store i64 %3331, i64* %RDX.i1557, align 8
  %3332 = shl nuw nsw i64 %3331, 3
  %3333 = add i64 %3295, %3332
  %3334 = add i64 %3328, 17
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3333 to i64*
  %3336 = load i64, i64* %3335, align 8
  store i64 %3336, i64* %RAX.i205, align 8
  %3337 = add i64 %3336, 40
  %3338 = add i64 %3328, 21
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to i64*
  %3340 = load i64, i64* %3339, align 8
  store i64 %3340, i64* %RAX.i205, align 8
  %3341 = add i64 %3340, 6376
  %3342 = add i64 %3328, 28
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  store i8 0, i8* %12, align 1
  %3345 = and i32 %3344, 255
  %3346 = tail call i32 @llvm.ctpop.i32(i32 %3345)
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3350 = icmp eq i32 %3344, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %15, align 1
  %3352 = lshr i32 %3344, 31
  %3353 = trunc i32 %3352 to i8
  store i8 %3353, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v241 = select i1 %3350, i64 199, i64 34
  %3354 = add i64 %3328, %.v241
  store i64 %3354, i64* %3, align 8
  br i1 %3350, label %block_.L_44ce65, label %block_44cdc0

block_44cdc0:                                     ; preds = %block_44cd9e
  store i64 %3295, i64* %RAX.i205, align 8
  %3355 = add i64 %3354, 11
  store i64 %3355, i64* %3, align 8
  %3356 = load i32, i32* %3266, align 4
  %3357 = zext i32 %3356 to i64
  store i64 %3357, i64* %RCX.i1946, align 8
  store i64 %3357, i64* %RDX.i1557, align 8
  %3358 = shl nuw nsw i64 %3357, 3
  %3359 = add i64 %3295, %3358
  %3360 = add i64 %3354, 17
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3359 to i64*
  %3362 = load i64, i64* %3361, align 8
  store i64 %3362, i64* %RAX.i205, align 8
  %3363 = add i64 %3362, 40
  %3364 = add i64 %3354, 21
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i64*
  %3366 = load i64, i64* %3365, align 8
  store i64 %3366, i64* %RAX.i205, align 8
  %3367 = add i64 %3366, 6372
  %3368 = add i64 %3354, 27
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RCX.i1946, align 8
  store i64 %3295, i64* %RAX.i205, align 8
  %3372 = add i64 %3354, 38
  store i64 %3372, i64* %3, align 8
  %3373 = load i32, i32* %3266, align 4
  %3374 = zext i32 %3373 to i64
  store i64 %3374, i64* %RSI.i1586, align 8
  store i64 %3374, i64* %RDX.i1557, align 8
  %3375 = shl nuw nsw i64 %3374, 3
  %3376 = add i64 %3295, %3375
  %3377 = add i64 %3354, 44
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i64*
  %3379 = load i64, i64* %3378, align 8
  store i64 %3379, i64* %RAX.i205, align 8
  %3380 = add i64 %3379, 40
  %3381 = add i64 %3354, 48
  store i64 %3381, i64* %3, align 8
  %3382 = inttoptr i64 %3380 to i64*
  %3383 = load i64, i64* %3382, align 8
  store i64 %3383, i64* %RAX.i205, align 8
  %3384 = add i64 %3383, 6368
  %3385 = add i64 %3354, 54
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to i32*
  store i32 %3370, i32* %3386, align 4
  %3387 = load i64, i64* %RBP.i, align 8
  %3388 = add i64 %3387, -36
  %3389 = load i64, i64* %3, align 8
  %3390 = add i64 %3389, 3
  store i64 %3390, i64* %3, align 8
  %3391 = inttoptr i64 %3388 to i32*
  %3392 = load i32, i32* %3391, align 4
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RCX.i1946, align 8
  %3394 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %3394, i64* %RAX.i205, align 8
  %3395 = add i64 %3387, -20
  %3396 = add i64 %3389, 14
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3395 to i32*
  %3398 = load i32, i32* %3397, align 4
  %3399 = zext i32 %3398 to i64
  store i64 %3399, i64* %RSI.i1586, align 8
  store i64 %3399, i64* %RDX.i1557, align 8
  %3400 = shl nuw nsw i64 %3399, 3
  %3401 = add i64 %3394, %3400
  %3402 = add i64 %3389, 20
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i64*
  %3404 = load i64, i64* %3403, align 8
  store i64 %3404, i64* %RAX.i205, align 8
  %3405 = add i64 %3404, 40
  %3406 = add i64 %3389, 24
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3405 to i64*
  %3408 = load i64, i64* %3407, align 8
  %3409 = add i64 %3408, 20
  %3410 = add i64 %3389, 27
  store i64 %3410, i64* %3, align 8
  %3411 = inttoptr i64 %3409 to i32*
  store i32 %3392, i32* %3411, align 4
  %3412 = load i64, i64* %3, align 8
  %3413 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %3413, i64* %RAX.i205, align 8
  %3414 = load i64, i64* %RBP.i, align 8
  %3415 = add i64 %3414, -20
  %3416 = add i64 %3412, 11
  store i64 %3416, i64* %3, align 8
  %3417 = inttoptr i64 %3415 to i32*
  %3418 = load i32, i32* %3417, align 4
  %3419 = zext i32 %3418 to i64
  store i64 %3419, i64* %RCX.i1946, align 8
  store i64 %3419, i64* %RDX.i1557, align 8
  %3420 = shl nuw nsw i64 %3419, 3
  %3421 = add i64 %3413, %3420
  %3422 = add i64 %3412, 17
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i64*
  %3424 = load i64, i64* %3423, align 8
  store i64 %3424, i64* %RAX.i205, align 8
  %3425 = add i64 %3424, 40
  %3426 = add i64 %3412, 21
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i64*
  %3428 = load i64, i64* %3427, align 8
  store i64 %3428, i64* %RAX.i205, align 8
  %3429 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %3429, i64* %RDX.i1557, align 8
  %3430 = add i64 %3414, -36
  %3431 = add i64 %3412, 33
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3430 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = sext i32 %3433 to i64
  store i64 %3434, i64* %RDI.i1449, align 8
  %3435 = shl nsw i64 %3434, 3
  %3436 = add i64 %3435, %3429
  %3437 = add i64 %3412, 37
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i64*
  store i64 %3428, i64* %3438, align 8
  %3439 = load i64, i64* %3, align 8
  %3440 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %3440, i64* %RAX.i205, align 8
  %3441 = load i64, i64* %RBP.i, align 8
  %3442 = add i64 %3441, -20
  %3443 = add i64 %3439, 11
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3442 to i32*
  %3445 = load i32, i32* %3444, align 4
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RCX.i1946, align 8
  store i64 %3446, i64* %RDX.i1557, align 8
  %3447 = shl nuw nsw i64 %3446, 3
  %3448 = add i64 %3440, %3447
  %3449 = add i64 %3439, 17
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i64*
  %3451 = load i64, i64* %3450, align 8
  store i64 %3451, i64* %RAX.i205, align 8
  %3452 = add i64 %3451, 40
  %3453 = add i64 %3439, 21
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i64*
  %3455 = load i64, i64* %3454, align 8
  store i64 %3455, i64* %RAX.i205, align 8
  %3456 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %3456, i64* %RDX.i1557, align 8
  %3457 = add i64 %3441, -36
  %3458 = add i64 %3439, 32
  store i64 %3458, i64* %3, align 8
  %3459 = inttoptr i64 %3457 to i32*
  %3460 = load i32, i32* %3459, align 4
  %3461 = zext i32 %3460 to i64
  store i64 %3461, i64* %RCX.i1946, align 8
  %3462 = add i32 %3460, 1
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RSI.i1586, align 8
  %3464 = icmp eq i32 %3460, -1
  %3465 = icmp eq i32 %3462, 0
  %3466 = or i1 %3464, %3465
  %3467 = zext i1 %3466 to i8
  store i8 %3467, i8* %12, align 1
  %3468 = and i32 %3462, 255
  %3469 = tail call i32 @llvm.ctpop.i32(i32 %3468)
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  store i8 %3472, i8* %13, align 1
  %3473 = xor i32 %3462, %3460
  %3474 = lshr i32 %3473, 4
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  store i8 %3476, i8* %14, align 1
  %3477 = zext i1 %3465 to i8
  store i8 %3477, i8* %15, align 1
  %3478 = lshr i32 %3462, 31
  %3479 = trunc i32 %3478 to i8
  store i8 %3479, i8* %16, align 1
  %3480 = lshr i32 %3460, 31
  %3481 = xor i32 %3478, %3480
  %3482 = add nuw nsw i32 %3481, %3478
  %3483 = icmp eq i32 %3482, 2
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %17, align 1
  %3485 = add i64 %3439, 40
  store i64 %3485, i64* %3, align 8
  store i32 %3462, i32* %3459, align 4
  %3486 = load i32, i32* %ECX.i1556, align 4
  %3487 = load i64, i64* %3, align 8
  %3488 = sext i32 %3486 to i64
  store i64 %3488, i64* %RDI.i1449, align 8
  %3489 = load i64, i64* %RDX.i1557, align 8
  %3490 = shl nsw i64 %3488, 3
  %3491 = add i64 %3489, %3490
  %3492 = load i64, i64* %RAX.i205, align 8
  %3493 = add i64 %3487, 7
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3491 to i64*
  store i64 %3492, i64* %3494, align 8
  %.pre140 = load i64, i64* %3, align 8
  %.pre141.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44ce65

block_.L_44ce65:                                  ; preds = %block_44cdc0, %block_44cd9e
  %.pre141 = phi i64 [ %.pre141.pre, %block_44cdc0 ], [ %3263, %block_44cd9e ]
  %3495 = phi i64 [ %.pre140, %block_44cdc0 ], [ %3354, %block_44cd9e ]
  %3496 = add i64 %3495, 5
  store i64 %3496, i64* %3, align 8
  br label %block_.L_44ce6a

block_.L_44ce6a:                                  ; preds = %block_44cd84, %block_.L_44ce65
  %3497 = phi i64 [ %.pre141, %block_.L_44ce65 ], [ %3263, %block_44cd84 ]
  %3498 = phi i64 [ %3496, %block_.L_44ce65 ], [ %3328, %block_44cd84 ]
  %3499 = add i64 %3497, -20
  %3500 = add i64 %3498, 8
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  %3502 = load i32, i32* %3501, align 4
  %3503 = add i32 %3502, 1
  %3504 = zext i32 %3503 to i64
  store i64 %3504, i64* %RAX.i205, align 8
  %3505 = icmp eq i32 %3502, -1
  %3506 = icmp eq i32 %3503, 0
  %3507 = or i1 %3505, %3506
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %12, align 1
  %3509 = and i32 %3503, 255
  %3510 = tail call i32 @llvm.ctpop.i32(i32 %3509)
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = xor i8 %3512, 1
  store i8 %3513, i8* %13, align 1
  %3514 = xor i32 %3503, %3502
  %3515 = lshr i32 %3514, 4
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  store i8 %3517, i8* %14, align 1
  %3518 = zext i1 %3506 to i8
  store i8 %3518, i8* %15, align 1
  %3519 = lshr i32 %3503, 31
  %3520 = trunc i32 %3519 to i8
  store i8 %3520, i8* %16, align 1
  %3521 = lshr i32 %3502, 31
  %3522 = xor i32 %3519, %3521
  %3523 = add nuw nsw i32 %3522, %3519
  %3524 = icmp eq i32 %3523, 2
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %17, align 1
  %3526 = add i64 %3498, 14
  store i64 %3526, i64* %3, align 8
  store i32 %3503, i32* %3501, align 4
  %3527 = load i64, i64* %3, align 8
  %3528 = add i64 %3527, -260
  store i64 %3528, i64* %3, align 8
  br label %block_.L_44cd74

block_.L_44ce7d:                                  ; preds = %block_.L_44cd74
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i1557, align 8
  store i64 ptrtoint (%G__0x44d690_type* @G__0x44d690 to i64), i64* %RCX.i1946, align 8
  %3529 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  %3530 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %3531 = sext i32 %3530 to i64
  %3532 = shl nsw i64 %3531, 3
  store i64 %3532, i64* %RDI.i1449, align 8
  %.lobit75 = lshr i32 %3530, 31
  %3533 = add i64 %3532, %3529
  store i64 %3533, i64* %RSI.i1586, align 8
  %3534 = icmp ult i64 %3533, %3529
  %3535 = icmp ult i64 %3533, %3532
  %3536 = or i1 %3534, %3535
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %12, align 1
  %3538 = trunc i64 %3533 to i32
  %3539 = and i32 %3538, 255
  %3540 = tail call i32 @llvm.ctpop.i32(i32 %3539)
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = xor i8 %3542, 1
  store i8 %3543, i8* %13, align 1
  %3544 = xor i64 %3532, %3529
  %3545 = xor i64 %3544, %3533
  %3546 = lshr i64 %3545, 4
  %3547 = trunc i64 %3546 to i8
  %3548 = and i8 %3547, 1
  store i8 %3548, i8* %14, align 1
  %3549 = icmp eq i64 %3533, 0
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %15, align 1
  %3551 = lshr i64 %3533, 63
  %3552 = trunc i64 %3551 to i8
  store i8 %3552, i8* %16, align 1
  %3553 = lshr i64 %3529, 63
  %3554 = lshr i64 %3531, 60
  %3555 = and i64 %3554, 1
  %3556 = xor i64 %3551, %3553
  %3557 = xor i64 %3551, %3555
  %3558 = add nuw nsw i64 %3556, %3557
  %3559 = icmp eq i64 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %17, align 1
  %3561 = add i64 %3263, -36
  %3562 = add i64 %3294, 43
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i32*
  %3564 = load i32, i32* %3563, align 4
  %3565 = sub i32 %3564, %3530
  %3566 = zext i32 %3565 to i64
  store i64 %3566, i64* %RAX.i205, align 8
  %3567 = icmp ult i32 %3564, %3530
  %3568 = zext i1 %3567 to i8
  store i8 %3568, i8* %12, align 1
  %3569 = and i32 %3565, 255
  %3570 = tail call i32 @llvm.ctpop.i32(i32 %3569)
  %3571 = trunc i32 %3570 to i8
  %3572 = and i8 %3571, 1
  %3573 = xor i8 %3572, 1
  store i8 %3573, i8* %13, align 1
  %3574 = xor i32 %3530, %3564
  %3575 = xor i32 %3574, %3565
  %3576 = lshr i32 %3575, 4
  %3577 = trunc i32 %3576 to i8
  %3578 = and i8 %3577, 1
  store i8 %3578, i8* %14, align 1
  %3579 = icmp eq i32 %3565, 0
  %3580 = zext i1 %3579 to i8
  store i8 %3580, i8* %15, align 1
  %3581 = lshr i32 %3565, 31
  %3582 = trunc i32 %3581 to i8
  store i8 %3582, i8* %16, align 1
  %3583 = lshr i32 %3564, 31
  %3584 = xor i32 %.lobit75, %3583
  %3585 = xor i32 %3581, %3583
  %3586 = add nuw nsw i32 %3585, %3584
  %3587 = icmp eq i32 %3586, 2
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %17, align 1
  %3589 = sext i32 %3565 to i64
  %3590 = load i64, i64* %RBP.i, align 8
  %3591 = add i64 %3590, -136
  %3592 = add i64 %3294, 60
  store i64 %3592, i64* %3, align 8
  %3593 = inttoptr i64 %3591 to i64*
  store i64 %3589, i64* %3593, align 8
  %3594 = load i64, i64* %RSI.i1586, align 8
  %3595 = load i64, i64* %3, align 8
  store i64 %3594, i64* %RDI.i1449, align 8
  %3596 = load i64, i64* %RBP.i, align 8
  %3597 = add i64 %3596, -136
  %3598 = add i64 %3595, 10
  store i64 %3598, i64* %3, align 8
  %3599 = inttoptr i64 %3597 to i64*
  %3600 = load i64, i64* %3599, align 8
  store i64 %3600, i64* %RSI.i1586, align 8
  %3601 = add i64 %3595, -311001
  %3602 = add i64 %3595, 15
  %3603 = load i64, i64* %6, align 8
  %3604 = add i64 %3603, -8
  %3605 = inttoptr i64 %3604 to i64*
  store i64 %3602, i64* %3605, align 8
  store i64 %3604, i64* %6, align 8
  store i64 %3601, i64* %3, align 8
  %call2_44cec3 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %3601, %struct.Memory* %call2_44ccc9)
  %3606 = load i64, i64* %3, align 8
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i1557, align 8
  store i64 ptrtoint (%G__0x44d690_type* @G__0x44d690 to i64), i64* %RCX.i1946, align 8
  %3607 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  %3608 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %3609 = sext i32 %3608 to i64
  %3610 = shl nsw i64 %3609, 3
  store i64 %3610, i64* %RDI.i1449, align 8
  %.lobit76 = lshr i32 %3608, 31
  %3611 = add i64 %3610, %3607
  store i64 %3611, i64* %RSI.i1586, align 8
  %3612 = icmp ult i64 %3611, %3607
  %3613 = icmp ult i64 %3611, %3610
  %3614 = or i1 %3612, %3613
  %3615 = zext i1 %3614 to i8
  store i8 %3615, i8* %12, align 1
  %3616 = trunc i64 %3611 to i32
  %3617 = and i32 %3616, 255
  %3618 = tail call i32 @llvm.ctpop.i32(i32 %3617)
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  %3621 = xor i8 %3620, 1
  store i8 %3621, i8* %13, align 1
  %3622 = xor i64 %3610, %3607
  %3623 = xor i64 %3622, %3611
  %3624 = lshr i64 %3623, 4
  %3625 = trunc i64 %3624 to i8
  %3626 = and i8 %3625, 1
  store i8 %3626, i8* %14, align 1
  %3627 = icmp eq i64 %3611, 0
  %3628 = zext i1 %3627 to i8
  store i8 %3628, i8* %15, align 1
  %3629 = lshr i64 %3611, 63
  %3630 = trunc i64 %3629 to i8
  store i8 %3630, i8* %16, align 1
  %3631 = lshr i64 %3607, 63
  %3632 = lshr i64 %3609, 60
  %3633 = and i64 %3632, 1
  %3634 = xor i64 %3629, %3631
  %3635 = xor i64 %3629, %3633
  %3636 = add nuw nsw i64 %3634, %3635
  %3637 = icmp eq i64 %3636, 2
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %17, align 1
  %3639 = load i64, i64* %RBP.i, align 8
  %3640 = add i64 %3639, -36
  %3641 = add i64 %3606, 43
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3640 to i32*
  %3643 = load i32, i32* %3642, align 4
  %3644 = sub i32 %3643, %3608
  %3645 = zext i32 %3644 to i64
  store i64 %3645, i64* %RAX.i205, align 8
  %3646 = icmp ult i32 %3643, %3608
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %12, align 1
  %3648 = and i32 %3644, 255
  %3649 = tail call i32 @llvm.ctpop.i32(i32 %3648)
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = xor i8 %3651, 1
  store i8 %3652, i8* %13, align 1
  %3653 = xor i32 %3608, %3643
  %3654 = xor i32 %3653, %3644
  %3655 = lshr i32 %3654, 4
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  store i8 %3657, i8* %14, align 1
  %3658 = icmp eq i32 %3644, 0
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %15, align 1
  %3660 = lshr i32 %3644, 31
  %3661 = trunc i32 %3660 to i8
  store i8 %3661, i8* %16, align 1
  %3662 = lshr i32 %3643, 31
  %3663 = xor i32 %.lobit76, %3662
  %3664 = xor i32 %3660, %3662
  %3665 = add nuw nsw i32 %3664, %3663
  %3666 = icmp eq i32 %3665, 2
  %3667 = zext i1 %3666 to i8
  store i8 %3667, i8* %17, align 1
  %3668 = sext i32 %3644 to i64
  %3669 = add i64 %3639, -144
  %3670 = add i64 %3606, 60
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i64*
  store i64 %3668, i64* %3671, align 8
  %3672 = load i64, i64* %RSI.i1586, align 8
  %3673 = load i64, i64* %3, align 8
  store i64 %3672, i64* %RDI.i1449, align 8
  %3674 = load i64, i64* %RBP.i, align 8
  %3675 = add i64 %3674, -144
  %3676 = add i64 %3673, 10
  store i64 %3676, i64* %3, align 8
  %3677 = inttoptr i64 %3675 to i64*
  %3678 = load i64, i64* %3677, align 8
  store i64 %3678, i64* %RSI.i1586, align 8
  %3679 = add i64 %3673, -311076
  %3680 = add i64 %3673, 15
  %3681 = load i64, i64* %6, align 8
  %3682 = add i64 %3681, -8
  %3683 = inttoptr i64 %3682 to i64*
  store i64 %3680, i64* %3683, align 8
  store i64 %3682, i64* %6, align 8
  store i64 %3679, i64* %3, align 8
  %call2_44cf0e = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %3679, %struct.Memory* %call2_44cec3)
  %3684 = load i64, i64* %RBP.i, align 8
  %3685 = add i64 %3684, -36
  %3686 = load i64, i64* %3, align 8
  %3687 = add i64 %3686, 3
  store i64 %3687, i64* %3, align 8
  %3688 = inttoptr i64 %3685 to i32*
  %3689 = load i32, i32* %3688, align 4
  %3690 = zext i32 %3689 to i64
  store i64 %3690, i64* %RAX.i205, align 8
  store i32 %3689, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  store i32 %3689, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %3691 = add i64 %3686, 1314
  store i64 %3691, i64* %3, align 8
  br label %block_.L_44d435

block_.L_44cf29:                                  ; preds = %block_.L_44ca44
  store i64 8, i64* %RSI.i1586, align 8
  %3692 = load i32, i32* bitcast (%G_0x70eaa0_type* @G_0x70eaa0 to i32*), align 8
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RAX.i205, align 8
  %RDI.i892 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 %3693, i64* %RDI.i892, align 8
  %3694 = add i64 %2300, -310857
  %3695 = add i64 %2300, 21
  %3696 = load i64, i64* %6, align 8
  %3697 = add i64 %3696, -8
  %3698 = inttoptr i64 %3697 to i64*
  store i64 %3695, i64* %3698, align 8
  store i64 %3697, i64* %6, align 8
  store i64 %3694, i64* %3, align 8
  %3699 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %ECX.i885 = bitcast %union.anon* %65 to i32*
  %3700 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RSI.i1586, align 8
  %3701 = load i64, i64* %RBP.i, align 8
  %3702 = add i64 %3701, -56
  %3703 = load i64, i64* %RAX.i205, align 8
  %3704 = add i64 %3700, 8
  store i64 %3704, i64* %3, align 8
  %3705 = inttoptr i64 %3702 to i64*
  store i64 %3703, i64* %3705, align 8
  %3706 = load i64, i64* %RSI.i1586, align 8
  %3707 = load i64, i64* %RBP.i, align 8
  %3708 = add i64 %3707, -56
  %3709 = load i64, i64* %3, align 8
  %3710 = add i64 %3709, 4
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3708 to i64*
  %3712 = load i64, i64* %3711, align 8
  %3713 = sub i64 %3706, %3712
  %3714 = icmp ult i64 %3706, %3712
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %12, align 1
  %3716 = trunc i64 %3713 to i32
  %3717 = and i32 %3716, 255
  %3718 = tail call i32 @llvm.ctpop.i32(i32 %3717)
  %3719 = trunc i32 %3718 to i8
  %3720 = and i8 %3719, 1
  %3721 = xor i8 %3720, 1
  store i8 %3721, i8* %13, align 1
  %3722 = xor i64 %3712, %3706
  %3723 = xor i64 %3722, %3713
  %3724 = lshr i64 %3723, 4
  %3725 = trunc i64 %3724 to i8
  %3726 = and i8 %3725, 1
  store i8 %3726, i8* %14, align 1
  %3727 = icmp eq i64 %3713, 0
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %15, align 1
  %3729 = lshr i64 %3713, 63
  %3730 = trunc i64 %3729 to i8
  store i8 %3730, i8* %16, align 1
  %3731 = lshr i64 %3706, 63
  %3732 = lshr i64 %3712, 63
  %3733 = xor i64 %3732, %3731
  %3734 = xor i64 %3729, %3731
  %3735 = add nuw nsw i64 %3734, %3733
  %3736 = icmp eq i64 %3735, 2
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %17, align 1
  %.v212 = select i1 %3727, i64 10, i64 25
  %3738 = add i64 %3709, %.v212
  store i64 %3738, i64* %3, align 8
  br i1 %3727, label %block_44cf50, label %block_.L_44cf5f

block_44cf50:                                     ; preds = %block_.L_44cf29
  store i64 ptrtoint (%G__0x4c1921_type* @G__0x4c1921 to i64), i64* %RDI.i892, align 8
  %3739 = add i64 %3738, 50336
  %3740 = add i64 %3738, 15
  %3741 = load i64, i64* %6, align 8
  %3742 = add i64 %3741, -8
  %3743 = inttoptr i64 %3742 to i64*
  store i64 %3740, i64* %3743, align 8
  store i64 %3742, i64* %6, align 8
  store i64 %3739, i64* %3, align 8
  %call2_44cf5a = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %3739, %struct.Memory* %3699)
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_44cf5f

block_.L_44cf5f:                                  ; preds = %block_.L_44cf29, %block_44cf50
  %3744 = phi i64 [ %3738, %block_.L_44cf29 ], [ %.pre142, %block_44cf50 ]
  %MEMORY.40 = phi %struct.Memory* [ %3699, %block_.L_44cf29 ], [ %call2_44cf5a, %block_44cf50 ]
  store i64 8, i64* %RSI.i1586, align 8
  %3745 = load i32, i32* bitcast (%G_0x70eaa0_type* @G_0x70eaa0 to i32*), align 8
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %RAX.i205, align 8
  store i64 %3746, i64* %RDI.i892, align 8
  %3747 = add i64 %3744, -310911
  %3748 = add i64 %3744, 21
  %3749 = load i64, i64* %6, align 8
  %3750 = add i64 %3749, -8
  %3751 = inttoptr i64 %3750 to i64*
  store i64 %3748, i64* %3751, align 8
  store i64 %3750, i64* %6, align 8
  store i64 %3747, i64* %3, align 8
  %3752 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.40)
  %3753 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RSI.i1586, align 8
  %3754 = load i64, i64* %RBP.i, align 8
  %3755 = add i64 %3754, -64
  %3756 = load i64, i64* %RAX.i205, align 8
  %3757 = add i64 %3753, 8
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3755 to i64*
  store i64 %3756, i64* %3758, align 8
  %3759 = load i64, i64* %RSI.i1586, align 8
  %3760 = load i64, i64* %RBP.i, align 8
  %3761 = add i64 %3760, -64
  %3762 = load i64, i64* %3, align 8
  %3763 = add i64 %3762, 4
  store i64 %3763, i64* %3, align 8
  %3764 = inttoptr i64 %3761 to i64*
  %3765 = load i64, i64* %3764, align 8
  %3766 = sub i64 %3759, %3765
  %3767 = icmp ult i64 %3759, %3765
  %3768 = zext i1 %3767 to i8
  store i8 %3768, i8* %12, align 1
  %3769 = trunc i64 %3766 to i32
  %3770 = and i32 %3769, 255
  %3771 = tail call i32 @llvm.ctpop.i32(i32 %3770)
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = xor i8 %3773, 1
  store i8 %3774, i8* %13, align 1
  %3775 = xor i64 %3765, %3759
  %3776 = xor i64 %3775, %3766
  %3777 = lshr i64 %3776, 4
  %3778 = trunc i64 %3777 to i8
  %3779 = and i8 %3778, 1
  store i8 %3779, i8* %14, align 1
  %3780 = icmp eq i64 %3766, 0
  %3781 = zext i1 %3780 to i8
  store i8 %3781, i8* %15, align 1
  %3782 = lshr i64 %3766, 63
  %3783 = trunc i64 %3782 to i8
  store i8 %3783, i8* %16, align 1
  %3784 = lshr i64 %3759, 63
  %3785 = lshr i64 %3765, 63
  %3786 = xor i64 %3785, %3784
  %3787 = xor i64 %3782, %3784
  %3788 = add nuw nsw i64 %3787, %3786
  %3789 = icmp eq i64 %3788, 2
  %3790 = zext i1 %3789 to i8
  store i8 %3790, i8* %17, align 1
  %.v213 = select i1 %3780, i64 10, i64 25
  %3791 = add i64 %3762, %.v213
  store i64 %3791, i64* %3, align 8
  br i1 %3780, label %block_44cf86, label %block_.L_44cf95

block_44cf86:                                     ; preds = %block_.L_44cf5f
  store i64 ptrtoint (%G__0x4c194c_type* @G__0x4c194c to i64), i64* %RDI.i892, align 8
  %3792 = add i64 %3791, 50282
  %3793 = add i64 %3791, 15
  %3794 = load i64, i64* %6, align 8
  %3795 = add i64 %3794, -8
  %3796 = inttoptr i64 %3795 to i64*
  store i64 %3793, i64* %3796, align 8
  store i64 %3795, i64* %6, align 8
  store i64 %3792, i64* %3, align 8
  %call2_44cf90 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %3792, %struct.Memory* %3752)
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_44cf95

block_.L_44cf95:                                  ; preds = %block_.L_44cf5f, %block_44cf86
  %3797 = phi i64 [ %3791, %block_.L_44cf5f ], [ %.pre143, %block_44cf86 ]
  %MEMORY.41 = phi %struct.Memory* [ %3752, %block_.L_44cf5f ], [ %call2_44cf90, %block_44cf86 ]
  store i64 8, i64* %RSI.i1586, align 8
  %3798 = load i32, i32* bitcast (%G_0x70eaa0_type* @G_0x70eaa0 to i32*), align 8
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RAX.i205, align 8
  store i64 %3799, i64* %RDI.i892, align 8
  %3800 = add i64 %3797, -310965
  %3801 = add i64 %3797, 21
  %3802 = load i64, i64* %6, align 8
  %3803 = add i64 %3802, -8
  %3804 = inttoptr i64 %3803 to i64*
  store i64 %3801, i64* %3804, align 8
  store i64 %3803, i64* %6, align 8
  store i64 %3800, i64* %3, align 8
  %3805 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.41)
  %3806 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RSI.i1586, align 8
  %3807 = load i64, i64* %RBP.i, align 8
  %3808 = add i64 %3807, -72
  %3809 = load i64, i64* %RAX.i205, align 8
  %3810 = add i64 %3806, 8
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3808 to i64*
  store i64 %3809, i64* %3811, align 8
  %3812 = load i64, i64* %RSI.i1586, align 8
  %3813 = load i64, i64* %RBP.i, align 8
  %3814 = add i64 %3813, -72
  %3815 = load i64, i64* %3, align 8
  %3816 = add i64 %3815, 4
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3814 to i64*
  %3818 = load i64, i64* %3817, align 8
  %3819 = sub i64 %3812, %3818
  %3820 = icmp ult i64 %3812, %3818
  %3821 = zext i1 %3820 to i8
  store i8 %3821, i8* %12, align 1
  %3822 = trunc i64 %3819 to i32
  %3823 = and i32 %3822, 255
  %3824 = tail call i32 @llvm.ctpop.i32(i32 %3823)
  %3825 = trunc i32 %3824 to i8
  %3826 = and i8 %3825, 1
  %3827 = xor i8 %3826, 1
  store i8 %3827, i8* %13, align 1
  %3828 = xor i64 %3818, %3812
  %3829 = xor i64 %3828, %3819
  %3830 = lshr i64 %3829, 4
  %3831 = trunc i64 %3830 to i8
  %3832 = and i8 %3831, 1
  store i8 %3832, i8* %14, align 1
  %3833 = icmp eq i64 %3819, 0
  %3834 = zext i1 %3833 to i8
  store i8 %3834, i8* %15, align 1
  %3835 = lshr i64 %3819, 63
  %3836 = trunc i64 %3835 to i8
  store i8 %3836, i8* %16, align 1
  %3837 = lshr i64 %3812, 63
  %3838 = lshr i64 %3818, 63
  %3839 = xor i64 %3838, %3837
  %3840 = xor i64 %3835, %3837
  %3841 = add nuw nsw i64 %3840, %3839
  %3842 = icmp eq i64 %3841, 2
  %3843 = zext i1 %3842 to i8
  store i8 %3843, i8* %17, align 1
  %.v214 = select i1 %3833, i64 10, i64 25
  %3844 = add i64 %3815, %.v214
  store i64 %3844, i64* %3, align 8
  br i1 %3833, label %block_44cfbc, label %block_.L_44cfcb

block_44cfbc:                                     ; preds = %block_.L_44cf95
  store i64 ptrtoint (%G__0x4c1936_type* @G__0x4c1936 to i64), i64* %RDI.i892, align 8
  %3845 = add i64 %3844, 50228
  %3846 = add i64 %3844, 15
  %3847 = load i64, i64* %6, align 8
  %3848 = add i64 %3847, -8
  %3849 = inttoptr i64 %3848 to i64*
  store i64 %3846, i64* %3849, align 8
  store i64 %3848, i64* %6, align 8
  store i64 %3845, i64* %3, align 8
  %call2_44cfc6 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %3845, %struct.Memory* %3805)
  %.pre144 = load i64, i64* %3, align 8
  %.pre145 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44cfcb

block_.L_44cfcb:                                  ; preds = %block_.L_44cf95, %block_44cfbc
  %3850 = phi i64 [ %3813, %block_.L_44cf95 ], [ %.pre145, %block_44cfbc ]
  %3851 = phi i64 [ %3844, %block_.L_44cf95 ], [ %.pre144, %block_44cfbc ]
  %MEMORY.42 = phi %struct.Memory* [ %3805, %block_.L_44cf95 ], [ %call2_44cfc6, %block_44cfbc ]
  store i32 0, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %3852 = add i64 %3850, -20
  %3853 = add i64 %3851, 29
  store i64 %3853, i64* %3, align 8
  %3854 = inttoptr i64 %3852 to i32*
  store i32 0, i32* %3854, align 4
  %RDX.i796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_44cfe8

block_.L_44cfe8:                                  ; preds = %block_.L_44d066, %block_.L_44cfcb
  %3855 = phi i64 [ %4038, %block_.L_44d066 ], [ %.pre146, %block_.L_44cfcb ]
  %3856 = load i64, i64* %RBP.i, align 8
  %3857 = add i64 %3856, -20
  %3858 = add i64 %3855, 3
  store i64 %3858, i64* %3, align 8
  %3859 = inttoptr i64 %3857 to i32*
  %3860 = load i32, i32* %3859, align 4
  %3861 = zext i32 %3860 to i64
  store i64 %3861, i64* %RAX.i205, align 8
  %3862 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %3863 = sub i32 %3860, %3862
  %3864 = icmp ult i32 %3860, %3862
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %12, align 1
  %3866 = and i32 %3863, 255
  %3867 = tail call i32 @llvm.ctpop.i32(i32 %3866)
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  %3870 = xor i8 %3869, 1
  store i8 %3870, i8* %13, align 1
  %3871 = xor i32 %3862, %3860
  %3872 = xor i32 %3871, %3863
  %3873 = lshr i32 %3872, 4
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  store i8 %3875, i8* %14, align 1
  %3876 = icmp eq i32 %3863, 0
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %15, align 1
  %3878 = lshr i32 %3863, 31
  %3879 = trunc i32 %3878 to i8
  store i8 %3879, i8* %16, align 1
  %3880 = lshr i32 %3860, 31
  %3881 = lshr i32 %3862, 31
  %3882 = xor i32 %3881, %3880
  %3883 = xor i32 %3878, %3880
  %3884 = add nuw nsw i32 %3883, %3882
  %3885 = icmp eq i32 %3884, 2
  %3886 = zext i1 %3885 to i8
  store i8 %3886, i8* %17, align 1
  %.v215 = select i1 %3864, i64 16, i64 145
  %3887 = add i64 %3855, %.v215
  store i64 %3887, i64* %3, align 8
  br i1 %3864, label %block_44cff8, label %block_.L_44d079

block_44cff8:                                     ; preds = %block_.L_44cfe8
  %3888 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %3888, i64* %RAX.i205, align 8
  %3889 = add i64 %3887, 11
  store i64 %3889, i64* %3, align 8
  %3890 = load i32, i32* %3859, align 4
  %3891 = zext i32 %3890 to i64
  store i64 %3891, i64* %RCX.i1946, align 8
  store i64 %3891, i64* %RDX.i796, align 8
  %3892 = shl nuw nsw i64 %3891, 3
  %3893 = add i64 %3888, %3892
  %3894 = add i64 %3887, 17
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i64*
  %3896 = load i64, i64* %3895, align 8
  store i64 %3896, i64* %RAX.i205, align 8
  %3897 = add i64 %3887, 20
  store i64 %3897, i64* %3, align 8
  %3898 = inttoptr i64 %3896 to i32*
  %3899 = load i32, i32* %3898, align 4
  store i8 0, i8* %12, align 1
  %3900 = and i32 %3899, 255
  %3901 = tail call i32 @llvm.ctpop.i32(i32 %3900)
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  %3904 = xor i8 %3903, 1
  store i8 %3904, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3905 = icmp eq i32 %3899, 0
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %15, align 1
  %3907 = lshr i32 %3899, 31
  %3908 = trunc i32 %3907 to i8
  store i8 %3908, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v233 = select i1 %3905, i64 110, i64 26
  %3909 = add i64 %3887, %.v233
  store i64 %3909, i64* %3, align 8
  br i1 %3905, label %block_.L_44d066, label %block_44d012

block_44d012:                                     ; preds = %block_44cff8
  %3910 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3910, i64* %RAX.i205, align 8
  %3911 = add i64 %3910, 72460
  %3912 = add i64 %3909, 14
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3911 to i32*
  %3914 = load i32, i32* %3913, align 4
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RCX.i1946, align 8
  store i64 %3888, i64* %RAX.i205, align 8
  %3916 = add i64 %3909, 25
  store i64 %3916, i64* %3, align 8
  %3917 = load i32, i32* %3859, align 4
  %3918 = zext i32 %3917 to i64
  store i64 %3918, i64* %RDX.i796, align 8
  store i64 %3918, i64* %RSI.i1586, align 8
  %3919 = shl nuw nsw i64 %3918, 3
  %3920 = add i64 %3888, %3919
  %3921 = add i64 %3909, 31
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3920 to i64*
  %3923 = load i64, i64* %3922, align 8
  store i64 %3923, i64* %RAX.i205, align 8
  %3924 = add i64 %3923, 36
  %3925 = add i64 %3909, 34
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = sub i32 %3914, %3927
  %3929 = icmp ult i32 %3914, %3927
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %12, align 1
  %3931 = and i32 %3928, 255
  %3932 = tail call i32 @llvm.ctpop.i32(i32 %3931)
  %3933 = trunc i32 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = xor i8 %3934, 1
  store i8 %3935, i8* %13, align 1
  %3936 = xor i32 %3927, %3914
  %3937 = xor i32 %3936, %3928
  %3938 = lshr i32 %3937, 4
  %3939 = trunc i32 %3938 to i8
  %3940 = and i8 %3939, 1
  store i8 %3940, i8* %14, align 1
  %3941 = icmp eq i32 %3928, 0
  %3942 = zext i1 %3941 to i8
  store i8 %3942, i8* %15, align 1
  %3943 = lshr i32 %3928, 31
  %3944 = trunc i32 %3943 to i8
  store i8 %3944, i8* %16, align 1
  %3945 = lshr i32 %3914, 31
  %3946 = lshr i32 %3927, 31
  %3947 = xor i32 %3946, %3945
  %3948 = xor i32 %3943, %3945
  %3949 = add nuw nsw i32 %3948, %3947
  %3950 = icmp eq i32 %3949, 2
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %17, align 1
  %3952 = icmp ne i8 %3944, 0
  %3953 = xor i1 %3952, %3950
  %.v234 = select i1 %3953, i64 79, i64 40
  %3954 = add i64 %3909, %.v234
  store i64 %3954, i64* %3, align 8
  br i1 %3953, label %block_.L_44d061, label %block_44d03a

block_44d03a:                                     ; preds = %block_44d012
  store i64 %3888, i64* %RAX.i205, align 8
  %3955 = add i64 %3954, 11
  store i64 %3955, i64* %3, align 8
  %3956 = load i32, i32* %3859, align 4
  %3957 = zext i32 %3956 to i64
  store i64 %3957, i64* %RCX.i1946, align 8
  store i64 %3957, i64* %RDX.i796, align 8
  %3958 = shl nuw nsw i64 %3957, 3
  %3959 = add i64 %3888, %3958
  %3960 = add i64 %3954, 17
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i64*
  %3962 = load i64, i64* %3961, align 8
  store i64 %3962, i64* %RAX.i205, align 8
  %3963 = add i64 %3856, -56
  %3964 = add i64 %3954, 21
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3963 to i64*
  %3966 = load i64, i64* %3965, align 8
  store i64 %3966, i64* %RDX.i796, align 8
  %3967 = add i64 %3856, -36
  %3968 = add i64 %3954, 24
  store i64 %3968, i64* %3, align 8
  %3969 = inttoptr i64 %3967 to i32*
  %3970 = load i32, i32* %3969, align 4
  %3971 = zext i32 %3970 to i64
  store i64 %3971, i64* %RCX.i1946, align 8
  %3972 = add i32 %3970, 1
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RSI.i1586, align 8
  %3974 = icmp eq i32 %3970, -1
  %3975 = icmp eq i32 %3972, 0
  %3976 = or i1 %3974, %3975
  %3977 = zext i1 %3976 to i8
  store i8 %3977, i8* %12, align 1
  %3978 = and i32 %3972, 255
  %3979 = tail call i32 @llvm.ctpop.i32(i32 %3978)
  %3980 = trunc i32 %3979 to i8
  %3981 = and i8 %3980, 1
  %3982 = xor i8 %3981, 1
  store i8 %3982, i8* %13, align 1
  %3983 = xor i32 %3972, %3970
  %3984 = lshr i32 %3983, 4
  %3985 = trunc i32 %3984 to i8
  %3986 = and i8 %3985, 1
  store i8 %3986, i8* %14, align 1
  %3987 = zext i1 %3975 to i8
  store i8 %3987, i8* %15, align 1
  %3988 = lshr i32 %3972, 31
  %3989 = trunc i32 %3988 to i8
  store i8 %3989, i8* %16, align 1
  %3990 = lshr i32 %3970, 31
  %3991 = xor i32 %3988, %3990
  %3992 = add nuw nsw i32 %3991, %3988
  %3993 = icmp eq i32 %3992, 2
  %3994 = zext i1 %3993 to i8
  store i8 %3994, i8* %17, align 1
  %3995 = add i64 %3954, 32
  store i64 %3995, i64* %3, align 8
  store i32 %3972, i32* %3969, align 4
  %3996 = load i32, i32* %ECX.i885, align 4
  %3997 = load i64, i64* %3, align 8
  %3998 = sext i32 %3996 to i64
  store i64 %3998, i64* %RDI.i892, align 8
  %3999 = load i64, i64* %RDX.i796, align 8
  %4000 = shl nsw i64 %3998, 3
  %4001 = add i64 %3999, %4000
  %4002 = load i64, i64* %RAX.i205, align 8
  %4003 = add i64 %3997, 7
  store i64 %4003, i64* %3, align 8
  %4004 = inttoptr i64 %4001 to i64*
  store i64 %4002, i64* %4004, align 8
  %.pre147 = load i64, i64* %3, align 8
  %.pre148.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44d061

block_.L_44d061:                                  ; preds = %block_44d03a, %block_44d012
  %.pre148 = phi i64 [ %.pre148.pre, %block_44d03a ], [ %3856, %block_44d012 ]
  %4005 = phi i64 [ %.pre147, %block_44d03a ], [ %3954, %block_44d012 ]
  %4006 = add i64 %4005, 5
  store i64 %4006, i64* %3, align 8
  br label %block_.L_44d066

block_.L_44d066:                                  ; preds = %block_.L_44d061, %block_44cff8
  %4007 = phi i64 [ %.pre148, %block_.L_44d061 ], [ %3856, %block_44cff8 ]
  %4008 = phi i64 [ %4006, %block_.L_44d061 ], [ %3909, %block_44cff8 ]
  %4009 = add i64 %4007, -20
  %4010 = add i64 %4008, 8
  store i64 %4010, i64* %3, align 8
  %4011 = inttoptr i64 %4009 to i32*
  %4012 = load i32, i32* %4011, align 4
  %4013 = add i32 %4012, 1
  %4014 = zext i32 %4013 to i64
  store i64 %4014, i64* %RAX.i205, align 8
  %4015 = icmp eq i32 %4012, -1
  %4016 = icmp eq i32 %4013, 0
  %4017 = or i1 %4015, %4016
  %4018 = zext i1 %4017 to i8
  store i8 %4018, i8* %12, align 1
  %4019 = and i32 %4013, 255
  %4020 = tail call i32 @llvm.ctpop.i32(i32 %4019)
  %4021 = trunc i32 %4020 to i8
  %4022 = and i8 %4021, 1
  %4023 = xor i8 %4022, 1
  store i8 %4023, i8* %13, align 1
  %4024 = xor i32 %4013, %4012
  %4025 = lshr i32 %4024, 4
  %4026 = trunc i32 %4025 to i8
  %4027 = and i8 %4026, 1
  store i8 %4027, i8* %14, align 1
  %4028 = zext i1 %4016 to i8
  store i8 %4028, i8* %15, align 1
  %4029 = lshr i32 %4013, 31
  %4030 = trunc i32 %4029 to i8
  store i8 %4030, i8* %16, align 1
  %4031 = lshr i32 %4012, 31
  %4032 = xor i32 %4029, %4031
  %4033 = add nuw nsw i32 %4032, %4029
  %4034 = icmp eq i32 %4033, 2
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %17, align 1
  %4036 = add i64 %4008, 14
  store i64 %4036, i64* %3, align 8
  store i32 %4013, i32* %4011, align 4
  %4037 = load i64, i64* %3, align 8
  %4038 = add i64 %4037, -140
  store i64 %4038, i64* %3, align 8
  br label %block_.L_44cfe8

block_.L_44d079:                                  ; preds = %block_.L_44cfe8
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i796, align 8
  store i64 ptrtoint (%G__0x44dc20_type* @G__0x44dc20 to i64), i64* %RCX.i1946, align 8
  %4039 = add i64 %3856, -56
  %4040 = add i64 %3887, 21
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i64*
  %4042 = load i64, i64* %4041, align 8
  store i64 %4042, i64* %RSI.i1586, align 8
  %4043 = add i64 %3856, -36
  %4044 = add i64 %3887, 25
  store i64 %4044, i64* %3, align 8
  %4045 = inttoptr i64 %4043 to i32*
  %4046 = load i32, i32* %4045, align 4
  %4047 = sext i32 %4046 to i64
  %4048 = add i64 %3856, -152
  %4049 = add i64 %3887, 32
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4048 to i64*
  store i64 %4047, i64* %4050, align 8
  %4051 = load i64, i64* %RSI.i1586, align 8
  %4052 = load i64, i64* %3, align 8
  store i64 %4051, i64* %RDI.i892, align 8
  %4053 = load i64, i64* %RBP.i, align 8
  %4054 = add i64 %4053, -152
  %4055 = add i64 %4052, 10
  store i64 %4055, i64* %3, align 8
  %4056 = inttoptr i64 %4054 to i64*
  %4057 = load i64, i64* %4056, align 8
  store i64 %4057, i64* %RSI.i1586, align 8
  %4058 = add i64 %4052, -311481
  %4059 = add i64 %4052, 15
  %4060 = load i64, i64* %6, align 8
  %4061 = add i64 %4060, -8
  %4062 = inttoptr i64 %4061 to i64*
  store i64 %4059, i64* %4062, align 8
  store i64 %4061, i64* %6, align 8
  store i64 %4058, i64* %3, align 8
  %call2_44d0a3 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %4058, %struct.Memory* %MEMORY.42)
  %4063 = load i64, i64* %RBP.i, align 8
  %4064 = add i64 %4063, -36
  %4065 = load i64, i64* %3, align 8
  %4066 = add i64 %4065, 3
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4064 to i32*
  %4068 = load i32, i32* %4067, align 4
  %4069 = zext i32 %4068 to i64
  store i64 %4069, i64* %RAX.i205, align 8
  %4070 = add i64 %4063, -40
  %4071 = add i64 %4065, 6
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i32*
  store i32 %4068, i32* %4072, align 4
  %4073 = load i64, i64* %RBP.i, align 8
  %4074 = add i64 %4073, -20
  %4075 = load i64, i64* %3, align 8
  %4076 = add i64 %4075, 7
  store i64 %4076, i64* %3, align 8
  %4077 = inttoptr i64 %4074 to i32*
  store i32 0, i32* %4077, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_44d0b5

block_.L_44d0b5:                                  ; preds = %block_.L_44d133, %block_.L_44d079
  %4078 = phi i64 [ %4261, %block_.L_44d133 ], [ %.pre149, %block_.L_44d079 ]
  %4079 = load i64, i64* %RBP.i, align 8
  %4080 = add i64 %4079, -20
  %4081 = add i64 %4078, 3
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RAX.i205, align 8
  %4085 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %4086 = sub i32 %4083, %4085
  %4087 = icmp ult i32 %4083, %4085
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %12, align 1
  %4089 = and i32 %4086, 255
  %4090 = tail call i32 @llvm.ctpop.i32(i32 %4089)
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = xor i8 %4092, 1
  store i8 %4093, i8* %13, align 1
  %4094 = xor i32 %4085, %4083
  %4095 = xor i32 %4094, %4086
  %4096 = lshr i32 %4095, 4
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  store i8 %4098, i8* %14, align 1
  %4099 = icmp eq i32 %4086, 0
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %15, align 1
  %4101 = lshr i32 %4086, 31
  %4102 = trunc i32 %4101 to i8
  store i8 %4102, i8* %16, align 1
  %4103 = lshr i32 %4083, 31
  %4104 = lshr i32 %4085, 31
  %4105 = xor i32 %4104, %4103
  %4106 = xor i32 %4101, %4103
  %4107 = add nuw nsw i32 %4106, %4105
  %4108 = icmp eq i32 %4107, 2
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %17, align 1
  %.v216 = select i1 %4087, i64 16, i64 145
  %4110 = add i64 %4078, %.v216
  store i64 %4110, i64* %3, align 8
  br i1 %4087, label %block_44d0c5, label %block_.L_44d146

block_44d0c5:                                     ; preds = %block_.L_44d0b5
  %4111 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %4111, i64* %RAX.i205, align 8
  %4112 = add i64 %4110, 11
  store i64 %4112, i64* %3, align 8
  %4113 = load i32, i32* %4082, align 4
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RCX.i1946, align 8
  store i64 %4114, i64* %RDX.i796, align 8
  %4115 = shl nuw nsw i64 %4114, 3
  %4116 = add i64 %4111, %4115
  %4117 = add i64 %4110, 17
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4116 to i64*
  %4119 = load i64, i64* %4118, align 8
  store i64 %4119, i64* %RAX.i205, align 8
  %4120 = add i64 %4110, 20
  store i64 %4120, i64* %3, align 8
  %4121 = inttoptr i64 %4119 to i32*
  %4122 = load i32, i32* %4121, align 4
  store i8 0, i8* %12, align 1
  %4123 = and i32 %4122, 255
  %4124 = tail call i32 @llvm.ctpop.i32(i32 %4123)
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  %4127 = xor i8 %4126, 1
  store i8 %4127, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4128 = icmp eq i32 %4122, 0
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %15, align 1
  %4130 = lshr i32 %4122, 31
  %4131 = trunc i32 %4130 to i8
  store i8 %4131, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v231 = select i1 %4128, i64 110, i64 26
  %4132 = add i64 %4110, %.v231
  store i64 %4132, i64* %3, align 8
  br i1 %4128, label %block_.L_44d133, label %block_44d0df

block_44d0df:                                     ; preds = %block_44d0c5
  %4133 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4133, i64* %RAX.i205, align 8
  %4134 = add i64 %4133, 72460
  %4135 = add i64 %4132, 14
  store i64 %4135, i64* %3, align 8
  %4136 = inttoptr i64 %4134 to i32*
  %4137 = load i32, i32* %4136, align 4
  %4138 = zext i32 %4137 to i64
  store i64 %4138, i64* %RCX.i1946, align 8
  store i64 %4111, i64* %RAX.i205, align 8
  %4139 = add i64 %4132, 25
  store i64 %4139, i64* %3, align 8
  %4140 = load i32, i32* %4082, align 4
  %4141 = zext i32 %4140 to i64
  store i64 %4141, i64* %RDX.i796, align 8
  store i64 %4141, i64* %RSI.i1586, align 8
  %4142 = shl nuw nsw i64 %4141, 3
  %4143 = add i64 %4111, %4142
  %4144 = add i64 %4132, 31
  store i64 %4144, i64* %3, align 8
  %4145 = inttoptr i64 %4143 to i64*
  %4146 = load i64, i64* %4145, align 8
  store i64 %4146, i64* %RAX.i205, align 8
  %4147 = add i64 %4146, 36
  %4148 = add i64 %4132, 34
  store i64 %4148, i64* %3, align 8
  %4149 = inttoptr i64 %4147 to i32*
  %4150 = load i32, i32* %4149, align 4
  %4151 = sub i32 %4137, %4150
  %4152 = icmp ult i32 %4137, %4150
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %12, align 1
  %4154 = and i32 %4151, 255
  %4155 = tail call i32 @llvm.ctpop.i32(i32 %4154)
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = xor i8 %4157, 1
  store i8 %4158, i8* %13, align 1
  %4159 = xor i32 %4150, %4137
  %4160 = xor i32 %4159, %4151
  %4161 = lshr i32 %4160, 4
  %4162 = trunc i32 %4161 to i8
  %4163 = and i8 %4162, 1
  store i8 %4163, i8* %14, align 1
  %4164 = icmp eq i32 %4151, 0
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %15, align 1
  %4166 = lshr i32 %4151, 31
  %4167 = trunc i32 %4166 to i8
  store i8 %4167, i8* %16, align 1
  %4168 = lshr i32 %4137, 31
  %4169 = lshr i32 %4150, 31
  %4170 = xor i32 %4169, %4168
  %4171 = xor i32 %4166, %4168
  %4172 = add nuw nsw i32 %4171, %4170
  %4173 = icmp eq i32 %4172, 2
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %17, align 1
  %4175 = icmp ne i8 %4167, 0
  %4176 = xor i1 %4175, %4173
  %.v232 = select i1 %4176, i64 40, i64 79
  %4177 = add i64 %4132, %.v232
  store i64 %4177, i64* %3, align 8
  br i1 %4176, label %block_44d107, label %block_.L_44d12e

block_44d107:                                     ; preds = %block_44d0df
  store i64 %4111, i64* %RAX.i205, align 8
  %4178 = add i64 %4177, 11
  store i64 %4178, i64* %3, align 8
  %4179 = load i32, i32* %4082, align 4
  %4180 = zext i32 %4179 to i64
  store i64 %4180, i64* %RCX.i1946, align 8
  store i64 %4180, i64* %RDX.i796, align 8
  %4181 = shl nuw nsw i64 %4180, 3
  %4182 = add i64 %4111, %4181
  %4183 = add i64 %4177, 17
  store i64 %4183, i64* %3, align 8
  %4184 = inttoptr i64 %4182 to i64*
  %4185 = load i64, i64* %4184, align 8
  store i64 %4185, i64* %RAX.i205, align 8
  %4186 = add i64 %4079, -56
  %4187 = add i64 %4177, 21
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i64*
  %4189 = load i64, i64* %4188, align 8
  store i64 %4189, i64* %RDX.i796, align 8
  %4190 = add i64 %4079, -36
  %4191 = add i64 %4177, 24
  store i64 %4191, i64* %3, align 8
  %4192 = inttoptr i64 %4190 to i32*
  %4193 = load i32, i32* %4192, align 4
  %4194 = zext i32 %4193 to i64
  store i64 %4194, i64* %RCX.i1946, align 8
  %4195 = add i32 %4193, 1
  %4196 = zext i32 %4195 to i64
  store i64 %4196, i64* %RSI.i1586, align 8
  %4197 = icmp eq i32 %4193, -1
  %4198 = icmp eq i32 %4195, 0
  %4199 = or i1 %4197, %4198
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %12, align 1
  %4201 = and i32 %4195, 255
  %4202 = tail call i32 @llvm.ctpop.i32(i32 %4201)
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  %4205 = xor i8 %4204, 1
  store i8 %4205, i8* %13, align 1
  %4206 = xor i32 %4195, %4193
  %4207 = lshr i32 %4206, 4
  %4208 = trunc i32 %4207 to i8
  %4209 = and i8 %4208, 1
  store i8 %4209, i8* %14, align 1
  %4210 = zext i1 %4198 to i8
  store i8 %4210, i8* %15, align 1
  %4211 = lshr i32 %4195, 31
  %4212 = trunc i32 %4211 to i8
  store i8 %4212, i8* %16, align 1
  %4213 = lshr i32 %4193, 31
  %4214 = xor i32 %4211, %4213
  %4215 = add nuw nsw i32 %4214, %4211
  %4216 = icmp eq i32 %4215, 2
  %4217 = zext i1 %4216 to i8
  store i8 %4217, i8* %17, align 1
  %4218 = add i64 %4177, 32
  store i64 %4218, i64* %3, align 8
  store i32 %4195, i32* %4192, align 4
  %4219 = load i32, i32* %ECX.i885, align 4
  %4220 = load i64, i64* %3, align 8
  %4221 = sext i32 %4219 to i64
  store i64 %4221, i64* %RDI.i892, align 8
  %4222 = load i64, i64* %RDX.i796, align 8
  %4223 = shl nsw i64 %4221, 3
  %4224 = add i64 %4222, %4223
  %4225 = load i64, i64* %RAX.i205, align 8
  %4226 = add i64 %4220, 7
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4224 to i64*
  store i64 %4225, i64* %4227, align 8
  %.pre150 = load i64, i64* %3, align 8
  %.pre151.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44d12e

block_.L_44d12e:                                  ; preds = %block_44d0df, %block_44d107
  %.pre151 = phi i64 [ %4079, %block_44d0df ], [ %.pre151.pre, %block_44d107 ]
  %4228 = phi i64 [ %4177, %block_44d0df ], [ %.pre150, %block_44d107 ]
  %4229 = add i64 %4228, 5
  store i64 %4229, i64* %3, align 8
  br label %block_.L_44d133

block_.L_44d133:                                  ; preds = %block_.L_44d12e, %block_44d0c5
  %4230 = phi i64 [ %.pre151, %block_.L_44d12e ], [ %4079, %block_44d0c5 ]
  %4231 = phi i64 [ %4229, %block_.L_44d12e ], [ %4132, %block_44d0c5 ]
  %4232 = add i64 %4230, -20
  %4233 = add i64 %4231, 8
  store i64 %4233, i64* %3, align 8
  %4234 = inttoptr i64 %4232 to i32*
  %4235 = load i32, i32* %4234, align 4
  %4236 = add i32 %4235, 1
  %4237 = zext i32 %4236 to i64
  store i64 %4237, i64* %RAX.i205, align 8
  %4238 = icmp eq i32 %4235, -1
  %4239 = icmp eq i32 %4236, 0
  %4240 = or i1 %4238, %4239
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %12, align 1
  %4242 = and i32 %4236, 255
  %4243 = tail call i32 @llvm.ctpop.i32(i32 %4242)
  %4244 = trunc i32 %4243 to i8
  %4245 = and i8 %4244, 1
  %4246 = xor i8 %4245, 1
  store i8 %4246, i8* %13, align 1
  %4247 = xor i32 %4236, %4235
  %4248 = lshr i32 %4247, 4
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  store i8 %4250, i8* %14, align 1
  %4251 = zext i1 %4239 to i8
  store i8 %4251, i8* %15, align 1
  %4252 = lshr i32 %4236, 31
  %4253 = trunc i32 %4252 to i8
  store i8 %4253, i8* %16, align 1
  %4254 = lshr i32 %4235, 31
  %4255 = xor i32 %4252, %4254
  %4256 = add nuw nsw i32 %4255, %4252
  %4257 = icmp eq i32 %4256, 2
  %4258 = zext i1 %4257 to i8
  store i8 %4258, i8* %17, align 1
  %4259 = add i64 %4231, 14
  store i64 %4259, i64* %3, align 8
  store i32 %4236, i32* %4234, align 4
  %4260 = load i64, i64* %3, align 8
  %4261 = add i64 %4260, -140
  store i64 %4261, i64* %3, align 8
  br label %block_.L_44d0b5

block_.L_44d146:                                  ; preds = %block_.L_44d0b5
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i796, align 8
  store i64 ptrtoint (%G__0x44dc90_type* @G__0x44dc90 to i64), i64* %RCX.i1946, align 8
  %4262 = add i64 %4079, -56
  %4263 = add i64 %4110, 21
  store i64 %4263, i64* %3, align 8
  %4264 = inttoptr i64 %4262 to i64*
  %4265 = load i64, i64* %4264, align 8
  store i64 %4265, i64* %RSI.i1586, align 8
  %4266 = add i64 %4079, -40
  %4267 = add i64 %4110, 25
  store i64 %4267, i64* %3, align 8
  %4268 = inttoptr i64 %4266 to i32*
  %4269 = load i32, i32* %4268, align 4
  %4270 = sext i32 %4269 to i64
  %4271 = shl nsw i64 %4270, 3
  store i64 %4271, i64* %RDI.i892, align 8
  %4272 = add i64 %4271, %4265
  store i64 %4272, i64* %RSI.i1586, align 8
  %4273 = icmp ult i64 %4272, %4265
  %4274 = icmp ult i64 %4272, %4271
  %4275 = or i1 %4273, %4274
  %4276 = zext i1 %4275 to i8
  store i8 %4276, i8* %12, align 1
  %4277 = trunc i64 %4272 to i32
  %4278 = and i32 %4277, 255
  %4279 = tail call i32 @llvm.ctpop.i32(i32 %4278)
  %4280 = trunc i32 %4279 to i8
  %4281 = and i8 %4280, 1
  %4282 = xor i8 %4281, 1
  store i8 %4282, i8* %13, align 1
  %4283 = xor i64 %4271, %4265
  %4284 = xor i64 %4283, %4272
  %4285 = lshr i64 %4284, 4
  %4286 = trunc i64 %4285 to i8
  %4287 = and i8 %4286, 1
  store i8 %4287, i8* %14, align 1
  %4288 = icmp eq i64 %4272, 0
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %15, align 1
  %4290 = lshr i64 %4272, 63
  %4291 = trunc i64 %4290 to i8
  store i8 %4291, i8* %16, align 1
  %4292 = lshr i64 %4265, 63
  %4293 = lshr i64 %4270, 60
  %4294 = and i64 %4293, 1
  %4295 = xor i64 %4290, %4292
  %4296 = xor i64 %4290, %4294
  %4297 = add nuw nsw i64 %4295, %4296
  %4298 = icmp eq i64 %4297, 2
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %17, align 1
  %4300 = add i64 %4079, -36
  %4301 = add i64 %4110, 35
  store i64 %4301, i64* %3, align 8
  %4302 = inttoptr i64 %4300 to i32*
  %4303 = load i32, i32* %4302, align 4
  %4304 = zext i32 %4303 to i64
  store i64 %4304, i64* %RAX.i205, align 8
  %4305 = add i64 %4110, 38
  store i64 %4305, i64* %3, align 8
  %4306 = load i32, i32* %4268, align 4
  %4307 = sub i32 %4303, %4306
  %4308 = zext i32 %4307 to i64
  store i64 %4308, i64* %RAX.i205, align 8
  %4309 = icmp ult i32 %4303, %4306
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %12, align 1
  %4311 = and i32 %4307, 255
  %4312 = tail call i32 @llvm.ctpop.i32(i32 %4311)
  %4313 = trunc i32 %4312 to i8
  %4314 = and i8 %4313, 1
  %4315 = xor i8 %4314, 1
  store i8 %4315, i8* %13, align 1
  %4316 = xor i32 %4306, %4303
  %4317 = xor i32 %4316, %4307
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  store i8 %4320, i8* %14, align 1
  %4321 = icmp eq i32 %4307, 0
  %4322 = zext i1 %4321 to i8
  store i8 %4322, i8* %15, align 1
  %4323 = lshr i32 %4307, 31
  %4324 = trunc i32 %4323 to i8
  store i8 %4324, i8* %16, align 1
  %4325 = lshr i32 %4303, 31
  %4326 = lshr i32 %4306, 31
  %4327 = xor i32 %4326, %4325
  %4328 = xor i32 %4323, %4325
  %4329 = add nuw nsw i32 %4328, %4327
  %4330 = icmp eq i32 %4329, 2
  %4331 = zext i1 %4330 to i8
  store i8 %4331, i8* %17, align 1
  %4332 = sext i32 %4307 to i64
  %4333 = load i64, i64* %RBP.i, align 8
  %4334 = add i64 %4333, -160
  %4335 = add i64 %4110, 48
  store i64 %4335, i64* %3, align 8
  %4336 = inttoptr i64 %4334 to i64*
  store i64 %4332, i64* %4336, align 8
  %4337 = load i64, i64* %RSI.i1586, align 8
  %4338 = load i64, i64* %3, align 8
  store i64 %4337, i64* %RDI.i892, align 8
  %4339 = load i64, i64* %RBP.i, align 8
  %4340 = add i64 %4339, -160
  %4341 = add i64 %4338, 10
  store i64 %4341, i64* %3, align 8
  %4342 = inttoptr i64 %4340 to i64*
  %4343 = load i64, i64* %4342, align 8
  store i64 %4343, i64* %RSI.i1586, align 8
  %4344 = add i64 %4338, -311702
  %4345 = add i64 %4338, 15
  %4346 = load i64, i64* %6, align 8
  %4347 = add i64 %4346, -8
  %4348 = inttoptr i64 %4347 to i64*
  store i64 %4345, i64* %4348, align 8
  store i64 %4347, i64* %6, align 8
  store i64 %4344, i64* %3, align 8
  %call2_44d180 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %4344, %struct.Memory* %call2_44d0a3)
  %4349 = load i64, i64* %RBP.i, align 8
  %4350 = add i64 %4349, -24
  %4351 = load i64, i64* %3, align 8
  %4352 = add i64 %4351, 7
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4350 to i32*
  store i32 0, i32* %4353, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_44d18c

block_.L_44d18c:                                  ; preds = %block_44d198, %block_.L_44d146
  %4354 = phi i64 [ %4504, %block_44d198 ], [ %.pre152, %block_.L_44d146 ]
  %4355 = load i64, i64* %RBP.i, align 8
  %4356 = add i64 %4355, -24
  %4357 = add i64 %4354, 3
  store i64 %4357, i64* %3, align 8
  %4358 = inttoptr i64 %4356 to i32*
  %4359 = load i32, i32* %4358, align 4
  %4360 = zext i32 %4359 to i64
  store i64 %4360, i64* %RAX.i205, align 8
  %4361 = add i64 %4355, -40
  %4362 = add i64 %4354, 6
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  %4364 = load i32, i32* %4363, align 4
  %4365 = sub i32 %4359, %4364
  %4366 = icmp ult i32 %4359, %4364
  %4367 = zext i1 %4366 to i8
  store i8 %4367, i8* %12, align 1
  %4368 = and i32 %4365, 255
  %4369 = tail call i32 @llvm.ctpop.i32(i32 %4368)
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  %4372 = xor i8 %4371, 1
  store i8 %4372, i8* %13, align 1
  %4373 = xor i32 %4364, %4359
  %4374 = xor i32 %4373, %4365
  %4375 = lshr i32 %4374, 4
  %4376 = trunc i32 %4375 to i8
  %4377 = and i8 %4376, 1
  store i8 %4377, i8* %14, align 1
  %4378 = icmp eq i32 %4365, 0
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %15, align 1
  %4380 = lshr i32 %4365, 31
  %4381 = trunc i32 %4380 to i8
  store i8 %4381, i8* %16, align 1
  %4382 = lshr i32 %4359, 31
  %4383 = lshr i32 %4364, 31
  %4384 = xor i32 %4383, %4382
  %4385 = xor i32 %4380, %4382
  %4386 = add nuw nsw i32 %4385, %4384
  %4387 = icmp eq i32 %4386, 2
  %4388 = zext i1 %4387 to i8
  store i8 %4388, i8* %17, align 1
  %4389 = icmp ne i8 %4381, 0
  %4390 = xor i1 %4389, %4387
  %.v217 = select i1 %4390, i64 12, i64 58
  %4391 = add i64 %4354, %.v217
  store i64 %4391, i64* %3, align 8
  br i1 %4390, label %block_44d198, label %block_.L_44d1c6

block_44d198:                                     ; preds = %block_.L_44d18c
  %4392 = add i64 %4355, -56
  %4393 = add i64 %4391, 4
  store i64 %4393, i64* %3, align 8
  %4394 = inttoptr i64 %4392 to i64*
  %4395 = load i64, i64* %4394, align 8
  store i64 %4395, i64* %RAX.i205, align 8
  %4396 = add i64 %4391, 8
  store i64 %4396, i64* %3, align 8
  %4397 = load i32, i32* %4358, align 4
  %4398 = sext i32 %4397 to i64
  store i64 %4398, i64* %RCX.i1946, align 8
  %4399 = shl nsw i64 %4398, 3
  %4400 = add i64 %4399, %4395
  %4401 = add i64 %4391, 12
  store i64 %4401, i64* %3, align 8
  %4402 = inttoptr i64 %4400 to i64*
  %4403 = load i64, i64* %4402, align 8
  store i64 %4403, i64* %RAX.i205, align 8
  %4404 = add i64 %4355, -64
  %4405 = add i64 %4391, 16
  store i64 %4405, i64* %3, align 8
  %4406 = inttoptr i64 %4404 to i64*
  %4407 = load i64, i64* %4406, align 8
  store i64 %4407, i64* %RCX.i1946, align 8
  %4408 = add i64 %4355, -36
  %4409 = add i64 %4391, 19
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i32*
  %4411 = load i32, i32* %4410, align 4
  %4412 = zext i32 %4411 to i64
  store i64 %4412, i64* %RDX.i796, align 8
  %4413 = add i64 %4391, 22
  store i64 %4413, i64* %3, align 8
  %4414 = load i32, i32* %4363, align 4
  %4415 = sub i32 %4411, %4414
  %4416 = zext i32 %4415 to i64
  store i64 %4416, i64* %RDX.i796, align 8
  %4417 = icmp ult i32 %4411, %4414
  %4418 = zext i1 %4417 to i8
  store i8 %4418, i8* %12, align 1
  %4419 = and i32 %4415, 255
  %4420 = tail call i32 @llvm.ctpop.i32(i32 %4419)
  %4421 = trunc i32 %4420 to i8
  %4422 = and i8 %4421, 1
  %4423 = xor i8 %4422, 1
  store i8 %4423, i8* %13, align 1
  %4424 = xor i32 %4414, %4411
  %4425 = xor i32 %4424, %4415
  %4426 = lshr i32 %4425, 4
  %4427 = trunc i32 %4426 to i8
  %4428 = and i8 %4427, 1
  store i8 %4428, i8* %14, align 1
  %4429 = icmp eq i32 %4415, 0
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %15, align 1
  %4431 = lshr i32 %4415, 31
  %4432 = trunc i32 %4431 to i8
  store i8 %4432, i8* %16, align 1
  %4433 = lshr i32 %4411, 31
  %4434 = lshr i32 %4414, 31
  %4435 = xor i32 %4434, %4433
  %4436 = xor i32 %4431, %4433
  %4437 = add nuw nsw i32 %4436, %4435
  %4438 = icmp eq i32 %4437, 2
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %17, align 1
  %4440 = add i64 %4391, 25
  store i64 %4440, i64* %3, align 8
  %4441 = load i32, i32* %4358, align 4
  %4442 = add i32 %4441, %4415
  %4443 = zext i32 %4442 to i64
  store i64 %4443, i64* %RDX.i796, align 8
  %4444 = icmp ult i32 %4442, %4415
  %4445 = icmp ult i32 %4442, %4441
  %4446 = or i1 %4444, %4445
  %4447 = zext i1 %4446 to i8
  store i8 %4447, i8* %12, align 1
  %4448 = and i32 %4442, 255
  %4449 = tail call i32 @llvm.ctpop.i32(i32 %4448)
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  store i8 %4452, i8* %13, align 1
  %4453 = xor i32 %4441, %4415
  %4454 = xor i32 %4453, %4442
  %4455 = lshr i32 %4454, 4
  %4456 = trunc i32 %4455 to i8
  %4457 = and i8 %4456, 1
  store i8 %4457, i8* %14, align 1
  %4458 = icmp eq i32 %4442, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %15, align 1
  %4460 = lshr i32 %4442, 31
  %4461 = trunc i32 %4460 to i8
  store i8 %4461, i8* %16, align 1
  %4462 = lshr i32 %4441, 31
  %4463 = xor i32 %4460, %4431
  %4464 = xor i32 %4460, %4462
  %4465 = add nuw nsw i32 %4463, %4464
  %4466 = icmp eq i32 %4465, 2
  %4467 = zext i1 %4466 to i8
  store i8 %4467, i8* %17, align 1
  %4468 = sext i32 %4442 to i64
  store i64 %4468, i64* %RSI.i1586, align 8
  %4469 = shl nsw i64 %4468, 3
  %4470 = add i64 %4407, %4469
  %4471 = add i64 %4391, 32
  store i64 %4471, i64* %3, align 8
  %4472 = inttoptr i64 %4470 to i64*
  store i64 %4403, i64* %4472, align 8
  %4473 = load i64, i64* %RBP.i, align 8
  %4474 = add i64 %4473, -24
  %4475 = load i64, i64* %3, align 8
  %4476 = add i64 %4475, 3
  store i64 %4476, i64* %3, align 8
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477, align 4
  %4479 = add i32 %4478, 1
  %4480 = zext i32 %4479 to i64
  store i64 %4480, i64* %RAX.i205, align 8
  %4481 = icmp eq i32 %4478, -1
  %4482 = icmp eq i32 %4479, 0
  %4483 = or i1 %4481, %4482
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %12, align 1
  %4485 = and i32 %4479, 255
  %4486 = tail call i32 @llvm.ctpop.i32(i32 %4485)
  %4487 = trunc i32 %4486 to i8
  %4488 = and i8 %4487, 1
  %4489 = xor i8 %4488, 1
  store i8 %4489, i8* %13, align 1
  %4490 = xor i32 %4479, %4478
  %4491 = lshr i32 %4490, 4
  %4492 = trunc i32 %4491 to i8
  %4493 = and i8 %4492, 1
  store i8 %4493, i8* %14, align 1
  %4494 = zext i1 %4482 to i8
  store i8 %4494, i8* %15, align 1
  %4495 = lshr i32 %4479, 31
  %4496 = trunc i32 %4495 to i8
  store i8 %4496, i8* %16, align 1
  %4497 = lshr i32 %4478, 31
  %4498 = xor i32 %4495, %4497
  %4499 = add nuw nsw i32 %4498, %4495
  %4500 = icmp eq i32 %4499, 2
  %4501 = zext i1 %4500 to i8
  store i8 %4501, i8* %17, align 1
  %4502 = add i64 %4475, 9
  store i64 %4502, i64* %3, align 8
  store i32 %4479, i32* %4477, align 4
  %4503 = load i64, i64* %3, align 8
  %4504 = add i64 %4503, -53
  store i64 %4504, i64* %3, align 8
  br label %block_.L_44d18c

block_.L_44d1c6:                                  ; preds = %block_.L_44d18c
  %4505 = add i64 %4391, 3
  store i64 %4505, i64* %3, align 8
  %4506 = load i32, i32* %4363, align 4
  %4507 = zext i32 %4506 to i64
  store i64 %4507, i64* %RAX.i205, align 8
  %4508 = add i64 %4391, 6
  store i64 %4508, i64* %3, align 8
  store i32 %4506, i32* %4358, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_44d1cc

block_.L_44d1cc:                                  ; preds = %block_44d1d8, %block_.L_44d1c6
  %4509 = phi i64 [ %4631, %block_44d1d8 ], [ %.pre153, %block_.L_44d1c6 ]
  %4510 = load i64, i64* %RBP.i, align 8
  %4511 = add i64 %4510, -24
  %4512 = add i64 %4509, 3
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4511 to i32*
  %4514 = load i32, i32* %4513, align 4
  %4515 = zext i32 %4514 to i64
  store i64 %4515, i64* %RAX.i205, align 8
  %4516 = add i64 %4510, -36
  %4517 = add i64 %4509, 6
  store i64 %4517, i64* %3, align 8
  %4518 = inttoptr i64 %4516 to i32*
  %4519 = load i32, i32* %4518, align 4
  %4520 = sub i32 %4514, %4519
  %4521 = icmp ult i32 %4514, %4519
  %4522 = zext i1 %4521 to i8
  store i8 %4522, i8* %12, align 1
  %4523 = and i32 %4520, 255
  %4524 = tail call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  store i8 %4527, i8* %13, align 1
  %4528 = xor i32 %4519, %4514
  %4529 = xor i32 %4528, %4520
  %4530 = lshr i32 %4529, 4
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  store i8 %4532, i8* %14, align 1
  %4533 = icmp eq i32 %4520, 0
  %4534 = zext i1 %4533 to i8
  store i8 %4534, i8* %15, align 1
  %4535 = lshr i32 %4520, 31
  %4536 = trunc i32 %4535 to i8
  store i8 %4536, i8* %16, align 1
  %4537 = lshr i32 %4514, 31
  %4538 = lshr i32 %4519, 31
  %4539 = xor i32 %4538, %4537
  %4540 = xor i32 %4535, %4537
  %4541 = add nuw nsw i32 %4540, %4539
  %4542 = icmp eq i32 %4541, 2
  %4543 = zext i1 %4542 to i8
  store i8 %4543, i8* %17, align 1
  %4544 = icmp ne i8 %4536, 0
  %4545 = xor i1 %4544, %4542
  %.v218 = select i1 %4545, i64 12, i64 55
  %4546 = add i64 %4509, %.v218
  store i64 %4546, i64* %3, align 8
  br i1 %4545, label %block_44d1d8, label %block_.L_44d203

block_44d1d8:                                     ; preds = %block_.L_44d1cc
  %4547 = add i64 %4510, -56
  %4548 = add i64 %4546, 4
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to i64*
  %4550 = load i64, i64* %4549, align 8
  store i64 %4550, i64* %RAX.i205, align 8
  %4551 = add i64 %4546, 8
  store i64 %4551, i64* %3, align 8
  %4552 = load i32, i32* %4513, align 4
  %4553 = sext i32 %4552 to i64
  store i64 %4553, i64* %RCX.i1946, align 8
  %4554 = shl nsw i64 %4553, 3
  %4555 = add i64 %4554, %4550
  %4556 = add i64 %4546, 12
  store i64 %4556, i64* %3, align 8
  %4557 = inttoptr i64 %4555 to i64*
  %4558 = load i64, i64* %4557, align 8
  store i64 %4558, i64* %RAX.i205, align 8
  %4559 = add i64 %4510, -64
  %4560 = add i64 %4546, 16
  store i64 %4560, i64* %3, align 8
  %4561 = inttoptr i64 %4559 to i64*
  %4562 = load i64, i64* %4561, align 8
  store i64 %4562, i64* %RCX.i1946, align 8
  %4563 = add i64 %4546, 19
  store i64 %4563, i64* %3, align 8
  %4564 = load i32, i32* %4513, align 4
  %4565 = zext i32 %4564 to i64
  store i64 %4565, i64* %RDX.i796, align 8
  %4566 = add i64 %4510, -40
  %4567 = add i64 %4546, 22
  store i64 %4567, i64* %3, align 8
  %4568 = inttoptr i64 %4566 to i32*
  %4569 = load i32, i32* %4568, align 4
  %4570 = sub i32 %4564, %4569
  %4571 = zext i32 %4570 to i64
  store i64 %4571, i64* %RDX.i796, align 8
  %4572 = icmp ult i32 %4564, %4569
  %4573 = zext i1 %4572 to i8
  store i8 %4573, i8* %12, align 1
  %4574 = and i32 %4570, 255
  %4575 = tail call i32 @llvm.ctpop.i32(i32 %4574)
  %4576 = trunc i32 %4575 to i8
  %4577 = and i8 %4576, 1
  %4578 = xor i8 %4577, 1
  store i8 %4578, i8* %13, align 1
  %4579 = xor i32 %4569, %4564
  %4580 = xor i32 %4579, %4570
  %4581 = lshr i32 %4580, 4
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  store i8 %4583, i8* %14, align 1
  %4584 = icmp eq i32 %4570, 0
  %4585 = zext i1 %4584 to i8
  store i8 %4585, i8* %15, align 1
  %4586 = lshr i32 %4570, 31
  %4587 = trunc i32 %4586 to i8
  store i8 %4587, i8* %16, align 1
  %4588 = lshr i32 %4564, 31
  %4589 = lshr i32 %4569, 31
  %4590 = xor i32 %4589, %4588
  %4591 = xor i32 %4586, %4588
  %4592 = add nuw nsw i32 %4591, %4590
  %4593 = icmp eq i32 %4592, 2
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %17, align 1
  %4595 = sext i32 %4570 to i64
  store i64 %4595, i64* %RSI.i1586, align 8
  %4596 = shl nsw i64 %4595, 3
  %4597 = add i64 %4562, %4596
  %4598 = add i64 %4546, 29
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i64*
  store i64 %4558, i64* %4599, align 8
  %4600 = load i64, i64* %RBP.i, align 8
  %4601 = add i64 %4600, -24
  %4602 = load i64, i64* %3, align 8
  %4603 = add i64 %4602, 3
  store i64 %4603, i64* %3, align 8
  %4604 = inttoptr i64 %4601 to i32*
  %4605 = load i32, i32* %4604, align 4
  %4606 = add i32 %4605, 1
  %4607 = zext i32 %4606 to i64
  store i64 %4607, i64* %RAX.i205, align 8
  %4608 = icmp eq i32 %4605, -1
  %4609 = icmp eq i32 %4606, 0
  %4610 = or i1 %4608, %4609
  %4611 = zext i1 %4610 to i8
  store i8 %4611, i8* %12, align 1
  %4612 = and i32 %4606, 255
  %4613 = tail call i32 @llvm.ctpop.i32(i32 %4612)
  %4614 = trunc i32 %4613 to i8
  %4615 = and i8 %4614, 1
  %4616 = xor i8 %4615, 1
  store i8 %4616, i8* %13, align 1
  %4617 = xor i32 %4606, %4605
  %4618 = lshr i32 %4617, 4
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  store i8 %4620, i8* %14, align 1
  %4621 = zext i1 %4609 to i8
  store i8 %4621, i8* %15, align 1
  %4622 = lshr i32 %4606, 31
  %4623 = trunc i32 %4622 to i8
  store i8 %4623, i8* %16, align 1
  %4624 = lshr i32 %4605, 31
  %4625 = xor i32 %4622, %4624
  %4626 = add nuw nsw i32 %4625, %4622
  %4627 = icmp eq i32 %4626, 2
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %17, align 1
  %4629 = add i64 %4602, 9
  store i64 %4629, i64* %3, align 8
  store i32 %4606, i32* %4604, align 4
  %4630 = load i64, i64* %3, align 8
  %4631 = add i64 %4630, -50
  store i64 %4631, i64* %3, align 8
  br label %block_.L_44d1cc

block_.L_44d203:                                  ; preds = %block_.L_44d1cc
  %R8.i481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64* %R8.i481, align 8
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %4632, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i32 0, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %4633 = add i64 %4510, -8
  %4634 = add i64 %4546, 38
  store i64 %4634, i64* %3, align 8
  %4635 = inttoptr i64 %4633 to i32*
  %4636 = load i32, i32* %4635, align 4
  %4637 = zext i32 %4636 to i64
  store i64 %4637, i64* %RDI.i892, align 8
  %4638 = add i64 %4510, -56
  %4639 = add i64 %4546, 42
  store i64 %4639, i64* %3, align 8
  %4640 = inttoptr i64 %4638 to i64*
  %4641 = load i64, i64* %4640, align 8
  store i64 %4641, i64* %RSI.i1586, align 8
  %4642 = add i64 %4546, 45
  store i64 %4642, i64* %3, align 8
  %4643 = load i32, i32* %4518, align 4
  %4644 = zext i32 %4643 to i64
  store i64 %4644, i64* %RDX.i796, align 8
  %4645 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %4645, i64* %RCX.i1946, align 8
  %4646 = add i64 %4546, 1389
  %4647 = add i64 %4546, 58
  %4648 = load i64, i64* %6, align 8
  %4649 = add i64 %4648, -8
  %4650 = inttoptr i64 %4649 to i64*
  store i64 %4647, i64* %4650, align 8
  store i64 %4649, i64* %6, align 8
  store i64 %4646, i64* %3, align 8
  %call2_44d238 = tail call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* nonnull %0, i64 %4646, %struct.Memory* %call2_44d180)
  %4651 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64* %RCX.i1946, align 8
  %4652 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4) to i32), i32 255))
  %4653 = trunc i32 %4652 to i8
  %4654 = and i8 %4653, 1
  %4655 = xor i8 %4654, 1
  store i64 0, i64* %4632, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %4656 = load i64, i64* %RBP.i, align 8
  %4657 = add i64 %4656, -8
  %4658 = add i64 %4651, 20
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4657 to i32*
  %4660 = load i32, i32* %4659, align 4
  %4661 = zext i32 %4660 to i64
  store i64 %4661, i64* %RDI.i892, align 8
  %4662 = add i64 %4656, -64
  %4663 = add i64 %4651, 24
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i64*
  %4665 = load i64, i64* %4664, align 8
  store i64 %4665, i64* %RSI.i1586, align 8
  %4666 = add i64 %4656, -36
  %4667 = add i64 %4651, 27
  store i64 %4667, i64* %3, align 8
  %4668 = inttoptr i64 %4666 to i32*
  %4669 = load i32, i32* %4668, align 4
  %4670 = zext i32 %4669 to i64
  store i64 %4670, i64* %RDX.i796, align 8
  %4671 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %4671, i64* %R8.i481, align 8
  %4672 = add i64 %4656, -168
  %4673 = add i64 %4651, 42
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i64*
  store i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64* %4674, align 8
  %4675 = load i64, i64* %R8.i481, align 8
  %4676 = load i64, i64* %3, align 8
  store i64 %4675, i64* %RCX.i1946, align 8
  %4677 = load i64, i64* %RBP.i, align 8
  %4678 = add i64 %4677, -168
  %4679 = add i64 %4676, 10
  store i64 %4679, i64* %3, align 8
  %4680 = inttoptr i64 %4678 to i64*
  %4681 = load i64, i64* %4680, align 8
  store i64 %4681, i64* %R8.i481, align 8
  %4682 = add i64 %4676, 1289
  %4683 = add i64 %4676, 15
  %4684 = load i64, i64* %6, align 8
  %4685 = add i64 %4684, -8
  %4686 = inttoptr i64 %4685 to i64*
  store i64 %4683, i64* %4686, align 8
  store i64 %4685, i64* %6, align 8
  store i64 %4682, i64* %3, align 8
  %call2_44d271 = tail call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* nonnull %0, i64 %4682, %struct.Memory* %call2_44d238)
  %4687 = load i64, i64* %RBP.i, align 8
  %4688 = add i64 %4687, -20
  %4689 = load i64, i64* %3, align 8
  %4690 = add i64 %4689, 7
  store i64 %4690, i64* %3, align 8
  %4691 = inttoptr i64 %4688 to i32*
  store i32 0, i32* %4691, align 4
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_44d27d

block_.L_44d27d:                                  ; preds = %block_.L_44d36c, %block_.L_44d203
  %4692 = phi i64 [ %5027, %block_.L_44d36c ], [ %.pre154, %block_.L_44d203 ]
  %4693 = load i64, i64* %RBP.i, align 8
  %4694 = add i64 %4693, -20
  %4695 = add i64 %4692, 3
  store i64 %4695, i64* %3, align 8
  %4696 = inttoptr i64 %4694 to i32*
  %4697 = load i32, i32* %4696, align 4
  %4698 = zext i32 %4697 to i64
  store i64 %4698, i64* %RAX.i205, align 8
  %4699 = load i32, i32* bitcast (%G_0x70eaac_type* @G_0x70eaac to i32*), align 8
  %4700 = sub i32 %4697, %4699
  %4701 = icmp ult i32 %4697, %4699
  %4702 = zext i1 %4701 to i8
  store i8 %4702, i8* %12, align 1
  %4703 = and i32 %4700, 255
  %4704 = tail call i32 @llvm.ctpop.i32(i32 %4703)
  %4705 = trunc i32 %4704 to i8
  %4706 = and i8 %4705, 1
  %4707 = xor i8 %4706, 1
  store i8 %4707, i8* %13, align 1
  %4708 = xor i32 %4699, %4697
  %4709 = xor i32 %4708, %4700
  %4710 = lshr i32 %4709, 4
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  store i8 %4712, i8* %14, align 1
  %4713 = icmp eq i32 %4700, 0
  %4714 = zext i1 %4713 to i8
  store i8 %4714, i8* %15, align 1
  %4715 = lshr i32 %4700, 31
  %4716 = trunc i32 %4715 to i8
  store i8 %4716, i8* %16, align 1
  %4717 = lshr i32 %4697, 31
  %4718 = lshr i32 %4699, 31
  %4719 = xor i32 %4718, %4717
  %4720 = xor i32 %4715, %4717
  %4721 = add nuw nsw i32 %4720, %4719
  %4722 = icmp eq i32 %4721, 2
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %17, align 1
  %.v219 = select i1 %4701, i64 16, i64 258
  %4724 = add i64 %4692, %.v219
  store i64 %4724, i64* %3, align 8
  br i1 %4701, label %block_44d28d, label %block_.L_44d37f

block_44d28d:                                     ; preds = %block_.L_44d27d
  %4725 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %4725, i64* %RAX.i205, align 8
  %4726 = add i64 %4724, 11
  store i64 %4726, i64* %3, align 8
  %4727 = load i32, i32* %4696, align 4
  %4728 = zext i32 %4727 to i64
  store i64 %4728, i64* %RCX.i1946, align 8
  store i64 %4728, i64* %RDX.i796, align 8
  %4729 = shl nuw nsw i64 %4728, 3
  %4730 = add i64 %4725, %4729
  %4731 = add i64 %4724, 17
  store i64 %4731, i64* %3, align 8
  %4732 = inttoptr i64 %4730 to i64*
  %4733 = load i64, i64* %4732, align 8
  store i64 %4733, i64* %RAX.i205, align 8
  %4734 = add i64 %4693, -72
  %4735 = add i64 %4724, 21
  store i64 %4735, i64* %3, align 8
  %4736 = inttoptr i64 %4734 to i64*
  %4737 = load i64, i64* %4736, align 8
  store i64 %4737, i64* %RDX.i796, align 8
  %4738 = add i64 %4693, -44
  %4739 = add i64 %4724, 24
  store i64 %4739, i64* %3, align 8
  %4740 = inttoptr i64 %4738 to i32*
  %4741 = load i32, i32* %4740, align 4
  %4742 = zext i32 %4741 to i64
  store i64 %4742, i64* %RCX.i1946, align 8
  %4743 = add i32 %4741, 1
  %4744 = zext i32 %4743 to i64
  store i64 %4744, i64* %RSI.i1586, align 8
  %4745 = icmp eq i32 %4741, -1
  %4746 = icmp eq i32 %4743, 0
  %4747 = or i1 %4745, %4746
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %12, align 1
  %4749 = and i32 %4743, 255
  %4750 = tail call i32 @llvm.ctpop.i32(i32 %4749)
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  %4753 = xor i8 %4752, 1
  store i8 %4753, i8* %13, align 1
  %4754 = xor i32 %4743, %4741
  %4755 = lshr i32 %4754, 4
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  store i8 %4757, i8* %14, align 1
  %4758 = zext i1 %4746 to i8
  store i8 %4758, i8* %15, align 1
  %4759 = lshr i32 %4743, 31
  %4760 = trunc i32 %4759 to i8
  store i8 %4760, i8* %16, align 1
  %4761 = lshr i32 %4741, 31
  %4762 = xor i32 %4759, %4761
  %4763 = add nuw nsw i32 %4762, %4759
  %4764 = icmp eq i32 %4763, 2
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %17, align 1
  %4766 = add i64 %4724, 32
  store i64 %4766, i64* %3, align 8
  store i32 %4743, i32* %4740, align 4
  %4767 = load i32, i32* %ECX.i885, align 4
  %4768 = load i64, i64* %3, align 8
  %4769 = sext i32 %4767 to i64
  store i64 %4769, i64* %RDI.i892, align 8
  %4770 = load i64, i64* %RDX.i796, align 8
  %4771 = shl nsw i64 %4769, 3
  %4772 = add i64 %4770, %4771
  %4773 = load i64, i64* %RAX.i205, align 8
  %4774 = add i64 %4768, 7
  store i64 %4774, i64* %3, align 8
  %4775 = inttoptr i64 %4772 to i64*
  store i64 %4773, i64* %4775, align 8
  %4776 = load i64, i64* %3, align 8
  %4777 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %4777, i64* %RAX.i205, align 8
  %4778 = load i64, i64* %RBP.i, align 8
  %4779 = add i64 %4778, -20
  %4780 = add i64 %4776, 11
  store i64 %4780, i64* %3, align 8
  %4781 = inttoptr i64 %4779 to i32*
  %4782 = load i32, i32* %4781, align 4
  %4783 = zext i32 %4782 to i64
  store i64 %4783, i64* %RCX.i1946, align 8
  store i64 %4783, i64* %RDX.i796, align 8
  %4784 = shl nuw nsw i64 %4783, 3
  %4785 = add i64 %4777, %4784
  %4786 = add i64 %4776, 17
  store i64 %4786, i64* %3, align 8
  %4787 = inttoptr i64 %4785 to i64*
  %4788 = load i64, i64* %4787, align 8
  store i64 %4788, i64* %RAX.i205, align 8
  %4789 = add i64 %4788, 8
  %4790 = add i64 %4776, 20
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i32*
  %4792 = load i32, i32* %4791, align 4
  %4793 = and i32 %4792, 1
  %4794 = zext i32 %4793 to i64
  store i64 %4794, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  %4795 = tail call i32 @llvm.ctpop.i32(i32 %4793)
  %4796 = trunc i32 %4795 to i8
  %4797 = xor i8 %4796, 1
  store i8 %4797, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4798 = icmp eq i32 %4793, 0
  %4799 = trunc i32 %4793 to i8
  %4800 = xor i8 %4799, 1
  store i8 %4800, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v229 = select i1 %4798, i64 92, i64 32
  %4801 = add i64 %4776, %.v229
  store i64 %4801, i64* %3, align 8
  br i1 %4798, label %block_.L_44d310, label %block_44d2d4

block_44d2d4:                                     ; preds = %block_44d28d
  store i64 %4777, i64* %RAX.i205, align 8
  %4802 = add i64 %4801, 11
  store i64 %4802, i64* %3, align 8
  %4803 = load i32, i32* %4781, align 4
  %4804 = zext i32 %4803 to i64
  store i64 %4804, i64* %RCX.i1946, align 8
  store i64 %4804, i64* %RDX.i796, align 8
  %4805 = shl nuw nsw i64 %4804, 3
  %4806 = add i64 %4777, %4805
  %4807 = add i64 %4801, 17
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i64*
  %4809 = load i64, i64* %4808, align 8
  store i64 %4809, i64* %RAX.i205, align 8
  %4810 = add i64 %4809, 48
  %4811 = add i64 %4801, 21
  store i64 %4811, i64* %3, align 8
  %4812 = inttoptr i64 %4810 to i64*
  %4813 = load i64, i64* %4812, align 8
  store i64 %4813, i64* %RAX.i205, align 8
  %4814 = add i64 %4813, 6372
  %4815 = add i64 %4801, 27
  store i64 %4815, i64* %3, align 8
  %4816 = inttoptr i64 %4814 to i32*
  %4817 = load i32, i32* %4816, align 4
  %4818 = shl i32 %4817, 1
  %4819 = icmp slt i32 %4817, 0
  %4820 = icmp slt i32 %4818, 0
  %4821 = xor i1 %4819, %4820
  %4822 = zext i32 %4818 to i64
  store i64 %4822, i64* %RCX.i1946, align 8
  %.lobit78 = lshr i32 %4817, 31
  %4823 = trunc i32 %.lobit78 to i8
  store i8 %4823, i8* %12, align 1
  %4824 = and i32 %4818, 254
  %4825 = tail call i32 @llvm.ctpop.i32(i32 %4824)
  %4826 = trunc i32 %4825 to i8
  %4827 = and i8 %4826, 1
  %4828 = xor i8 %4827, 1
  store i8 %4828, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4829 = icmp eq i32 %4818, 0
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %15, align 1
  %4831 = lshr i32 %4817, 30
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  store i8 %4833, i8* %16, align 1
  %4834 = zext i1 %4821 to i8
  store i8 %4834, i8* %17, align 1
  %4835 = add i64 %4778, -12
  %4836 = add i64 %4801, 32
  store i64 %4836, i64* %3, align 8
  %4837 = inttoptr i64 %4835 to i32*
  %4838 = load i32, i32* %4837, align 4
  %4839 = add i32 %4838, %4818
  %4840 = zext i32 %4839 to i64
  store i64 %4840, i64* %RCX.i1946, align 8
  %4841 = icmp ult i32 %4839, %4818
  %4842 = icmp ult i32 %4839, %4838
  %4843 = or i1 %4841, %4842
  %4844 = zext i1 %4843 to i8
  store i8 %4844, i8* %12, align 1
  %4845 = and i32 %4839, 255
  %4846 = tail call i32 @llvm.ctpop.i32(i32 %4845)
  %4847 = trunc i32 %4846 to i8
  %4848 = and i8 %4847, 1
  %4849 = xor i8 %4848, 1
  store i8 %4849, i8* %13, align 1
  %4850 = xor i32 %4838, %4818
  %4851 = xor i32 %4850, %4839
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  store i8 %4854, i8* %14, align 1
  %4855 = icmp eq i32 %4839, 0
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %15, align 1
  %4857 = lshr i32 %4839, 31
  %4858 = trunc i32 %4857 to i8
  store i8 %4858, i8* %16, align 1
  %4859 = lshr i32 %4817, 30
  %4860 = and i32 %4859, 1
  %4861 = lshr i32 %4838, 31
  %4862 = xor i32 %4857, %4860
  %4863 = xor i32 %4857, %4861
  %4864 = add nuw nsw i32 %4862, %4863
  %4865 = icmp eq i32 %4864, 2
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %17, align 1
  %4867 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %4867, i64* %RAX.i205, align 8
  %4868 = load i64, i64* %RBP.i, align 8
  %4869 = add i64 %4868, -20
  %4870 = add i64 %4801, 43
  store i64 %4870, i64* %3, align 8
  %4871 = inttoptr i64 %4869 to i32*
  %4872 = load i32, i32* %4871, align 4
  %4873 = zext i32 %4872 to i64
  store i64 %4873, i64* %RSI.i1586, align 8
  store i64 %4873, i64* %RDX.i796, align 8
  %4874 = shl nuw nsw i64 %4873, 3
  %4875 = add i64 %4867, %4874
  %4876 = add i64 %4801, 49
  store i64 %4876, i64* %3, align 8
  %4877 = inttoptr i64 %4875 to i64*
  %4878 = load i64, i64* %4877, align 8
  store i64 %4878, i64* %RAX.i205, align 8
  %4879 = add i64 %4878, 48
  %4880 = add i64 %4801, 53
  store i64 %4880, i64* %3, align 8
  %4881 = inttoptr i64 %4879 to i64*
  %4882 = load i64, i64* %4881, align 8
  store i64 %4882, i64* %RAX.i205, align 8
  %4883 = add i64 %4882, 6368
  %4884 = add i64 %4801, 59
  store i64 %4884, i64* %3, align 8
  %4885 = inttoptr i64 %4883 to i32*
  store i32 %4839, i32* %4885, align 4
  %.pre155 = load i64, i64* %3, align 8
  %.pre156 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  %.pre157 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44d310

block_.L_44d310:                                  ; preds = %block_44d2d4, %block_44d28d
  %4886 = phi i64 [ %.pre157, %block_44d2d4 ], [ %4778, %block_44d28d ]
  %4887 = phi i64 [ %.pre156, %block_44d2d4 ], [ %4777, %block_44d28d ]
  %4888 = phi i64 [ %.pre155, %block_44d2d4 ], [ %4801, %block_44d28d ]
  store i64 %4887, i64* %RAX.i205, align 8
  %4889 = add i64 %4886, -20
  %4890 = add i64 %4888, 11
  store i64 %4890, i64* %3, align 8
  %4891 = inttoptr i64 %4889 to i32*
  %4892 = load i32, i32* %4891, align 4
  %4893 = zext i32 %4892 to i64
  store i64 %4893, i64* %RCX.i1946, align 8
  store i64 %4893, i64* %RDX.i796, align 8
  %4894 = shl nuw nsw i64 %4893, 3
  %4895 = add i64 %4887, %4894
  %4896 = add i64 %4888, 17
  store i64 %4896, i64* %3, align 8
  %4897 = inttoptr i64 %4895 to i64*
  %4898 = load i64, i64* %4897, align 8
  store i64 %4898, i64* %RAX.i205, align 8
  %4899 = add i64 %4898, 8
  %4900 = add i64 %4888, 20
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4899 to i32*
  %4902 = load i32, i32* %4901, align 4
  %4903 = and i32 %4902, 2
  %4904 = zext i32 %4903 to i64
  store i64 %4904, i64* %RCX.i1946, align 8
  store i8 0, i8* %12, align 1
  %4905 = tail call i32 @llvm.ctpop.i32(i32 %4903)
  %4906 = trunc i32 %4905 to i8
  %4907 = xor i8 %4906, 1
  store i8 %4907, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4908 = icmp eq i32 %4903, 0
  %.lobit203 = lshr exact i32 %4903, 1
  %4909 = trunc i32 %.lobit203 to i8
  %4910 = xor i8 %4909, 1
  store i8 %4910, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v230 = select i1 %4908, i64 92, i64 32
  %4911 = add i64 %4888, %.v230
  store i64 %4911, i64* %3, align 8
  br i1 %4908, label %block_.L_44d36c, label %block_44d330

block_44d330:                                     ; preds = %block_.L_44d310
  store i64 %4887, i64* %RAX.i205, align 8
  %4912 = add i64 %4911, 11
  store i64 %4912, i64* %3, align 8
  %4913 = load i32, i32* %4891, align 4
  %4914 = zext i32 %4913 to i64
  store i64 %4914, i64* %RCX.i1946, align 8
  store i64 %4914, i64* %RDX.i796, align 8
  %4915 = shl nuw nsw i64 %4914, 3
  %4916 = add i64 %4887, %4915
  %4917 = add i64 %4911, 17
  store i64 %4917, i64* %3, align 8
  %4918 = inttoptr i64 %4916 to i64*
  %4919 = load i64, i64* %4918, align 8
  store i64 %4919, i64* %RAX.i205, align 8
  %4920 = add i64 %4919, 56
  %4921 = add i64 %4911, 21
  store i64 %4921, i64* %3, align 8
  %4922 = inttoptr i64 %4920 to i64*
  %4923 = load i64, i64* %4922, align 8
  store i64 %4923, i64* %RAX.i205, align 8
  %4924 = add i64 %4923, 6372
  %4925 = add i64 %4911, 27
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  %4927 = load i32, i32* %4926, align 4
  %4928 = shl i32 %4927, 1
  %4929 = icmp slt i32 %4927, 0
  %4930 = icmp slt i32 %4928, 0
  %4931 = xor i1 %4929, %4930
  %4932 = zext i32 %4928 to i64
  store i64 %4932, i64* %RCX.i1946, align 8
  %.lobit80 = lshr i32 %4927, 31
  %4933 = trunc i32 %.lobit80 to i8
  store i8 %4933, i8* %12, align 1
  %4934 = and i32 %4928, 254
  %4935 = tail call i32 @llvm.ctpop.i32(i32 %4934)
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = xor i8 %4937, 1
  store i8 %4938, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4939 = icmp eq i32 %4928, 0
  %4940 = zext i1 %4939 to i8
  store i8 %4940, i8* %15, align 1
  %4941 = lshr i32 %4927, 30
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  store i8 %4943, i8* %16, align 1
  %4944 = zext i1 %4931 to i8
  store i8 %4944, i8* %17, align 1
  %4945 = add i64 %4886, -16
  %4946 = add i64 %4911, 32
  store i64 %4946, i64* %3, align 8
  %4947 = inttoptr i64 %4945 to i32*
  %4948 = load i32, i32* %4947, align 4
  %4949 = add i32 %4948, %4928
  %4950 = zext i32 %4949 to i64
  store i64 %4950, i64* %RCX.i1946, align 8
  %4951 = icmp ult i32 %4949, %4928
  %4952 = icmp ult i32 %4949, %4948
  %4953 = or i1 %4951, %4952
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %12, align 1
  %4955 = and i32 %4949, 255
  %4956 = tail call i32 @llvm.ctpop.i32(i32 %4955)
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  %4959 = xor i8 %4958, 1
  store i8 %4959, i8* %13, align 1
  %4960 = xor i32 %4948, %4928
  %4961 = xor i32 %4960, %4949
  %4962 = lshr i32 %4961, 4
  %4963 = trunc i32 %4962 to i8
  %4964 = and i8 %4963, 1
  store i8 %4964, i8* %14, align 1
  %4965 = icmp eq i32 %4949, 0
  %4966 = zext i1 %4965 to i8
  store i8 %4966, i8* %15, align 1
  %4967 = lshr i32 %4949, 31
  %4968 = trunc i32 %4967 to i8
  store i8 %4968, i8* %16, align 1
  %4969 = lshr i32 %4927, 30
  %4970 = and i32 %4969, 1
  %4971 = lshr i32 %4948, 31
  %4972 = xor i32 %4967, %4970
  %4973 = xor i32 %4967, %4971
  %4974 = add nuw nsw i32 %4972, %4973
  %4975 = icmp eq i32 %4974, 2
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %17, align 1
  %4977 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %4977, i64* %RAX.i205, align 8
  %4978 = load i64, i64* %RBP.i, align 8
  %4979 = add i64 %4978, -20
  %4980 = add i64 %4911, 43
  store i64 %4980, i64* %3, align 8
  %4981 = inttoptr i64 %4979 to i32*
  %4982 = load i32, i32* %4981, align 4
  %4983 = zext i32 %4982 to i64
  store i64 %4983, i64* %RSI.i1586, align 8
  store i64 %4983, i64* %RDX.i796, align 8
  %4984 = shl nuw nsw i64 %4983, 3
  %4985 = add i64 %4977, %4984
  %4986 = add i64 %4911, 49
  store i64 %4986, i64* %3, align 8
  %4987 = inttoptr i64 %4985 to i64*
  %4988 = load i64, i64* %4987, align 8
  store i64 %4988, i64* %RAX.i205, align 8
  %4989 = add i64 %4988, 56
  %4990 = add i64 %4911, 53
  store i64 %4990, i64* %3, align 8
  %4991 = inttoptr i64 %4989 to i64*
  %4992 = load i64, i64* %4991, align 8
  store i64 %4992, i64* %RAX.i205, align 8
  %4993 = add i64 %4992, 6368
  %4994 = add i64 %4911, 59
  store i64 %4994, i64* %3, align 8
  %4995 = inttoptr i64 %4993 to i32*
  store i32 %4949, i32* %4995, align 4
  %.pre158 = load i64, i64* %3, align 8
  %.pre159 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44d36c

block_.L_44d36c:                                  ; preds = %block_44d330, %block_.L_44d310
  %4996 = phi i64 [ %.pre159, %block_44d330 ], [ %4886, %block_.L_44d310 ]
  %4997 = phi i64 [ %.pre158, %block_44d330 ], [ %4911, %block_.L_44d310 ]
  %4998 = add i64 %4996, -20
  %4999 = add i64 %4997, 8
  store i64 %4999, i64* %3, align 8
  %5000 = inttoptr i64 %4998 to i32*
  %5001 = load i32, i32* %5000, align 4
  %5002 = add i32 %5001, 1
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RAX.i205, align 8
  %5004 = icmp eq i32 %5001, -1
  %5005 = icmp eq i32 %5002, 0
  %5006 = or i1 %5004, %5005
  %5007 = zext i1 %5006 to i8
  store i8 %5007, i8* %12, align 1
  %5008 = and i32 %5002, 255
  %5009 = tail call i32 @llvm.ctpop.i32(i32 %5008)
  %5010 = trunc i32 %5009 to i8
  %5011 = and i8 %5010, 1
  %5012 = xor i8 %5011, 1
  store i8 %5012, i8* %13, align 1
  %5013 = xor i32 %5002, %5001
  %5014 = lshr i32 %5013, 4
  %5015 = trunc i32 %5014 to i8
  %5016 = and i8 %5015, 1
  store i8 %5016, i8* %14, align 1
  %5017 = zext i1 %5005 to i8
  store i8 %5017, i8* %15, align 1
  %5018 = lshr i32 %5002, 31
  %5019 = trunc i32 %5018 to i8
  store i8 %5019, i8* %16, align 1
  %5020 = lshr i32 %5001, 31
  %5021 = xor i32 %5018, %5020
  %5022 = add nuw nsw i32 %5021, %5018
  %5023 = icmp eq i32 %5022, 2
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %17, align 1
  %5025 = add i64 %4997, 14
  store i64 %5025, i64* %3, align 8
  store i32 %5002, i32* %5000, align 4
  %5026 = load i64, i64* %3, align 8
  %5027 = add i64 %5026, -253
  store i64 %5027, i64* %3, align 8
  br label %block_.L_44d27d

block_.L_44d37f:                                  ; preds = %block_.L_44d27d
  store i64 8, i64* %RAX.i205, align 8
  store i64 8, i64* %RDX.i796, align 8
  store i64 ptrtoint (%G__0x44dad0_type* @G__0x44dad0 to i64), i64* %RCX.i1946, align 8
  %5028 = add i64 %4693, -72
  %5029 = add i64 %4724, 21
  store i64 %5029, i64* %3, align 8
  %5030 = inttoptr i64 %5028 to i64*
  %5031 = load i64, i64* %5030, align 8
  store i64 %5031, i64* %RSI.i1586, align 8
  %5032 = add i64 %4693, -44
  %5033 = add i64 %4724, 25
  store i64 %5033, i64* %3, align 8
  %5034 = inttoptr i64 %5032 to i32*
  %5035 = load i32, i32* %5034, align 4
  %5036 = sext i32 %5035 to i64
  %5037 = add i64 %4693, -176
  %5038 = add i64 %4724, 32
  store i64 %5038, i64* %3, align 8
  %5039 = inttoptr i64 %5037 to i64*
  store i64 %5036, i64* %5039, align 8
  %5040 = load i64, i64* %RSI.i1586, align 8
  %5041 = load i64, i64* %3, align 8
  store i64 %5040, i64* %RDI.i892, align 8
  %5042 = load i64, i64* %RBP.i, align 8
  %5043 = add i64 %5042, -176
  %5044 = add i64 %5041, 10
  store i64 %5044, i64* %3, align 8
  %5045 = inttoptr i64 %5043 to i64*
  %5046 = load i64, i64* %5045, align 8
  store i64 %5046, i64* %RSI.i1586, align 8
  %5047 = add i64 %5041, -312255
  %5048 = add i64 %5041, 15
  %5049 = load i64, i64* %6, align 8
  %5050 = add i64 %5049, -8
  %5051 = inttoptr i64 %5050 to i64*
  store i64 %5048, i64* %5051, align 8
  store i64 %5050, i64* %6, align 8
  store i64 %5047, i64* %3, align 8
  %call2_44d3a9 = tail call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* nonnull %0, i64 %5047, %struct.Memory* %call2_44d271)
  %5052 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64* %R8.i481, align 8
  store i64 1, i64* %4632, align 8
  %5053 = load i64, i64* %RBP.i, align 8
  %5054 = add i64 %5053, -8
  %5055 = add i64 %5052, 19
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5054 to i32*
  %5057 = load i32, i32* %5056, align 4
  %5058 = zext i32 %5057 to i64
  store i64 %5058, i64* %RDI.i892, align 8
  %5059 = add i64 %5053, -72
  %5060 = add i64 %5052, 23
  store i64 %5060, i64* %3, align 8
  %5061 = inttoptr i64 %5059 to i64*
  %5062 = load i64, i64* %5061, align 8
  store i64 %5062, i64* %RSI.i1586, align 8
  %5063 = add i64 %5053, -44
  %5064 = add i64 %5052, 26
  store i64 %5064, i64* %3, align 8
  %5065 = inttoptr i64 %5063 to i32*
  %5066 = load i32, i32* %5065, align 4
  %5067 = zext i32 %5066 to i64
  store i64 %5067, i64* %RDX.i796, align 8
  %5068 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5068, i64* %RCX.i1946, align 8
  %5069 = add i64 %5052, 962
  %5070 = add i64 %5052, 39
  %5071 = load i64, i64* %6, align 8
  %5072 = add i64 %5071, -8
  %5073 = inttoptr i64 %5072 to i64*
  store i64 %5070, i64* %5073, align 8
  store i64 %5072, i64* %6, align 8
  store i64 %5069, i64* %3, align 8
  %call2_44d3d0 = tail call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* nonnull %0, i64 %5069, %struct.Memory* %call2_44d3a9)
  %5074 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64* %RCX.i1946, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 4)) to i8), i8* %12, align 1
  store i8 %4655, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 63), i64 lshr (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64 63)), i64 2) to i8), i8* %17, align 1
  store i64 1, i64* %4632, align 8
  %5075 = load i64, i64* %RBP.i, align 8
  %5076 = add i64 %5075, -8
  %5077 = add i64 %5074, 23
  store i64 %5077, i64* %3, align 8
  %5078 = inttoptr i64 %5076 to i32*
  %5079 = load i32, i32* %5078, align 4
  %5080 = zext i32 %5079 to i64
  store i64 %5080, i64* %RDI.i892, align 8
  %5081 = add i64 %5075, -72
  %5082 = add i64 %5074, 27
  store i64 %5082, i64* %3, align 8
  %5083 = inttoptr i64 %5081 to i64*
  %5084 = load i64, i64* %5083, align 8
  store i64 %5084, i64* %RSI.i1586, align 8
  %5085 = add i64 %5075, -44
  %5086 = add i64 %5074, 30
  store i64 %5086, i64* %3, align 8
  %5087 = inttoptr i64 %5085 to i32*
  %5088 = load i32, i32* %5087, align 4
  %5089 = zext i32 %5088 to i64
  store i64 %5089, i64* %RDX.i796, align 8
  %5090 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5090, i64* %R8.i481, align 8
  %5091 = add i64 %5075, -184
  %5092 = add i64 %5074, 45
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i64*
  store i64 add (i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64 4), i64* %5093, align 8
  %5094 = load i64, i64* %R8.i481, align 8
  %5095 = load i64, i64* %3, align 8
  store i64 %5094, i64* %RCX.i1946, align 8
  %5096 = load i64, i64* %RBP.i, align 8
  %5097 = add i64 %5096, -184
  %5098 = add i64 %5095, 10
  store i64 %5098, i64* %3, align 8
  %5099 = inttoptr i64 %5097 to i64*
  %5100 = load i64, i64* %5099, align 8
  store i64 %5100, i64* %R8.i481, align 8
  %5101 = add i64 %5095, 878
  %5102 = add i64 %5095, 15
  %5103 = load i64, i64* %6, align 8
  %5104 = add i64 %5103, -8
  %5105 = inttoptr i64 %5104 to i64*
  store i64 %5102, i64* %5105, align 8
  store i64 %5104, i64* %6, align 8
  store i64 %5101, i64* %3, align 8
  %call2_44d40c = tail call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* nonnull %0, i64 %5101, %struct.Memory* %call2_44d3d0)
  %5106 = load i64, i64* %RBP.i, align 8
  %5107 = add i64 %5106, -56
  %5108 = load i64, i64* %3, align 8
  %5109 = add i64 %5108, 4
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5107 to i64*
  %5111 = load i64, i64* %5110, align 8
  store i64 %5111, i64* %RCX.i1946, align 8
  store i64 %5111, i64* %RDI.i892, align 8
  %5112 = add i64 %5108, -312465
  %5113 = add i64 %5108, 12
  %5114 = load i64, i64* %6, align 8
  %5115 = add i64 %5114, -8
  %5116 = inttoptr i64 %5115 to i64*
  store i64 %5113, i64* %5116, align 8
  store i64 %5115, i64* %6, align 8
  store i64 %5112, i64* %3, align 8
  %5117 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_44d40c)
  %5118 = load i64, i64* %RBP.i, align 8
  %5119 = add i64 %5118, -64
  %5120 = load i64, i64* %3, align 8
  %5121 = add i64 %5120, 4
  store i64 %5121, i64* %3, align 8
  %5122 = inttoptr i64 %5119 to i64*
  %5123 = load i64, i64* %5122, align 8
  store i64 %5123, i64* %RCX.i1946, align 8
  store i64 %5123, i64* %RDI.i892, align 8
  %5124 = add i64 %5120, -312477
  %5125 = add i64 %5120, 12
  %5126 = load i64, i64* %6, align 8
  %5127 = add i64 %5126, -8
  %5128 = inttoptr i64 %5127 to i64*
  store i64 %5125, i64* %5128, align 8
  store i64 %5127, i64* %6, align 8
  store i64 %5124, i64* %3, align 8
  %5129 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %5117)
  %5130 = load i64, i64* %RBP.i, align 8
  %5131 = add i64 %5130, -72
  %5132 = load i64, i64* %3, align 8
  %5133 = add i64 %5132, 4
  store i64 %5133, i64* %3, align 8
  %5134 = inttoptr i64 %5131 to i64*
  %5135 = load i64, i64* %5134, align 8
  store i64 %5135, i64* %RCX.i1946, align 8
  store i64 %5135, i64* %RDI.i892, align 8
  %5136 = add i64 %5132, -312489
  %5137 = add i64 %5132, 12
  %5138 = load i64, i64* %6, align 8
  %5139 = add i64 %5138, -8
  %5140 = inttoptr i64 %5139 to i64*
  store i64 %5137, i64* %5140, align 8
  store i64 %5139, i64* %6, align 8
  store i64 %5136, i64* %3, align 8
  %5141 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %5129)
  %.pre160 = load i64, i64* %3, align 8
  %.pre180.pre = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  br label %block_.L_44d435

block_.L_44d435:                                  ; preds = %block_.L_44d37f, %block_.L_44ce7d
  %.pre180 = phi i32 [ %.pre180.pre, %block_.L_44d37f ], [ %3689, %block_.L_44ce7d ]
  %5142 = phi i64 [ %.pre160, %block_.L_44d37f ], [ %3691, %block_.L_44ce7d ]
  %MEMORY.54 = phi %struct.Memory* [ %5141, %block_.L_44d37f ], [ %call2_44cf0e, %block_.L_44ce7d ]
  %5143 = add i64 %5142, 5
  store i64 %5143, i64* %3, align 8
  br label %block_.L_44d43a

block_.L_44d43a:                                  ; preds = %block_.L_44d435, %block_.L_44ca34
  %5144 = phi i32 [ 0, %block_.L_44ca34 ], [ %.pre180, %block_.L_44d435 ]
  %storemerge70 = phi i64 [ %2286, %block_.L_44ca34 ], [ %5143, %block_.L_44d435 ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.26, %block_.L_44ca34 ], [ %MEMORY.54, %block_.L_44d435 ]
  %5145 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %5146 = zext i32 %5145 to i64
  store i64 %5146, i64* %RAX.i205, align 8
  %5147 = sub i32 %5145, %5144
  %5148 = icmp ult i32 %5145, %5144
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %12, align 1
  %5150 = and i32 %5147, 255
  %5151 = tail call i32 @llvm.ctpop.i32(i32 %5150)
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  store i8 %5154, i8* %13, align 1
  %5155 = xor i32 %5144, %5145
  %5156 = xor i32 %5155, %5147
  %5157 = lshr i32 %5156, 4
  %5158 = trunc i32 %5157 to i8
  %5159 = and i8 %5158, 1
  store i8 %5159, i8* %14, align 1
  %5160 = icmp eq i32 %5147, 0
  %5161 = zext i1 %5160 to i8
  store i8 %5161, i8* %15, align 1
  %5162 = lshr i32 %5147, 31
  %5163 = trunc i32 %5162 to i8
  store i8 %5163, i8* %16, align 1
  %5164 = lshr i32 %5145, 31
  %5165 = lshr i32 %5144, 31
  %5166 = xor i32 %5165, %5164
  %5167 = xor i32 %5162, %5164
  %5168 = add nuw nsw i32 %5167, %5166
  %5169 = icmp eq i32 %5168, 2
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %17, align 1
  %.v220 = select i1 %5160, i64 20, i64 197
  %5171 = add i64 %storemerge70, %.v220
  store i64 %5171, i64* %3, align 8
  br i1 %5160, label %block_44d44e, label %block_.L_44d4ff

block_44d44e:                                     ; preds = %block_.L_44d43a
  %5172 = add i32 %5145, -1
  %5173 = icmp eq i32 %5145, 0
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %12, align 1
  %5175 = and i32 %5172, 255
  %5176 = tail call i32 @llvm.ctpop.i32(i32 %5175)
  %5177 = trunc i32 %5176 to i8
  %5178 = and i8 %5177, 1
  %5179 = xor i8 %5178, 1
  store i8 %5179, i8* %13, align 1
  %5180 = xor i32 %5172, %5145
  %5181 = lshr i32 %5180, 4
  %5182 = trunc i32 %5181 to i8
  %5183 = and i8 %5182, 1
  store i8 %5183, i8* %14, align 1
  %5184 = icmp eq i32 %5172, 0
  %5185 = zext i1 %5184 to i8
  store i8 %5185, i8* %15, align 1
  %5186 = lshr i32 %5172, 31
  %5187 = trunc i32 %5186 to i8
  store i8 %5187, i8* %16, align 1
  %5188 = xor i32 %5186, %5164
  %5189 = add nuw nsw i32 %5188, %5164
  %5190 = icmp eq i32 %5189, 2
  %5191 = zext i1 %5190 to i8
  store i8 %5191, i8* %17, align 1
  %5192 = icmp ne i8 %5187, 0
  %5193 = xor i1 %5192, %5190
  %5194 = or i1 %5184, %5193
  %.v225 = select i1 %5194, i64 177, i64 14
  %5195 = add i64 %5171, %.v225
  store i64 %5195, i64* %3, align 8
  br i1 %5194, label %block_.L_44d4ff, label %block_44d45c

block_44d45c:                                     ; preds = %block_44d44e
  %5196 = load i64, i64* %RBP.i, align 8
  %5197 = add i64 %5196, -32
  %5198 = add i64 %5195, 7
  store i64 %5198, i64* %3, align 8
  %5199 = inttoptr i64 %5197 to i32*
  store i32 0, i32* %5199, align 4
  %5200 = load i64, i64* %RBP.i, align 8
  %5201 = add i64 %5200, -24
  %5202 = load i64, i64* %3, align 8
  %5203 = add i64 %5202, 7
  store i64 %5203, i64* %3, align 8
  %5204 = inttoptr i64 %5201 to i32*
  store i32 0, i32* %5204, align 4
  %RDX.i156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_44d46a

block_.L_44d46a:                                  ; preds = %block_.L_44d4a7, %block_44d45c
  %5205 = phi i64 [ %5318, %block_.L_44d4a7 ], [ %.pre181, %block_44d45c ]
  %5206 = load i64, i64* %RBP.i, align 8
  %5207 = add i64 %5206, -24
  %5208 = add i64 %5205, 3
  store i64 %5208, i64* %3, align 8
  %5209 = inttoptr i64 %5207 to i32*
  %5210 = load i32, i32* %5209, align 4
  %5211 = zext i32 %5210 to i64
  store i64 %5211, i64* %RAX.i205, align 8
  %5212 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %5213 = sub i32 %5210, %5212
  %5214 = icmp ult i32 %5210, %5212
  %5215 = zext i1 %5214 to i8
  store i8 %5215, i8* %12, align 1
  %5216 = and i32 %5213, 255
  %5217 = tail call i32 @llvm.ctpop.i32(i32 %5216)
  %5218 = trunc i32 %5217 to i8
  %5219 = and i8 %5218, 1
  %5220 = xor i8 %5219, 1
  store i8 %5220, i8* %13, align 1
  %5221 = xor i32 %5212, %5210
  %5222 = xor i32 %5221, %5213
  %5223 = lshr i32 %5222, 4
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  store i8 %5225, i8* %14, align 1
  %5226 = icmp eq i32 %5213, 0
  %5227 = zext i1 %5226 to i8
  store i8 %5227, i8* %15, align 1
  %5228 = lshr i32 %5213, 31
  %5229 = trunc i32 %5228 to i8
  store i8 %5229, i8* %16, align 1
  %5230 = lshr i32 %5210, 31
  %5231 = lshr i32 %5212, 31
  %5232 = xor i32 %5231, %5230
  %5233 = xor i32 %5228, %5230
  %5234 = add nuw nsw i32 %5233, %5232
  %5235 = icmp eq i32 %5234, 2
  %5236 = zext i1 %5235 to i8
  store i8 %5236, i8* %17, align 1
  %5237 = icmp ne i8 %5229, 0
  %5238 = xor i1 %5237, %5235
  %.v226 = select i1 %5238, i64 16, i64 80
  %5239 = add i64 %5205, %.v226
  store i64 %5239, i64* %3, align 8
  br i1 %5238, label %block_44d47a, label %block_.L_44d4ba

block_44d47a:                                     ; preds = %block_.L_44d46a
  %5240 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5240, i64* %RAX.i205, align 8
  %5241 = add i64 %5239, 12
  store i64 %5241, i64* %3, align 8
  %5242 = load i32, i32* %5209, align 4
  %5243 = sext i32 %5242 to i64
  store i64 %5243, i64* %RCX.i1946, align 8
  %5244 = shl nsw i64 %5243, 3
  %5245 = add i64 %5244, %5240
  %5246 = add i64 %5239, 16
  store i64 %5246, i64* %3, align 8
  %5247 = inttoptr i64 %5245 to i64*
  %5248 = load i64, i64* %5247, align 8
  store i64 %5248, i64* %RAX.i205, align 8
  %5249 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5249, i64* %RCX.i1946, align 8
  %5250 = add i64 %5239, 28
  store i64 %5250, i64* %3, align 8
  %5251 = load i32, i32* %5209, align 4
  %5252 = sext i32 %5251 to i64
  store i64 %5252, i64* %RDX.i156, align 8
  %5253 = shl nsw i64 %5252, 3
  %5254 = add i64 %5249, %5253
  %5255 = add i64 %5239, 32
  store i64 %5255, i64* %3, align 8
  %5256 = inttoptr i64 %5254 to i64*
  %5257 = load i64, i64* %5256, align 8
  %5258 = sub i64 %5248, %5257
  %5259 = icmp ult i64 %5248, %5257
  %5260 = zext i1 %5259 to i8
  store i8 %5260, i8* %12, align 1
  %5261 = trunc i64 %5258 to i32
  %5262 = and i32 %5261, 255
  %5263 = tail call i32 @llvm.ctpop.i32(i32 %5262)
  %5264 = trunc i32 %5263 to i8
  %5265 = and i8 %5264, 1
  %5266 = xor i8 %5265, 1
  store i8 %5266, i8* %13, align 1
  %5267 = xor i64 %5257, %5248
  %5268 = xor i64 %5267, %5258
  %5269 = lshr i64 %5268, 4
  %5270 = trunc i64 %5269 to i8
  %5271 = and i8 %5270, 1
  store i8 %5271, i8* %14, align 1
  %5272 = icmp eq i64 %5258, 0
  %5273 = zext i1 %5272 to i8
  store i8 %5273, i8* %15, align 1
  %5274 = lshr i64 %5258, 63
  %5275 = trunc i64 %5274 to i8
  store i8 %5275, i8* %16, align 1
  %5276 = lshr i64 %5248, 63
  %5277 = lshr i64 %5257, 63
  %5278 = xor i64 %5277, %5276
  %5279 = xor i64 %5274, %5276
  %5280 = add nuw nsw i64 %5279, %5278
  %5281 = icmp eq i64 %5280, 2
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %17, align 1
  %.v228 = select i1 %5272, i64 45, i64 38
  %5283 = add i64 %5239, %.v228
  store i64 %5283, i64* %3, align 8
  br i1 %5272, label %block_.L_44d4a7, label %block_44d4a0

block_44d4a0:                                     ; preds = %block_44d47a
  %5284 = add i64 %5206, -32
  %5285 = add i64 %5283, 7
  store i64 %5285, i64* %3, align 8
  %5286 = inttoptr i64 %5284 to i32*
  store i32 1, i32* %5286, align 4
  %.pre183 = load i64, i64* %3, align 8
  %.pre184 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44d4a7

block_.L_44d4a7:                                  ; preds = %block_44d4a0, %block_44d47a
  %5287 = phi i64 [ %.pre184, %block_44d4a0 ], [ %5206, %block_44d47a ]
  %5288 = phi i64 [ %.pre183, %block_44d4a0 ], [ %5283, %block_44d47a ]
  %5289 = add i64 %5287, -24
  %5290 = add i64 %5288, 8
  store i64 %5290, i64* %3, align 8
  %5291 = inttoptr i64 %5289 to i32*
  %5292 = load i32, i32* %5291, align 4
  %5293 = add i32 %5292, 1
  %5294 = zext i32 %5293 to i64
  store i64 %5294, i64* %RAX.i205, align 8
  %5295 = icmp eq i32 %5292, -1
  %5296 = icmp eq i32 %5293, 0
  %5297 = or i1 %5295, %5296
  %5298 = zext i1 %5297 to i8
  store i8 %5298, i8* %12, align 1
  %5299 = and i32 %5293, 255
  %5300 = tail call i32 @llvm.ctpop.i32(i32 %5299)
  %5301 = trunc i32 %5300 to i8
  %5302 = and i8 %5301, 1
  %5303 = xor i8 %5302, 1
  store i8 %5303, i8* %13, align 1
  %5304 = xor i32 %5293, %5292
  %5305 = lshr i32 %5304, 4
  %5306 = trunc i32 %5305 to i8
  %5307 = and i8 %5306, 1
  store i8 %5307, i8* %14, align 1
  %5308 = zext i1 %5296 to i8
  store i8 %5308, i8* %15, align 1
  %5309 = lshr i32 %5293, 31
  %5310 = trunc i32 %5309 to i8
  store i8 %5310, i8* %16, align 1
  %5311 = lshr i32 %5292, 31
  %5312 = xor i32 %5309, %5311
  %5313 = add nuw nsw i32 %5312, %5309
  %5314 = icmp eq i32 %5313, 2
  %5315 = zext i1 %5314 to i8
  store i8 %5315, i8* %17, align 1
  %5316 = add i64 %5288, 14
  store i64 %5316, i64* %3, align 8
  store i32 %5293, i32* %5291, align 4
  %5317 = load i64, i64* %3, align 8
  %5318 = add i64 %5317, -75
  store i64 %5318, i64* %3, align 8
  br label %block_.L_44d46a

block_.L_44d4ba:                                  ; preds = %block_.L_44d46a
  %5319 = add i64 %5206, -32
  %5320 = add i64 %5239, 4
  store i64 %5320, i64* %3, align 8
  %5321 = inttoptr i64 %5319 to i32*
  %5322 = load i32, i32* %5321, align 4
  store i8 0, i8* %12, align 1
  %5323 = and i32 %5322, 255
  %5324 = tail call i32 @llvm.ctpop.i32(i32 %5323)
  %5325 = trunc i32 %5324 to i8
  %5326 = and i8 %5325, 1
  %5327 = xor i8 %5326, 1
  store i8 %5327, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5328 = icmp eq i32 %5322, 0
  %5329 = zext i1 %5328 to i8
  store i8 %5329, i8* %15, align 1
  %5330 = lshr i32 %5322, 31
  %5331 = trunc i32 %5330 to i8
  store i8 %5331, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v227 = select i1 %5328, i64 10, i64 64
  %5332 = add i64 %5239, %.v227
  store i64 %5332, i64* %3, align 8
  br i1 %5328, label %block_44d4c4, label %block_.L_44d4fa

block_44d4c4:                                     ; preds = %block_.L_44d4ba
  %5333 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5333, i64* %RAX.i205, align 8
  %5334 = add i64 %5332, 11
  store i64 %5334, i64* %3, align 8
  %5335 = inttoptr i64 %5333 to i64*
  %5336 = load i64, i64* %5335, align 8
  %5337 = add i64 %5206, -80
  %5338 = add i64 %5332, 15
  store i64 %5338, i64* %3, align 8
  %5339 = inttoptr i64 %5337 to i64*
  store i64 %5336, i64* %5339, align 8
  %5340 = load i64, i64* %3, align 8
  %5341 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5341, i64* %RAX.i205, align 8
  %5342 = add i64 %5341, 8
  %5343 = add i64 %5340, 12
  store i64 %5343, i64* %3, align 8
  %5344 = inttoptr i64 %5342 to i64*
  %5345 = load i64, i64* %5344, align 8
  store i64 %5345, i64* %RAX.i205, align 8
  store i64 %5341, i64* %RCX.i1946, align 8
  %5346 = add i64 %5340, 23
  store i64 %5346, i64* %3, align 8
  %5347 = inttoptr i64 %5341 to i64*
  store i64 %5345, i64* %5347, align 8
  %5348 = load i64, i64* %RBP.i, align 8
  %5349 = add i64 %5348, -80
  %5350 = load i64, i64* %3, align 8
  %5351 = add i64 %5350, 4
  store i64 %5351, i64* %3, align 8
  %5352 = inttoptr i64 %5349 to i64*
  %5353 = load i64, i64* %5352, align 8
  store i64 %5353, i64* %RAX.i205, align 8
  %5354 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5354, i64* %RCX.i1946, align 8
  %5355 = add i64 %5354, 8
  %5356 = add i64 %5350, 16
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i64*
  store i64 %5353, i64* %5357, align 8
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_44d4fa

block_.L_44d4fa:                                  ; preds = %block_.L_44d4ba, %block_44d4c4
  %5358 = phi i64 [ %.pre182, %block_44d4c4 ], [ %5332, %block_.L_44d4ba ]
  %5359 = add i64 %5358, 5
  store i64 %5359, i64* %3, align 8
  br label %block_.L_44d4ff

block_.L_44d4ff:                                  ; preds = %block_.L_44d43a, %block_.L_44d4fa, %block_44d44e
  %5360 = phi i32 [ %5212, %block_.L_44d4fa ], [ %5145, %block_44d44e ], [ %5145, %block_.L_44d43a ]
  %5361 = phi i64 [ %5359, %block_.L_44d4fa ], [ %5195, %block_44d44e ], [ %5171, %block_.L_44d43a ]
  %5362 = zext i32 %5360 to i64
  store i64 %5362, i64* %RAX.i205, align 8
  %5363 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5363, i64* %RCX.i1946, align 8
  %5364 = add i64 %5363, 72000
  %5365 = add i64 %5361, 21
  store i64 %5365, i64* %3, align 8
  %5366 = inttoptr i64 %5364 to i32*
  %5367 = load i32, i32* %5366, align 4
  %5368 = sub i32 %5360, %5367
  %5369 = icmp ult i32 %5360, %5367
  %5370 = zext i1 %5369 to i8
  store i8 %5370, i8* %12, align 1
  %5371 = and i32 %5368, 255
  %5372 = tail call i32 @llvm.ctpop.i32(i32 %5371)
  %5373 = trunc i32 %5372 to i8
  %5374 = and i8 %5373, 1
  %5375 = xor i8 %5374, 1
  store i8 %5375, i8* %13, align 1
  %5376 = xor i32 %5367, %5360
  %5377 = xor i32 %5376, %5368
  %5378 = lshr i32 %5377, 4
  %5379 = trunc i32 %5378 to i8
  %5380 = and i8 %5379, 1
  store i8 %5380, i8* %14, align 1
  %5381 = icmp eq i32 %5368, 0
  %5382 = zext i1 %5381 to i8
  store i8 %5382, i8* %15, align 1
  %5383 = lshr i32 %5368, 31
  %5384 = trunc i32 %5383 to i8
  store i8 %5384, i8* %16, align 1
  %5385 = lshr i32 %5360, 31
  %5386 = lshr i32 %5367, 31
  %5387 = xor i32 %5386, %5385
  %5388 = xor i32 %5383, %5385
  %5389 = add nuw nsw i32 %5388, %5387
  %5390 = icmp eq i32 %5389, 2
  %5391 = zext i1 %5390 to i8
  store i8 %5391, i8* %17, align 1
  %5392 = icmp ne i8 %5384, 0
  %5393 = xor i1 %5392, %5390
  %.v221 = select i1 %5393, i64 27, i64 45
  %5394 = add i64 %5361, %.v221
  store i64 %5394, i64* %3, align 8
  br i1 %5393, label %block_44d51a, label %block_.L_44d52c

block_44d51a:                                     ; preds = %block_.L_44d4ff
  store i64 %5362, i64* %RAX.i205, align 8
  %5395 = load i64, i64* %RBP.i, align 8
  %5396 = add i64 %5395, -188
  %5397 = add i64 %5394, 13
  store i64 %5397, i64* %3, align 8
  %5398 = inttoptr i64 %5396 to i32*
  store i32 %5360, i32* %5398, align 4
  %5399 = load i64, i64* %3, align 8
  %5400 = add i64 %5399, 25
  store i64 %5400, i64* %3, align 8
  br label %block_.L_44d540

block_.L_44d52c:                                  ; preds = %block_.L_44d4ff
  store i64 %5363, i64* %RAX.i205, align 8
  %5401 = add i64 %5394, 14
  store i64 %5401, i64* %3, align 8
  %5402 = load i32, i32* %5366, align 4
  %5403 = zext i32 %5402 to i64
  store i64 %5403, i64* %RCX.i1946, align 8
  %5404 = load i64, i64* %RBP.i, align 8
  %5405 = add i64 %5404, -188
  %5406 = add i64 %5394, 20
  store i64 %5406, i64* %3, align 8
  %5407 = inttoptr i64 %5405 to i32*
  store i32 %5402, i32* %5407, align 4
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_44d540

block_.L_44d540:                                  ; preds = %block_.L_44d52c, %block_44d51a
  %5408 = phi i64 [ %.pre185, %block_.L_44d52c ], [ %5400, %block_44d51a ]
  %5409 = load i64, i64* %RBP.i, align 8
  %5410 = add i64 %5409, -188
  %5411 = add i64 %5408, 6
  store i64 %5411, i64* %3, align 8
  %5412 = inttoptr i64 %5410 to i32*
  %5413 = load i32, i32* %5412, align 4
  store i32 %5413, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %5414 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %5415 = zext i32 %5414 to i64
  store i64 %5415, i64* %RAX.i205, align 8
  %5416 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5416, i64* %RCX.i1946, align 8
  %5417 = add i64 %5416, 72004
  %5418 = add i64 %5408, 34
  store i64 %5418, i64* %3, align 8
  %5419 = inttoptr i64 %5417 to i32*
  %5420 = load i32, i32* %5419, align 4
  %5421 = sub i32 %5414, %5420
  %5422 = icmp ult i32 %5414, %5420
  %5423 = zext i1 %5422 to i8
  store i8 %5423, i8* %12, align 1
  %5424 = and i32 %5421, 255
  %5425 = tail call i32 @llvm.ctpop.i32(i32 %5424)
  %5426 = trunc i32 %5425 to i8
  %5427 = and i8 %5426, 1
  %5428 = xor i8 %5427, 1
  store i8 %5428, i8* %13, align 1
  %5429 = xor i32 %5420, %5414
  %5430 = xor i32 %5429, %5421
  %5431 = lshr i32 %5430, 4
  %5432 = trunc i32 %5431 to i8
  %5433 = and i8 %5432, 1
  store i8 %5433, i8* %14, align 1
  %5434 = icmp eq i32 %5421, 0
  %5435 = zext i1 %5434 to i8
  store i8 %5435, i8* %15, align 1
  %5436 = lshr i32 %5421, 31
  %5437 = trunc i32 %5436 to i8
  store i8 %5437, i8* %16, align 1
  %5438 = lshr i32 %5414, 31
  %5439 = lshr i32 %5420, 31
  %5440 = xor i32 %5439, %5438
  %5441 = xor i32 %5436, %5438
  %5442 = add nuw nsw i32 %5441, %5440
  %5443 = icmp eq i32 %5442, 2
  %5444 = zext i1 %5443 to i8
  store i8 %5444, i8* %17, align 1
  %5445 = icmp ne i8 %5437, 0
  %5446 = xor i1 %5445, %5443
  %.v222 = select i1 %5446, i64 40, i64 58
  %5447 = add i64 %5408, %.v222
  store i64 %5447, i64* %3, align 8
  br i1 %5446, label %block_44d568, label %block_.L_44d57a

block_44d568:                                     ; preds = %block_.L_44d540
  store i64 %5415, i64* %RAX.i205, align 8
  %5448 = add i64 %5409, -192
  %5449 = add i64 %5447, 13
  store i64 %5449, i64* %3, align 8
  %5450 = inttoptr i64 %5448 to i32*
  store i32 %5414, i32* %5450, align 4
  %5451 = load i64, i64* %3, align 8
  %5452 = add i64 %5451, 25
  store i64 %5452, i64* %3, align 8
  br label %block_.L_44d58e

block_.L_44d57a:                                  ; preds = %block_.L_44d540
  store i64 %5416, i64* %RAX.i205, align 8
  %5453 = add i64 %5447, 14
  store i64 %5453, i64* %3, align 8
  %5454 = load i32, i32* %5419, align 4
  %5455 = zext i32 %5454 to i64
  store i64 %5455, i64* %RCX.i1946, align 8
  %5456 = add i64 %5409, -192
  %5457 = add i64 %5447, 20
  store i64 %5457, i64* %3, align 8
  %5458 = inttoptr i64 %5456 to i32*
  store i32 %5454, i32* %5458, align 4
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_44d58e

block_.L_44d58e:                                  ; preds = %block_.L_44d57a, %block_44d568
  %5459 = phi i64 [ %.pre186, %block_.L_44d57a ], [ %5452, %block_44d568 ]
  %5460 = load i64, i64* %RBP.i, align 8
  %5461 = add i64 %5460, -192
  %5462 = add i64 %5459, 6
  store i64 %5462, i64* %3, align 8
  %5463 = inttoptr i64 %5461 to i32*
  %5464 = load i32, i32* %5463, align 4
  store i32 %5464, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %5465 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %5466 = zext i32 %5465 to i64
  store i64 %5466, i64* %RAX.i205, align 8
  %5467 = add i64 %5460, -20
  %5468 = add i64 %5459, 23
  store i64 %5468, i64* %3, align 8
  %5469 = inttoptr i64 %5467 to i32*
  store i32 %5465, i32* %5469, align 4
  %RDX.i42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_44d5a5

block_.L_44d5a5:                                  ; preds = %block_44d5af, %block_.L_44d58e
  %5470 = phi i64 [ %5537, %block_44d5af ], [ %.pre187, %block_.L_44d58e ]
  %5471 = load i64, i64* %RBP.i, align 8
  %5472 = add i64 %5471, -20
  %5473 = add i64 %5470, 4
  store i64 %5473, i64* %3, align 8
  %5474 = inttoptr i64 %5472 to i32*
  %5475 = load i32, i32* %5474, align 4
  %5476 = add i32 %5475, -33
  %5477 = icmp ult i32 %5475, 33
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %12, align 1
  %5479 = and i32 %5476, 255
  %5480 = tail call i32 @llvm.ctpop.i32(i32 %5479)
  %5481 = trunc i32 %5480 to i8
  %5482 = and i8 %5481, 1
  %5483 = xor i8 %5482, 1
  store i8 %5483, i8* %13, align 1
  %5484 = xor i32 %5476, %5475
  %5485 = lshr i32 %5484, 4
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  store i8 %5487, i8* %14, align 1
  %5488 = icmp eq i32 %5476, 0
  %5489 = zext i1 %5488 to i8
  store i8 %5489, i8* %15, align 1
  %5490 = lshr i32 %5476, 31
  %5491 = trunc i32 %5490 to i8
  store i8 %5491, i8* %16, align 1
  %5492 = lshr i32 %5475, 31
  %5493 = xor i32 %5490, %5492
  %5494 = add nuw nsw i32 %5493, %5492
  %5495 = icmp eq i32 %5494, 2
  %5496 = zext i1 %5495 to i8
  store i8 %5496, i8* %17, align 1
  %.v223 = select i1 %5477, i64 10, i64 45
  %5497 = add i64 %5470, %.v223
  store i64 %5497, i64* %3, align 8
  br i1 %5477, label %block_44d5af, label %block_.L_44d5d2

block_44d5af:                                     ; preds = %block_.L_44d5a5
  %5498 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5498, i64* %RAX.i205, align 8
  %5499 = add i64 %5497, 11
  store i64 %5499, i64* %3, align 8
  %5500 = load i32, i32* %5474, align 4
  %5501 = zext i32 %5500 to i64
  store i64 %5501, i64* %RCX.i1946, align 8
  store i64 %5501, i64* %RDX.i42, align 8
  %5502 = shl nuw nsw i64 %5501, 3
  %5503 = add i64 %5498, %5502
  %5504 = add i64 %5497, 21
  store i64 %5504, i64* %3, align 8
  %5505 = inttoptr i64 %5503 to i64*
  store i64 0, i64* %5505, align 8
  %5506 = load i64, i64* %RBP.i, align 8
  %5507 = add i64 %5506, -20
  %5508 = load i64, i64* %3, align 8
  %5509 = add i64 %5508, 3
  store i64 %5509, i64* %3, align 8
  %5510 = inttoptr i64 %5507 to i32*
  %5511 = load i32, i32* %5510, align 4
  %5512 = add i32 %5511, 1
  %5513 = zext i32 %5512 to i64
  store i64 %5513, i64* %RAX.i205, align 8
  %5514 = icmp eq i32 %5511, -1
  %5515 = icmp eq i32 %5512, 0
  %5516 = or i1 %5514, %5515
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %12, align 1
  %5518 = and i32 %5512, 255
  %5519 = tail call i32 @llvm.ctpop.i32(i32 %5518)
  %5520 = trunc i32 %5519 to i8
  %5521 = and i8 %5520, 1
  %5522 = xor i8 %5521, 1
  store i8 %5522, i8* %13, align 1
  %5523 = xor i32 %5512, %5511
  %5524 = lshr i32 %5523, 4
  %5525 = trunc i32 %5524 to i8
  %5526 = and i8 %5525, 1
  store i8 %5526, i8* %14, align 1
  %5527 = zext i1 %5515 to i8
  store i8 %5527, i8* %15, align 1
  %5528 = lshr i32 %5512, 31
  %5529 = trunc i32 %5528 to i8
  store i8 %5529, i8* %16, align 1
  %5530 = lshr i32 %5511, 31
  %5531 = xor i32 %5528, %5530
  %5532 = add nuw nsw i32 %5531, %5528
  %5533 = icmp eq i32 %5532, 2
  %5534 = zext i1 %5533 to i8
  store i8 %5534, i8* %17, align 1
  %5535 = add i64 %5508, 9
  store i64 %5535, i64* %3, align 8
  store i32 %5512, i32* %5510, align 4
  %5536 = load i64, i64* %3, align 8
  %5537 = add i64 %5536, -40
  store i64 %5537, i64* %3, align 8
  br label %block_.L_44d5a5

block_.L_44d5d2:                                  ; preds = %block_.L_44d5a5
  %5538 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %5539 = zext i32 %5538 to i64
  store i64 %5539, i64* %RAX.i205, align 8
  %5540 = add i64 %5497, 10
  store i64 %5540, i64* %3, align 8
  store i32 %5538, i32* %5474, align 4
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_44d5dc

block_.L_44d5dc:                                  ; preds = %block_44d5e6, %block_.L_44d5d2
  %5541 = phi i64 [ %5608, %block_44d5e6 ], [ %.pre188, %block_.L_44d5d2 ]
  %5542 = load i64, i64* %RBP.i, align 8
  %5543 = add i64 %5542, -20
  %5544 = add i64 %5541, 4
  store i64 %5544, i64* %3, align 8
  %5545 = inttoptr i64 %5543 to i32*
  %5546 = load i32, i32* %5545, align 4
  %5547 = add i32 %5546, -33
  %5548 = icmp ult i32 %5546, 33
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %12, align 1
  %5550 = and i32 %5547, 255
  %5551 = tail call i32 @llvm.ctpop.i32(i32 %5550)
  %5552 = trunc i32 %5551 to i8
  %5553 = and i8 %5552, 1
  %5554 = xor i8 %5553, 1
  store i8 %5554, i8* %13, align 1
  %5555 = xor i32 %5547, %5546
  %5556 = lshr i32 %5555, 4
  %5557 = trunc i32 %5556 to i8
  %5558 = and i8 %5557, 1
  store i8 %5558, i8* %14, align 1
  %5559 = icmp eq i32 %5547, 0
  %5560 = zext i1 %5559 to i8
  store i8 %5560, i8* %15, align 1
  %5561 = lshr i32 %5547, 31
  %5562 = trunc i32 %5561 to i8
  store i8 %5562, i8* %16, align 1
  %5563 = lshr i32 %5546, 31
  %5564 = xor i32 %5561, %5563
  %5565 = add nuw nsw i32 %5564, %5563
  %5566 = icmp eq i32 %5565, 2
  %5567 = zext i1 %5566 to i8
  store i8 %5567, i8* %17, align 1
  %.v224 = select i1 %5548, i64 10, i64 45
  %5568 = add i64 %5541, %.v224
  store i64 %5568, i64* %3, align 8
  br i1 %5548, label %block_44d5e6, label %block_.L_44d609.loopexit

block_44d5e6:                                     ; preds = %block_.L_44d5dc
  %5569 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5569, i64* %RAX.i205, align 8
  %5570 = add i64 %5568, 11
  store i64 %5570, i64* %3, align 8
  %5571 = load i32, i32* %5545, align 4
  %5572 = zext i32 %5571 to i64
  store i64 %5572, i64* %RCX.i1946, align 8
  store i64 %5572, i64* %RDX.i42, align 8
  %5573 = shl nuw nsw i64 %5572, 3
  %5574 = add i64 %5569, %5573
  %5575 = add i64 %5568, 21
  store i64 %5575, i64* %3, align 8
  %5576 = inttoptr i64 %5574 to i64*
  store i64 0, i64* %5576, align 8
  %5577 = load i64, i64* %RBP.i, align 8
  %5578 = add i64 %5577, -20
  %5579 = load i64, i64* %3, align 8
  %5580 = add i64 %5579, 3
  store i64 %5580, i64* %3, align 8
  %5581 = inttoptr i64 %5578 to i32*
  %5582 = load i32, i32* %5581, align 4
  %5583 = add i32 %5582, 1
  %5584 = zext i32 %5583 to i64
  store i64 %5584, i64* %RAX.i205, align 8
  %5585 = icmp eq i32 %5582, -1
  %5586 = icmp eq i32 %5583, 0
  %5587 = or i1 %5585, %5586
  %5588 = zext i1 %5587 to i8
  store i8 %5588, i8* %12, align 1
  %5589 = and i32 %5583, 255
  %5590 = tail call i32 @llvm.ctpop.i32(i32 %5589)
  %5591 = trunc i32 %5590 to i8
  %5592 = and i8 %5591, 1
  %5593 = xor i8 %5592, 1
  store i8 %5593, i8* %13, align 1
  %5594 = xor i32 %5583, %5582
  %5595 = lshr i32 %5594, 4
  %5596 = trunc i32 %5595 to i8
  %5597 = and i8 %5596, 1
  store i8 %5597, i8* %14, align 1
  %5598 = zext i1 %5586 to i8
  store i8 %5598, i8* %15, align 1
  %5599 = lshr i32 %5583, 31
  %5600 = trunc i32 %5599 to i8
  store i8 %5600, i8* %16, align 1
  %5601 = lshr i32 %5582, 31
  %5602 = xor i32 %5599, %5601
  %5603 = add nuw nsw i32 %5602, %5599
  %5604 = icmp eq i32 %5603, 2
  %5605 = zext i1 %5604 to i8
  store i8 %5605, i8* %17, align 1
  %5606 = add i64 %5579, 9
  store i64 %5606, i64* %3, align 8
  store i32 %5583, i32* %5581, align 4
  %5607 = load i64, i64* %3, align 8
  %5608 = add i64 %5607, -40
  store i64 %5608, i64* %3, align 8
  br label %block_.L_44d5dc

block_.L_44d609.loopexit:                         ; preds = %block_.L_44d5dc
  br label %block_.L_44d609

block_.L_44d609:                                  ; preds = %block_.L_44d609.loopexit, %block_.L_44c528
  %5609 = phi i64 [ %963, %block_.L_44c528 ], [ %5568, %block_.L_44d609.loopexit ]
  %MEMORY.64 = phi %struct.Memory* [ %2, %block_.L_44c528 ], [ %MEMORY.55, %block_.L_44d609.loopexit ]
  %5610 = load i64, i64* %6, align 8
  %5611 = add i64 %5610, 192
  store i64 %5611, i64* %6, align 8
  %5612 = icmp ugt i64 %5610, -193
  %5613 = zext i1 %5612 to i8
  store i8 %5613, i8* %12, align 1
  %5614 = trunc i64 %5611 to i32
  %5615 = and i32 %5614, 255
  %5616 = tail call i32 @llvm.ctpop.i32(i32 %5615)
  %5617 = trunc i32 %5616 to i8
  %5618 = and i8 %5617, 1
  %5619 = xor i8 %5618, 1
  store i8 %5619, i8* %13, align 1
  %5620 = xor i64 %5611, %5610
  %5621 = lshr i64 %5620, 4
  %5622 = trunc i64 %5621 to i8
  %5623 = and i8 %5622, 1
  store i8 %5623, i8* %14, align 1
  %5624 = icmp eq i64 %5611, 0
  %5625 = zext i1 %5624 to i8
  store i8 %5625, i8* %15, align 1
  %5626 = lshr i64 %5611, 63
  %5627 = trunc i64 %5626 to i8
  store i8 %5627, i8* %16, align 1
  %5628 = lshr i64 %5610, 63
  %5629 = xor i64 %5626, %5628
  %5630 = add nuw nsw i64 %5629, %5626
  %5631 = icmp eq i64 %5630, 2
  %5632 = zext i1 %5631 to i8
  store i8 %5632, i8* %17, align 1
  %5633 = add i64 %5609, 8
  store i64 %5633, i64* %3, align 8
  %5634 = add i64 %5610, 200
  %5635 = inttoptr i64 %5611 to i64*
  %5636 = load i64, i64* %5635, align 8
  store i64 %5636, i64* %RBP.i, align 8
  store i64 %5634, i64* %6, align 8
  %5637 = add i64 %5609, 9
  store i64 %5637, i64* %3, align 8
  %5638 = inttoptr i64 %5634 to i64*
  %5639 = load i64, i64* %5638, align 8
  store i64 %5639, i64* %3, align 8
  %5640 = add i64 %5610, 208
  store i64 %5640, i64* %6, align 8
  ret %struct.Memory* %MEMORY.64
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
define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x722c98___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -5
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
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_44c370(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
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
define %struct.Memory* @routine_jae_.L_44c36b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -3
  %9 = icmp ult i32 %7, 3
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c358(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6380
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
define %struct.Memory* @routine_je_.L_44c353(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6376
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
define %struct.Memory* @routine_jne_.L_44c353(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11b10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72464
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
define %struct.Memory* @routine_jbe_.L_44c2e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c309(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6364
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
define %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c358(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c35d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c21b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c514(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_44c38d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c39b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44c50f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_je_.L_44c4fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_44c425(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c44d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_44c4a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_44c4f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c4fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c501(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c3a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_je_.L_44c528(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jne_.L_44c543(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl__0x0__0x7247b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x7247b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d609(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_je_.L_44c557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_44ca44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jne_.L_44c793(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jae_.L_44c61d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44c60a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_44c605(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44c605(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c60a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c60f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c568(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x44d620___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44d620_type* @G__0x44d620 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.qsort_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x70eaac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x70eaac_type* @G_0x70eaac to i32*), align 8
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
define %struct.Memory* @routine_jae_.L_44c73f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70ea98_type* @G_0x70ea98 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c72c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_44c727(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6372
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
define %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6368
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c72c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c731(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c65b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44d690___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44d690_type* @G__0x44d690 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x7247b0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ca34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70eaa0_type* @G_0x70eaa0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c7c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq__0x4c1921___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c1921_type* @G__0x4c1921 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c7ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq__0x4c1936___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c1936_type* @G__0x4c1936 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44c86b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44c858(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c85d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c806(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44d700___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44d700_type* @G__0x44d700 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x7247b0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jae_.L_44c9cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c95d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44c9b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c9be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c8ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44dad0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44dad0_type* @G__0x44dad0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_44d43a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44cf29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jae_.L_44cb56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44cb43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_44cb3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44cb3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72456
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jle_.L_44cb39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rcx____rsi__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RCX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cb3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cb43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cb48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ca55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44db40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44db40_type* @G__0x44db40 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_jae_.L_44cc91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44cc7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_44cc79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44cc79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jge_.L_44cc74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44cc79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cc7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cc83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cb90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44dbb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44dbb0_type* @G__0x44dbb0 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_44cd17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
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
define %struct.Memory* @routine_jmpq_.L_44ccd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_44cd5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jmpq_.L_44cd1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x7247b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44ce7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44ce6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_44ce65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b28___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ce6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ce6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cd74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b28___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d435(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44cf5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44cf95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq__0x4c194c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c194c_type* @G__0x4c194c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44cfcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl__0x1__0x7247b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44d079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d066(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b0c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72460
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
define %struct.Memory* @routine_cmpl_0x24__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_jl_.L_44d061(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d066(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d06b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44cfe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44dc20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44dc20_type* @G__0x44dc20 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44d146(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44d133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44d12e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d0b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x44dc90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x44dc90_type* @G__0x44dc90 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44d1c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_44d18c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44d203(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d1cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x7247b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7247b0_type* @G__0x7247b0 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b28___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44d37f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44d310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44d36c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d371(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d27d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_44d4ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_cmpl__0x1__0x7247b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_44d4ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_44d4ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq___rcx__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %3, %11
  %13 = icmp ult i64 %3, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %11, %3
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %11, 63
  %37 = xor i64 %36, %35
  %38 = xor i64 %32, %35
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d4a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d4ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d46a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jne_.L_44d4fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d4ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72000
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
define %struct.Memory* @routine_jge_.L_44d52c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d540(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11940__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72000
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
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_movl_0x7247b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72004
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
define %struct.Memory* @routine_jge_.L_44d57a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d58e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11944__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72004
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_cmpl__0x21__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -33
  %10 = icmp ult i32 %8, 33
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
define %struct.Memory* @routine_jae_.L_44d5d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 0, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d5a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_44d609(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d5dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
