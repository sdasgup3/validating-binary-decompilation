; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x34d8e__rip__type = type <{ [8 x i8] }>
%G_0x34dc6__rip__type = type <{ [8 x i8] }>
%G_0x34e56__rip__type = type <{ [8 x i8] }>
%G_0x34fc6__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cc5d8_type = type <{ [4 x i8] }>
%G_0x6cc5dc_type = type <{ [4 x i8] }>
%G_0x6cc5e0_type = type <{ [4 x i8] }>
%G_0x6ccf88_type = type <{ [8 x i8] }>
%G_0x6cd3a8_type = type <{ [4 x i8] }>
%G_0x6cd474_type = type <{ [4 x i8] }>
%G_0x6d1278_type = type <{ [4 x i8] }>
%G_0x6d1fb0_type = type <{ [8 x i8] }>
%G_0x6f8f08_type = type <{ [4 x i8] }>
%G_0x6f9348_type = type <{ [4 x i8] }>
%G_0x6f9708_type = type <{ [4 x i8] }>
%G_0x70d190_type = type <{ [4 x i8] }>
%G_0x70e8d8_type = type <{ [8 x i8] }>
%G_0x70fce0_type = type <{ [4 x i8] }>
%G_0x710360_type = type <{ [4 x i8] }>
%G_0x710364_type = type <{ [4 x i8] }>
%G_0x710a48_type = type <{ [8 x i8] }>
%G_0x711c48_type = type <{ [4 x i8] }>
%G_0x722fd8_type = type <{ [4 x i8] }>
%G_0x7236c0_type = type <{ [4 x i8] }>
%G_0x724744_type = type <{ [4 x i8] }>
%G_0x725318_type = type <{ [4 x i8] }>
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
@G_0x34d8e__rip_ = global %G_0x34d8e__rip__type zeroinitializer
@G_0x34dc6__rip_ = global %G_0x34dc6__rip__type zeroinitializer
@G_0x34e56__rip_ = global %G_0x34e56__rip__type zeroinitializer
@G_0x34fc6__rip_ = global %G_0x34fc6__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cc5d8 = local_unnamed_addr global %G_0x6cc5d8_type zeroinitializer
@G_0x6cc5dc = local_unnamed_addr global %G_0x6cc5dc_type zeroinitializer
@G_0x6cc5e0 = local_unnamed_addr global %G_0x6cc5e0_type zeroinitializer
@G_0x6ccf88 = local_unnamed_addr global %G_0x6ccf88_type zeroinitializer
@G_0x6cd3a8 = local_unnamed_addr global %G_0x6cd3a8_type zeroinitializer
@G_0x6cd474 = local_unnamed_addr global %G_0x6cd474_type zeroinitializer
@G_0x6d1278 = local_unnamed_addr global %G_0x6d1278_type zeroinitializer
@G_0x6d1fb0 = local_unnamed_addr global %G_0x6d1fb0_type zeroinitializer
@G_0x6f8f08 = local_unnamed_addr global %G_0x6f8f08_type zeroinitializer
@G_0x6f9348 = local_unnamed_addr global %G_0x6f9348_type zeroinitializer
@G_0x6f9708 = local_unnamed_addr global %G_0x6f9708_type zeroinitializer
@G_0x70d190 = local_unnamed_addr global %G_0x70d190_type zeroinitializer
@G_0x70e8d8 = local_unnamed_addr global %G_0x70e8d8_type zeroinitializer
@G_0x70fce0 = local_unnamed_addr global %G_0x70fce0_type zeroinitializer
@G_0x710360 = local_unnamed_addr global %G_0x710360_type zeroinitializer
@G_0x710364 = local_unnamed_addr global %G_0x710364_type zeroinitializer
@G_0x710a48 = local_unnamed_addr global %G_0x710a48_type zeroinitializer
@G_0x711c48 = local_unnamed_addr global %G_0x711c48_type zeroinitializer
@G_0x722fd8 = local_unnamed_addr global %G_0x722fd8_type zeroinitializer
@G_0x7236c0 = local_unnamed_addr global %G_0x7236c0_type zeroinitializer
@G_0x724744 = local_unnamed_addr global %G_0x724744_type zeroinitializer
@G_0x725318 = local_unnamed_addr global %G_0x725318_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @rc_init_GOP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %18 to i32*
  %19 = add i64 %7, -12
  %20 = load i32, i32* %EDI.i, align 4
  %21 = add i64 %10, 10
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -8
  %26 = load i32, i32* %ESI.i, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -12
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 7
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %31 to i32*
  store i32 0, i32* %34, align 4
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 8
  %37 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %38 = and i32 %37, 255
  %39 = tail call i32 @llvm.ctpop.i32(i32 %38)
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  store i8 %42, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %43 = icmp eq i32 %37, 0
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %15, align 1
  %45 = lshr i32 %37, 31
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %47 = icmp ne i8 %46, 0
  %.v = select i1 %47, i64 6, i64 13
  %48 = add i64 %36, %.v
  store i64 %48, i64* %3, align 8
  br i1 %47, label %block_47c8b3, label %block_.L_47c8ba

block_47c8b3:                                     ; preds = %entry
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -12
  %51 = add i64 %48, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 1, i32* %52, align 4
  %.pre = load i64, i64* %3, align 8
  %.pre11 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  br label %block_.L_47c8ba

block_.L_47c8ba:                                  ; preds = %entry, %block_47c8b3
  %53 = phi i32 [ %37, %entry ], [ %.pre11, %block_47c8b3 ]
  %54 = phi i64 [ %48, %entry ], [ %.pre, %block_47c8b3 ]
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %56 = bitcast [32 x %union.VectorReg]* %55 to i8*
  %57 = add i64 %54, ptrtoint (%G_0x34fc6__rip__type* @G_0x34fc6__rip_ to i64)
  %58 = add i64 %54, 8
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = bitcast [32 x %union.VectorReg]* %55 to double*
  %62 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %55, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %60, i64* %62, align 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %64 = bitcast i64* %63 to double*
  store double 0.000000e+00, double* %64, align 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i402 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %66 = sub i32 0, %53
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RAX.i402, align 8
  %68 = icmp ne i32 %53, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %12, align 1
  %70 = and i32 %66, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %13, align 1
  %75 = xor i32 %53, %66
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %14, align 1
  %79 = icmp eq i32 %53, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %15, align 1
  %81 = lshr i32 %66, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %16, align 1
  %83 = lshr i32 %53, 31
  %84 = add nuw nsw i32 %81, %83
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %17, align 1
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -16
  %89 = add i64 %54, 20
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  store i32 %66, i32* %90, align 4
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %92 = load i64, i64* %3, align 8
  %93 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %94 = sitofp i32 %93 to double
  %95 = bitcast %union.VectorReg* %91 to double*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %97 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %98 = bitcast %union.VectorReg* %96 to double*
  %99 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %96, i64 0, i32 0, i32 0, i32 0, i64 0
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %101 = bitcast i64* %100 to double*
  %102 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %103 = fdiv double %97, %102
  store double %103, double* %98, align 1
  store i64 0, i64* %100, align 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %105 = fadd double %94, %103
  %RCX.i384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %106 = tail call double @llvm.trunc.f64(double %105)
  %107 = tail call double @llvm.fabs.f64(double %106)
  %108 = fcmp ogt double %107, 0x43E0000000000000
  %109 = fptosi double %106 to i64
  %110 = select i1 %108, i64 -9223372036854775808, i64 %109
  store i64 %110, i64* bitcast (%G_0x710a48_type* @G_0x710a48 to i64*), align 8
  %111 = load double, double* inttoptr (i64 7303032 to double*), align 8
  %112 = fadd double %94, %111
  store double %112, double* %95, align 1
  %113 = tail call double @llvm.trunc.f64(double %112)
  %114 = tail call double @llvm.fabs.f64(double %113)
  %115 = fcmp ogt double %114, 0x43E0000000000000
  %116 = fptosi double %113 to i64
  %117 = select i1 %115, i64 -9223372036854775808, i64 %116
  store i64 %117, i64* %RCX.i384, align 8
  store i64 %117, i64* bitcast (%G_0x70e8d8_type* @G_0x70e8d8 to i64*), align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -4
  %120 = add i64 %92, 78
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, 1
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RAX.i402, align 8
  %125 = icmp eq i32 %122, -1
  %126 = icmp eq i32 %123, 0
  %127 = or i1 %125, %126
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %12, align 1
  %129 = and i32 %123, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %13, align 1
  %134 = xor i32 %123, %122
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %14, align 1
  %138 = zext i1 %126 to i8
  store i8 %138, i8* %15, align 1
  %139 = lshr i32 %123, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %16, align 1
  %141 = lshr i32 %122, 31
  %142 = xor i32 %139, %141
  %143 = add nuw nsw i32 %142, %139
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %17, align 1
  %146 = add i64 %118, -8
  %147 = add i64 %92, 84
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, %123
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX.i402, align 8
  %152 = icmp ult i32 %150, %123
  %153 = icmp ult i32 %150, %149
  %154 = or i1 %152, %153
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %12, align 1
  %156 = and i32 %150, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %13, align 1
  %161 = xor i32 %149, %123
  %162 = xor i32 %161, %150
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %14, align 1
  %166 = icmp eq i32 %150, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %15, align 1
  %168 = lshr i32 %150, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %16, align 1
  %170 = lshr i32 %149, 31
  %171 = xor i32 %168, %139
  %172 = xor i32 %168, %170
  %173 = add nuw nsw i32 %171, %172
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %17, align 1
  %176 = sitofp i32 %150 to double
  %177 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %178 = fmul double %176, %177
  %179 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %180 = fdiv double %178, %179
  %181 = load double, double* %61, align 1
  %182 = fadd double %180, %181
  store double %182, double* %95, align 1
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -40
  %185 = add i64 %92, 115
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to double*
  store double %181, double* %186, align 8
  %187 = load i64, i64* %3, align 8
  %188 = bitcast %union.VectorReg* %91 to <2 x i32>*
  %189 = load <2 x i32>, <2 x i32>* %188, align 1
  %190 = bitcast i64* %104 to <2 x i32>*
  %191 = load <2 x i32>, <2 x i32>* %190, align 1
  %192 = extractelement <2 x i32> %189, i32 0
  %193 = bitcast [32 x %union.VectorReg]* %55 to i32*
  store i32 %192, i32* %193, align 1
  %194 = extractelement <2 x i32> %189, i32 1
  %195 = getelementptr inbounds i8, i8* %56, i64 4
  %196 = bitcast i8* %195 to i32*
  store i32 %194, i32* %196, align 1
  %197 = extractelement <2 x i32> %191, i32 0
  %198 = bitcast i64* %63 to i32*
  store i32 %197, i32* %198, align 1
  %199 = extractelement <2 x i32> %191, i32 1
  %200 = getelementptr inbounds i8, i8* %56, i64 12
  %201 = bitcast i8* %200 to i32*
  store i32 %199, i32* %201, align 1
  %202 = add i64 %187, -505745
  %203 = add i64 %187, 8
  %204 = load i64, i64* %6, align 8
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %203, i64* %206, align 8
  store i64 %205, i64* %6, align 8
  store i64 %202, i64* %3, align 8
  %207 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  %208 = load i64, i64* %3, align 8
  %209 = load double, double* %61, align 1
  %210 = tail call double @llvm.trunc.f64(double %209)
  %211 = tail call double @llvm.fabs.f64(double %210)
  %212 = fcmp ogt double %211, 0x41DFFFFFFFC00000
  %213 = fptosi double %210 to i32
  %214 = zext i32 %213 to i64
  %215 = select i1 %212, i64 2147483648, i64 %214
  store i64 %215, i64* %RAX.i402, align 8
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -24
  %218 = trunc i64 %215 to i32
  %219 = add i64 %208, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i32*
  store i32 %218, i32* %220, align 4
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -24
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 3
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %228 = add i32 %227, %226
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RAX.i402, align 8
  %230 = icmp ult i32 %228, %226
  %231 = icmp ult i32 %228, %227
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %12, align 1
  %234 = and i32 %228, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %13, align 1
  %239 = xor i32 %227, %226
  %240 = xor i32 %239, %228
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %14, align 1
  %244 = icmp eq i32 %228, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %15, align 1
  %246 = lshr i32 %228, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %16, align 1
  %248 = lshr i32 %226, 31
  %249 = lshr i32 %227, 31
  %250 = xor i32 %246, %248
  %251 = xor i32 %246, %249
  %252 = add nuw nsw i32 %250, %251
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %17, align 1
  store i32 %228, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %255 = add i64 %221, -4
  %256 = add i64 %223, 20
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX.i402, align 8
  store i32 %258, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %260 = add i64 %221, -8
  %261 = add i64 %223, 30
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RAX.i402, align 8
  store i32 %263, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %265 = add i64 %221, -16
  %266 = add i64 %223, 40
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 3
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i402, align 8
  %271 = lshr i32 %268, 29
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %12, align 1
  %274 = and i32 %269, 248
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %279 = icmp eq i32 %269, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %15, align 1
  %281 = lshr i32 %268, 28
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %285 = sext i32 %269 to i64
  %286 = lshr i64 %285, 32
  store i64 %286, i64* %284, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -24
  %289 = add i64 %223, 47
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = shl nuw i64 %286, 32
  %294 = or i64 %293, %270
  %295 = sdiv i64 %294, %292
  %296 = shl i64 %295, 32
  %297 = ashr exact i64 %296, 32
  %298 = icmp eq i64 %295, %297
  br i1 %298, label %301, label %299

; <label>:299:                                    ; preds = %block_.L_47c8ba
  %EAX.i401 = bitcast %union.anon* %65 to i32*
  %300 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %289, %struct.Memory* %207)
  %.pre12 = load i32, i32* %EAX.i401, align 4
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x18__rbp_.exit

; <label>:301:                                    ; preds = %block_.L_47c8ba
  %302 = srem i64 %294, %292
  %303 = and i64 %295, 4294967295
  store i64 %303, i64* %RAX.i402, align 8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %305 = and i64 %302, 4294967295
  store i64 %305, i64* %304, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %306 = trunc i64 %295 to i32
  br label %routine_idivl_MINUS0x18__rbp_.exit

routine_idivl_MINUS0x18__rbp_.exit:               ; preds = %301, %299
  %307 = phi i64 [ %.pre14, %299 ], [ %287, %301 ]
  %308 = phi i64 [ %.pre13, %299 ], [ %289, %301 ]
  %309 = phi i32 [ %.pre12, %299 ], [ %306, %301 ]
  %310 = phi %struct.Memory* [ %300, %299 ], [ %207, %301 ]
  %311 = sitofp i32 %309 to double
  store double %311, double* %61, align 1
  %312 = add i64 %307, -40
  %313 = add i64 %308, 9
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i64*
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %91, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %315, i64* %316, align 1
  %317 = bitcast i64* %104 to double*
  store double 0.000000e+00, double* %317, align 1
  %318 = bitcast i64 %315 to double
  %319 = fadd double %311, %318
  store double %319, double* %61, align 1
  %320 = tail call double @llvm.trunc.f64(double %319)
  %321 = tail call double @llvm.fabs.f64(double %320)
  %322 = fcmp ogt double %321, 0x41DFFFFFFFC00000
  %323 = fptosi double %320 to i32
  %324 = zext i32 %323 to i64
  %325 = select i1 %322, i64 2147483648, i64 %324
  store i64 %325, i64* %RAX.i402, align 8
  %326 = add i64 %307, -20
  %327 = trunc i64 %325 to i32
  %328 = add i64 %308, 20
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %326 to i32*
  store i32 %327, i32* %329, align 4
  %330 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x710360_type* @G_0x710360 to i32*), align 8
  %331 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %331, i64* %RCX.i384, align 8
  %332 = add i64 %331, 72612
  %333 = add i64 %330, 29
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  store i32 1, i32* %334, align 4
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -4
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, 3
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX.i402, align 8
  store i32 %340, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  %342 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %342, i64* %RCX.i384, align 8
  %343 = add i64 %342, 72568
  %344 = add i64 %337, 24
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = add i32 %346, 1
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX.i402, align 8
  %349 = icmp eq i32 %346, -1
  %350 = icmp eq i32 %347, 0
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %12, align 1
  %353 = and i32 %347, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %13, align 1
  %358 = xor i32 %347, %346
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %14, align 1
  %362 = zext i1 %350 to i8
  store i8 %362, i8* %15, align 1
  %363 = lshr i32 %347, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %16, align 1
  %365 = lshr i32 %346, 31
  %366 = xor i32 %363, %365
  %367 = add nuw nsw i32 %366, %363
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %17, align 1
  %370 = add i64 %337, 33
  store i64 %370, i64* %3, align 8
  store i32 %347, i32* %345, align 4
  %371 = load i64, i64* %3, align 8
  %372 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %372, i64* %RCX.i384, align 8
  %373 = add i64 %372, 72568
  %374 = add i64 %371, 15
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, -1
  %378 = icmp eq i32 %376, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %12, align 1
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %13, align 1
  %385 = xor i32 %377, %376
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %14, align 1
  %389 = icmp eq i32 %377, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %15, align 1
  %391 = lshr i32 %377, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %16, align 1
  %393 = lshr i32 %376, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %393
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %17, align 1
  %.v23 = select i1 %389, i64 21, i64 78
  %398 = add i64 %371, %.v23
  %399 = add i64 %398, 8
  store i64 %399, i64* %3, align 8
  %400 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %400, i64* %RAX.i402, align 8
  br i1 %389, label %block_47c9e6, label %block_.L_47ca1f

block_47c9e6:                                     ; preds = %routine_idivl_MINUS0x18__rbp_.exit
  %401 = add i64 %400, 3244
  %402 = add i64 %398, 14
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i32 %404, i32* bitcast (%G_0x6cd474_type* @G_0x6cd474 to i32*), align 8
  %406 = add i32 %404, -1
  %407 = icmp eq i32 %404, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %12, align 1
  %409 = and i32 %406, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %13, align 1
  %414 = xor i32 %406, %404
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %14, align 1
  %418 = icmp eq i32 %406, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %15, align 1
  %420 = lshr i32 %406, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %16, align 1
  %422 = lshr i32 %404, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %17, align 1
  store i32 %406, i32* bitcast (%G_0x70d190_type* @G_0x70d190 to i32*), align 8
  store i64 %405, i64* %RCX.i384, align 8
  store i32 %404, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  %427 = add i64 %398, 723
  store i64 %427, i64* %3, align 8
  br label %block_.L_47ccb9

block_.L_47ca1f:                                  ; preds = %routine_idivl_MINUS0x18__rbp_.exit
  %428 = add i64 %400, 2880
  %429 = add i64 %398, 15
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = add i32 %431, -2
  %433 = icmp ult i32 %431, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %12, align 1
  %435 = and i32 %432, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %13, align 1
  %440 = xor i32 %432, %431
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %14, align 1
  %444 = icmp eq i32 %432, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %15, align 1
  %446 = lshr i32 %432, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %16, align 1
  %448 = lshr i32 %431, 31
  %449 = xor i32 %446, %448
  %450 = add nuw nsw i32 %449, %448
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %17, align 1
  %.v24 = select i1 %444, i64 42, i64 21
  %453 = add i64 %398, %.v24
  store i64 %453, i64* %3, align 8
  br i1 %444, label %block_.L_47ca49, label %block_47ca34

block_47ca34:                                     ; preds = %block_.L_47ca1f
  store i64 %400, i64* %RAX.i402, align 8
  %454 = add i64 %400, 2884
  %455 = add i64 %453, 15
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  store i8 0, i8* %12, align 1
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %463 = icmp eq i32 %457, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %15, align 1
  %465 = lshr i32 %457, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v25 = select i1 %463, i64 134, i64 21
  %467 = add i64 %453, %.v25
  store i64 %467, i64* %3, align 8
  br i1 %463, label %block_.L_47caba, label %block_.L_47ca49

block_.L_47ca49:                                  ; preds = %block_47ca34, %block_.L_47ca1f
  %468 = phi i64 [ %467, %block_47ca34 ], [ %453, %block_.L_47ca1f ]
  store i64 %372, i64* %RAX.i402, align 8
  %469 = add i64 %372, 72604
  %470 = add i64 %468, 15
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = add i32 %472, -1
  %474 = icmp eq i32 %472, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %12, align 1
  %476 = and i32 %473, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %13, align 1
  %481 = xor i32 %473, %472
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %14, align 1
  %485 = icmp eq i32 %473, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %15, align 1
  %487 = lshr i32 %473, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %16, align 1
  %489 = lshr i32 %472, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %17, align 1
  %.v26 = select i1 %485, i64 21, i64 67
  %494 = add i64 %468, %.v26
  %495 = add i64 %494, 7
  store i64 %495, i64* %3, align 8
  br i1 %485, label %block_47ca5e, label %block_.L_47ca8c

block_47ca5e:                                     ; preds = %block_.L_47ca49
  %496 = load i32, i32* bitcast (%G_0x6f9708_type* @G_0x6f9708 to i32*), align 8
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i402, align 8
  store i64 %372, i64* %RCX.i384, align 8
  %498 = add i64 %372, 72572
  %499 = add i64 %494, 21
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, %496
  %503 = icmp ult i32 %502, %496
  %504 = icmp ult i32 %502, %501
  %505 = or i1 %503, %504
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %12, align 1
  %507 = and i32 %502, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %13, align 1
  %512 = xor i32 %501, %496
  %513 = xor i32 %512, %502
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %14, align 1
  %517 = icmp eq i32 %502, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %15, align 1
  %519 = lshr i32 %502, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %16, align 1
  %521 = lshr i32 %496, 31
  %522 = lshr i32 %501, 31
  %523 = xor i32 %519, %521
  %524 = xor i32 %519, %522
  %525 = add nuw nsw i32 %523, %524
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %17, align 1
  %528 = add i64 %494, 27
  store i64 %528, i64* %3, align 8
  store i32 %502, i32* %500, align 4
  %529 = load i64, i64* %3, align 8
  %530 = load i32, i32* bitcast (%G_0x6f9708_type* @G_0x6f9708 to i32*), align 8
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RAX.i402, align 8
  store i32 %530, i32* bitcast (%G_0x6f9348_type* @G_0x6f9348 to i32*), align 8
  %532 = add i64 %529, 60
  store i64 %532, i64* %3, align 8
  br label %block_.L_47cab5

block_.L_47ca8c:                                  ; preds = %block_.L_47ca49
  %533 = load i32, i32* bitcast (%G_0x7236c0_type* @G_0x7236c0 to i32*), align 8
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i402, align 8
  store i64 %372, i64* %RCX.i384, align 8
  %535 = add i64 %372, 72572
  %536 = add i64 %494, 21
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = add i32 %538, %533
  %540 = icmp ult i32 %539, %533
  %541 = icmp ult i32 %539, %538
  %542 = or i1 %540, %541
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %12, align 1
  %544 = and i32 %539, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %13, align 1
  %549 = xor i32 %538, %533
  %550 = xor i32 %549, %539
  %551 = lshr i32 %550, 4
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  store i8 %553, i8* %14, align 1
  %554 = icmp eq i32 %539, 0
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %15, align 1
  %556 = lshr i32 %539, 31
  %557 = trunc i32 %556 to i8
  store i8 %557, i8* %16, align 1
  %558 = lshr i32 %533, 31
  %559 = lshr i32 %538, 31
  %560 = xor i32 %556, %558
  %561 = xor i32 %556, %559
  %562 = add nuw nsw i32 %560, %561
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %17, align 1
  %565 = add i64 %494, 27
  store i64 %565, i64* %3, align 8
  store i32 %539, i32* %537, align 4
  %566 = load i64, i64* %3, align 8
  %567 = load i32, i32* bitcast (%G_0x7236c0_type* @G_0x7236c0 to i32*), align 8
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i402, align 8
  %569 = add i64 %566, 14
  store i64 %569, i64* %3, align 8
  store i32 %567, i32* bitcast (%G_0x6f9348_type* @G_0x6f9348 to i32*), align 8
  br label %block_.L_47cab5

block_.L_47cab5:                                  ; preds = %block_.L_47ca8c, %block_47ca5e
  %570 = phi i64 [ %569, %block_.L_47ca8c ], [ %532, %block_47ca5e ]
  %571 = add i64 %570, 5
  store i64 %571, i64* %3, align 8
  %.pre15 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_47caba

block_.L_47caba:                                  ; preds = %block_.L_47cab5, %block_47ca34
  %572 = phi i64 [ %.pre15, %block_.L_47cab5 ], [ %372, %block_47ca34 ]
  %573 = phi i64 [ %571, %block_.L_47cab5 ], [ %467, %block_47ca34 ]
  %574 = add i64 %573, ptrtoint (%G_0x34dc6__rip__type* @G_0x34dc6__rip_ to i64)
  %575 = add i64 %573, 8
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %62, align 1
  store double 0.000000e+00, double* %64, align 1
  %578 = add i64 %573, add (i64 ptrtoint (%G_0x34e56__rip__type* @G_0x34e56__rip_ to i64), i64 8)
  %579 = add i64 %573, 16
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %316, align 1
  store double 0.000000e+00, double* %317, align 1
  %582 = add i64 %573, add (i64 ptrtoint (%G_0x34d8e__rip__type* @G_0x34d8e__rip_ to i64), i64 16)
  %583 = add i64 %573, 24
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %99, align 1
  store double 0.000000e+00, double* %101, align 1
  store i64 %572, i64* %RAX.i402, align 8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %587 = add i64 %572, 72572
  %588 = add i64 %573, 40
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = sitofp i32 %590 to double
  %592 = bitcast %union.VectorReg* %586 to double*
  store double %591, double* %592, align 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %594 = bitcast %union.VectorReg* %593 to i8*
  %595 = bitcast i64 %585 to <2 x i32>
  %596 = extractelement <2 x i32> %595, i32 0
  %597 = bitcast %union.VectorReg* %593 to i32*
  store i32 %596, i32* %597, align 1
  %598 = extractelement <2 x i32> %595, i32 1
  %599 = getelementptr inbounds i8, i8* %594, i64 4
  %600 = bitcast i8* %599 to i32*
  store i32 %598, i32* %600, align 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %602 = bitcast i64* %601 to i32*
  store i32 0, i32* %602, align 1
  %603 = getelementptr inbounds i8, i8* %594, i64 12
  %604 = bitcast i8* %603 to i32*
  store i32 0, i32* %604, align 1
  %605 = bitcast %union.VectorReg* %593 to double*
  %606 = load double, double* %605, align 1
  %607 = fmul double %606, %591
  store double %607, double* %605, align 1
  store i64 %572, i64* %RAX.i402, align 8
  %608 = add i64 %572, 72576
  %609 = add i64 %573, 63
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sitofp i32 %611 to double
  store double %612, double* %592, align 1
  %613 = fdiv double %607, %612
  %614 = bitcast i64 %577 to double
  %615 = fadd double %613, %614
  store double %615, double* %605, align 1
  %616 = tail call double @llvm.trunc.f64(double %615)
  %617 = tail call double @llvm.fabs.f64(double %616)
  %618 = fcmp ogt double %617, 0x41DFFFFFFFC00000
  %619 = fptosi double %616 to i32
  %620 = zext i32 %619 to i64
  %621 = select i1 %618, i64 2147483648, i64 %620
  store i64 %621, i64* %RCX.i384, align 8
  %622 = trunc i64 %621 to i32
  store i32 %622, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %623 = load i64, i64* %RBP.i, align 8
  %624 = add i64 %623, -4
  %625 = add i64 %573, 85
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RCX.i384, align 8
  %629 = add i64 %623, -8
  %630 = add i64 %573, 88
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i32 %632, %627
  %634 = lshr i32 %633, 31
  %635 = add i32 %633, 1
  %636 = icmp eq i32 %633, -1
  %637 = icmp eq i32 %635, 0
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %12, align 1
  %640 = and i32 %635, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %13, align 1
  %645 = xor i32 %635, %633
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %14, align 1
  %649 = zext i1 %637 to i8
  store i8 %649, i8* %15, align 1
  %650 = lshr i32 %635, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %16, align 1
  %652 = xor i32 %650, %634
  %653 = add nuw nsw i32 %652, %650
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %17, align 1
  %656 = sitofp i32 %635 to double
  store double %656, double* %592, align 1
  %657 = load double, double* %98, align 1
  %658 = fmul double %656, %657
  %659 = load double, double* %95, align 1
  %660 = fdiv double %658, %659
  store double %660, double* %98, align 1
  %661 = load double, double* %61, align 1
  %662 = fadd double %660, %661
  store double %662, double* %61, align 1
  %663 = tail call double @llvm.trunc.f64(double %662)
  %664 = tail call double @llvm.fabs.f64(double %663)
  %665 = fcmp ogt double %664, 0x41DFFFFFFFC00000
  %666 = fptosi double %663 to i32
  %667 = zext i32 %666 to i64
  %668 = select i1 %665, i64 2147483648, i64 %667
  store i64 %668, i64* %RCX.i384, align 8
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -28
  %671 = trunc i64 %668 to i32
  %672 = add i64 %573, 114
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %670 to i32*
  store i32 %671, i32* %673, align 4
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -28
  %676 = load i64, i64* %3, align 8
  %677 = add i64 %676, 4
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = add i32 %679, -2
  %681 = icmp ult i32 %679, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %12, align 1
  %683 = and i32 %680, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %13, align 1
  %688 = xor i32 %680, %679
  %689 = lshr i32 %688, 4
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  store i8 %691, i8* %14, align 1
  %692 = icmp eq i32 %680, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %15, align 1
  %694 = lshr i32 %680, 31
  %695 = trunc i32 %694 to i8
  store i8 %695, i8* %16, align 1
  %696 = lshr i32 %679, 31
  %697 = xor i32 %694, %696
  %698 = add nuw nsw i32 %697, %696
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %17, align 1
  %701 = icmp ne i8 %695, 0
  %702 = xor i1 %701, %699
  %703 = or i1 %692, %702
  %.v27 = select i1 %703, i64 17, i64 10
  %704 = add i64 %676, %.v27
  store i64 %704, i64* %3, align 8
  br i1 %703, label %block_.L_47cb3d, label %block_47cb36

block_47cb36:                                     ; preds = %block_.L_47caba
  %705 = add i64 %704, 7
  store i64 %705, i64* %3, align 8
  store i32 2, i32* %678, align 4
  %.pre16 = load i64, i64* %RBP.i, align 8
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_47cb3d

block_.L_47cb3d:                                  ; preds = %block_47cb36, %block_.L_47caba
  %706 = phi i64 [ %.pre17, %block_47cb36 ], [ %704, %block_.L_47caba ]
  %707 = phi i64 [ %.pre16, %block_47cb36 ], [ %674, %block_.L_47caba ]
  %708 = add i64 %707, -28
  %709 = add i64 %706, 3
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = load i32, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %713 = sub i32 %712, %711
  %714 = zext i32 %713 to i64
  %715 = lshr i32 %713, 31
  store i32 %713, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  store i64 %714, i64* %RAX.i402, align 8
  %716 = load i32, i32* bitcast (%G_0x6f9348_type* @G_0x6f9348 to i32*), align 8
  %717 = add i32 %716, -2
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RCX.i384, align 8
  %719 = lshr i32 %717, 31
  %720 = sub i32 %713, %717
  %721 = icmp ult i32 %713, %717
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %12, align 1
  %723 = and i32 %720, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %13, align 1
  %728 = xor i32 %717, %713
  %729 = xor i32 %728, %720
  %730 = lshr i32 %729, 4
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  store i8 %732, i8* %14, align 1
  %733 = icmp eq i32 %720, 0
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %15, align 1
  %735 = lshr i32 %720, 31
  %736 = trunc i32 %735 to i8
  store i8 %736, i8* %16, align 1
  %737 = xor i32 %719, %715
  %738 = xor i32 %735, %715
  %739 = add nuw nsw i32 %738, %737
  %740 = icmp eq i32 %739, 2
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %17, align 1
  %742 = icmp ne i8 %736, 0
  %743 = xor i1 %742, %740
  %744 = or i1 %733, %743
  %.v28 = select i1 %744, i64 61, i64 44
  %745 = add i64 %706, %.v28
  store i64 %745, i64* %3, align 8
  br i1 %744, label %block_.L_47cb7a, label %block_47cb69

block_47cb69:                                     ; preds = %block_.L_47cb3d
  %746 = add i32 %713, -1
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i402, align 8
  %748 = icmp ne i32 %713, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %12, align 1
  %750 = and i32 %746, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %13, align 1
  %755 = xor i32 %713, 16
  %756 = xor i32 %755, %746
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %14, align 1
  %760 = icmp eq i32 %746, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %15, align 1
  %762 = lshr i32 %746, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %16, align 1
  %764 = xor i32 %762, %715
  %765 = xor i32 %762, 1
  %766 = add nuw nsw i32 %764, %765
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %17, align 1
  %769 = add i64 %745, 17
  store i64 %769, i64* %3, align 8
  store i32 %746, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  br label %block_.L_47cb7a

block_.L_47cb7a:                                  ; preds = %block_47cb69, %block_.L_47cb3d
  %770 = phi i32 [ %746, %block_47cb69 ], [ %713, %block_.L_47cb3d ]
  %771 = phi i64 [ %769, %block_47cb69 ], [ %745, %block_.L_47cb3d ]
  %772 = load i32, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  %773 = add i32 %772, -2
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i402, align 8
  %775 = lshr i32 %773, 31
  %776 = lshr i32 %772, 31
  %777 = sub i32 %773, %770
  %778 = icmp ult i32 %773, %770
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %12, align 1
  %780 = and i32 %777, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %13, align 1
  %785 = xor i32 %770, %773
  %786 = xor i32 %785, %777
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %14, align 1
  %790 = icmp eq i32 %777, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %15, align 1
  %792 = lshr i32 %777, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %16, align 1
  %794 = lshr i32 %770, 31
  %795 = xor i32 %794, %775
  %796 = xor i32 %792, %775
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %17, align 1
  %800 = icmp ne i8 %793, 0
  %801 = xor i1 %800, %798
  %.v29 = select i1 %801, i64 23, i64 38
  %802 = add i64 %771, %.v29
  %803 = add i64 %802, 7
  store i64 %803, i64* %3, align 8
  br i1 %801, label %block_47cb91, label %block_.L_47cba0

block_47cb91:                                     ; preds = %block_.L_47cb7a
  %804 = zext i32 %770 to i64
  store i64 %804, i64* %RAX.i402, align 8
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -44
  %807 = add i64 %802, 10
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  store i32 %770, i32* %808, align 4
  %809 = load i64, i64* %3, align 8
  %810 = add i64 %809, 18
  store i64 %810, i64* %3, align 8
  br label %block_.L_47cbad

block_.L_47cba0:                                  ; preds = %block_.L_47cb7a
  %811 = xor i32 %775, %776
  %812 = add nuw nsw i32 %811, %776
  %813 = icmp eq i32 %812, 2
  %814 = zext i1 %813 to i8
  %815 = trunc i32 %775 to i8
  %816 = icmp eq i32 %773, 0
  %817 = zext i1 %816 to i8
  %818 = xor i32 %773, %772
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = and i32 %773, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  %827 = icmp ult i32 %772, 2
  %828 = zext i1 %827 to i8
  store i64 %774, i64* %RAX.i402, align 8
  store i8 %828, i8* %12, align 1
  store i8 %826, i8* %13, align 1
  store i8 %821, i8* %14, align 1
  store i8 %817, i8* %15, align 1
  store i8 %815, i8* %16, align 1
  store i8 %814, i8* %17, align 1
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -44
  %831 = add i64 %802, 13
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  store i32 %773, i32* %832, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_47cbad

block_.L_47cbad:                                  ; preds = %block_.L_47cba0, %block_47cb91
  %833 = phi i64 [ %.pre18, %block_.L_47cba0 ], [ %810, %block_47cb91 ]
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -44
  %836 = add i64 %833, 3
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  store i32 %838, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %839 = load i32, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  %840 = add i32 %839, 2
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RAX.i402, align 8
  %842 = lshr i32 %840, 31
  %843 = sub i32 %840, %838
  %844 = icmp ult i32 %840, %838
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %12, align 1
  %846 = and i32 %843, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %13, align 1
  %851 = xor i32 %838, %840
  %852 = xor i32 %851, %843
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %14, align 1
  %856 = icmp eq i32 %843, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %15, align 1
  %858 = lshr i32 %843, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %16, align 1
  %860 = lshr i32 %838, 31
  %861 = xor i32 %860, %842
  %862 = xor i32 %858, %842
  %863 = add nuw nsw i32 %862, %861
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %17, align 1
  %866 = icmp ne i8 %859, 0
  %867 = xor i1 %866, %864
  %.v30 = select i1 %867, i64 33, i64 51
  %868 = add i64 %833, %.v30
  %869 = add i64 %868, 7
  store i64 %869, i64* %3, align 8
  br i1 %867, label %block_47cbce, label %block_.L_47cbe0

block_47cbce:                                     ; preds = %block_.L_47cbad
  %870 = lshr i32 %839, 31
  %871 = xor i32 %842, %870
  %872 = add nuw nsw i32 %871, %842
  %873 = icmp eq i32 %872, 2
  %874 = zext i1 %873 to i8
  %875 = trunc i32 %842 to i8
  %876 = icmp eq i32 %840, 0
  %877 = zext i1 %876 to i8
  %878 = xor i32 %840, %839
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = and i32 %840, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  %887 = icmp ugt i32 %839, -3
  %888 = zext i1 %887 to i8
  store i64 %841, i64* %RAX.i402, align 8
  store i8 %888, i8* %12, align 1
  store i8 %886, i8* %13, align 1
  store i8 %881, i8* %14, align 1
  store i8 %877, i8* %15, align 1
  store i8 %875, i8* %16, align 1
  store i8 %874, i8* %17, align 1
  %889 = add i64 %834, -48
  %890 = add i64 %868, 13
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  store i32 %840, i32* %891, align 4
  %892 = load i64, i64* %3, align 8
  %893 = add i64 %892, 15
  store i64 %893, i64* %3, align 8
  br label %block_.L_47cbea

block_.L_47cbe0:                                  ; preds = %block_.L_47cbad
  %894 = zext i32 %838 to i64
  store i64 %894, i64* %RAX.i402, align 8
  %895 = add i64 %834, -48
  %896 = add i64 %868, 10
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  store i32 %838, i32* %897, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_47cbea

block_.L_47cbea:                                  ; preds = %block_.L_47cbe0, %block_47cbce
  %898 = phi i64 [ %.pre19, %block_.L_47cbe0 ], [ %893, %block_47cbce ]
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -48
  %901 = add i64 %898, 3
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  store i32 %903, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %904 = load i32, i32* bitcast (%G_0x724744_type* @G_0x724744 to i32*), align 8
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RAX.i402, align 8
  %906 = sub i32 %904, %903
  %907 = icmp ult i32 %904, %903
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %12, align 1
  %909 = and i32 %906, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %13, align 1
  %914 = xor i32 %903, %904
  %915 = xor i32 %914, %906
  %916 = lshr i32 %915, 4
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %14, align 1
  %919 = icmp eq i32 %906, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %15, align 1
  %921 = lshr i32 %906, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %16, align 1
  %923 = lshr i32 %904, 31
  %924 = lshr i32 %903, 31
  %925 = xor i32 %924, %923
  %926 = xor i32 %921, %923
  %927 = add nuw nsw i32 %926, %925
  %928 = icmp eq i32 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %17, align 1
  %930 = icmp ne i8 %922, 0
  %931 = xor i1 %930, %928
  %.v31 = select i1 %931, i64 30, i64 45
  %932 = add i64 %898, %.v31
  %933 = add i64 %932, 7
  store i64 %933, i64* %3, align 8
  br i1 %931, label %block_47cc08, label %block_.L_47cc17

block_47cc08:                                     ; preds = %block_.L_47cbea
  store i64 %905, i64* %RAX.i402, align 8
  %934 = add i64 %899, -52
  %935 = add i64 %932, 10
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  store i32 %904, i32* %936, align 4
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 15
  store i64 %938, i64* %3, align 8
  br label %block_.L_47cc21

block_.L_47cc17:                                  ; preds = %block_.L_47cbea
  %939 = zext i32 %903 to i64
  store i64 %939, i64* %RAX.i402, align 8
  %940 = add i64 %899, -52
  %941 = add i64 %932, 10
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  store i32 %903, i32* %942, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_47cc21

block_.L_47cc21:                                  ; preds = %block_.L_47cc17, %block_47cc08
  %943 = phi i64 [ %.pre20, %block_.L_47cc17 ], [ %938, %block_47cc08 ]
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -52
  %946 = add i64 %943, 3
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  store i32 %948, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %949 = load i32, i32* bitcast (%G_0x710364_type* @G_0x710364 to i32*), align 8
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RAX.i402, align 8
  %951 = sub i32 %949, %948
  %952 = icmp ult i32 %949, %948
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %12, align 1
  %954 = and i32 %951, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %13, align 1
  %959 = xor i32 %948, %949
  %960 = xor i32 %959, %951
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %14, align 1
  %964 = icmp eq i32 %951, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %15, align 1
  %966 = lshr i32 %951, 31
  %967 = trunc i32 %966 to i8
  store i8 %967, i8* %16, align 1
  %968 = lshr i32 %949, 31
  %969 = lshr i32 %948, 31
  %970 = xor i32 %969, %968
  %971 = xor i32 %966, %968
  %972 = add nuw nsw i32 %971, %970
  %973 = icmp eq i32 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %17, align 1
  %975 = icmp ne i8 %967, 0
  %976 = xor i1 %975, %973
  %.v32 = select i1 %976, i64 30, i64 45
  %977 = add i64 %943, %.v32
  %978 = add i64 %977, 7
  store i64 %978, i64* %3, align 8
  br i1 %976, label %block_47cc3f, label %block_.L_47cc4e

block_47cc3f:                                     ; preds = %block_.L_47cc21
  %979 = zext i32 %948 to i64
  store i64 %979, i64* %RAX.i402, align 8
  %980 = add i64 %944, -56
  %981 = add i64 %977, 10
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  store i32 %948, i32* %982, align 4
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 15
  store i64 %984, i64* %3, align 8
  br label %block_.L_47cc58

block_.L_47cc4e:                                  ; preds = %block_.L_47cc21
  store i64 %950, i64* %RAX.i402, align 8
  %985 = add i64 %944, -56
  %986 = add i64 %977, 10
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  store i32 %949, i32* %987, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_47cc58

block_.L_47cc58:                                  ; preds = %block_.L_47cc4e, %block_47cc3f
  %988 = phi i64 [ %.pre21, %block_.L_47cc4e ], [ %984, %block_47cc3f ]
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -56
  %991 = add i64 %988, 3
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  store i32 %993, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  store i32 %993, i32* bitcast (%G_0x6cd474_type* @G_0x6cd474 to i32*), align 8
  store i32 %993, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  store i32 %993, i32* bitcast (%G_0x6d1278_type* @G_0x6d1278 to i32*), align 8
  store i32 %993, i32* bitcast (%G_0x725318_type* @G_0x725318 to i32*), align 8
  %994 = load i32, i32* bitcast (%G_0x70d190_type* @G_0x70d190 to i32*), align 8
  store i32 %994, i32* bitcast (%G_0x6cd3a8_type* @G_0x6cd3a8 to i32*), align 8
  %995 = add i32 %993, -1
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX.i402, align 8
  %997 = icmp eq i32 %993, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %12, align 1
  %999 = and i32 %995, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %13, align 1
  %1004 = xor i32 %995, %993
  %1005 = lshr i32 %1004, 4
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  store i8 %1007, i8* %14, align 1
  %1008 = icmp eq i32 %995, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %15, align 1
  %1010 = lshr i32 %995, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %16, align 1
  %1012 = lshr i32 %993, 31
  %1013 = xor i32 %1010, %1012
  %1014 = add nuw nsw i32 %1013, %1012
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %17, align 1
  %1017 = add i64 %988, 97
  store i64 %1017, i64* %3, align 8
  store i32 %995, i32* bitcast (%G_0x70d190_type* @G_0x70d190 to i32*), align 8
  %.pre22 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_47ccb9

block_.L_47ccb9:                                  ; preds = %block_.L_47cc58, %block_47c9e6
  %1018 = phi i64 [ %.pre22, %block_.L_47cc58 ], [ %372, %block_47c9e6 ]
  %1019 = phi i64 [ %1017, %block_.L_47cc58 ], [ %427, %block_47c9e6 ]
  %1020 = add i64 %1018, 72572
  %1021 = add i64 %1019, 18
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  store i32 0, i32* %1022, align 4
  %1023 = load i64, i64* %3, align 8
  %1024 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1024, i64* %RAX.i402, align 8
  %1025 = add i64 %1024, 72576
  %1026 = add i64 %1023, 18
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i32*
  store i32 0, i32* %1027, align 4
  %1028 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x70fce0_type* @G_0x70fce0 to i32*), align 8
  %1029 = load i64, i64* %6, align 8
  %1030 = add i64 %1029, 64
  store i64 %1030, i64* %6, align 8
  %1031 = icmp ugt i64 %1029, -65
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %12, align 1
  %1033 = trunc i64 %1030 to i32
  %1034 = and i32 %1033, 255
  %1035 = tail call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  store i8 %1038, i8* %13, align 1
  %1039 = xor i64 %1030, %1029
  %1040 = lshr i64 %1039, 4
  %1041 = trunc i64 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %14, align 1
  %1043 = icmp eq i64 %1030, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %15, align 1
  %1045 = lshr i64 %1030, 63
  %1046 = trunc i64 %1045 to i8
  store i8 %1046, i8* %16, align 1
  %1047 = lshr i64 %1029, 63
  %1048 = xor i64 %1045, %1047
  %1049 = add nuw nsw i64 %1048, %1045
  %1050 = icmp eq i64 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %17, align 1
  %1052 = add i64 %1028, 16
  store i64 %1052, i64* %3, align 8
  %1053 = add i64 %1029, 72
  %1054 = inttoptr i64 %1030 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RBP.i, align 8
  store i64 %1053, i64* %6, align 8
  %1056 = add i64 %1028, 17
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1053 to i64*
  %1058 = load i64, i64* %1057, align 8
  store i64 %1058, i64* %3, align 8
  %1059 = add i64 %1029, 80
  store i64 %1059, i64* %6, align 8
  ret %struct.Memory* %310
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x6cc5d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_47c8ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x34fc6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34fc6__rip__type* @G_0x34fc6__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6cc5d8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
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
define %struct.Memory* @routine_cvtsi2sdl_0x6cc5d8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6ccf88___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6d1fb0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x710a48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x710a48_type* @G_0x710a48 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6f6f78___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 7303032 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x70e8d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x70e8d8_type* @G_0x70e8d8 to i64*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_mulsd_0x6ccf88___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6d1fb0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_addl_0x6cc5d8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6cc5d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6cc5dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6cc5e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
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
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_idivl_MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_movl__0x0__0x710360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x710360_type* @G_0x710360 to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x11ba4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72612
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x722fd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b78__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72568
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
define %struct.Memory* @routine_movl__eax__0x11b78__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72568
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11b78__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72568
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
define %struct.Memory* @routine_jne_.L_47ca1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xcac__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3244
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
define %struct.Memory* @routine_movl__ecx__0x6cd474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cd474_type* @G_0x6cd474 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6cd474___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cd474_type* @G_0x6cd474 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x70d190(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x70d190_type* @G_0x70d190 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x6f8f08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ccb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2880
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
define %struct.Memory* @routine_je_.L_47ca49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2884
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
define %struct.Memory* @routine_je_.L_47caba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11b9c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72604
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
define %struct.Memory* @routine_jne_.L_47ca8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6f9708___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f9708_type* @G_0x6f9708 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11b7c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72572
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__eax__0x11b7c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72572
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6f9348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6f9348_type* @G_0x6f9348 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47cab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7236c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7236c0_type* @G_0x7236c0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47caba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x34dc6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34dc6__rip__type* @G_0x34dc6__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x34e56__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34e56__rip__type* @G_0x34e56__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x34d8e__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34d8e__rip__type* @G_0x34d8e__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x11b7c__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72572
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x11b80__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd__xmm0___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x711c48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jle_.L_47cb3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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
define %struct.Memory* @routine_movl_0x711c48___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl_0x711c48___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6f9348___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f9348_type* @G_0x6f9348 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_jle_.L_47cb7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x711c48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6f8f08___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x711c48___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x711c48_type* @G_0x711c48 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_47cba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cbad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47cbe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47cbea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x724744___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x724744_type* @G_0x724744 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47cc17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cc21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x710364___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x710364_type* @G_0x710364 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47cc4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cc58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6cd474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cd474_type* @G_0x6cd474 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6cd474___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cd474_type* @G_0x6cd474 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6f8f08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6f8f08_type* @G_0x6f8f08 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6d1278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6d1278_type* @G_0x6d1278 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x725318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x725318_type* @G_0x725318 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x70d190___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70d190_type* @G_0x70d190 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6cd3a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cd3a8_type* @G_0x6cd3a8 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__0x70d190(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x70d190_type* @G_0x70d190 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b7c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72572
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b80__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x70fce0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x70fce0_type* @G_0x70fce0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
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
