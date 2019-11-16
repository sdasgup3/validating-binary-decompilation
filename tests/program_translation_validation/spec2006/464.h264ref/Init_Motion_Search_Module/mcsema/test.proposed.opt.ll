; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x53791__rip__type = type <{ [8 x i8] }>
%G_0x537d8__rip__type = type <{ [8 x i8] }>
%G_0x5380c__rip__type = type <{ [8 x i8] }>
%G_0x5385a__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d09a0_type = type <{ [8 x i8] }>
%G_0x6d1fac_type = type <{ [4 x i8] }>
%G_0x6f8f00_type = type <{ [8 x i8] }>
%G_0x6f9718_type = type <{ [8 x i8] }>
%G_0x711c50_type = type <{ [8 x i8] }>
%G_0x726840_type = type <{ [8 x i8] }>
%G__0x4c2240_type = type <{ [8 x i8] }>
%G__0x4c226b_type = type <{ [8 x i8] }>
%G__0x4c2296_type = type <{ [8 x i8] }>
%G__0x4c22b8_type = type <{ [8 x i8] }>
%G__0x4c22db_type = type <{ [8 x i8] }>
%G__0x6f9698_type = type <{ [8 x i8] }>
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
@G_0x53791__rip_ = global %G_0x53791__rip__type zeroinitializer
@G_0x537d8__rip_ = global %G_0x537d8__rip__type zeroinitializer
@G_0x5380c__rip_ = global %G_0x5380c__rip__type zeroinitializer
@G_0x5385a__rip_ = global %G_0x5385a__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d09a0 = local_unnamed_addr global %G_0x6d09a0_type zeroinitializer
@G_0x6d1fac = local_unnamed_addr global %G_0x6d1fac_type zeroinitializer
@G_0x6f8f00 = local_unnamed_addr global %G_0x6f8f00_type zeroinitializer
@G_0x6f9718 = local_unnamed_addr global %G_0x6f9718_type zeroinitializer
@G_0x711c50 = local_unnamed_addr global %G_0x711c50_type zeroinitializer
@G_0x726840 = local_unnamed_addr global %G_0x726840_type zeroinitializer
@G__0x4c2240 = global %G__0x4c2240_type zeroinitializer
@G__0x4c226b = global %G__0x4c226b_type zeroinitializer
@G__0x4c2296 = global %G__0x4c2296_type zeroinitializer
@G__0x4c22b8 = global %G__0x4c22b8_type zeroinitializer
@G__0x4c22db = global %G__0x4c22db_type zeroinitializer
@G__0x6f9698 = global %G__0x6f9698_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401200.ceil_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_459be0.get_mem4Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45a400.InitializeFastFullIntegerSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Init_Motion_Search_Module(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %RAX.i564 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %40, i64* %RAX.i564, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i584 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %42 = add i64 %40, 72684
  %43 = add i64 %10, 24
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %RCX.i584, align 8
  store i64 %40, i64* %RAX.i564, align 8
  %ECX.i628 = bitcast %union.anon* %41 to i32*
  %47 = add i64 %40, 72688
  %48 = add i64 %10, 38
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %45, %50
  %52 = icmp ult i32 %45, %50
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %14, align 1
  %54 = and i32 %51, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  %59 = xor i32 %50, %45
  %60 = xor i32 %59, %51
  %61 = lshr i32 %60, 4
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  store i8 %63, i8* %26, align 1
  %64 = icmp eq i32 %51, 0
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %29, align 1
  %66 = lshr i32 %51, 31
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %32, align 1
  %68 = lshr i32 %45, 31
  %69 = lshr i32 %50, 31
  %70 = xor i32 %69, %68
  %71 = xor i32 %66, %68
  %72 = add nuw nsw i32 %71, %70
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %38, align 1
  %75 = icmp ne i8 %67, 0
  %76 = xor i1 %75, %73
  %77 = or i1 %64, %76
  %.v74 = select i1 %77, i64 72, i64 44
  %78 = add i64 %10, %.v74
  %79 = add i64 %78, 8
  store i64 %79, i64* %3, align 8
  store i64 %40, i64* %RAX.i564, align 8
  %80 = add i64 %78, 14
  store i64 %80, i64* %3, align 8
  br i1 %77, label %block_.L_45df79, label %block_45df5d

block_45df5d:                                     ; preds = %entry
  %81 = load i32, i32* %44, align 4
  %82 = add i32 %81, 1
  %83 = lshr i32 %82, 31
  %84 = trunc i32 %83 to i8
  %85 = shl i32 %82, 1
  %86 = icmp slt i32 %82, 0
  %87 = icmp slt i32 %85, 0
  %88 = xor i1 %86, %87
  %89 = zext i32 %85 to i64
  store i64 %89, i64* %RCX.i584, align 8
  store i8 %84, i8* %14, align 1
  %90 = and i32 %85, 254
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %95 = icmp eq i32 %85, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %29, align 1
  %97 = lshr i32 %82, 30
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %32, align 1
  %100 = zext i1 %88 to i8
  store i8 %100, i8* %38, align 1
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -60
  %103 = add i64 %78, 22
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  store i32 %85, i32* %104, align 4
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 28
  store i64 %106, i64* %3, align 8
  br label %block_.L_45df90

block_.L_45df79:                                  ; preds = %entry
  %107 = load i32, i32* %49, align 4
  %108 = add i32 %107, 1
  %109 = lshr i32 %108, 31
  %110 = trunc i32 %109 to i8
  %111 = shl i32 %108, 1
  %112 = icmp slt i32 %108, 0
  %113 = icmp slt i32 %111, 0
  %114 = xor i1 %112, %113
  %115 = zext i32 %111 to i64
  store i64 %115, i64* %RCX.i584, align 8
  store i8 %110, i8* %14, align 1
  %116 = and i32 %111, 254
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %121 = icmp eq i32 %111, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %29, align 1
  %123 = lshr i32 %108, 30
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %32, align 1
  %126 = zext i1 %114 to i8
  store i8 %126, i8* %38, align 1
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -60
  %129 = add i64 %78, 22
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  store i32 %111, i32* %130, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_45df90

block_.L_45df90:                                  ; preds = %block_.L_45df79, %block_45df5d
  %131 = phi i64 [ %.pre, %block_.L_45df79 ], [ %106, %block_45df5d ]
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -60
  %134 = add i64 %131, 3
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX.i564, align 8
  store i64 9, i64* %RCX.i584, align 8
  %EAX.i911 = bitcast %union.anon* %39 to i32*
  %138 = add i64 %132, -28
  %139 = add i64 %131, 11
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  store i32 %136, i32* %140, align 4
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i909 = getelementptr inbounds %union.anon, %union.anon* %141, i64 0, i32 0
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %143, i64* %RDX.i909, align 8
  %144 = add i64 %143, 32
  %145 = add i64 %142, 11
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX.i564, align 8
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -32
  %151 = add i64 %142, 14
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  store i32 %147, i32* %152, align 4
  %153 = load i64, i64* %3, align 8
  %154 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %154, i64* %RDX.i909, align 8
  %155 = add i64 %154, 36
  %156 = add i64 %153, 11
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RAX.i564, align 8
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -36
  %162 = add i64 %153, 14
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %158, i32* %163, align 4
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -32
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 3
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 1
  %171 = or i32 %170, 1
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  %173 = and i32 %171, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %178 = lshr i32 %169, 30
  %179 = and i32 %178, 1
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %32, align 1
  %181 = lshr i32 %169, 30
  %182 = and i32 %181, 1
  %183 = xor i32 %179, %182
  %184 = add nuw nsw i32 %183, %179
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %38, align 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i885 = getelementptr inbounds %union.anon, %union.anon* %187, i64 0, i32 0
  %188 = add i64 %166, 11
  store i64 %188, i64* %3, align 8
  %189 = load i32, i32* %168, align 4
  %190 = shl i32 %189, 1
  %191 = or i32 %190, 1
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RSI.i885, align 8
  %ESI.i878 = bitcast %union.anon* %187 to i32*
  %193 = sext i32 %171 to i64
  %194 = sext i32 %191 to i64
  %195 = mul nsw i64 %194, %193
  %196 = and i64 %195, 4294967295
  store i64 %196, i64* %RAX.i564, align 8
  %197 = load i32, i32* %ECX.i628, align 4
  %198 = trunc i64 %195 to i32
  %199 = sub i32 %197, %198
  %200 = icmp ult i32 %197, %198
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %14, align 1
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  %207 = xor i32 %198, %197
  %208 = xor i32 %207, %199
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  store i8 %211, i8* %26, align 1
  %212 = icmp eq i32 %199, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %29, align 1
  %214 = lshr i32 %199, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %32, align 1
  %216 = lshr i32 %197, 31
  %217 = lshr i32 %198, 31
  %218 = xor i32 %217, %216
  %219 = xor i32 %214, %216
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %38, align 1
  %223 = icmp ne i8 %215, 0
  %224 = xor i1 %223, %221
  %225 = or i1 %212, %224
  %.v75 = select i1 %225, i64 40, i64 27
  %226 = add i64 %166, %.v75
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_.L_45dfe1, label %block_45dfd4

block_45dfd4:                                     ; preds = %block_.L_45df90
  store i64 9, i64* %RAX.i564, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -64
  %229 = add i64 %226, 8
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 9, i32* %230, align 4
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 29
  store i64 %232, i64* %3, align 8
  br label %block_.L_45dff9

block_.L_45dfe1:                                  ; preds = %block_.L_45df90
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -32
  %235 = add i64 %226, 3
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 1
  %239 = or i32 %238, 1
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  %241 = and i32 %239, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %246 = lshr i32 %237, 30
  %247 = and i32 %246, 1
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %32, align 1
  %249 = lshr i32 %237, 30
  %250 = and i32 %249, 1
  %251 = xor i32 %247, %250
  %252 = add nuw nsw i32 %251, %247
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %38, align 1
  %255 = add i64 %226, 11
  store i64 %255, i64* %3, align 8
  %256 = load i32, i32* %236, align 4
  %257 = shl i32 %256, 1
  %258 = or i32 %257, 1
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RCX.i584, align 8
  %260 = sext i32 %239 to i64
  %261 = sext i32 %258 to i64
  %262 = mul nsw i64 %261, %260
  %263 = trunc i64 %262 to i32
  %264 = and i64 %262, 4294967295
  store i64 %264, i64* %RAX.i564, align 8
  %265 = shl i64 %262, 32
  %266 = ashr exact i64 %265, 32
  %267 = icmp ne i64 %266, %262
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %14, align 1
  %269 = and i32 %263, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %274 = lshr i32 %263, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %32, align 1
  store i8 %268, i8* %38, align 1
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -64
  %278 = trunc i64 %262 to i32
  %279 = add i64 %226, 22
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %277 to i32*
  store i32 %278, i32* %280, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_45dff9

block_.L_45dff9:                                  ; preds = %block_.L_45dfe1, %block_45dfd4
  %281 = phi i64 [ %.pre47, %block_.L_45dfe1 ], [ %232, %block_45dfd4 ]
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -64
  %284 = add i64 %281, 3
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i564, align 8
  store i64 16, i64* %RCX.i584, align 8
  %288 = add i64 %282, -40
  %289 = add i64 %281, 11
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 %286, i32* %290, align 4
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -36
  %293 = load i64, i64* %3, align 8
  %294 = add i64 %293, 3
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %292 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = add i32 %296, 1
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX.i564, align 8
  %299 = lshr i32 %297, 31
  %300 = load i32, i32* %ECX.i628, align 4
  %301 = sub i32 %300, %297
  %302 = icmp ult i32 %300, %297
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1
  %309 = xor i32 %297, %300
  %310 = xor i32 %309, %301
  %311 = lshr i32 %310, 4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %26, align 1
  %314 = icmp eq i32 %301, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %29, align 1
  %316 = lshr i32 %301, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %32, align 1
  %318 = lshr i32 %300, 31
  %319 = xor i32 %299, %318
  %320 = xor i32 %316, %318
  %321 = add nuw nsw i32 %320, %319
  %322 = icmp eq i32 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %38, align 1
  %324 = icmp ne i8 %317, 0
  %325 = xor i1 %324, %322
  %326 = or i1 %314, %325
  %.v76 = select i1 %326, i64 27, i64 14
  %327 = add i64 %293, %.v76
  store i64 %327, i64* %3, align 8
  br i1 %326, label %block_.L_45e01f, label %block_45e012

block_45e012:                                     ; preds = %block_.L_45dff9
  store i64 16, i64* %RAX.i564, align 8
  %328 = add i64 %291, -68
  %329 = add i64 %327, 8
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  store i32 16, i32* %330, align 4
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 14
  store i64 %332, i64* %3, align 8
  br label %block_.L_45e028

block_.L_45e01f:                                  ; preds = %block_.L_45dff9
  %333 = add i64 %327, 3
  store i64 %333, i64* %3, align 8
  %334 = load i32, i32* %295, align 4
  %335 = add i32 %334, 1
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i564, align 8
  %337 = icmp eq i32 %334, -1
  %338 = icmp eq i32 %335, 0
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %335, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %335, %334
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %26, align 1
  %350 = zext i1 %338 to i8
  store i8 %350, i8* %29, align 1
  %351 = lshr i32 %335, 31
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %32, align 1
  %353 = lshr i32 %334, 31
  %354 = xor i32 %351, %353
  %355 = add nuw nsw i32 %354, %351
  %356 = icmp eq i32 %355, 2
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %38, align 1
  %358 = add i64 %291, -68
  %359 = add i64 %327, 9
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  store i32 %335, i32* %360, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_45e028

block_.L_45e028:                                  ; preds = %block_.L_45e01f, %block_45e012
  %361 = phi i64 [ %.pre48, %block_.L_45e01f ], [ %332, %block_45e012 ]
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -68
  %364 = add i64 %361, 3
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i564, align 8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %369 = bitcast [32 x %union.VectorReg]* %368 to i8*
  %370 = sitofp i32 %366 to double
  %371 = bitcast [32 x %union.VectorReg]* %368 to double*
  store double %370, double* %371, align 1
  %372 = add i64 %361, -380824
  %373 = add i64 %361, 12
  %374 = load i64, i64* %6, align 8
  %375 = add i64 %374, -8
  %376 = inttoptr i64 %375 to i64*
  store i64 %373, i64* %376, align 8
  store i64 %375, i64* %6, align 8
  store i64 %372, i64* %3, align 8
  %377 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2)
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %379 = load i64, i64* %3, align 8
  %380 = add i64 %379, ptrtoint (%G_0x5380c__rip__type* @G_0x5380c__rip_ to i64)
  %381 = add i64 %379, 8
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %378, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %383, i64* %384, align 1
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %386 = bitcast i64* %385 to double*
  store double 0.000000e+00, double* %386, align 1
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -80
  %389 = add i64 %379, 13
  store i64 %389, i64* %3, align 8
  %390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %368, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %391 = load i64, i64* %390, align 1
  %392 = inttoptr i64 %388 to i64*
  store i64 %391, i64* %392, align 8
  %393 = load i64, i64* %3, align 8
  %394 = bitcast %union.VectorReg* %378 to <2 x i32>*
  %395 = load <2 x i32>, <2 x i32>* %394, align 1
  %396 = bitcast i64* %385 to <2 x i32>*
  %397 = load <2 x i32>, <2 x i32>* %396, align 1
  %398 = extractelement <2 x i32> %395, i32 0
  %399 = bitcast [32 x %union.VectorReg]* %368 to i32*
  store i32 %398, i32* %399, align 1
  %400 = extractelement <2 x i32> %395, i32 1
  %401 = getelementptr inbounds i8, i8* %369, i64 4
  %402 = bitcast i8* %401 to i32*
  store i32 %400, i32* %402, align 1
  %403 = extractelement <2 x i32> %397, i32 0
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %405 = bitcast i64* %404 to i32*
  store i32 %403, i32* %405, align 1
  %406 = extractelement <2 x i32> %397, i32 1
  %407 = getelementptr inbounds i8, i8* %369, i64 12
  %408 = bitcast i8* %407 to i32*
  store i32 %406, i32* %408, align 1
  %409 = add i64 %393, -380849
  %410 = add i64 %393, 8
  %411 = load i64, i64* %6, align 8
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %410, i64* %413, align 8
  store i64 %412, i64* %6, align 8
  store i64 %409, i64* %3, align 8
  %414 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %377)
  %415 = load i64, i64* %3, align 8
  store i64 1, i64* %RAX.i564, align 8
  %416 = add i64 %415, add (i64 ptrtoint (%G_0x5385a__rip__type* @G_0x5385a__rip_ to i64), i64 5)
  %417 = add i64 %415, 13
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %384, align 1
  store double 0.000000e+00, double* %386, align 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -80
  %423 = add i64 %415, 18
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to double*
  %425 = load double, double* %424, align 8
  %426 = bitcast %union.VectorReg* %420 to double*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %428 = load double, double* %371, align 1
  %429 = fdiv double %425, %428
  %430 = bitcast i64 %419 to double
  %431 = fadd double %429, %430
  store double %431, double* %426, align 1
  store i64 0, i64* %427, align 1
  %.cast32 = bitcast double %431 to <2 x i32>
  %432 = extractelement <2 x i32> %.cast32, i32 0
  store i32 %432, i32* %399, align 1
  %433 = extractelement <2 x i32> %.cast32, i32 1
  store i32 %433, i32* %402, align 1
  store i32 0, i32* %405, align 1
  store i32 0, i32* %408, align 1
  %434 = add i64 %421, -84
  %435 = add i64 %415, 32
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  store i32 1, i32* %436, align 4
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, -380601
  %439 = add i64 %437, 5
  %440 = load i64, i64* %6, align 8
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %439, i64* %442, align 8
  store i64 %441, i64* %6, align 8
  store i64 %438, i64* %3, align 8
  %443 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %414)
  %444 = load i64, i64* %3, align 8
  %445 = load double, double* %371, align 1
  %446 = tail call double @llvm.trunc.f64(double %445)
  %447 = tail call double @llvm.fabs.f64(double %446)
  %448 = fcmp ogt double %447, 0x41DFFFFFFFC00000
  %449 = fptosi double %446 to i32
  %450 = select i1 %448, i32 -2147483648, i32 %449
  %451 = shl i32 %450, 1
  %452 = or i32 %451, 1
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  %454 = and i32 %452, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %459 = lshr i32 %450, 30
  %460 = and i32 %459, 1
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %32, align 1
  %462 = lshr i32 %450, 30
  %463 = and i32 %462, 1
  %464 = xor i32 %460, %463
  %465 = add nuw nsw i32 %464, %460
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %38, align 1
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -44
  %470 = add i64 %444, 12
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  store i32 %452, i32* %471, align 4
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -44
  %474 = load i64, i64* %3, align 8
  %475 = add i64 %474, 3
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %473 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = zext i32 %477 to i64
  %479 = shl nuw i64 %478, 32
  %480 = ashr i64 %479, 33
  %481 = trunc i64 %480 to i32
  %482 = add i32 %481, 1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX.i564, align 8
  %484 = icmp eq i32 %481, -1
  %485 = icmp eq i32 %482, 0
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %14, align 1
  %488 = and i32 %482, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %21, align 1
  %493 = xor i32 %482, %481
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %26, align 1
  %497 = zext i1 %485 to i8
  store i8 %497, i8* %29, align 1
  %498 = lshr i32 %482, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %32, align 1
  %500 = lshr i64 %480, 31
  %501 = trunc i64 %500 to i32
  %502 = and i32 %501, 1
  %503 = xor i32 %498, %502
  %504 = add nuw nsw i32 %503, %498
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %38, align 1
  store i64 %483, i64* %RCX.i584, align 8
  %507 = add i64 %472, -84
  %508 = add i64 %474, 13
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RAX.i564, align 8
  %512 = add i64 %474, 15
  store i64 %512, i64* %3, align 8
  %513 = trunc i32 %482 to i5
  switch i5 %513, label %519 [
    i5 0, label %routine_shll__cl___eax.exit749
    i5 1, label %514
  ]

; <label>:514:                                    ; preds = %block_.L_45e028
  %515 = shl i32 %510, 1
  %516 = icmp slt i32 %510, 0
  %517 = icmp slt i32 %515, 0
  %518 = xor i1 %516, %517
  br label %528

; <label>:519:                                    ; preds = %block_.L_45e028
  %520 = and i32 %482, 31
  %521 = zext i32 %520 to i64
  %522 = add nuw nsw i64 %521, 4294967295
  %523 = and i64 %522, 4294967295
  %524 = shl i64 %511, %523
  %525 = trunc i64 %524 to i32
  %526 = icmp slt i32 %525, 0
  %527 = shl i32 %525, 1
  br label %528

; <label>:528:                                    ; preds = %519, %514
  %529 = phi i1 [ %516, %514 ], [ %526, %519 ]
  %530 = phi i1 [ %518, %514 ], [ false, %519 ]
  %531 = phi i32 [ %515, %514 ], [ %527, %519 ]
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RAX.i564, align 8
  %533 = zext i1 %529 to i8
  store i8 %533, i8* %14, align 1
  %534 = and i32 %531, 254
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %539 = icmp eq i32 %531, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %29, align 1
  %541 = lshr i32 %531, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %32, align 1
  %543 = zext i1 %530 to i8
  store i8 %543, i8* %38, align 1
  br label %routine_shll__cl___eax.exit749

routine_shll__cl___eax.exit749:                   ; preds = %528, %block_.L_45e028
  %544 = phi i32 [ %531, %528 ], [ %510, %block_.L_45e028 ]
  %545 = add i32 %544, -1
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX.i564, align 8
  %547 = icmp eq i32 %544, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = and i32 %545, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i32 %545, %544
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %26, align 1
  %558 = icmp eq i32 %545, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %29, align 1
  %560 = lshr i32 %545, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %32, align 1
  %562 = lshr i32 %544, 31
  %563 = xor i32 %560, %562
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %38, align 1
  %567 = add i64 %472, -48
  %568 = add i64 %474, 21
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  store i32 %545, i32* %569, align 4
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -32
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 3
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = shl i32 %575, 1
  %577 = add i32 %576, 3
  %578 = shl i32 %577, 2
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RAX.i564, align 8
  %580 = lshr i32 %577, 30
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %14, align 1
  %583 = and i32 %578, 252
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %588 = lshr i32 %577, 29
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %591 = add i64 %570, -52
  %592 = add i64 %572, 14
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  store i32 %578, i32* %593, align 4
  %594 = load i64, i64* %RBP.i, align 8
  %595 = add i64 %594, -52
  %596 = load i64, i64* %3, align 8
  %597 = add i64 %596, 3
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %595 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = add i32 %599, 1
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RAX.i564, align 8
  %602 = icmp eq i32 %599, -1
  %603 = icmp eq i32 %600, 0
  %604 = or i1 %602, %603
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %14, align 1
  %606 = and i32 %600, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %21, align 1
  %611 = xor i32 %600, %599
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %26, align 1
  %615 = zext i1 %603 to i8
  store i8 %615, i8* %29, align 1
  %616 = lshr i32 %600, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %32, align 1
  %618 = lshr i32 %599, 31
  %619 = xor i32 %616, %618
  %620 = add nuw nsw i32 %619, %616
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %38, align 1
  %623 = sitofp i32 %600 to double
  store double %623, double* %371, align 1
  %624 = add i64 %596, -380944
  %625 = add i64 %596, 15
  %626 = load i64, i64* %6, align 8
  %627 = add i64 %626, -8
  %628 = inttoptr i64 %627 to i64*
  store i64 %625, i64* %628, align 8
  store i64 %627, i64* %6, align 8
  store i64 %624, i64* %3, align 8
  %629 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %443)
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, ptrtoint (%G_0x53791__rip__type* @G_0x53791__rip_ to i64)
  %632 = add i64 %630, 8
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i64*
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %384, align 1
  store double 0.000000e+00, double* %386, align 1
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -96
  %637 = add i64 %630, 13
  store i64 %637, i64* %3, align 8
  %638 = load i64, i64* %390, align 1
  %639 = inttoptr i64 %636 to i64*
  store i64 %638, i64* %639, align 8
  %640 = load i64, i64* %3, align 8
  %641 = load <2 x i32>, <2 x i32>* %394, align 1
  %642 = load <2 x i32>, <2 x i32>* %396, align 1
  %643 = extractelement <2 x i32> %641, i32 0
  store i32 %643, i32* %399, align 1
  %644 = extractelement <2 x i32> %641, i32 1
  store i32 %644, i32* %402, align 1
  %645 = extractelement <2 x i32> %642, i32 0
  store i32 %645, i32* %405, align 1
  %646 = extractelement <2 x i32> %642, i32 1
  store i32 %646, i32* %408, align 1
  %647 = add i64 %640, -380972
  %648 = add i64 %640, 8
  %649 = load i64, i64* %6, align 8
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %648, i64* %651, align 8
  store i64 %650, i64* %6, align 8
  store i64 %647, i64* %3, align 8
  %652 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %629)
  %653 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i885, align 8
  store i64 1, i64* %RAX.i564, align 8
  %654 = add i64 %653, add (i64 ptrtoint (%G_0x537d8__rip__type* @G_0x537d8__rip_ to i64), i64 12)
  %655 = add i64 %653, 20
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i64*
  %657 = load i64, i64* %656, align 8
  store i64 %657, i64* %384, align 1
  store double 0.000000e+00, double* %386, align 1
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -96
  %660 = add i64 %653, 25
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to double*
  %662 = load double, double* %661, align 8
  %663 = load double, double* %371, align 1
  %664 = fdiv double %662, %663
  %665 = bitcast i64 %657 to double
  %666 = fadd double %664, %665
  store double %666, double* %426, align 1
  store i64 0, i64* %427, align 1
  %.cast24 = bitcast double %666 to <2 x i32>
  %667 = extractelement <2 x i32> %.cast24, i32 0
  store i32 %667, i32* %399, align 1
  %668 = extractelement <2 x i32> %.cast24, i32 1
  store i32 %668, i32* %402, align 1
  store i32 0, i32* %405, align 1
  store i32 0, i32* %408, align 1
  %669 = add i64 %658, -100
  %670 = add i64 %653, 39
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  store i32 1, i32* %671, align 4
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -112
  %674 = load i64, i64* %RSI.i885, align 8
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 4
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %673 to i64*
  store i64 %674, i64* %677, align 8
  %678 = load i64, i64* %3, align 8
  %679 = add i64 %678, -380655
  %680 = add i64 %678, 5
  %681 = load i64, i64* %6, align 8
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %680, i64* %683, align 8
  store i64 %682, i64* %6, align 8
  store i64 %679, i64* %3, align 8
  %call2_45e0ef = tail call %struct.Memory* @sub_401200.ceil_plt(%struct.State* nonnull %0, i64 %679, %struct.Memory* %652)
  %684 = load i64, i64* %3, align 8
  %685 = load double, double* %371, align 1
  %686 = tail call double @llvm.trunc.f64(double %685)
  %687 = tail call double @llvm.fabs.f64(double %686)
  %688 = fcmp ogt double %687, 0x41DFFFFFFFC00000
  %689 = fptosi double %686 to i32
  %690 = select i1 %688, i32 -2147483648, i32 %689
  %691 = shl i32 %690, 1
  %692 = add i32 %691, 3
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RAX.i564, align 8
  %694 = icmp ugt i32 %691, -4
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %14, align 1
  %696 = and i32 %692, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %21, align 1
  %701 = xor i32 %692, %691
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %705 = lshr i32 %692, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %32, align 1
  %707 = lshr i32 %690, 30
  %708 = and i32 %707, 1
  %709 = xor i32 %705, %708
  %710 = add nuw nsw i32 %709, %705
  %711 = icmp eq i32 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %38, align 1
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -56
  %715 = add i64 %684, 12
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  store i32 %692, i32* %716, align 4
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -56
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, 3
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  %724 = shl nuw i64 %723, 32
  %725 = ashr i64 %724, 33
  %726 = trunc i32 %722 to i8
  %727 = and i8 %726, 1
  %728 = trunc i64 %725 to i32
  %729 = and i64 %725, 4294967295
  store i64 %729, i64* %RAX.i564, align 8
  store i8 %727, i8* %14, align 1
  %730 = and i32 %728, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %735 = icmp eq i32 %728, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %29, align 1
  %737 = lshr i64 %725, 31
  %738 = trunc i64 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %740 = and i64 %725, 4294967295
  store i64 %740, i64* %RCX.i584, align 8
  %741 = add i64 %717, -100
  %742 = add i64 %719, 10
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX.i564, align 8
  %746 = add i64 %719, 12
  store i64 %746, i64* %3, align 8
  %747 = trunc i64 %725 to i5
  switch i5 %747, label %753 [
    i5 0, label %routine_shll__cl___eax.exit662
    i5 1, label %748
  ]

; <label>:748:                                    ; preds = %routine_shll__cl___eax.exit749
  %749 = shl i32 %744, 1
  %750 = icmp slt i32 %744, 0
  %751 = icmp slt i32 %749, 0
  %752 = xor i1 %750, %751
  br label %761

; <label>:753:                                    ; preds = %routine_shll__cl___eax.exit749
  %754 = and i64 %725, 31
  %755 = add nuw nsw i64 %754, 4294967295
  %756 = and i64 %755, 4294967295
  %757 = shl i64 %745, %756
  %758 = trunc i64 %757 to i32
  %759 = icmp slt i32 %758, 0
  %760 = shl i32 %758, 1
  br label %761

; <label>:761:                                    ; preds = %753, %748
  %762 = phi i1 [ %750, %748 ], [ %759, %753 ]
  %763 = phi i1 [ %752, %748 ], [ false, %753 ]
  %764 = phi i32 [ %749, %748 ], [ %760, %753 ]
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RAX.i564, align 8
  %766 = zext i1 %762 to i8
  store i8 %766, i8* %14, align 1
  %767 = and i32 %764, 254
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %772 = icmp eq i32 %764, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %29, align 1
  %774 = lshr i32 %764, 31
  %775 = trunc i32 %774 to i8
  store i8 %775, i8* %32, align 1
  %776 = zext i1 %763 to i8
  store i8 %776, i8* %38, align 1
  br label %routine_shll__cl___eax.exit662

routine_shll__cl___eax.exit662:                   ; preds = %761, %routine_shll__cl___eax.exit749
  %777 = phi i32 [ %764, %761 ], [ %744, %routine_shll__cl___eax.exit749 ]
  %778 = add i32 %777, -1
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RAX.i564, align 8
  %780 = icmp eq i32 %777, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %778, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %778, %777
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %26, align 1
  %791 = icmp eq i32 %778, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %29, align 1
  %793 = lshr i32 %778, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %32, align 1
  %795 = lshr i32 %777, 31
  %796 = xor i32 %793, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %38, align 1
  store i32 %778, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*), align 8
  %RDI.i653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %800 = add i64 %717, -40
  %801 = add i64 %719, 26
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = sext i32 %803 to i64
  store i64 %804, i64* %RDI.i653, align 8
  %805 = add i64 %717, -112
  %806 = add i64 %719, 30
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RSI.i885, align 8
  %809 = add i64 %719, -380962
  %810 = add i64 %719, 35
  %811 = load i64, i64* %6, align 8
  %812 = add i64 %811, -8
  %813 = inttoptr i64 %812 to i64*
  store i64 %810, i64* %813, align 8
  store i64 %812, i64* %6, align 8
  store i64 %809, i64* %3, align 8
  %814 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %call2_45e0ef)
  %815 = load i64, i64* %RAX.i564, align 8
  %816 = load i64, i64* %3, align 8
  store i64 %815, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i8 0, i8* %14, align 1
  %817 = trunc i64 %815 to i32
  %818 = and i32 %817, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %823 = icmp eq i64 %815, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %29, align 1
  %825 = lshr i64 %815, 63
  %826 = trunc i64 %825 to i8
  store i8 %826, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v77 = select i1 %823, i64 18, i64 33
  %827 = add i64 %816, %.v77
  store i64 %827, i64* %3, align 8
  br i1 %823, label %block_45e137, label %block_.L_45e146

block_45e137:                                     ; preds = %routine_shll__cl___eax.exit662
  store i64 ptrtoint (%G__0x4c2240_type* @G__0x4c2240 to i64), i64* %RDI.i653, align 8
  %828 = add i64 %827, -19783
  %829 = add i64 %827, 15
  %830 = load i64, i64* %6, align 8
  %831 = add i64 %830, -8
  %832 = inttoptr i64 %831 to i64*
  store i64 %829, i64* %832, align 8
  store i64 %831, i64* %6, align 8
  store i64 %828, i64* %3, align 8
  %call2_45e141 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %828, %struct.Memory* %814)
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_45e146

block_.L_45e146:                                  ; preds = %routine_shll__cl___eax.exit662, %block_45e137
  %833 = phi i64 [ %827, %routine_shll__cl___eax.exit662 ], [ %.pre49, %block_45e137 ]
  %MEMORY.3 = phi %struct.Memory* [ %814, %routine_shll__cl___eax.exit662 ], [ %call2_45e141, %block_45e137 ]
  store i64 4, i64* %RAX.i564, align 8
  store i64 4, i64* %RSI.i885, align 8
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -40
  %836 = add i64 %833, 11
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  store i64 %839, i64* %RDI.i653, align 8
  %840 = add i64 %833, -381030
  %841 = add i64 %833, 16
  %842 = load i64, i64* %6, align 8
  %843 = add i64 %842, -8
  %844 = inttoptr i64 %843 to i64*
  store i64 %841, i64* %844, align 8
  store i64 %843, i64* %6, align 8
  store i64 %840, i64* %3, align 8
  %845 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.3)
  %846 = load i64, i64* %RAX.i564, align 8
  %847 = load i64, i64* %3, align 8
  store i64 %846, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i8 0, i8* %14, align 1
  %848 = trunc i64 %846 to i32
  %849 = and i32 %848, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %854 = icmp eq i64 %846, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %29, align 1
  %856 = lshr i64 %846, 63
  %857 = trunc i64 %856 to i8
  store i8 %857, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v78 = select i1 %854, i64 18, i64 33
  %858 = add i64 %847, %.v78
  store i64 %858, i64* %3, align 8
  br i1 %854, label %block_45e168, label %block_.L_45e177

block_45e168:                                     ; preds = %block_.L_45e146
  store i64 ptrtoint (%G__0x4c226b_type* @G__0x4c226b to i64), i64* %RDI.i653, align 8
  %859 = add i64 %858, -19832
  %860 = add i64 %858, 15
  %861 = load i64, i64* %6, align 8
  %862 = add i64 %861, -8
  %863 = inttoptr i64 %862 to i64*
  store i64 %860, i64* %863, align 8
  store i64 %862, i64* %6, align 8
  store i64 %859, i64* %3, align 8
  %call2_45e172 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %859, %struct.Memory* %845)
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_45e177

block_.L_45e177:                                  ; preds = %block_.L_45e146, %block_45e168
  %864 = phi i64 [ %858, %block_.L_45e146 ], [ %.pre50, %block_45e168 ]
  %MEMORY.4 = phi %struct.Memory* [ %845, %block_.L_45e146 ], [ %call2_45e172, %block_45e168 ]
  store i64 4, i64* %RSI.i885, align 8
  %865 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*), align 8
  %866 = shl i32 %865, 1
  %867 = or i32 %866, 1
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  %869 = and i32 %867, 255
  %870 = tail call i32 @llvm.ctpop.i32(i32 %869)
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  store i8 %873, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %874 = lshr i32 %865, 30
  %875 = and i32 %874, 1
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %32, align 1
  %877 = lshr i32 %865, 30
  %878 = and i32 %877, 1
  %879 = xor i32 %875, %878
  %880 = add nuw nsw i32 %879, %875
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %38, align 1
  %883 = sext i32 %867 to i64
  store i64 %883, i64* %RDI.i653, align 8
  %884 = add i64 %864, -381080
  %885 = add i64 %864, 27
  %886 = load i64, i64* %6, align 8
  %887 = add i64 %886, -8
  %888 = inttoptr i64 %887 to i64*
  store i64 %885, i64* %888, align 8
  store i64 %887, i64* %6, align 8
  store i64 %884, i64* %3, align 8
  %889 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.4)
  %890 = load i64, i64* %RAX.i564, align 8
  %891 = load i64, i64* %3, align 8
  store i64 %890, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i8 0, i8* %14, align 1
  %892 = trunc i64 %890 to i32
  %893 = and i32 %892, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %898 = icmp eq i64 %890, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %29, align 1
  %900 = lshr i64 %890, 63
  %901 = trunc i64 %900 to i8
  store i8 %901, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v79 = select i1 %898, i64 18, i64 33
  %902 = add i64 %891, %.v79
  store i64 %902, i64* %3, align 8
  br i1 %898, label %block_45e1a5, label %block_.L_45e1b4

block_45e1a5:                                     ; preds = %block_.L_45e177
  store i64 ptrtoint (%G__0x4c2296_type* @G__0x4c2296 to i64), i64* %RDI.i653, align 8
  %903 = add i64 %902, -19893
  %904 = add i64 %902, 15
  %905 = load i64, i64* %6, align 8
  %906 = add i64 %905, -8
  %907 = inttoptr i64 %906 to i64*
  store i64 %904, i64* %907, align 8
  store i64 %906, i64* %6, align 8
  store i64 %903, i64* %3, align 8
  %call2_45e1af = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %903, %struct.Memory* %889)
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_45e1b4

block_.L_45e1b4:                                  ; preds = %block_.L_45e177, %block_45e1a5
  %908 = phi i64 [ %902, %block_.L_45e177 ], [ %.pre51, %block_45e1a5 ]
  %MEMORY.5 = phi %struct.Memory* [ %889, %block_.L_45e177 ], [ %call2_45e1af, %block_45e1a5 ]
  store i64 4, i64* %RAX.i564, align 8
  store i64 4, i64* %RSI.i885, align 8
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -48
  %911 = add i64 %908, 11
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RDI.i653, align 8
  %915 = add i64 %908, -381140
  %916 = add i64 %908, 16
  %917 = load i64, i64* %6, align 8
  %918 = add i64 %917, -8
  %919 = inttoptr i64 %918 to i64*
  store i64 %916, i64* %919, align 8
  store i64 %918, i64* %6, align 8
  store i64 %915, i64* %3, align 8
  %920 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.5)
  %921 = load i64, i64* %RAX.i564, align 8
  %922 = load i64, i64* %3, align 8
  store i64 %921, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*), align 8
  store i8 0, i8* %14, align 1
  %923 = trunc i64 %921 to i32
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %929 = icmp eq i64 %921, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %29, align 1
  %931 = lshr i64 %921, 63
  %932 = trunc i64 %931 to i8
  store i8 %932, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v80 = select i1 %929, i64 18, i64 33
  %933 = add i64 %922, %.v80
  store i64 %933, i64* %3, align 8
  br i1 %929, label %block_45e1d6, label %block_.L_45e1e5

block_45e1d6:                                     ; preds = %block_.L_45e1b4
  store i64 ptrtoint (%G__0x4c22b8_type* @G__0x4c22b8 to i64), i64* %RDI.i653, align 8
  %934 = add i64 %933, -19942
  %935 = add i64 %933, 15
  %936 = load i64, i64* %6, align 8
  %937 = add i64 %936, -8
  %938 = inttoptr i64 %937 to i64*
  store i64 %935, i64* %938, align 8
  store i64 %937, i64* %6, align 8
  store i64 %934, i64* %3, align 8
  %call2_45e1e0 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %934, %struct.Memory* %920)
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_45e1e5

block_.L_45e1e5:                                  ; preds = %block_.L_45e1b4, %block_45e1d6
  %939 = phi i64 [ %933, %block_.L_45e1b4 ], [ %.pre52, %block_45e1d6 ]
  %MEMORY.6 = phi %struct.Memory* [ %920, %block_.L_45e1b4 ], [ %call2_45e1e0, %block_45e1d6 ]
  store i64 4, i64* %RAX.i564, align 8
  store i64 4, i64* %RSI.i885, align 8
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -28
  %942 = add i64 %939, 11
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RDI.i653, align 8
  %946 = add i64 %939, -381189
  %947 = add i64 %939, 16
  %948 = load i64, i64* %6, align 8
  %949 = add i64 %948, -8
  %950 = inttoptr i64 %949 to i64*
  store i64 %947, i64* %950, align 8
  store i64 %949, i64* %6, align 8
  store i64 %946, i64* %3, align 8
  %951 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.6)
  %952 = load i64, i64* %RAX.i564, align 8
  %953 = load i64, i64* %3, align 8
  store i64 %952, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i8 0, i8* %14, align 1
  %954 = trunc i64 %952 to i32
  %955 = and i32 %954, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %960 = icmp eq i64 %952, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %29, align 1
  %962 = lshr i64 %952, 63
  %963 = trunc i64 %962 to i8
  store i8 %963, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v81 = select i1 %960, i64 18, i64 33
  %964 = add i64 %953, %.v81
  store i64 %964, i64* %3, align 8
  br i1 %960, label %block_45e207, label %block_.L_45e216

block_45e207:                                     ; preds = %block_.L_45e1e5
  store i64 ptrtoint (%G__0x4c22db_type* @G__0x4c22db to i64), i64* %RDI.i653, align 8
  %965 = add i64 %964, -19991
  %966 = add i64 %964, 15
  %967 = load i64, i64* %6, align 8
  %968 = add i64 %967, -8
  %969 = inttoptr i64 %968 to i64*
  store i64 %966, i64* %969, align 8
  store i64 %968, i64* %6, align 8
  store i64 %965, i64* %3, align 8
  %call2_45e211 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %965, %struct.Memory* %951)
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_45e216

block_.L_45e216:                                  ; preds = %block_.L_45e1e5, %block_45e207
  %970 = phi i64 [ %964, %block_.L_45e1e5 ], [ %.pre53, %block_45e207 ]
  %MEMORY.7 = phi %struct.Memory* [ %951, %block_.L_45e1e5 ], [ %call2_45e211, %block_45e207 ]
  store i64 ptrtoint (%G__0x6f9698_type* @G__0x6f9698 to i64), i64* %RDI.i653, align 8
  store i64 8, i64* %RSI.i885, align 8
  store i64 2, i64* %RDX.i909, align 8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4, i64* %971, align 8
  %972 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %972, i64* %RAX.i564, align 8
  %973 = add i64 %972, 36
  %974 = add i64 %970, 37
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i32*
  %976 = load i32, i32* %975, align 4
  %977 = add i32 %976, 1
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RCX.i584, align 8
  %979 = icmp eq i32 %976, -1
  %980 = icmp eq i32 %977, 0
  %981 = or i1 %979, %980
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %14, align 1
  %983 = and i32 %977, 255
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %21, align 1
  %988 = xor i32 %977, %976
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %26, align 1
  %992 = zext i1 %980 to i8
  store i8 %992, i8* %29, align 1
  %993 = lshr i32 %977, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %32, align 1
  %995 = lshr i32 %976, 31
  %996 = xor i32 %993, %995
  %997 = add nuw nsw i32 %996, %993
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %38, align 1
  %1000 = add i64 %970, -17974
  %1001 = add i64 %970, 45
  %1002 = load i64, i64* %6, align 8
  %1003 = add i64 %1002, -8
  %1004 = inttoptr i64 %1003 to i64*
  store i64 %1001, i64* %1004, align 8
  store i64 %1003, i64* %6, align 8
  store i64 %1000, i64* %3, align 8
  %call2_45e23e = tail call %struct.Memory* @sub_459be0.get_mem4Dint(%struct.State* nonnull %0, i64 %1000, %struct.Memory* %MEMORY.7)
  %1005 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i584, align 8
  %1006 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*), align 8
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RDX.i909, align 8
  %1008 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  %EDX.i532 = bitcast %union.anon* %141 to i32*
  %R9.i533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1009 = sext i32 %1006 to i64
  %1010 = shl nsw i64 %1009, 2
  store i64 %1010, i64* %R9.i533, align 8
  %1011 = add i64 %1010, %1008
  store i64 %1011, i64* %RDI.i653, align 8
  %1012 = icmp ult i64 %1011, %1008
  %1013 = icmp ult i64 %1011, %1010
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %14, align 1
  %1016 = trunc i64 %1011 to i32
  %1017 = and i32 %1016, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  %1022 = xor i64 %1010, %1008
  %1023 = xor i64 %1022, %1011
  %1024 = lshr i64 %1023, 4
  %1025 = trunc i64 %1024 to i8
  %1026 = and i8 %1025, 1
  store i8 %1026, i8* %26, align 1
  %1027 = icmp eq i64 %1011, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %29, align 1
  %1029 = lshr i64 %1011, 63
  %1030 = trunc i64 %1029 to i8
  store i8 %1030, i8* %32, align 1
  %1031 = lshr i64 %1008, 63
  %1032 = lshr i64 %1009, 61
  %1033 = and i64 %1032, 1
  %1034 = xor i64 %1029, %1031
  %1035 = xor i64 %1029, %1033
  %1036 = add nuw nsw i64 %1034, %1035
  %1037 = icmp eq i64 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %38, align 1
  store i64 %1011, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  %1039 = load i64, i64* %RBP.i, align 8
  %1040 = add i64 %1039, -28
  %1041 = add i64 %1005, 41
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RDX.i909, align 8
  %1045 = add i64 %1039, -116
  %1046 = load i32, i32* %EAX.i911, align 4
  %1047 = add i64 %1005, 44
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1045 to i32*
  store i32 %1046, i32* %1048, align 4
  %1049 = load i32, i32* %EDX.i532, align 4
  %1050 = zext i32 %1049 to i64
  %1051 = load i64, i64* %3, align 8
  store i64 %1050, i64* %RAX.i564, align 8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1053 = sext i32 %1049 to i64
  %1054 = lshr i64 %1053, 32
  store i64 %1054, i64* %1052, align 8
  %1055 = load i32, i32* %ECX.i628, align 4
  %1056 = add i64 %1051, 5
  store i64 %1056, i64* %3, align 8
  %1057 = sext i32 %1055 to i64
  %1058 = shl nuw i64 %1054, 32
  %1059 = or i64 %1058, %1050
  %1060 = sdiv i64 %1059, %1057
  %1061 = shl i64 %1060, 32
  %1062 = ashr exact i64 %1061, 32
  %1063 = icmp eq i64 %1060, %1062
  br i1 %1063, label %1066, label %1064

; <label>:1064:                                   ; preds = %block_.L_45e216
  %1065 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1056, %struct.Memory* %call2_45e23e)
  %.pre54 = load i64, i64* %3, align 8
  %.pre55 = load i32, i32* %EAX.i911, align 4
  br label %routine_idivl__ecx.exit

; <label>:1066:                                   ; preds = %block_.L_45e216
  %1067 = srem i64 %1059, %1057
  %1068 = and i64 %1060, 4294967295
  store i64 %1068, i64* %RAX.i564, align 8
  %1069 = and i64 %1067, 4294967295
  store i64 %1069, i64* %RDX.i909, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1070 = trunc i64 %1060 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1066, %1064
  %1071 = phi i32 [ %.pre55, %1064 ], [ %1070, %1066 ]
  %1072 = phi i64 [ %.pre54, %1064 ], [ %1056, %1066 ]
  %1073 = phi %struct.Memory* [ %1065, %1064 ], [ %call2_45e23e, %1066 ]
  %1074 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  %1075 = sext i32 %1071 to i64
  %1076 = shl nsw i64 %1075, 2
  store i64 %1076, i64* %R9.i533, align 8
  %1077 = add i64 %1076, %1074
  %1078 = icmp ult i64 %1077, %1074
  %1079 = icmp ult i64 %1077, %1076
  %1080 = or i1 %1078, %1079
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %14, align 1
  %1082 = trunc i64 %1077 to i32
  %1083 = and i32 %1082, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %21, align 1
  %1088 = xor i64 %1076, %1074
  %1089 = xor i64 %1088, %1077
  %1090 = lshr i64 %1089, 4
  %1091 = trunc i64 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %26, align 1
  %1093 = icmp eq i64 %1077, 0
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %29, align 1
  %1095 = lshr i64 %1077, 63
  %1096 = trunc i64 %1095 to i8
  store i8 %1096, i8* %32, align 1
  %1097 = lshr i64 %1074, 63
  %1098 = lshr i64 %1075, 61
  %1099 = and i64 %1098, 1
  %1100 = xor i64 %1095, %1097
  %1101 = xor i64 %1095, %1099
  %1102 = add nuw nsw i64 %1100, %1101
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %38, align 1
  store i64 %1077, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  %1105 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1105, i64* %RDI.i653, align 8
  %1106 = add i64 %1072, 40
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  store i32 1, i32* %1107, align 4
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -4
  %1110 = load i64, i64* %3, align 8
  %1111 = add i64 %1110, 7
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i32*
  store i32 3, i32* %1112, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_45e2a3

block_.L_45e2a3:                                  ; preds = %block_.L_45e30d, %routine_idivl__ecx.exit
  %1113 = phi i64 [ %1386, %block_.L_45e30d ], [ %.pre56, %routine_idivl__ecx.exit ]
  %1114 = load i64, i64* %RBP.i, align 8
  %1115 = add i64 %1114, -4
  %1116 = add i64 %1113, 3
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX.i564, align 8
  %1120 = add i64 %1114, -56
  %1121 = add i64 %1113, 6
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sub i32 %1118, %1123
  %1125 = icmp ult i32 %1118, %1123
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %14, align 1
  %1127 = and i32 %1124, 255
  %1128 = tail call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  store i8 %1131, i8* %21, align 1
  %1132 = xor i32 %1123, %1118
  %1133 = xor i32 %1132, %1124
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %26, align 1
  %1137 = icmp eq i32 %1124, 0
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %29, align 1
  %1139 = lshr i32 %1124, 31
  %1140 = trunc i32 %1139 to i8
  store i8 %1140, i8* %32, align 1
  %1141 = lshr i32 %1118, 31
  %1142 = lshr i32 %1123, 31
  %1143 = xor i32 %1142, %1141
  %1144 = xor i32 %1139, %1141
  %1145 = add nuw nsw i32 %1144, %1143
  %1146 = icmp eq i32 %1145, 2
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %38, align 1
  %1148 = icmp ne i8 %1140, 0
  %1149 = xor i1 %1148, %1146
  %.demorgan = or i1 %1137, %1149
  %.v82 = select i1 %.demorgan, i64 12, i64 125
  %1150 = add i64 %1113, %.v82
  store i64 %1150, i64* %3, align 8
  br i1 %.demorgan, label %block_45e2af, label %block_.L_45e320

block_45e2af:                                     ; preds = %block_.L_45e2a3
  store i64 1, i64* %RAX.i564, align 8
  %1151 = add i64 %1150, 8
  store i64 %1151, i64* %3, align 8
  %1152 = load i32, i32* %1117, align 4
  %1153 = zext i32 %1152 to i64
  %1154 = shl nuw i64 %1153, 32
  %1155 = ashr i64 %1154, 33
  %1156 = trunc i32 %1152 to i8
  %1157 = and i8 %1156, 1
  %1158 = trunc i64 %1155 to i32
  %1159 = and i64 %1155, 4294967295
  store i64 %1159, i64* %RCX.i584, align 8
  store i8 %1157, i8* %14, align 1
  %1160 = and i32 %1158, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1165 = icmp eq i32 %1158, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %29, align 1
  %1167 = lshr i64 %1155, 31
  %1168 = trunc i64 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1170 = add i64 %1150, 12
  store i64 %1170, i64* %3, align 8
  %1171 = trunc i64 %1155 to i5
  switch i5 %1171, label %1172 [
    i5 0, label %routine_shll__cl___eax.exit478
    i5 1, label %1180
  ]

; <label>:1172:                                   ; preds = %block_45e2af
  %1173 = and i64 %1155, 31
  %1174 = add nuw nsw i64 %1173, 4294967295
  %1175 = and i64 %1174, 4294967295
  %1176 = shl i64 1, %1175
  %1177 = trunc i64 %1176 to i32
  %1178 = icmp slt i32 %1177, 0
  %1179 = shl i32 %1177, 1
  br label %1180

; <label>:1180:                                   ; preds = %block_45e2af, %1172
  %1181 = phi i1 [ %1178, %1172 ], [ false, %block_45e2af ]
  %1182 = phi i32 [ %1179, %1172 ], [ 2, %block_45e2af ]
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RAX.i564, align 8
  %1184 = zext i1 %1181 to i8
  store i8 %1184, i8* %14, align 1
  %1185 = and i32 %1182, 254
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1190 = icmp eq i32 %1182, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1182, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit478

routine_shll__cl___eax.exit478:                   ; preds = %1180, %block_45e2af
  %1194 = phi i32 [ %1182, %1180 ], [ 1, %block_45e2af ]
  %1195 = add i64 %1114, -16
  %1196 = add i64 %1150, 15
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  store i32 %1194, i32* %1197, align 4
  %1198 = load i64, i64* %RBP.i, align 8
  %1199 = add i64 %1198, -16
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1199 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = zext i32 %1203 to i64
  %1205 = shl nuw i64 %1204, 32
  %1206 = ashr i64 %1205, 33
  %1207 = trunc i32 %1203 to i8
  %1208 = and i8 %1207, 1
  %1209 = trunc i64 %1206 to i32
  %1210 = and i64 %1206, 4294967295
  store i64 %1210, i64* %RAX.i564, align 8
  store i8 %1208, i8* %14, align 1
  %1211 = and i32 %1209, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1216 = icmp eq i32 %1209, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %29, align 1
  %1218 = lshr i64 %1206, 31
  %1219 = trunc i64 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1221 = add i64 %1198, -12
  %1222 = trunc i64 %1206 to i32
  %1223 = add i64 %1200, 8
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1221 to i32*
  store i32 %1222, i32* %1224, align 4
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -12
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, 3
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1226 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RAX.i564, align 8
  %1232 = add i64 %1225, -8
  %1233 = add i64 %1227, 6
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  store i32 %1230, i32* %1234, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_45e2ce

block_.L_45e2ce:                                  ; preds = %block_45e2da, %routine_shll__cl___eax.exit478
  %1235 = phi i64 [ %1357, %block_45e2da ], [ %.pre57, %routine_shll__cl___eax.exit478 ]
  %1236 = load i64, i64* %RBP.i, align 8
  %1237 = add i64 %1236, -8
  %1238 = add i64 %1235, 3
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i564, align 8
  %1242 = add i64 %1236, -16
  %1243 = add i64 %1235, 6
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = sub i32 %1240, %1245
  %1247 = icmp ult i32 %1240, %1245
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1246, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i32 %1245, %1240
  %1255 = xor i32 %1254, %1246
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %26, align 1
  %1259 = icmp eq i32 %1246, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %29, align 1
  %1261 = lshr i32 %1246, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %32, align 1
  %1263 = lshr i32 %1240, 31
  %1264 = lshr i32 %1245, 31
  %1265 = xor i32 %1264, %1263
  %1266 = xor i32 %1261, %1263
  %1267 = add nuw nsw i32 %1266, %1265
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %38, align 1
  %1270 = icmp ne i8 %1262, 0
  %1271 = xor i1 %1270, %1268
  %.v = select i1 %1271, i64 12, i64 63
  %1272 = add i64 %1235, %.v
  store i64 %1272, i64* %3, align 8
  br i1 %1271, label %block_45e2da, label %block_.L_45e30d

block_45e2da:                                     ; preds = %block_.L_45e2ce
  store i64 0, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1273 = add i64 %1236, -4
  %1274 = add i64 %1272, 5
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RCX.i584, align 8
  %1278 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1278, i64* %RDX.i909, align 8
  %1279 = add i64 %1272, 17
  store i64 %1279, i64* %3, align 8
  %1280 = load i32, i32* %1239, align 4
  %1281 = sext i32 %1280 to i64
  store i64 %1281, i64* %RSI.i885, align 8
  %1282 = shl nsw i64 %1281, 2
  %1283 = add i64 %1282, %1278
  %1284 = add i64 %1272, 20
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  store i32 %1276, i32* %1285, align 4
  %1286 = load i64, i64* %3, align 8
  %1287 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1287, i64* %RDX.i909, align 8
  %1288 = load i64, i64* %RAX.i564, align 8
  %1289 = load i64, i64* %RBP.i, align 8
  %1290 = add i64 %1289, -8
  %1291 = add i64 %1286, 11
  store i64 %1291, i64* %3, align 8
  %1292 = trunc i64 %1288 to i32
  %1293 = inttoptr i64 %1290 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = sub i32 %1292, %1294
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RAX.i564, align 8
  %1297 = icmp ult i32 %1292, %1294
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %14, align 1
  %1299 = and i32 %1295, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %21, align 1
  %1304 = xor i32 %1294, %1292
  %1305 = xor i32 %1304, %1295
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %26, align 1
  %1309 = icmp eq i32 %1295, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %29, align 1
  %1311 = lshr i32 %1295, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %32, align 1
  %1313 = lshr i32 %1292, 31
  %1314 = lshr i32 %1294, 31
  %1315 = xor i32 %1314, %1313
  %1316 = xor i32 %1311, %1313
  %1317 = add nuw nsw i32 %1316, %1315
  %1318 = icmp eq i32 %1317, 2
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %38, align 1
  %1320 = sext i32 %1295 to i64
  store i64 %1320, i64* %RSI.i885, align 8
  %1321 = shl nsw i64 %1320, 2
  %1322 = add i64 %1287, %1321
  %1323 = load i32, i32* %ECX.i628, align 4
  %1324 = add i64 %1286, 17
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1322 to i32*
  store i32 %1323, i32* %1325, align 4
  %1326 = load i64, i64* %RBP.i, align 8
  %1327 = add i64 %1326, -8
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 3
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1327 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = add i32 %1331, 1
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RAX.i564, align 8
  %1334 = icmp eq i32 %1331, -1
  %1335 = icmp eq i32 %1332, 0
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1
  %1338 = and i32 %1332, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %21, align 1
  %1343 = xor i32 %1332, %1331
  %1344 = lshr i32 %1343, 4
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %26, align 1
  %1347 = zext i1 %1335 to i8
  store i8 %1347, i8* %29, align 1
  %1348 = lshr i32 %1332, 31
  %1349 = trunc i32 %1348 to i8
  store i8 %1349, i8* %32, align 1
  %1350 = lshr i32 %1331, 31
  %1351 = xor i32 %1348, %1350
  %1352 = add nuw nsw i32 %1351, %1348
  %1353 = icmp eq i32 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %38, align 1
  %1355 = add i64 %1328, 9
  store i64 %1355, i64* %3, align 8
  store i32 %1332, i32* %1330, align 4
  %1356 = load i64, i64* %3, align 8
  %1357 = add i64 %1356, -58
  store i64 %1357, i64* %3, align 8
  br label %block_.L_45e2ce

block_.L_45e30d:                                  ; preds = %block_.L_45e2ce
  %1358 = add i64 %1236, -4
  %1359 = add i64 %1272, 8
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = add i32 %1361, 2
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i564, align 8
  %1364 = icmp ugt i32 %1361, -3
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %14, align 1
  %1366 = and i32 %1362, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %21, align 1
  %1371 = xor i32 %1362, %1361
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %26, align 1
  %1375 = icmp eq i32 %1362, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %29, align 1
  %1377 = lshr i32 %1362, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %32, align 1
  %1379 = lshr i32 %1361, 31
  %1380 = xor i32 %1377, %1379
  %1381 = add nuw nsw i32 %1380, %1377
  %1382 = icmp eq i32 %1381, 2
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %38, align 1
  %1384 = add i64 %1272, 14
  store i64 %1384, i64* %3, align 8
  store i32 %1362, i32* %1360, align 4
  %1385 = load i64, i64* %3, align 8
  %1386 = add i64 %1385, -120
  store i64 %1386, i64* %3, align 8
  br label %block_.L_45e2a3

block_.L_45e320:                                  ; preds = %block_.L_45e2a3
  %1387 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*), align 8
  store i64 %1387, i64* %RAX.i564, align 8
  %1388 = add i64 %1150, 14
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  store i32 1, i32* %1389, align 4
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -4
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 7
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1391 to i32*
  store i32 3, i32* %1394, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_45e335

block_.L_45e335:                                  ; preds = %block_.L_45e392, %block_.L_45e320
  %1395 = phi i64 [ %1662, %block_.L_45e392 ], [ %.pre58, %block_.L_45e320 ]
  %1396 = load i64, i64* %RBP.i, align 8
  %1397 = add i64 %1396, -4
  %1398 = add i64 %1395, 3
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RAX.i564, align 8
  %1402 = add i64 %1396, -44
  %1403 = add i64 %1395, 6
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = sub i32 %1400, %1405
  %1407 = icmp ult i32 %1400, %1405
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %14, align 1
  %1409 = and i32 %1406, 255
  %1410 = tail call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %21, align 1
  %1414 = xor i32 %1405, %1400
  %1415 = xor i32 %1414, %1406
  %1416 = lshr i32 %1415, 4
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %26, align 1
  %1419 = icmp eq i32 %1406, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %29, align 1
  %1421 = lshr i32 %1406, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %32, align 1
  %1423 = lshr i32 %1400, 31
  %1424 = lshr i32 %1405, 31
  %1425 = xor i32 %1424, %1423
  %1426 = xor i32 %1421, %1423
  %1427 = add nuw nsw i32 %1426, %1425
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %38, align 1
  %1430 = icmp ne i8 %1422, 0
  %1431 = xor i1 %1430, %1428
  %.demorgan68 = or i1 %1419, %1431
  %.v83 = select i1 %.demorgan68, i64 12, i64 112
  %1432 = add i64 %1395, %.v83
  store i64 %1432, i64* %3, align 8
  br i1 %.demorgan68, label %block_45e341, label %block_.L_45e3a5

block_45e341:                                     ; preds = %block_.L_45e335
  store i64 1, i64* %RAX.i564, align 8
  %1433 = add i64 %1432, 8
  store i64 %1433, i64* %3, align 8
  %1434 = load i32, i32* %1399, align 4
  %1435 = zext i32 %1434 to i64
  %1436 = shl nuw i64 %1435, 32
  %1437 = ashr i64 %1436, 33
  %1438 = trunc i64 %1437 to i32
  %1439 = add i32 %1438, 1
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RCX.i584, align 8
  %1441 = icmp eq i32 %1438, -1
  %1442 = icmp eq i32 %1439, 0
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1439, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1439, %1438
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %26, align 1
  %1454 = zext i1 %1442 to i8
  store i8 %1454, i8* %29, align 1
  %1455 = lshr i32 %1439, 31
  %1456 = trunc i32 %1455 to i8
  store i8 %1456, i8* %32, align 1
  %1457 = lshr i64 %1437, 31
  %1458 = trunc i64 %1457 to i32
  %1459 = and i32 %1458, 1
  %1460 = xor i32 %1455, %1459
  %1461 = add nuw nsw i32 %1460, %1455
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %38, align 1
  %1464 = add i64 %1432, 15
  store i64 %1464, i64* %3, align 8
  %1465 = trunc i32 %1439 to i5
  switch i5 %1465, label %1466 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %1475
  ]

; <label>:1466:                                   ; preds = %block_45e341
  %1467 = and i32 %1439, 31
  %1468 = zext i32 %1467 to i64
  %1469 = add nuw nsw i64 %1468, 4294967295
  %1470 = and i64 %1469, 4294967295
  %1471 = shl i64 1, %1470
  %1472 = trunc i64 %1471 to i32
  %1473 = icmp slt i32 %1472, 0
  %1474 = shl i32 %1472, 1
  br label %1475

; <label>:1475:                                   ; preds = %block_45e341, %1466
  %1476 = phi i1 [ %1473, %1466 ], [ false, %block_45e341 ]
  %1477 = phi i32 [ %1474, %1466 ], [ 2, %block_45e341 ]
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RAX.i564, align 8
  %1479 = zext i1 %1476 to i8
  store i8 %1479, i8* %14, align 1
  %1480 = and i32 %1477, 254
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1485 = icmp eq i32 %1477, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %29, align 1
  %1487 = lshr i32 %1477, 31
  %1488 = trunc i32 %1487 to i8
  store i8 %1488, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %1475, %block_45e341
  %1489 = phi i32 [ %1477, %1475 ], [ 1, %block_45e341 ]
  %1490 = add i32 %1489, -1
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RAX.i564, align 8
  %1492 = icmp eq i32 %1489, 0
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %14, align 1
  %1494 = and i32 %1490, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %21, align 1
  %1499 = xor i32 %1490, %1489
  %1500 = lshr i32 %1499, 4
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  store i8 %1502, i8* %26, align 1
  %1503 = icmp eq i32 %1490, 0
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %29, align 1
  %1505 = lshr i32 %1490, 31
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %32, align 1
  %1507 = lshr i32 %1489, 31
  %1508 = xor i32 %1505, %1507
  %1509 = add nuw nsw i32 %1508, %1507
  %1510 = icmp eq i32 %1509, 2
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %38, align 1
  %1512 = add i64 %1396, -16
  %1513 = add i64 %1432, 21
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  store i32 %1490, i32* %1514, align 4
  %1515 = load i64, i64* %RBP.i, align 8
  %1516 = add i64 %1515, -16
  %1517 = load i64, i64* %3, align 8
  %1518 = add i64 %1517, 3
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1516 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = zext i32 %1520 to i64
  %1522 = shl nuw i64 %1521, 32
  %1523 = ashr i64 %1522, 33
  %1524 = trunc i32 %1520 to i8
  %1525 = and i8 %1524, 1
  %1526 = trunc i64 %1523 to i32
  %1527 = and i64 %1523, 4294967295
  store i64 %1527, i64* %RAX.i564, align 8
  store i8 %1525, i8* %14, align 1
  %1528 = and i32 %1526, 255
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1533 = icmp eq i32 %1526, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %29, align 1
  %1535 = lshr i64 %1523, 31
  %1536 = trunc i64 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1538 = add i64 %1515, -12
  %1539 = trunc i64 %1523 to i32
  %1540 = add i64 %1517, 8
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1538 to i32*
  store i32 %1539, i32* %1541, align 4
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -12
  %1544 = load i64, i64* %3, align 8
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1543 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i564, align 8
  %1549 = add i64 %1542, -8
  %1550 = add i64 %1544, 6
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  store i32 %1547, i32* %1551, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_45e366

block_.L_45e366:                                  ; preds = %block_45e372, %routine_shll__cl___eax.exit
  %1552 = phi i64 [ %1634, %block_45e372 ], [ %.pre59, %routine_shll__cl___eax.exit ]
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -8
  %1555 = add i64 %1552, 3
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RAX.i564, align 8
  %1559 = add i64 %1553, -16
  %1560 = add i64 %1552, 6
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = sub i32 %1557, %1562
  %1564 = icmp ult i32 %1557, %1562
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %14, align 1
  %1566 = and i32 %1563, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %21, align 1
  %1571 = xor i32 %1562, %1557
  %1572 = xor i32 %1571, %1563
  %1573 = lshr i32 %1572, 4
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  store i8 %1575, i8* %26, align 1
  %1576 = icmp eq i32 %1563, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %29, align 1
  %1578 = lshr i32 %1563, 31
  %1579 = trunc i32 %1578 to i8
  store i8 %1579, i8* %32, align 1
  %1580 = lshr i32 %1557, 31
  %1581 = lshr i32 %1562, 31
  %1582 = xor i32 %1581, %1580
  %1583 = xor i32 %1578, %1580
  %1584 = add nuw nsw i32 %1583, %1582
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %38, align 1
  %1587 = icmp ne i8 %1579, 0
  %1588 = xor i1 %1587, %1585
  %.v69 = select i1 %1588, i64 12, i64 44
  %1589 = add i64 %1552, %.v69
  store i64 %1589, i64* %3, align 8
  %1590 = add i64 %1553, -4
  br i1 %1588, label %block_45e372, label %block_.L_45e392

block_45e372:                                     ; preds = %block_.L_45e366
  %1591 = add i64 %1589, 3
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RAX.i564, align 8
  %1595 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*), align 8
  store i64 %1595, i64* %RCX.i584, align 8
  %1596 = add i64 %1589, 15
  store i64 %1596, i64* %3, align 8
  %1597 = load i32, i32* %1556, align 4
  %1598 = sext i32 %1597 to i64
  store i64 %1598, i64* %RDX.i909, align 8
  %1599 = shl nsw i64 %1598, 2
  %1600 = add i64 %1599, %1595
  %1601 = add i64 %1589, 18
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i32*
  store i32 %1593, i32* %1602, align 4
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -8
  %1605 = load i64, i64* %3, align 8
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1604 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = add i32 %1608, 1
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RAX.i564, align 8
  %1611 = icmp eq i32 %1608, -1
  %1612 = icmp eq i32 %1609, 0
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %14, align 1
  %1615 = and i32 %1609, 255
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615)
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %21, align 1
  %1620 = xor i32 %1609, %1608
  %1621 = lshr i32 %1620, 4
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %26, align 1
  %1624 = zext i1 %1612 to i8
  store i8 %1624, i8* %29, align 1
  %1625 = lshr i32 %1609, 31
  %1626 = trunc i32 %1625 to i8
  store i8 %1626, i8* %32, align 1
  %1627 = lshr i32 %1608, 31
  %1628 = xor i32 %1625, %1627
  %1629 = add nuw nsw i32 %1628, %1625
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %38, align 1
  %1632 = add i64 %1605, 9
  store i64 %1632, i64* %3, align 8
  store i32 %1609, i32* %1607, align 4
  %1633 = load i64, i64* %3, align 8
  %1634 = add i64 %1633, -39
  store i64 %1634, i64* %3, align 8
  br label %block_.L_45e366

block_.L_45e392:                                  ; preds = %block_.L_45e366
  %1635 = add i64 %1589, 8
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1590 to i32*
  %1637 = load i32, i32* %1636, align 4
  %1638 = add i32 %1637, 2
  %1639 = zext i32 %1638 to i64
  store i64 %1639, i64* %RAX.i564, align 8
  %1640 = icmp ugt i32 %1637, -3
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %14, align 1
  %1642 = and i32 %1638, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %21, align 1
  %1647 = xor i32 %1638, %1637
  %1648 = lshr i32 %1647, 4
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  store i8 %1650, i8* %26, align 1
  %1651 = icmp eq i32 %1638, 0
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %29, align 1
  %1653 = lshr i32 %1638, 31
  %1654 = trunc i32 %1653 to i8
  store i8 %1654, i8* %32, align 1
  %1655 = lshr i32 %1637, 31
  %1656 = xor i32 %1653, %1655
  %1657 = add nuw nsw i32 %1656, %1653
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %38, align 1
  %1660 = add i64 %1589, 14
  store i64 %1660, i64* %3, align 8
  store i32 %1638, i32* %1636, align 4
  %1661 = load i64, i64* %3, align 8
  %1662 = add i64 %1661, -107
  store i64 %1662, i64* %3, align 8
  br label %block_.L_45e335

block_.L_45e3a5:                                  ; preds = %block_.L_45e335
  %1663 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %1663, i64* %RAX.i564, align 8
  %1664 = add i64 %1432, 14
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i32*
  store i32 0, i32* %1665, align 4
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -8
  %1668 = load i64, i64* %3, align 8
  %1669 = add i64 %1668, 7
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1667 to i32*
  store i32 1, i32* %1670, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_45e3ba

block_.L_45e3ba:                                  ; preds = %block_45e3d8, %block_.L_45e3a5
  %1671 = phi i64 [ %.pre60, %block_.L_45e3a5 ], [ %1822, %block_45e3d8 ]
  %MEMORY.12 = phi %struct.Memory* [ %1073, %block_.L_45e3a5 ], [ %1714, %block_45e3d8 ]
  store i64 2, i64* %RAX.i564, align 8
  %1672 = load i64, i64* %RBP.i, align 8
  %1673 = add i64 %1672, -8
  %1674 = add i64 %1671, 8
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RCX.i584, align 8
  %1678 = add i64 %1672, -28
  %1679 = add i64 %1671, 11
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RDX.i909, align 8
  %1683 = add i64 %1672, -120
  %1684 = add i64 %1671, 14
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  store i32 2, i32* %1685, align 4
  %1686 = load i32, i32* %EDX.i532, align 4
  %1687 = zext i32 %1686 to i64
  %1688 = load i64, i64* %3, align 8
  store i64 %1687, i64* %RAX.i564, align 8
  %1689 = sext i32 %1686 to i64
  %1690 = lshr i64 %1689, 32
  store i64 %1690, i64* %1052, align 8
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -120
  %1693 = add i64 %1688, 6
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = zext i32 %1695 to i64
  store i64 %1696, i64* %RSI.i885, align 8
  %1697 = add i64 %1688, 8
  store i64 %1697, i64* %3, align 8
  %1698 = sext i32 %1695 to i64
  %1699 = shl nuw i64 %1690, 32
  %1700 = or i64 %1699, %1687
  %1701 = sdiv i64 %1700, %1698
  %1702 = shl i64 %1701, 32
  %1703 = ashr exact i64 %1702, 32
  %1704 = icmp eq i64 %1701, %1703
  br i1 %1704, label %1707, label %1705

; <label>:1705:                                   ; preds = %block_.L_45e3ba
  %1706 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1697, %struct.Memory* %MEMORY.12)
  %.pre61 = load i32, i32* %EAX.i911, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:1707:                                   ; preds = %block_.L_45e3ba
  %1708 = srem i64 %1700, %1698
  %1709 = and i64 %1701, 4294967295
  store i64 %1709, i64* %RAX.i564, align 8
  %1710 = and i64 %1708, 4294967295
  store i64 %1710, i64* %RDX.i909, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1711 = trunc i64 %1701 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1707, %1705
  %1712 = phi i64 [ %.pre62, %1705 ], [ %1697, %1707 ]
  %1713 = phi i32 [ %.pre61, %1705 ], [ %1711, %1707 ]
  %1714 = phi %struct.Memory* [ %1706, %1705 ], [ %MEMORY.12, %1707 ]
  %1715 = load i32, i32* %ECX.i628, align 4
  %1716 = sub i32 %1715, %1713
  %1717 = icmp ult i32 %1715, %1713
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %14, align 1
  %1719 = and i32 %1716, 255
  %1720 = tail call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  store i8 %1723, i8* %21, align 1
  %1724 = xor i32 %1713, %1715
  %1725 = xor i32 %1724, %1716
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  store i8 %1728, i8* %26, align 1
  %1729 = icmp eq i32 %1716, 0
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %29, align 1
  %1731 = lshr i32 %1716, 31
  %1732 = trunc i32 %1731 to i8
  store i8 %1732, i8* %32, align 1
  %1733 = lshr i32 %1715, 31
  %1734 = lshr i32 %1713, 31
  %1735 = xor i32 %1734, %1733
  %1736 = xor i32 %1731, %1733
  %1737 = add nuw nsw i32 %1736, %1735
  %1738 = icmp eq i32 %1737, 2
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %38, align 1
  %1740 = icmp ne i8 %1732, 0
  %1741 = xor i1 %1740, %1738
  %.v84 = select i1 %1741, i64 8, i64 59
  %1742 = add i64 %1712, %.v84
  store i64 %1742, i64* %3, align 8
  br i1 %1741, label %block_45e3d8, label %block_.L_45e40b

block_45e3d8:                                     ; preds = %routine_idivl__esi.exit
  store i64 0, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1743 = load i64, i64* %RBP.i, align 8
  %1744 = add i64 %1743, -8
  %1745 = add i64 %1742, 5
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  %1747 = load i32, i32* %1746, align 4
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RCX.i584, align 8
  %1749 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %1749, i64* %RDX.i909, align 8
  %1750 = add i64 %1742, 16
  store i64 %1750, i64* %3, align 8
  %1751 = load i32, i32* %1746, align 4
  %1752 = sub i32 0, %1751
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RAX.i564, align 8
  %1754 = icmp ne i32 %1751, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %14, align 1
  %1756 = and i32 %1752, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %21, align 1
  %1761 = xor i32 %1751, %1752
  %1762 = lshr i32 %1761, 4
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  store i8 %1764, i8* %26, align 1
  %1765 = icmp eq i32 %1751, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %29, align 1
  %1767 = lshr i32 %1752, 31
  %1768 = trunc i32 %1767 to i8
  store i8 %1768, i8* %32, align 1
  %1769 = lshr i32 %1751, 31
  %1770 = add nuw nsw i32 %1767, %1769
  %1771 = icmp eq i32 %1770, 2
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %38, align 1
  %1773 = sext i32 %1752 to i64
  store i64 %1773, i64* %RSI.i885, align 8
  %1774 = shl nsw i64 %1773, 2
  %1775 = add i64 %1749, %1774
  %1776 = add i64 %1742, 22
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  store i32 %1747, i32* %1777, align 4
  %1778 = load i64, i64* %3, align 8
  %1779 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %1779, i64* %RDX.i909, align 8
  %1780 = load i64, i64* %RBP.i, align 8
  %1781 = add i64 %1780, -8
  %1782 = add i64 %1778, 12
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = sext i32 %1784 to i64
  store i64 %1785, i64* %RSI.i885, align 8
  %1786 = shl nsw i64 %1785, 2
  %1787 = add i64 %1786, %1779
  %1788 = load i32, i32* %ECX.i628, align 4
  %1789 = add i64 %1778, 15
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1787 to i32*
  store i32 %1788, i32* %1790, align 4
  %1791 = load i64, i64* %RBP.i, align 8
  %1792 = add i64 %1791, -8
  %1793 = load i64, i64* %3, align 8
  %1794 = add i64 %1793, 3
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1792 to i32*
  %1796 = load i32, i32* %1795, align 4
  %1797 = add i32 %1796, 1
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i564, align 8
  %1799 = icmp eq i32 %1796, -1
  %1800 = icmp eq i32 %1797, 0
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1797, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1797, %1796
  %1809 = lshr i32 %1808, 4
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  store i8 %1811, i8* %26, align 1
  %1812 = zext i1 %1800 to i8
  store i8 %1812, i8* %29, align 1
  %1813 = lshr i32 %1797, 31
  %1814 = trunc i32 %1813 to i8
  store i8 %1814, i8* %32, align 1
  %1815 = lshr i32 %1796, 31
  %1816 = xor i32 %1813, %1815
  %1817 = add nuw nsw i32 %1816, %1813
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %38, align 1
  %1820 = add i64 %1793, 9
  store i64 %1820, i64* %3, align 8
  store i32 %1797, i32* %1795, align 4
  %1821 = load i64, i64* %3, align 8
  %1822 = add i64 %1821, -76
  store i64 %1822, i64* %3, align 8
  br label %block_.L_45e3ba

block_.L_45e40b:                                  ; preds = %routine_idivl__esi.exit
  %1823 = load i32*, i32** bitcast (%G_0x711c50_type* @G_0x711c50 to i32**), align 8
  %1824 = add i64 %1742, 14
  store i64 %1824, i64* %3, align 8
  store i32 0, i32* %1823, align 4
  %1825 = load i64, i64* %3, align 8
  %1826 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %1826, i64* %RAX.i564, align 8
  %1827 = add i64 %1825, 14
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i32*
  store i32 0, i32* %1828, align 4
  %1829 = load i64, i64* %RBP.i, align 8
  %1830 = add i64 %1829, -20
  %1831 = load i64, i64* %3, align 8
  %1832 = add i64 %1831, 7
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1830 to i32*
  store i32 1, i32* %1833, align 4
  %1834 = load i64, i64* %RBP.i, align 8
  %1835 = add i64 %1834, -24
  %1836 = load i64, i64* %3, align 8
  %1837 = add i64 %1836, 7
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1835 to i32*
  store i32 1, i32* %1838, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_45e435

block_.L_45e435:                                  ; preds = %block_.L_45e56d, %block_.L_45e40b
  %1839 = phi i64 [ %2433, %block_.L_45e56d ], [ %.pre63, %block_.L_45e40b ]
  store i64 1, i64* %RAX.i564, align 8
  %1840 = load i64, i64* %RBP.i, align 8
  %1841 = add i64 %1840, -24
  %1842 = add i64 %1839, 8
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RCX.i584, align 8
  %1846 = add i64 %1840, -32
  %1847 = add i64 %1839, 11
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = sub i32 1, %1849
  %1851 = icmp ugt i32 %1849, 1
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %14, align 1
  %1853 = and i32 %1850, 255
  %1854 = tail call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  store i8 %1857, i8* %21, align 1
  %1858 = xor i32 %1849, %1850
  %1859 = lshr i32 %1858, 4
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  store i8 %1861, i8* %26, align 1
  %1862 = icmp eq i32 %1850, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %29, align 1
  %1864 = lshr i32 %1850, 31
  %1865 = trunc i32 %1864 to i8
  store i8 %1865, i8* %32, align 1
  %1866 = lshr i32 %1849, 31
  %1867 = add nuw nsw i32 %1864, %1866
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %38, align 1
  %1870 = add i64 %1840, -124
  %1871 = add i64 %1839, 14
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  store i32 %1844, i32* %1872, align 4
  %1873 = load i64, i64* %3, align 8
  %1874 = load i8, i8* %29, align 1
  %1875 = icmp ne i8 %1874, 0
  %1876 = load i8, i8* %32, align 1
  %1877 = icmp ne i8 %1876, 0
  %1878 = load i8, i8* %38, align 1
  %1879 = icmp ne i8 %1878, 0
  %1880 = xor i1 %1877, %1879
  %1881 = or i1 %1875, %1880
  %.v100 = select i1 %1881, i64 19, i64 6
  %1882 = add i64 %1873, %.v100
  store i64 %1882, i64* %3, align 8
  br i1 %1881, label %block_.L_45e456, label %block_45e449

block_45e449:                                     ; preds = %block_.L_45e435
  store i64 1, i64* %RAX.i564, align 8
  %1883 = load i64, i64* %RBP.i, align 8
  %1884 = add i64 %1883, -128
  %1885 = add i64 %1882, 8
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  store i32 1, i32* %1886, align 4
  %1887 = load i64, i64* %3, align 8
  %1888 = add i64 %1887, 11
  store i64 %1888, i64* %3, align 8
  br label %block_.L_45e45c

block_.L_45e456:                                  ; preds = %block_.L_45e435
  %1889 = load i64, i64* %RBP.i, align 8
  %1890 = add i64 %1889, -32
  %1891 = add i64 %1882, 3
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = zext i32 %1893 to i64
  store i64 %1894, i64* %RAX.i564, align 8
  %1895 = add i64 %1889, -128
  %1896 = add i64 %1882, 6
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i32*
  store i32 %1893, i32* %1897, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_45e45c

block_.L_45e45c:                                  ; preds = %block_.L_45e456, %block_45e449
  %1898 = phi i64 [ %.pre64, %block_.L_45e456 ], [ %1888, %block_45e449 ]
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -128
  %1901 = add i64 %1898, 3
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RAX.i564, align 8
  %1905 = add i64 %1899, -124
  %1906 = add i64 %1898, 6
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = zext i32 %1908 to i64
  store i64 %1909, i64* %RCX.i584, align 8
  %1910 = sub i32 %1908, %1903
  %1911 = icmp ult i32 %1908, %1903
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1910, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1903, %1908
  %1919 = xor i32 %1918, %1910
  %1920 = lshr i32 %1919, 4
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  store i8 %1922, i8* %26, align 1
  %1923 = icmp eq i32 %1910, 0
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %29, align 1
  %1925 = lshr i32 %1910, 31
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %32, align 1
  %1927 = lshr i32 %1908, 31
  %1928 = lshr i32 %1903, 31
  %1929 = xor i32 %1928, %1927
  %1930 = xor i32 %1925, %1927
  %1931 = add nuw nsw i32 %1930, %1929
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %38, align 1
  %1934 = icmp ne i8 %1926, 0
  %1935 = xor i1 %1934, %1932
  %.demorgan70 = or i1 %1923, %1935
  %.v85 = select i1 %.demorgan70, i64 14, i64 292
  %1936 = add i64 %1898, %.v85
  store i64 %1936, i64* %3, align 8
  br i1 %.demorgan70, label %block_45e46a, label %block_.L_45e580

block_45e46a:                                     ; preds = %block_.L_45e45c
  store i64 0, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1937 = add i64 %1899, -24
  %1938 = add i64 %1936, 5
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = sub i32 0, %1940
  %1942 = lshr i32 %1941, 31
  %1943 = sub i32 1, %1940
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RAX.i564, align 8
  %1945 = icmp eq i32 %1941, -1
  %1946 = icmp eq i32 %1943, 0
  %1947 = or i1 %1945, %1946
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1943, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1943, %1941
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %26, align 1
  %1958 = zext i1 %1946 to i8
  store i8 %1958, i8* %29, align 1
  %1959 = lshr i32 %1943, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %32, align 1
  %1961 = xor i32 %1959, %1942
  %1962 = add nuw nsw i32 %1961, %1959
  %1963 = icmp eq i32 %1962, 2
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %38, align 1
  %1965 = add i64 %1899, -8
  %1966 = add i64 %1936, 11
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i32*
  store i32 %1943, i32* %1967, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_45e475

block_.L_45e475:                                  ; preds = %block_45e481, %block_45e46a
  %1968 = phi i64 [ %2170, %block_45e481 ], [ %.pre65, %block_45e46a ]
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -8
  %1971 = add i64 %1968, 3
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RAX.i564, align 8
  %1975 = add i64 %1969, -24
  %1976 = add i64 %1968, 6
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = sub i32 %1973, %1978
  %1980 = lshr i32 %1979, 31
  %1981 = lshr i32 %1973, 31
  %1982 = lshr i32 %1978, 31
  %1983 = xor i32 %1982, %1981
  %1984 = xor i32 %1980, %1981
  %1985 = add nuw nsw i32 %1984, %1983
  %1986 = icmp eq i32 %1985, 2
  %1987 = icmp ne i32 %1980, 0
  %1988 = xor i1 %1987, %1986
  %.v71 = select i1 %1988, i64 12, i64 120
  %1989 = add i64 %1968, %.v71
  %1990 = add i64 %1989, 2
  store i64 %1990, i64* %3, align 8
  store i64 0, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1991 = add i64 %1989, 5
  store i64 %1991, i64* %3, align 8
  br i1 %1988, label %block_45e481, label %block_.L_45e4ed

block_45e481:                                     ; preds = %block_.L_45e475
  %1992 = load i32, i32* %1972, align 4
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RCX.i584, align 8
  %1994 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %1994, i64* %RDX.i909, align 8
  %1995 = add i64 %1969, -20
  %1996 = add i64 %1989, 17
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  %1998 = load i32, i32* %1997, align 4
  %1999 = sext i32 %1998 to i64
  store i64 %1999, i64* %RSI.i885, align 8
  %2000 = shl nsw i64 %1999, 2
  %2001 = add i64 %2000, %1994
  %2002 = add i64 %1989, 20
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  store i32 %1992, i32* %2003, align 4
  %2004 = load i64, i64* %RAX.i564, align 8
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -24
  %2007 = load i64, i64* %3, align 8
  %2008 = add i64 %2007, 3
  store i64 %2008, i64* %3, align 8
  %2009 = trunc i64 %2004 to i32
  %2010 = inttoptr i64 %2006 to i32*
  %2011 = load i32, i32* %2010, align 4
  %2012 = sub i32 %2009, %2011
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RAX.i564, align 8
  %2014 = icmp ult i32 %2009, %2011
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %14, align 1
  %2016 = and i32 %2012, 255
  %2017 = tail call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  store i8 %2020, i8* %21, align 1
  %2021 = xor i32 %2011, %2009
  %2022 = xor i32 %2021, %2012
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %26, align 1
  %2026 = icmp eq i32 %2012, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %29, align 1
  %2028 = lshr i32 %2012, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %32, align 1
  %2030 = lshr i32 %2009, 31
  %2031 = lshr i32 %2011, 31
  %2032 = xor i32 %2031, %2030
  %2033 = xor i32 %2028, %2030
  %2034 = add nuw nsw i32 %2033, %2032
  %2035 = icmp eq i32 %2034, 2
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %38, align 1
  %2037 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %2037, i64* %RDX.i909, align 8
  %2038 = add i64 %2005, -20
  %2039 = add i64 %2007, 14
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RCX.i584, align 8
  %2043 = add i32 %2041, 1
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %RDI.i653, align 8
  %2045 = icmp eq i32 %2041, -1
  %2046 = icmp eq i32 %2043, 0
  %2047 = or i1 %2045, %2046
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %14, align 1
  %2049 = and i32 %2043, 255
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  %2054 = xor i32 %2043, %2041
  %2055 = lshr i32 %2054, 4
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  store i8 %2057, i8* %26, align 1
  %2058 = zext i1 %2046 to i8
  store i8 %2058, i8* %29, align 1
  %2059 = lshr i32 %2043, 31
  %2060 = trunc i32 %2059 to i8
  store i8 %2060, i8* %32, align 1
  %2061 = lshr i32 %2041, 31
  %2062 = xor i32 %2059, %2061
  %2063 = add nuw nsw i32 %2062, %2059
  %2064 = icmp eq i32 %2063, 2
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %38, align 1
  %2066 = add i64 %2007, 22
  store i64 %2066, i64* %3, align 8
  store i32 %2043, i32* %2040, align 4
  %2067 = load i32, i32* %ECX.i628, align 4
  %2068 = load i64, i64* %3, align 8
  %2069 = sext i32 %2067 to i64
  store i64 %2069, i64* %RSI.i885, align 8
  %2070 = load i64, i64* %RDX.i909, align 8
  %2071 = shl nsw i64 %2069, 2
  %2072 = add i64 %2070, %2071
  %2073 = load i32, i32* %EAX.i911, align 4
  %2074 = add i64 %2068, 6
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2072 to i32*
  store i32 %2073, i32* %2075, align 4
  %2076 = load i64, i64* %RBP.i, align 8
  %2077 = add i64 %2076, -8
  %2078 = load i64, i64* %3, align 8
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2077 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %RAX.i564, align 8
  %2083 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %2083, i64* %RDX.i909, align 8
  %2084 = add i64 %2076, -20
  %2085 = add i64 %2078, 15
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = sext i32 %2087 to i64
  store i64 %2088, i64* %RSI.i885, align 8
  %2089 = shl nsw i64 %2088, 2
  %2090 = add i64 %2089, %2083
  %2091 = add i64 %2078, 18
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  store i32 %2081, i32* %2092, align 4
  %2093 = load i64, i64* %RBP.i, align 8
  %2094 = add i64 %2093, -24
  %2095 = load i64, i64* %3, align 8
  %2096 = add i64 %2095, 3
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2094 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = zext i32 %2098 to i64
  store i64 %2099, i64* %RAX.i564, align 8
  %2100 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %2100, i64* %RDX.i909, align 8
  %2101 = add i64 %2093, -20
  %2102 = add i64 %2095, 14
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RCX.i584, align 8
  %2106 = add i32 %2104, 1
  %2107 = zext i32 %2106 to i64
  store i64 %2107, i64* %RDI.i653, align 8
  %2108 = icmp eq i32 %2104, -1
  %2109 = icmp eq i32 %2106, 0
  %2110 = or i1 %2108, %2109
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %14, align 1
  %2112 = and i32 %2106, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i32 %2106, %2104
  %2118 = lshr i32 %2117, 4
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  store i8 %2120, i8* %26, align 1
  %2121 = zext i1 %2109 to i8
  store i8 %2121, i8* %29, align 1
  %2122 = lshr i32 %2106, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %32, align 1
  %2124 = lshr i32 %2104, 31
  %2125 = xor i32 %2122, %2124
  %2126 = add nuw nsw i32 %2125, %2122
  %2127 = icmp eq i32 %2126, 2
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %38, align 1
  %2129 = add i64 %2095, 22
  store i64 %2129, i64* %3, align 8
  store i32 %2106, i32* %2103, align 4
  %2130 = load i32, i32* %ECX.i628, align 4
  %2131 = load i64, i64* %3, align 8
  %2132 = sext i32 %2130 to i64
  store i64 %2132, i64* %RSI.i885, align 8
  %2133 = load i64, i64* %RDX.i909, align 8
  %2134 = shl nsw i64 %2132, 2
  %2135 = add i64 %2133, %2134
  %2136 = load i32, i32* %EAX.i911, align 4
  %2137 = add i64 %2131, 6
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2135 to i32*
  store i32 %2136, i32* %2138, align 4
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -8
  %2141 = load i64, i64* %3, align 8
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2140 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = add i32 %2144, 1
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RAX.i564, align 8
  %2147 = icmp eq i32 %2144, -1
  %2148 = icmp eq i32 %2145, 0
  %2149 = or i1 %2147, %2148
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %14, align 1
  %2151 = and i32 %2145, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %21, align 1
  %2156 = xor i32 %2145, %2144
  %2157 = lshr i32 %2156, 4
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %26, align 1
  %2160 = zext i1 %2148 to i8
  store i8 %2160, i8* %29, align 1
  %2161 = lshr i32 %2145, 31
  %2162 = trunc i32 %2161 to i8
  store i8 %2162, i8* %32, align 1
  %2163 = lshr i32 %2144, 31
  %2164 = xor i32 %2161, %2163
  %2165 = add nuw nsw i32 %2164, %2161
  %2166 = icmp eq i32 %2165, 2
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %38, align 1
  %2168 = add i64 %2141, 9
  store i64 %2168, i64* %3, align 8
  store i32 %2145, i32* %2143, align 4
  %2169 = load i64, i64* %3, align 8
  %2170 = add i64 %2169, -115
  store i64 %2170, i64* %3, align 8
  br label %block_.L_45e475

block_.L_45e4ed:                                  ; preds = %block_.L_45e475
  %2171 = load i32, i32* %1977, align 4
  %2172 = sub i32 0, %2171
  %2173 = zext i32 %2172 to i64
  store i64 %2173, i64* %RAX.i564, align 8
  %2174 = icmp ne i32 %2171, 0
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %14, align 1
  %2176 = and i32 %2172, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %21, align 1
  %2181 = xor i32 %2171, %2172
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  store i8 %2184, i8* %26, align 1
  %2185 = icmp eq i32 %2171, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %29, align 1
  %2187 = lshr i32 %2172, 31
  %2188 = trunc i32 %2187 to i8
  store i8 %2188, i8* %32, align 1
  %2189 = lshr i32 %2171, 31
  %2190 = add nuw nsw i32 %2187, %2189
  %2191 = icmp eq i32 %2190, 2
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %38, align 1
  %2193 = add i64 %1989, 8
  store i64 %2193, i64* %3, align 8
  store i32 %2172, i32* %1972, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_45e4f5

block_.L_45e4f5:                                  ; preds = %block_45e501, %block_.L_45e4ed
  %2194 = phi i64 [ %2405, %block_45e501 ], [ %.pre66, %block_.L_45e4ed ]
  %2195 = load i64, i64* %RBP.i, align 8
  %2196 = add i64 %2195, -8
  %2197 = add i64 %2194, 3
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = zext i32 %2199 to i64
  store i64 %2200, i64* %RAX.i564, align 8
  %2201 = add i64 %2195, -24
  %2202 = add i64 %2194, 6
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sub i32 %2199, %2204
  %2206 = icmp ult i32 %2199, %2204
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %14, align 1
  %2208 = and i32 %2205, 255
  %2209 = tail call i32 @llvm.ctpop.i32(i32 %2208)
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = xor i8 %2211, 1
  store i8 %2212, i8* %21, align 1
  %2213 = xor i32 %2204, %2199
  %2214 = xor i32 %2213, %2205
  %2215 = lshr i32 %2214, 4
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  store i8 %2217, i8* %26, align 1
  %2218 = icmp eq i32 %2205, 0
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %29, align 1
  %2220 = lshr i32 %2205, 31
  %2221 = trunc i32 %2220 to i8
  store i8 %2221, i8* %32, align 1
  %2222 = lshr i32 %2199, 31
  %2223 = lshr i32 %2204, 31
  %2224 = xor i32 %2223, %2222
  %2225 = xor i32 %2220, %2222
  %2226 = add nuw nsw i32 %2225, %2224
  %2227 = icmp eq i32 %2226, 2
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %38, align 1
  %2229 = icmp ne i8 %2221, 0
  %2230 = xor i1 %2229, %2227
  %.demorgan72 = or i1 %2218, %2230
  %.v73 = select i1 %.demorgan72, i64 12, i64 120
  %2231 = add i64 %2194, %.v73
  store i64 %2231, i64* %3, align 8
  br i1 %.demorgan72, label %block_45e501, label %block_.L_45e56d

block_45e501:                                     ; preds = %block_.L_45e4f5
  store i64 0, i64* %RAX.i564, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2232 = add i64 %2231, 5
  store i64 %2232, i64* %3, align 8
  %2233 = load i32, i32* %2203, align 4
  %2234 = sub i32 0, %2233
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RAX.i564, align 8
  %2236 = icmp ne i32 %2233, 0
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %14, align 1
  %2238 = and i32 %2234, 255
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %21, align 1
  %2243 = xor i32 %2233, %2234
  %2244 = lshr i32 %2243, 4
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  store i8 %2246, i8* %26, align 1
  %2247 = icmp eq i32 %2233, 0
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %29, align 1
  %2249 = lshr i32 %2234, 31
  %2250 = trunc i32 %2249 to i8
  store i8 %2250, i8* %32, align 1
  %2251 = lshr i32 %2233, 31
  %2252 = add nuw nsw i32 %2249, %2251
  %2253 = icmp eq i32 %2252, 2
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %38, align 1
  %2255 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %2255, i64* %RCX.i584, align 8
  %2256 = add i64 %2195, -20
  %2257 = add i64 %2231, 17
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  %2260 = sext i32 %2259 to i64
  store i64 %2260, i64* %RDX.i909, align 8
  %2261 = shl nsw i64 %2260, 2
  %2262 = add i64 %2261, %2255
  %2263 = add i64 %2231, 20
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2262 to i32*
  store i32 %2234, i32* %2264, align 4
  %2265 = load i64, i64* %RBP.i, align 8
  %2266 = add i64 %2265, -8
  %2267 = load i64, i64* %3, align 8
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %3, align 8
  %2269 = inttoptr i64 %2266 to i32*
  %2270 = load i32, i32* %2269, align 4
  %2271 = zext i32 %2270 to i64
  store i64 %2271, i64* %RAX.i564, align 8
  %2272 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %2272, i64* %RCX.i584, align 8
  %2273 = add i64 %2265, -20
  %2274 = add i64 %2267, 14
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i32*
  %2276 = load i32, i32* %2275, align 4
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RSI.i885, align 8
  %2278 = add i32 %2276, 1
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RDI.i653, align 8
  %2280 = icmp eq i32 %2276, -1
  %2281 = icmp eq i32 %2278, 0
  %2282 = or i1 %2280, %2281
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %14, align 1
  %2284 = and i32 %2278, 255
  %2285 = tail call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  store i8 %2288, i8* %21, align 1
  %2289 = xor i32 %2278, %2276
  %2290 = lshr i32 %2289, 4
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %26, align 1
  %2293 = zext i1 %2281 to i8
  store i8 %2293, i8* %29, align 1
  %2294 = lshr i32 %2278, 31
  %2295 = trunc i32 %2294 to i8
  store i8 %2295, i8* %32, align 1
  %2296 = lshr i32 %2276, 31
  %2297 = xor i32 %2294, %2296
  %2298 = add nuw nsw i32 %2297, %2294
  %2299 = icmp eq i32 %2298, 2
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %38, align 1
  %2301 = add i64 %2267, 22
  store i64 %2301, i64* %3, align 8
  store i32 %2278, i32* %2275, align 4
  %2302 = load i32, i32* %ESI.i878, align 4
  %2303 = load i64, i64* %3, align 8
  %2304 = sext i32 %2302 to i64
  store i64 %2304, i64* %RDX.i909, align 8
  %2305 = load i64, i64* %RCX.i584, align 8
  %2306 = shl nsw i64 %2304, 2
  %2307 = add i64 %2305, %2306
  %2308 = load i32, i32* %EAX.i911, align 4
  %2309 = add i64 %2303, 6
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2307 to i32*
  store i32 %2308, i32* %2310, align 4
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -24
  %2313 = load i64, i64* %3, align 8
  %2314 = add i64 %2313, 3
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2312 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = zext i32 %2316 to i64
  store i64 %2317, i64* %RAX.i564, align 8
  %2318 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %2318, i64* %RCX.i584, align 8
  %2319 = add i64 %2311, -20
  %2320 = add i64 %2313, 15
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i32*
  %2322 = load i32, i32* %2321, align 4
  %2323 = sext i32 %2322 to i64
  store i64 %2323, i64* %RDX.i909, align 8
  %2324 = shl nsw i64 %2323, 2
  %2325 = add i64 %2324, %2318
  %2326 = add i64 %2313, 18
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  store i32 %2316, i32* %2327, align 4
  %2328 = load i64, i64* %RBP.i, align 8
  %2329 = add i64 %2328, -8
  %2330 = load i64, i64* %3, align 8
  %2331 = add i64 %2330, 3
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2329 to i32*
  %2333 = load i32, i32* %2332, align 4
  %2334 = zext i32 %2333 to i64
  store i64 %2334, i64* %RAX.i564, align 8
  %2335 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %2335, i64* %RCX.i584, align 8
  %2336 = add i64 %2328, -20
  %2337 = add i64 %2330, 14
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  %2339 = load i32, i32* %2338, align 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RSI.i885, align 8
  %2341 = add i32 %2339, 1
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RDI.i653, align 8
  %2343 = icmp eq i32 %2339, -1
  %2344 = icmp eq i32 %2341, 0
  %2345 = or i1 %2343, %2344
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %14, align 1
  %2347 = and i32 %2341, 255
  %2348 = tail call i32 @llvm.ctpop.i32(i32 %2347)
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = xor i8 %2350, 1
  store i8 %2351, i8* %21, align 1
  %2352 = xor i32 %2341, %2339
  %2353 = lshr i32 %2352, 4
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  store i8 %2355, i8* %26, align 1
  %2356 = zext i1 %2344 to i8
  store i8 %2356, i8* %29, align 1
  %2357 = lshr i32 %2341, 31
  %2358 = trunc i32 %2357 to i8
  store i8 %2358, i8* %32, align 1
  %2359 = lshr i32 %2339, 31
  %2360 = xor i32 %2357, %2359
  %2361 = add nuw nsw i32 %2360, %2357
  %2362 = icmp eq i32 %2361, 2
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %38, align 1
  %2364 = add i64 %2330, 22
  store i64 %2364, i64* %3, align 8
  store i32 %2341, i32* %2338, align 4
  %2365 = load i32, i32* %ESI.i878, align 4
  %2366 = load i64, i64* %3, align 8
  %2367 = sext i32 %2365 to i64
  store i64 %2367, i64* %RDX.i909, align 8
  %2368 = load i64, i64* %RCX.i584, align 8
  %2369 = shl nsw i64 %2367, 2
  %2370 = add i64 %2368, %2369
  %2371 = load i32, i32* %EAX.i911, align 4
  %2372 = add i64 %2366, 6
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2370 to i32*
  store i32 %2371, i32* %2373, align 4
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -8
  %2376 = load i64, i64* %3, align 8
  %2377 = add i64 %2376, 3
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2375 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = add i32 %2379, 1
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i564, align 8
  %2382 = icmp eq i32 %2379, -1
  %2383 = icmp eq i32 %2380, 0
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = and i32 %2380, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %21, align 1
  %2391 = xor i32 %2380, %2379
  %2392 = lshr i32 %2391, 4
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  store i8 %2394, i8* %26, align 1
  %2395 = zext i1 %2383 to i8
  store i8 %2395, i8* %29, align 1
  %2396 = lshr i32 %2380, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %32, align 1
  %2398 = lshr i32 %2379, 31
  %2399 = xor i32 %2396, %2398
  %2400 = add nuw nsw i32 %2399, %2396
  %2401 = icmp eq i32 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %38, align 1
  %2403 = add i64 %2376, 9
  store i64 %2403, i64* %3, align 8
  store i32 %2380, i32* %2378, align 4
  %2404 = load i64, i64* %3, align 8
  %2405 = add i64 %2404, -115
  store i64 %2405, i64* %3, align 8
  br label %block_.L_45e4f5

block_.L_45e56d:                                  ; preds = %block_.L_45e4f5
  %2406 = add i64 %2231, 8
  store i64 %2406, i64* %3, align 8
  %2407 = load i32, i32* %2203, align 4
  %2408 = add i32 %2407, 1
  %2409 = zext i32 %2408 to i64
  store i64 %2409, i64* %RAX.i564, align 8
  %2410 = icmp eq i32 %2407, -1
  %2411 = icmp eq i32 %2408, 0
  %2412 = or i1 %2410, %2411
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %14, align 1
  %2414 = and i32 %2408, 255
  %2415 = tail call i32 @llvm.ctpop.i32(i32 %2414)
  %2416 = trunc i32 %2415 to i8
  %2417 = and i8 %2416, 1
  %2418 = xor i8 %2417, 1
  store i8 %2418, i8* %21, align 1
  %2419 = xor i32 %2408, %2407
  %2420 = lshr i32 %2419, 4
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  store i8 %2422, i8* %26, align 1
  %2423 = zext i1 %2411 to i8
  store i8 %2423, i8* %29, align 1
  %2424 = lshr i32 %2408, 31
  %2425 = trunc i32 %2424 to i8
  store i8 %2425, i8* %32, align 1
  %2426 = lshr i32 %2407, 31
  %2427 = xor i32 %2424, %2426
  %2428 = add nuw nsw i32 %2427, %2424
  %2429 = icmp eq i32 %2428, 2
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %38, align 1
  %2431 = add i64 %2231, 14
  store i64 %2431, i64* %3, align 8
  store i32 %2408, i32* %2203, align 4
  %2432 = load i64, i64* %3, align 8
  %2433 = add i64 %2432, -326
  store i64 %2433, i64* %3, align 8
  br label %block_.L_45e435

block_.L_45e580:                                  ; preds = %block_.L_45e45c
  %2434 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2434, i64* %RAX.i564, align 8
  %2435 = add i64 %2434, 3292
  %2436 = add i64 %1936, 15
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  store i8 0, i8* %14, align 1
  %2439 = and i32 %2438, 255
  %2440 = tail call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  store i8 %2443, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2444 = icmp eq i32 %2438, 0
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %29, align 1
  %2446 = lshr i32 %2438, 31
  %2447 = trunc i32 %2446 to i8
  store i8 %2447, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v86 = select i1 %2444, i64 21, i64 26
  %2448 = add i64 %1936, %.v86
  store i64 %2448, i64* %3, align 8
  br i1 %2444, label %block_45e595, label %block_.L_45e59a

block_45e595:                                     ; preds = %block_.L_45e580
  %2449 = add i64 %2448, -16789
  %2450 = add i64 %2448, 5
  %2451 = load i64, i64* %6, align 8
  %2452 = add i64 %2451, -8
  %2453 = inttoptr i64 %2452 to i64*
  store i64 %2450, i64* %2453, align 8
  store i64 %2452, i64* %6, align 8
  store i64 %2449, i64* %3, align 8
  %call2_45e595 = tail call %struct.Memory* @sub_45a400.InitializeFastFullIntegerSearch(%struct.State* nonnull %0, i64 %2449, %struct.Memory* %1714)
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_45e59a

block_.L_45e59a:                                  ; preds = %block_.L_45e580, %block_45e595
  %2454 = phi i64 [ %2448, %block_.L_45e580 ], [ %.pre67, %block_45e595 ]
  %MEMORY.17 = phi %struct.Memory* [ %1714, %block_.L_45e580 ], [ %call2_45e595, %block_45e595 ]
  %2455 = load i64, i64* %6, align 8
  %2456 = add i64 %2455, 128
  store i64 %2456, i64* %6, align 8
  %2457 = icmp ugt i64 %2455, -129
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %14, align 1
  %2459 = trunc i64 %2456 to i32
  %2460 = and i32 %2459, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %21, align 1
  %2465 = xor i64 %2456, %2455
  %2466 = lshr i64 %2465, 4
  %2467 = trunc i64 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %26, align 1
  %2469 = icmp eq i64 %2456, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %29, align 1
  %2471 = lshr i64 %2456, 63
  %2472 = trunc i64 %2471 to i8
  store i8 %2472, i8* %32, align 1
  %2473 = lshr i64 %2455, 63
  %2474 = xor i64 %2471, %2473
  %2475 = add nuw nsw i64 %2474, %2471
  %2476 = icmp eq i64 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %38, align 1
  %2478 = add i64 %2454, 8
  store i64 %2478, i64* %3, align 8
  %2479 = add i64 %2455, 136
  %2480 = inttoptr i64 %2456 to i64*
  %2481 = load i64, i64* %2480, align 8
  store i64 %2481, i64* %RBP.i, align 8
  store i64 %2479, i64* %6, align 8
  %2482 = add i64 %2454, 9
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2479 to i64*
  %2484 = load i64, i64* %2483, align 8
  store i64 %2484, i64* %3, align 8
  %2485 = add i64 %2455, 144
  store i64 %2485, i64* %6, align 8
  ret %struct.Memory* %MEMORY.17
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_cmpl_0x11bf0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72688
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
define %struct.Memory* @routine_jle_.L_45df79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45df90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72688
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x20__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl_0x24__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
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
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_45dfe1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x9___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45dff9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
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
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RCX, align 8
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
define %struct.Memory* @routine_jle_.L_45e01f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x5380c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5380c__rip__type* @G_0x5380c__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd_0x5385a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5385a__rip__type* @G_0x5385a__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.floor_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movsd_0x53791__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x53791__rip__type* @G_0x53791__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd_0x537d8__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x537d8__rip__type* @G_0x537d8__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ceil_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl__eax__0x6d1fac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x6d09a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
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
define %struct.Memory* @routine_jne_.L_45e146(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2240___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2240_type* @G__0x4c2240 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rax__0x711c50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45e177(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c226b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c226b_type* @G__0x4c226b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d1fac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax__0x6f8f00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45e1b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2296___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2296_type* @G__0x4c2296 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movq__rax__0x6f9718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45e1e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c22b8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c22b8_type* @G__0x4c22b8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movq__rax__0x726840(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45e216(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c22db___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c22db_type* @G__0x4c22db to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6f9698___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f9698_type* @G__0x6f9698 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4, i64* %3, align 8
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
define %struct.Memory* @routine_callq_.get_mem4Dint(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d1fac___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f8f00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %R9, align 8
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
define %struct.Memory* @routine_addq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movq__rdi__0x6f8f00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x726840___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__0x726840(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_jg_.L_45e320(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jge_.L_45e30d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6f8f00___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e2ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e312(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e2a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9718___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jg_.L_45e3a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45e392(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6f9718___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_45e366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e397(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e335(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x726840___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45e40b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x726840___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e3ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x711c50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d09a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_45e456(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45e45c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_jg_.L_45e580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jge_.L_45e4ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d09a0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x711c50___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_45e475(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45e56d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d09a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x711c50___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e4f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45e572(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_45e435(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3292
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
define %struct.Memory* @routine_jne_.L_45e59a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.InitializeFastFullIntegerSearch(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
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
