; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x37d__rip__type = type <{ [8 x i8] }>
%G_0x3cf__rip__type = type <{ [8 x i8] }>
%G_0x43c__rip__type = type <{ [8 x i8] }>
%G_0x497__rip__type = type <{ [8 x i8] }>
%G_0x531__rip__type = type <{ [8 x i8] }>
%G_0x58a__rip__type = type <{ [8 x i8] }>
%G_0x5dc__rip__type = type <{ [8 x i8] }>
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
@G_0x37d__rip_ = local_unnamed_addr global %G_0x37d__rip__type zeroinitializer
@G_0x3cf__rip_ = local_unnamed_addr global %G_0x3cf__rip__type zeroinitializer
@G_0x43c__rip_ = local_unnamed_addr global %G_0x43c__rip__type zeroinitializer
@G_0x497__rip_ = local_unnamed_addr global %G_0x497__rip__type zeroinitializer
@G_0x531__rip_ = local_unnamed_addr global %G_0x531__rip__type zeroinitializer
@G_0x58a__rip_ = local_unnamed_addr global %G_0x58a__rip__type zeroinitializer
@G_0x5dc__rip_ = local_unnamed_addr global %G_0x5dc__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400b90.fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400be0.grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400d30.lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @noise(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -280
  store i64 %11, i64* %RSP.i556, align 8
  %12 = icmp ult i64 %8, 272
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = add i64 %7, -16
  %42 = add i64 %10, 15
  store i64 %42, i64* %PC.i, align 8
  %43 = bitcast [32 x %union.VectorReg]* %40 to double*
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %45 = load i64, i64* %44, align 1
  %46 = inttoptr i64 %41 to i64*
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -16
  %50 = load i64, i64* %PC.i, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %PC.i, align 8
  %52 = bitcast %union.VectorReg* %47 to double*
  %53 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  %54 = load i64, i64* %53, align 1
  %55 = inttoptr i64 %49 to i64*
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %PC.i, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %PC.i, align 8
  %61 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  %62 = load i64, i64* %61, align 1
  %63 = inttoptr i64 %58 to i64*
  store i64 %62, i64* %63, align 8
  %64 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -8
  %67 = load i64, i64* %PC.i, align 8
  %68 = add i64 %67, 5
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %66 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %70, i64* %71, align 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %73 = bitcast i64* %72 to double*
  store double 0.000000e+00, double* %73, align 1
  %74 = add i64 %67, -650
  %75 = add i64 %67, 10
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %6, align 8
  store i64 %74, i64* %3, align 8
  %79 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  %RAX.i629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %80 = load i64, i64* %PC.i, align 8
  %81 = load double, double* %43, align 1
  %82 = tail call double @llvm.trunc.f64(double %81)
  %83 = tail call double @llvm.fabs.f64(double %82)
  %84 = fcmp ogt double %83, 0x41DFFFFFFFC00000
  %85 = fptosi double %82 to i32
  %86 = and i32 %85, 255
  %.op = zext i32 %86 to i64
  %87 = select i1 %84, i64 0, i64 %.op
  %88 = trunc i64 %87 to i32
  store i64 %87, i64* %RAX.i629, align 8
  store i8 0, i8* %14, align 1
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  %93 = icmp eq i32 %88, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -28
  %97 = add i64 %80, 12
  store i64 %97, i64* %PC.i, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 %88, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -16
  %101 = load i64, i64* %PC.i, align 8
  %102 = add i64 %101, 5
  store i64 %102, i64* %PC.i, align 8
  %103 = inttoptr i64 %100 to i64*
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %104, i64* %105, align 1
  store double 0.000000e+00, double* %73, align 1
  %106 = add i64 %101, -672
  %107 = add i64 %101, 10
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, -8
  %110 = inttoptr i64 %109 to i64*
  store i64 %107, i64* %110, align 8
  store i64 %109, i64* %6, align 8
  store i64 %106, i64* %3, align 8
  %111 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %79)
  %112 = load i64, i64* %PC.i, align 8
  %113 = load double, double* %43, align 1
  %114 = tail call double @llvm.trunc.f64(double %113)
  %115 = tail call double @llvm.fabs.f64(double %114)
  %116 = fcmp ogt double %115, 0x41DFFFFFFFC00000
  %117 = fptosi double %114 to i32
  %118 = and i32 %117, 255
  %.op1 = zext i32 %118 to i64
  %119 = select i1 %116, i64 0, i64 %.op1
  %120 = trunc i64 %119 to i32
  store i64 %119, i64* %RAX.i629, align 8
  store i8 0, i8* %14, align 1
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %21, align 1
  %125 = icmp eq i32 %120, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -32
  %129 = add i64 %112, 12
  store i64 %129, i64* %PC.i, align 8
  %130 = inttoptr i64 %128 to i32*
  store i32 %120, i32* %130, align 4
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -24
  %133 = load i64, i64* %PC.i, align 8
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %136, i64* %137, align 1
  store double 0.000000e+00, double* %73, align 1
  %138 = add i64 %133, -694
  %139 = add i64 %133, 10
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %6, align 8
  store i64 %138, i64* %3, align 8
  %143 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %111)
  %144 = load i64, i64* %PC.i, align 8
  %145 = load double, double* %43, align 1
  %146 = tail call double @llvm.trunc.f64(double %145)
  %147 = tail call double @llvm.fabs.f64(double %146)
  %148 = fcmp ogt double %147, 0x41DFFFFFFFC00000
  %149 = fptosi double %146 to i32
  %150 = and i32 %149, 255
  %.op2 = zext i32 %150 to i64
  %151 = select i1 %148, i64 0, i64 %.op2
  %152 = trunc i64 %151 to i32
  store i64 %151, i64* %RAX.i629, align 8
  store i8 0, i8* %14, align 1
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1
  %157 = icmp eq i32 %152, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -36
  %161 = add i64 %144, 12
  store i64 %161, i64* %PC.i, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %152, i32* %162, align 4
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -8
  %165 = load i64, i64* %PC.i, align 8
  %166 = add i64 %165, 5
  store i64 %166, i64* %PC.i, align 8
  %167 = inttoptr i64 %164 to i64*
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %168, i64* %169, align 1
  store double 0.000000e+00, double* %73, align 1
  %170 = add i64 %165, -716
  %171 = add i64 %165, 10
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %6, align 8
  store i64 %170, i64* %3, align 8
  %175 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %143)
  %176 = bitcast %union.VectorReg* %47 to i8*
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -8
  %179 = load i64, i64* %PC.i, align 8
  %180 = add i64 %179, 5
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %178 to double*
  %182 = load double, double* %181, align 8
  %183 = bitcast %union.VectorReg* %47 to double*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %185 = bitcast i64* %184 to double*
  %186 = load double, double* %43, align 1
  %187 = fsub double %182, %186
  store double %187, double* %183, align 1
  store i64 0, i64* %184, align 1
  %188 = add i64 %179, 14
  store i64 %188, i64* %PC.i, align 8
  store double %187, double* %181, align 8
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -16
  %191 = load i64, i64* %PC.i, align 8
  %192 = add i64 %191, 5
  store i64 %192, i64* %PC.i, align 8
  %193 = inttoptr i64 %190 to i64*
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %194, i64* %195, align 1
  store double 0.000000e+00, double* %73, align 1
  %196 = add i64 %191, -740
  %197 = add i64 %191, 10
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, -8
  %200 = inttoptr i64 %199 to i64*
  store i64 %197, i64* %200, align 8
  store i64 %199, i64* %6, align 8
  store i64 %196, i64* %3, align 8
  %201 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %175)
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -16
  %204 = load i64, i64* %PC.i, align 8
  %205 = add i64 %204, 5
  store i64 %205, i64* %PC.i, align 8
  %206 = inttoptr i64 %203 to double*
  %207 = load double, double* %206, align 8
  %208 = load double, double* %43, align 1
  %209 = fsub double %207, %208
  store double %209, double* %183, align 1
  store i64 0, i64* %184, align 1
  %210 = add i64 %204, 14
  store i64 %210, i64* %PC.i, align 8
  store double %209, double* %206, align 8
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -24
  %213 = load i64, i64* %PC.i, align 8
  %214 = add i64 %213, 5
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %216, i64* %217, align 1
  store double 0.000000e+00, double* %73, align 1
  %218 = add i64 %213, -764
  %219 = add i64 %213, 10
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %6, align 8
  store i64 %218, i64* %3, align 8
  %223 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %201)
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -24
  %226 = load i64, i64* %PC.i, align 8
  %227 = add i64 %226, 5
  store i64 %227, i64* %PC.i, align 8
  %228 = inttoptr i64 %225 to double*
  %229 = load double, double* %228, align 8
  %230 = load double, double* %43, align 1
  %231 = fsub double %229, %230
  store double %231, double* %183, align 1
  store i64 0, i64* %184, align 1
  %232 = add i64 %226, 14
  store i64 %232, i64* %PC.i, align 8
  store double %231, double* %228, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -8
  %235 = load i64, i64* %PC.i, align 8
  %236 = add i64 %235, 5
  store i64 %236, i64* %PC.i, align 8
  %237 = inttoptr i64 %234 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %238, i64* %239, align 1
  store double 0.000000e+00, double* %73, align 1
  %240 = add i64 %235, 1052
  %241 = add i64 %235, 10
  %242 = load i64, i64* %6, align 8
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %6, align 8
  store i64 %240, i64* %3, align 8
  %call2_400779 = tail call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %240, %struct.Memory* %223)
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -48
  %247 = load i64, i64* %PC.i, align 8
  %248 = add i64 %247, 5
  store i64 %248, i64* %PC.i, align 8
  %249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %250 = load i64, i64* %249, align 1
  %251 = inttoptr i64 %246 to i64*
  store i64 %250, i64* %251, align 8
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -16
  %254 = load i64, i64* %PC.i, align 8
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC.i, align 8
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %257, i64* %258, align 1
  store double 0.000000e+00, double* %73, align 1
  %259 = add i64 %254, 1037
  %260 = add i64 %254, 10
  %261 = load i64, i64* %6, align 8
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*
  store i64 %260, i64* %263, align 8
  store i64 %262, i64* %6, align 8
  store i64 %259, i64* %3, align 8
  %call2_400788 = tail call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %259, %struct.Memory* %call2_400779)
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -56
  %266 = load i64, i64* %PC.i, align 8
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i, align 8
  %268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %269 = load i64, i64* %268, align 1
  %270 = inttoptr i64 %265 to i64*
  store i64 %269, i64* %270, align 8
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -24
  %273 = load i64, i64* %PC.i, align 8
  %274 = add i64 %273, 5
  store i64 %274, i64* %PC.i, align 8
  %275 = inttoptr i64 %272 to i64*
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %276, i64* %277, align 1
  store double 0.000000e+00, double* %73, align 1
  %278 = add i64 %273, 1022
  %279 = add i64 %273, 10
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_400797 = tail call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %278, %struct.Memory* %call2_400788)
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -64
  %285 = load i64, i64* %PC.i, align 8
  %286 = add i64 %285, 5
  store i64 %286, i64* %PC.i, align 8
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %288 = load i64, i64* %287, align 1
  %289 = inttoptr i64 %284 to i64*
  store i64 %288, i64* %289, align 8
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -28
  %292 = load i64, i64* %PC.i, align 8
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC.i, align 8
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX.i523, align 8
  %297 = shl nsw i64 %296, 2
  %298 = add nsw i64 %297, 6300752
  %299 = add i64 %292, 11
  store i64 %299, i64* %PC.i, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX.i629, align 8
  %303 = add i64 %290, -32
  %304 = add i64 %292, 14
  store i64 %304, i64* %PC.i, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = add i32 %306, %301
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX.i629, align 8
  %309 = icmp ult i32 %307, %301
  %310 = icmp ult i32 %307, %306
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %14, align 1
  %313 = and i32 %307, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %21, align 1
  %318 = xor i32 %306, %301
  %319 = xor i32 %318, %307
  %320 = lshr i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  store i8 %322, i8* %27, align 1
  %323 = icmp eq i32 %307, 0
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %30, align 1
  %325 = lshr i32 %307, 31
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %33, align 1
  %327 = lshr i32 %301, 31
  %328 = lshr i32 %306, 31
  %329 = xor i32 %325, %327
  %330 = xor i32 %325, %328
  %331 = add nuw nsw i32 %329, %330
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %39, align 1
  %334 = add i64 %290, -68
  %335 = add i64 %292, 17
  store i64 %335, i64* %PC.i, align 8
  %336 = inttoptr i64 %334 to i32*
  store i32 %307, i32* %336, align 4
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -68
  %339 = load i64, i64* %PC.i, align 8
  %340 = add i64 %339, 4
  store i64 %340, i64* %PC.i, align 8
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %RCX.i523, align 8
  %344 = shl nsw i64 %343, 2
  %345 = add nsw i64 %344, 6300752
  %346 = add i64 %339, 11
  store i64 %346, i64* %PC.i, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX.i629, align 8
  %350 = add i64 %337, -36
  %351 = add i64 %339, 14
  store i64 %351, i64* %PC.i, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, %348
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX.i629, align 8
  %356 = icmp ult i32 %354, %348
  %357 = icmp ult i32 %354, %353
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  %365 = xor i32 %353, %348
  %366 = xor i32 %365, %354
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %27, align 1
  %370 = icmp eq i32 %354, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %30, align 1
  %372 = lshr i32 %354, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %33, align 1
  %374 = lshr i32 %348, 31
  %375 = lshr i32 %353, 31
  %376 = xor i32 %372, %374
  %377 = xor i32 %372, %375
  %378 = add nuw nsw i32 %376, %377
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %39, align 1
  %381 = add i64 %337, -72
  %382 = add i64 %339, 17
  store i64 %382, i64* %PC.i, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %354, i32* %383, align 4
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -68
  %386 = load i64, i64* %PC.i, align 8
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC.i, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, 1
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RAX.i629, align 8
  %392 = icmp eq i32 %389, -1
  %393 = icmp eq i32 %390, 0
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %14, align 1
  %396 = and i32 %390, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396)
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %21, align 1
  %401 = xor i32 %389, %390
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %27, align 1
  %405 = icmp eq i32 %390, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %30, align 1
  %407 = lshr i32 %390, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %33, align 1
  %409 = lshr i32 %389, 31
  %410 = xor i32 %407, %409
  %411 = add nuw nsw i32 %410, %407
  %412 = icmp eq i32 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %39, align 1
  %414 = sext i32 %390 to i64
  store i64 %414, i64* %RCX.i523, align 8
  %415 = shl nsw i64 %414, 2
  %416 = add nsw i64 %415, 6300752
  %417 = add i64 %386, 16
  store i64 %417, i64* %PC.i, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i629, align 8
  %421 = add i64 %384, -36
  %422 = add i64 %386, 19
  store i64 %422, i64* %PC.i, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = add i32 %424, %419
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RAX.i629, align 8
  %427 = icmp ult i32 %425, %419
  %428 = icmp ult i32 %425, %424
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = and i32 %425, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %21, align 1
  %436 = xor i32 %424, %419
  %437 = xor i32 %436, %425
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %27, align 1
  %441 = icmp eq i32 %425, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %30, align 1
  %443 = lshr i32 %425, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %33, align 1
  %445 = lshr i32 %419, 31
  %446 = lshr i32 %424, 31
  %447 = xor i32 %443, %445
  %448 = xor i32 %443, %446
  %449 = add nuw nsw i32 %447, %448
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %39, align 1
  %452 = add i64 %384, -76
  %453 = add i64 %386, 22
  store i64 %453, i64* %PC.i, align 8
  %454 = inttoptr i64 %452 to i32*
  store i32 %425, i32* %454, align 4
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -28
  %457 = load i64, i64* %PC.i, align 8
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC.i, align 8
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = add i32 %460, 1
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RAX.i629, align 8
  %463 = icmp eq i32 %460, -1
  %464 = icmp eq i32 %461, 0
  %465 = or i1 %463, %464
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = and i32 %461, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %21, align 1
  %472 = xor i32 %460, %461
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %27, align 1
  %476 = icmp eq i32 %461, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %30, align 1
  %478 = lshr i32 %461, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %33, align 1
  %480 = lshr i32 %460, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %39, align 1
  %485 = sext i32 %461 to i64
  store i64 %485, i64* %RCX.i523, align 8
  %486 = shl nsw i64 %485, 2
  %487 = add nsw i64 %486, 6300752
  %488 = add i64 %457, 16
  store i64 %488, i64* %PC.i, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i629, align 8
  %492 = add i64 %455, -32
  %493 = add i64 %457, 19
  store i64 %493, i64* %PC.i, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, %490
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i629, align 8
  %498 = icmp ult i32 %496, %490
  %499 = icmp ult i32 %496, %495
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %495, %490
  %508 = xor i32 %507, %496
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %27, align 1
  %512 = icmp eq i32 %496, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %30, align 1
  %514 = lshr i32 %496, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %33, align 1
  %516 = lshr i32 %490, 31
  %517 = lshr i32 %495, 31
  %518 = xor i32 %514, %516
  %519 = xor i32 %514, %517
  %520 = add nuw nsw i32 %518, %519
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %39, align 1
  %523 = add i64 %455, -80
  %524 = add i64 %457, 22
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i32*
  store i32 %496, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -80
  %528 = load i64, i64* %PC.i, align 8
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  store i64 %532, i64* %RCX.i523, align 8
  %533 = shl nsw i64 %532, 2
  %534 = add nsw i64 %533, 6300752
  %535 = add i64 %528, 11
  store i64 %535, i64* %PC.i, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX.i629, align 8
  %539 = add i64 %526, -36
  %540 = add i64 %528, 14
  store i64 %540, i64* %PC.i, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %542, %537
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RAX.i629, align 8
  %545 = icmp ult i32 %543, %537
  %546 = icmp ult i32 %543, %542
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = and i32 %543, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i32 %542, %537
  %555 = xor i32 %554, %543
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %27, align 1
  %559 = icmp eq i32 %543, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %30, align 1
  %561 = lshr i32 %543, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %33, align 1
  %563 = lshr i32 %537, 31
  %564 = lshr i32 %542, 31
  %565 = xor i32 %561, %563
  %566 = xor i32 %561, %564
  %567 = add nuw nsw i32 %565, %566
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %39, align 1
  %570 = add i64 %526, -84
  %571 = add i64 %528, 17
  store i64 %571, i64* %PC.i, align 8
  %572 = inttoptr i64 %570 to i32*
  store i32 %543, i32* %572, align 4
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -80
  %575 = load i64, i64* %PC.i, align 8
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC.i, align 8
  %577 = inttoptr i64 %574 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = add i32 %578, 1
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RAX.i629, align 8
  %581 = icmp eq i32 %578, -1
  %582 = icmp eq i32 %579, 0
  %583 = or i1 %581, %582
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %14, align 1
  %585 = and i32 %579, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %21, align 1
  %590 = xor i32 %578, %579
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %27, align 1
  %594 = icmp eq i32 %579, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %30, align 1
  %596 = lshr i32 %579, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %33, align 1
  %598 = lshr i32 %578, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %596
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %39, align 1
  %603 = sext i32 %579 to i64
  store i64 %603, i64* %RCX.i523, align 8
  %604 = shl nsw i64 %603, 2
  %605 = add nsw i64 %604, 6300752
  %606 = add i64 %575, 16
  store i64 %606, i64* %PC.i, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = zext i32 %608 to i64
  store i64 %609, i64* %RAX.i629, align 8
  %610 = add i64 %573, -36
  %611 = add i64 %575, 19
  store i64 %611, i64* %PC.i, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = add i32 %613, %608
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX.i629, align 8
  %616 = icmp ult i32 %614, %608
  %617 = icmp ult i32 %614, %613
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %14, align 1
  %620 = and i32 %614, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  %625 = xor i32 %613, %608
  %626 = xor i32 %625, %614
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %27, align 1
  %630 = icmp eq i32 %614, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %30, align 1
  %632 = lshr i32 %614, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %33, align 1
  %634 = lshr i32 %608, 31
  %635 = lshr i32 %613, 31
  %636 = xor i32 %632, %634
  %637 = xor i32 %632, %635
  %638 = add nuw nsw i32 %636, %637
  %639 = icmp eq i32 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %39, align 1
  %641 = add i64 %573, -88
  %642 = add i64 %575, 22
  store i64 %642, i64* %PC.i, align 8
  %643 = inttoptr i64 %641 to i32*
  store i32 %614, i32* %643, align 4
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -64
  %646 = load i64, i64* %PC.i, align 8
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i, align 8
  %648 = inttoptr i64 %645 to i64*
  %649 = load i64, i64* %648, align 8
  %650 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %649, i64* %650, align 1
  store double 0.000000e+00, double* %73, align 1
  %651 = add i64 %644, -56
  %652 = add i64 %646, 10
  store i64 %652, i64* %PC.i, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  %655 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %654, i64* %655, align 1
  store double 0.000000e+00, double* %185, align 1
  %656 = bitcast %union.VectorReg* %56 to i8*
  %657 = add i64 %644, -48
  %658 = add i64 %646, 15
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  %661 = bitcast %union.VectorReg* %56 to double*
  %662 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %660, i64* %662, align 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %664 = bitcast i64* %663 to double*
  store double 0.000000e+00, double* %664, align 1
  %665 = add i64 %644, -72
  %666 = add i64 %646, 19
  store i64 %666, i64* %PC.i, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = sext i32 %668 to i64
  store i64 %669, i64* %RCX.i523, align 8
  %RDI.i425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %670 = shl nsw i64 %669, 2
  %671 = add nsw i64 %670, 6300752
  %672 = add i64 %646, 26
  store i64 %672, i64* %PC.i, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RDI.i425, align 8
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %677 = add i64 %644, -8
  %678 = add i64 %646, 31
  store i64 %678, i64* %PC.i, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  %681 = bitcast %union.VectorReg* %676 to double*
  %682 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %680, i64* %682, align 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %684 = bitcast i64* %683 to double*
  store double 0.000000e+00, double* %684, align 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %686 = add i64 %644, -16
  %687 = add i64 %646, 36
  store i64 %687, i64* %PC.i, align 8
  %688 = inttoptr i64 %686 to i64*
  %689 = load i64, i64* %688, align 8
  %690 = bitcast %union.VectorReg* %685 to double*
  %691 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %685, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %689, i64* %691, align 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %693 = bitcast i64* %692 to double*
  store double 0.000000e+00, double* %693, align 1
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %695 = add i64 %644, -24
  %696 = add i64 %646, 41
  store i64 %696, i64* %PC.i, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  %699 = bitcast %union.VectorReg* %694 to double*
  %700 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %694, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %698, i64* %700, align 1
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %702 = bitcast i64* %701 to double*
  store double 0.000000e+00, double* %702, align 1
  %703 = add i64 %644, -96
  %704 = add i64 %646, 46
  store i64 %704, i64* %PC.i, align 8
  %705 = inttoptr i64 %703 to i64*
  store i64 %649, i64* %705, align 8
  %706 = load i64, i64* %PC.i, align 8
  %707 = bitcast %union.VectorReg* %676 to <2 x i32>*
  %708 = load <2 x i32>, <2 x i32>* %707, align 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %710 = bitcast i64* %709 to <2 x i32>*
  %711 = load <2 x i32>, <2 x i32>* %710, align 1
  %712 = extractelement <2 x i32> %708, i32 0
  %713 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 %712, i32* %713, align 1
  %714 = extractelement <2 x i32> %708, i32 1
  %715 = getelementptr inbounds i8, i8* %64, i64 4
  %716 = bitcast i8* %715 to i32*
  store i32 %714, i32* %716, align 1
  %717 = extractelement <2 x i32> %711, i32 0
  %718 = bitcast i64* %72 to i32*
  store i32 %717, i32* %718, align 1
  %719 = extractelement <2 x i32> %711, i32 1
  %720 = getelementptr inbounds i8, i8* %64, i64 12
  %721 = bitcast i8* %720 to i32*
  store i32 %719, i32* %721, align 1
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -104
  %724 = add i64 %706, 8
  store i64 %724, i64* %PC.i, align 8
  %725 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  %726 = load i64, i64* %725, align 1
  %727 = inttoptr i64 %723 to i64*
  store i64 %726, i64* %727, align 8
  %728 = load i64, i64* %PC.i, align 8
  %729 = bitcast %union.VectorReg* %685 to <2 x i32>*
  %730 = load <2 x i32>, <2 x i32>* %729, align 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %732 = bitcast i64* %731 to <2 x i32>*
  %733 = load <2 x i32>, <2 x i32>* %732, align 1
  %734 = extractelement <2 x i32> %730, i32 0
  %735 = bitcast %union.VectorReg* %47 to i32*
  store i32 %734, i32* %735, align 1
  %736 = extractelement <2 x i32> %730, i32 1
  %737 = getelementptr inbounds i8, i8* %176, i64 4
  %738 = bitcast i8* %737 to i32*
  store i32 %736, i32* %738, align 1
  %739 = extractelement <2 x i32> %733, i32 0
  %740 = bitcast i64* %184 to i32*
  store i32 %739, i32* %740, align 1
  %741 = extractelement <2 x i32> %733, i32 1
  %742 = getelementptr inbounds i8, i8* %176, i64 12
  %743 = bitcast i8* %742 to i32*
  store i32 %741, i32* %743, align 1
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -112
  %746 = add i64 %728, 8
  store i64 %746, i64* %PC.i, align 8
  %747 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  %748 = load i64, i64* %747, align 1
  %749 = inttoptr i64 %745 to i64*
  store i64 %748, i64* %749, align 8
  %750 = load i64, i64* %PC.i, align 8
  %751 = bitcast %union.VectorReg* %694 to <2 x i32>*
  %752 = load <2 x i32>, <2 x i32>* %751, align 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %754 = bitcast i64* %753 to <2 x i32>*
  %755 = load <2 x i32>, <2 x i32>* %754, align 1
  %756 = extractelement <2 x i32> %752, i32 0
  %757 = bitcast %union.VectorReg* %56 to i32*
  store i32 %756, i32* %757, align 1
  %758 = extractelement <2 x i32> %752, i32 1
  %759 = getelementptr inbounds i8, i8* %656, i64 4
  %760 = bitcast i8* %759 to i32*
  store i32 %758, i32* %760, align 1
  %761 = extractelement <2 x i32> %755, i32 0
  %762 = bitcast i64* %663 to i32*
  store i32 %761, i32* %762, align 1
  %763 = extractelement <2 x i32> %755, i32 1
  %764 = getelementptr inbounds i8, i8* %656, i64 12
  %765 = bitcast i8* %764 to i32*
  store i32 %763, i32* %765, align 1
  %766 = add i64 %750, 908
  %767 = add i64 %750, 8
  %768 = load i64, i64* %6, align 8
  %769 = add i64 %768, -8
  %770 = inttoptr i64 %769 to i64*
  store i64 %767, i64* %770, align 8
  store i64 %769, i64* %6, align 8
  store i64 %766, i64* %3, align 8
  %call2_400857 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %766, %struct.Memory* %call2_400797)
  %771 = load i64, i64* %PC.i, align 8
  %772 = load double, double* bitcast (%G_0x5dc__rip__type* @G_0x5dc__rip_ to double*), align 8
  store double %772, double* %183, align 1
  store double 0.000000e+00, double* %185, align 1
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -84
  %775 = add i64 %771, 12
  store i64 %775, i64* %PC.i, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sext i32 %777 to i64
  store i64 %778, i64* %RCX.i523, align 8
  %779 = shl nsw i64 %778, 2
  %780 = add nsw i64 %779, 6300752
  %781 = add i64 %771, 19
  store i64 %781, i64* %PC.i, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RDI.i425, align 8
  %785 = add i64 %773, -8
  %786 = add i64 %771, 24
  store i64 %786, i64* %PC.i, align 8
  %787 = inttoptr i64 %785 to double*
  %788 = load double, double* %787, align 8
  %789 = fsub double %788, %772
  store double %789, double* %661, align 1
  store i64 0, i64* %663, align 1
  %790 = add i64 %773, -16
  %791 = add i64 %771, 33
  store i64 %791, i64* %PC.i, align 8
  %792 = inttoptr i64 %790 to i64*
  %793 = load i64, i64* %792, align 8
  %794 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %793, i64* %794, align 1
  store double 0.000000e+00, double* %185, align 1
  %795 = add i64 %773, -24
  %796 = add i64 %771, 38
  store i64 %796, i64* %PC.i, align 8
  %797 = inttoptr i64 %795 to i64*
  %798 = load i64, i64* %797, align 8
  %799 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %798, i64* %799, align 1
  store double 0.000000e+00, double* %684, align 1
  %800 = add i64 %773, -120
  %801 = add i64 %771, 43
  store i64 %801, i64* %PC.i, align 8
  %802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %803 = load i64, i64* %802, align 1
  %804 = inttoptr i64 %800 to i64*
  store i64 %803, i64* %804, align 8
  %805 = load i64, i64* %PC.i, align 8
  %806 = bitcast %union.VectorReg* %56 to <2 x i32>*
  %807 = load <2 x i32>, <2 x i32>* %806, align 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %809 = bitcast i64* %808 to <2 x i32>*
  %810 = load <2 x i32>, <2 x i32>* %809, align 1
  %811 = extractelement <2 x i32> %807, i32 0
  store i32 %811, i32* %713, align 1
  %812 = extractelement <2 x i32> %807, i32 1
  store i32 %812, i32* %716, align 1
  %813 = extractelement <2 x i32> %810, i32 0
  store i32 %813, i32* %718, align 1
  %814 = extractelement <2 x i32> %810, i32 1
  store i32 %814, i32* %721, align 1
  %815 = load <2 x i32>, <2 x i32>* %707, align 1
  %816 = load <2 x i32>, <2 x i32>* %710, align 1
  %817 = extractelement <2 x i32> %815, i32 0
  store i32 %817, i32* %757, align 1
  %818 = extractelement <2 x i32> %815, i32 1
  store i32 %818, i32* %760, align 1
  %819 = extractelement <2 x i32> %816, i32 0
  store i32 %819, i32* %762, align 1
  %820 = extractelement <2 x i32> %816, i32 1
  store i32 %820, i32* %765, align 1
  %821 = add i64 %805, 857
  %822 = add i64 %805, 11
  %823 = load i64, i64* %6, align 8
  %824 = add i64 %823, -8
  %825 = inttoptr i64 %824 to i64*
  store i64 %822, i64* %825, align 8
  store i64 %824, i64* %6, align 8
  store i64 %821, i64* %3, align 8
  %call2_40088d = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %821, %struct.Memory* %call2_400857)
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -112
  %828 = load i64, i64* %PC.i, align 8
  %829 = add i64 %828, 5
  store i64 %829, i64* %PC.i, align 8
  %830 = inttoptr i64 %827 to i64*
  %831 = load i64, i64* %830, align 8
  %832 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %831, i64* %832, align 1
  store double 0.000000e+00, double* %185, align 1
  %833 = add i64 %826, -128
  %834 = add i64 %828, 10
  store i64 %834, i64* %PC.i, align 8
  %835 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %836 = load i64, i64* %835, align 1
  %837 = inttoptr i64 %833 to i64*
  store i64 %836, i64* %837, align 8
  %838 = load i64, i64* %PC.i, align 8
  %839 = bitcast %union.VectorReg* %47 to <2 x i32>*
  %840 = load <2 x i32>, <2 x i32>* %839, align 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %842 = bitcast i64* %841 to <2 x i32>*
  %843 = load <2 x i32>, <2 x i32>* %842, align 1
  %844 = extractelement <2 x i32> %840, i32 0
  store i32 %844, i32* %713, align 1
  %845 = extractelement <2 x i32> %840, i32 1
  store i32 %845, i32* %716, align 1
  %846 = extractelement <2 x i32> %843, i32 0
  store i32 %846, i32* %718, align 1
  %847 = extractelement <2 x i32> %843, i32 1
  store i32 %847, i32* %721, align 1
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -120
  %850 = add i64 %838, 8
  store i64 %850, i64* %PC.i, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  %853 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %852, i64* %853, align 1
  store double 0.000000e+00, double* %185, align 1
  %854 = add i64 %848, -128
  %855 = add i64 %838, 13
  store i64 %855, i64* %PC.i, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  %858 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %857, i64* %858, align 1
  store double 0.000000e+00, double* %664, align 1
  %859 = add i64 %838, 1172
  %860 = add i64 %838, 18
  %861 = load i64, i64* %6, align 8
  %862 = add i64 %861, -8
  %863 = inttoptr i64 %862 to i64*
  store i64 %860, i64* %863, align 8
  store i64 %862, i64* %6, align 8
  store i64 %859, i64* %3, align 8
  %call2_4008a9 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %859, %struct.Memory* %call2_40088d)
  %864 = load i64, i64* %PC.i, align 8
  %865 = load double, double* bitcast (%G_0x58a__rip__type* @G_0x58a__rip_ to double*), align 8
  store double %865, double* %183, align 1
  store double 0.000000e+00, double* %185, align 1
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -48
  %868 = add i64 %864, 13
  store i64 %868, i64* %PC.i, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  %871 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %870, i64* %871, align 1
  store double 0.000000e+00, double* %664, align 1
  %872 = add i64 %866, -76
  %873 = add i64 %864, 17
  store i64 %873, i64* %PC.i, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = sext i32 %875 to i64
  store i64 %876, i64* %RCX.i523, align 8
  %877 = shl nsw i64 %876, 2
  %878 = add nsw i64 %877, 6300752
  %879 = add i64 %864, 24
  store i64 %879, i64* %PC.i, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RDI.i425, align 8
  %883 = add i64 %866, -8
  %884 = add i64 %864, 29
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  %887 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %886, i64* %887, align 1
  store double 0.000000e+00, double* %684, align 1
  %888 = add i64 %866, -16
  %889 = add i64 %864, 34
  store i64 %889, i64* %PC.i, align 8
  %890 = inttoptr i64 %888 to double*
  %891 = load double, double* %890, align 8
  %892 = fsub double %891, %865
  store double %892, double* %690, align 1
  store i64 0, i64* %692, align 1
  %893 = add i64 %866, -24
  %894 = add i64 %864, 43
  store i64 %894, i64* %PC.i, align 8
  %895 = inttoptr i64 %893 to i64*
  %896 = load i64, i64* %895, align 8
  %897 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %896, i64* %897, align 1
  %898 = add i64 %866, -136
  %899 = add i64 %864, 51
  store i64 %899, i64* %PC.i, align 8
  %900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %901 = load i64, i64* %900, align 1
  %902 = inttoptr i64 %898 to i64*
  store i64 %901, i64* %902, align 8
  %903 = load i64, i64* %PC.i, align 8
  %904 = load <2 x i32>, <2 x i32>* %707, align 1
  %905 = load <2 x i32>, <2 x i32>* %710, align 1
  %906 = extractelement <2 x i32> %904, i32 0
  store i32 %906, i32* %713, align 1
  %907 = extractelement <2 x i32> %904, i32 1
  store i32 %907, i32* %716, align 1
  %908 = extractelement <2 x i32> %905, i32 0
  store i32 %908, i32* %718, align 1
  %909 = extractelement <2 x i32> %905, i32 1
  store i32 %909, i32* %721, align 1
  %910 = load i64, i64* %RBP.i, align 8
  %911 = add i64 %910, -144
  %912 = add i64 %903, 11
  store i64 %912, i64* %PC.i, align 8
  %913 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  %914 = load i64, i64* %913, align 1
  %915 = inttoptr i64 %911 to i64*
  store i64 %914, i64* %915, align 8
  %916 = load i64, i64* %PC.i, align 8
  %917 = load <2 x i32>, <2 x i32>* %729, align 1
  %918 = load <2 x i32>, <2 x i32>* %732, align 1
  %919 = extractelement <2 x i32> %917, i32 0
  store i32 %919, i32* %735, align 1
  %920 = extractelement <2 x i32> %917, i32 1
  store i32 %920, i32* %738, align 1
  %921 = extractelement <2 x i32> %918, i32 0
  store i32 %921, i32* %740, align 1
  %922 = extractelement <2 x i32> %918, i32 1
  store i32 %922, i32* %743, align 1
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -144
  %925 = add i64 %916, 11
  store i64 %925, i64* %PC.i, align 8
  %926 = inttoptr i64 %924 to i64*
  %927 = load i64, i64* %926, align 8
  %928 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %927, i64* %928, align 1
  store double 0.000000e+00, double* %684, align 1
  %929 = add i64 %923, -152
  %930 = add i64 %916, 19
  store i64 %930, i64* %PC.i, align 8
  %931 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  %932 = load i64, i64* %931, align 1
  %933 = inttoptr i64 %929 to i64*
  store i64 %932, i64* %933, align 8
  %934 = load i64, i64* %PC.i, align 8
  %935 = load <2 x i32>, <2 x i32>* %707, align 1
  %936 = load <2 x i32>, <2 x i32>* %710, align 1
  %937 = extractelement <2 x i32> %935, i32 0
  store i32 %937, i32* %757, align 1
  %938 = extractelement <2 x i32> %935, i32 1
  store i32 %938, i32* %760, align 1
  %939 = extractelement <2 x i32> %936, i32 0
  store i32 %939, i32* %762, align 1
  %940 = extractelement <2 x i32> %936, i32 1
  store i32 %940, i32* %765, align 1
  %941 = add i64 %934, 737
  %942 = add i64 %934, 8
  %943 = load i64, i64* %6, align 8
  %944 = add i64 %943, -8
  %945 = inttoptr i64 %944 to i64*
  store i64 %942, i64* %945, align 8
  store i64 %944, i64* %6, align 8
  store i64 %941, i64* %3, align 8
  %call2_400902 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %941, %struct.Memory* %call2_4008a9)
  %946 = load i64, i64* %PC.i, align 8
  %947 = load double, double* bitcast (%G_0x531__rip__type* @G_0x531__rip_ to double*), align 8
  store double %947, double* %183, align 1
  store double 0.000000e+00, double* %185, align 1
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -88
  %950 = add i64 %946, 12
  store i64 %950, i64* %PC.i, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RCX.i523, align 8
  %954 = shl nsw i64 %953, 2
  %955 = add nsw i64 %954, 6300752
  %956 = add i64 %946, 19
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RDI.i425, align 8
  %960 = add i64 %948, -8
  %961 = add i64 %946, 24
  store i64 %961, i64* %PC.i, align 8
  %962 = inttoptr i64 %960 to double*
  %963 = load double, double* %962, align 8
  %964 = fsub double %963, %947
  store double %964, double* %661, align 1
  store i64 0, i64* %663, align 1
  %965 = add i64 %948, -16
  %966 = add i64 %946, 33
  store i64 %966, i64* %PC.i, align 8
  %967 = inttoptr i64 %965 to double*
  %968 = load double, double* %967, align 8
  %969 = fsub double %968, %947
  store double %969, double* %681, align 1
  store i64 0, i64* %683, align 1
  %970 = add i64 %948, -24
  %971 = add i64 %946, 42
  store i64 %971, i64* %PC.i, align 8
  %972 = inttoptr i64 %970 to i64*
  %973 = load i64, i64* %972, align 8
  %974 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %973, i64* %974, align 1
  %975 = add i64 %948, -160
  %976 = add i64 %946, 50
  store i64 %976, i64* %PC.i, align 8
  %977 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %978 = load i64, i64* %977, align 1
  %979 = inttoptr i64 %975 to i64*
  store i64 %978, i64* %979, align 8
  %980 = load i64, i64* %PC.i, align 8
  %981 = load <2 x i32>, <2 x i32>* %806, align 1
  %982 = load <2 x i32>, <2 x i32>* %809, align 1
  %983 = extractelement <2 x i32> %981, i32 0
  store i32 %983, i32* %713, align 1
  %984 = extractelement <2 x i32> %981, i32 1
  store i32 %984, i32* %716, align 1
  %985 = extractelement <2 x i32> %982, i32 0
  store i32 %985, i32* %718, align 1
  %986 = extractelement <2 x i32> %982, i32 1
  store i32 %986, i32* %721, align 1
  %987 = load i64, i64* %RBP.i, align 8
  %988 = add i64 %987, -168
  %989 = add i64 %980, 11
  store i64 %989, i64* %PC.i, align 8
  %990 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  %991 = load i64, i64* %990, align 1
  %992 = inttoptr i64 %988 to i64*
  store i64 %991, i64* %992, align 8
  %993 = load i64, i64* %PC.i, align 8
  %994 = load <2 x i32>, <2 x i32>* %707, align 1
  %995 = load <2 x i32>, <2 x i32>* %710, align 1
  %996 = extractelement <2 x i32> %994, i32 0
  store i32 %996, i32* %735, align 1
  %997 = extractelement <2 x i32> %994, i32 1
  store i32 %997, i32* %738, align 1
  %998 = extractelement <2 x i32> %995, i32 0
  store i32 %998, i32* %740, align 1
  %999 = extractelement <2 x i32> %995, i32 1
  store i32 %999, i32* %743, align 1
  %1000 = load i64, i64* %RBP.i, align 8
  %1001 = add i64 %1000, -168
  %1002 = add i64 %993, 11
  store i64 %1002, i64* %PC.i, align 8
  %1003 = inttoptr i64 %1001 to i64*
  %1004 = load i64, i64* %1003, align 8
  %1005 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1004, i64* %1005, align 1
  store double 0.000000e+00, double* %664, align 1
  %1006 = add i64 %993, 668
  %1007 = add i64 %993, 16
  %1008 = load i64, i64* %6, align 8
  %1009 = add i64 %1008, -8
  %1010 = inttoptr i64 %1009 to i64*
  store i64 %1007, i64* %1010, align 8
  store i64 %1009, i64* %6, align 8
  store i64 %1006, i64* %3, align 8
  %call2_40094f = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1006, %struct.Memory* %call2_400902)
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -152
  %1013 = load i64, i64* %PC.i, align 8
  %1014 = add i64 %1013, 8
  store i64 %1014, i64* %PC.i, align 8
  %1015 = inttoptr i64 %1012 to i64*
  %1016 = load i64, i64* %1015, align 8
  %1017 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1016, i64* %1017, align 1
  store double 0.000000e+00, double* %185, align 1
  %1018 = add i64 %1011, -176
  %1019 = add i64 %1013, 16
  store i64 %1019, i64* %PC.i, align 8
  %1020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1021 = load i64, i64* %1020, align 1
  %1022 = inttoptr i64 %1018 to i64*
  store i64 %1021, i64* %1022, align 8
  %1023 = load i64, i64* %PC.i, align 8
  %1024 = load <2 x i32>, <2 x i32>* %839, align 1
  %1025 = load <2 x i32>, <2 x i32>* %842, align 1
  %1026 = extractelement <2 x i32> %1024, i32 0
  store i32 %1026, i32* %713, align 1
  %1027 = extractelement <2 x i32> %1024, i32 1
  store i32 %1027, i32* %716, align 1
  %1028 = extractelement <2 x i32> %1025, i32 0
  store i32 %1028, i32* %718, align 1
  %1029 = extractelement <2 x i32> %1025, i32 1
  store i32 %1029, i32* %721, align 1
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -160
  %1032 = add i64 %1023, 11
  store i64 %1032, i64* %PC.i, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  %1035 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1034, i64* %1035, align 1
  store double 0.000000e+00, double* %185, align 1
  %1036 = add i64 %1030, -176
  %1037 = add i64 %1023, 19
  store i64 %1037, i64* %PC.i, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  %1040 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1039, i64* %1040, align 1
  store double 0.000000e+00, double* %664, align 1
  %1041 = add i64 %1023, 972
  %1042 = add i64 %1023, 24
  %1043 = load i64, i64* %6, align 8
  %1044 = add i64 %1043, -8
  %1045 = inttoptr i64 %1044 to i64*
  store i64 %1042, i64* %1045, align 8
  store i64 %1044, i64* %6, align 8
  store i64 %1041, i64* %3, align 8
  %call2_400977 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1041, %struct.Memory* %call2_40094f)
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -104
  %1048 = load i64, i64* %PC.i, align 8
  %1049 = add i64 %1048, 5
  store i64 %1049, i64* %PC.i, align 8
  %1050 = inttoptr i64 %1047 to i64*
  %1051 = load i64, i64* %1050, align 8
  %1052 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1051, i64* %1052, align 1
  store double 0.000000e+00, double* %185, align 1
  %1053 = add i64 %1046, -184
  %1054 = add i64 %1048, 13
  store i64 %1054, i64* %PC.i, align 8
  %1055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1056 = load i64, i64* %1055, align 1
  %1057 = inttoptr i64 %1053 to i64*
  store i64 %1056, i64* %1057, align 8
  %1058 = load i64, i64* %PC.i, align 8
  %1059 = load <2 x i32>, <2 x i32>* %839, align 1
  %1060 = load <2 x i32>, <2 x i32>* %842, align 1
  %1061 = extractelement <2 x i32> %1059, i32 0
  store i32 %1061, i32* %713, align 1
  %1062 = extractelement <2 x i32> %1059, i32 1
  store i32 %1062, i32* %716, align 1
  %1063 = extractelement <2 x i32> %1060, i32 0
  store i32 %1063, i32* %718, align 1
  %1064 = extractelement <2 x i32> %1060, i32 1
  store i32 %1064, i32* %721, align 1
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -136
  %1067 = add i64 %1058, 11
  store i64 %1067, i64* %PC.i, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  %1070 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1069, i64* %1070, align 1
  store double 0.000000e+00, double* %185, align 1
  %1071 = add i64 %1065, -184
  %1072 = add i64 %1058, 19
  store i64 %1072, i64* %PC.i, align 8
  %1073 = inttoptr i64 %1071 to i64*
  %1074 = load i64, i64* %1073, align 8
  %1075 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1074, i64* %1075, align 1
  store double 0.000000e+00, double* %664, align 1
  %1076 = add i64 %1058, 935
  %1077 = add i64 %1058, 24
  %1078 = load i64, i64* %6, align 8
  %1079 = add i64 %1078, -8
  %1080 = inttoptr i64 %1079 to i64*
  store i64 %1077, i64* %1080, align 8
  store i64 %1079, i64* %6, align 8
  store i64 %1076, i64* %3, align 8
  %call2_40099c = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1076, %struct.Memory* %call2_400977)
  %1081 = load i64, i64* %PC.i, align 8
  %1082 = load i64, i64* bitcast (%G_0x497__rip__type* @G_0x497__rip_ to i64*), align 8
  %1083 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1082, i64* %1083, align 1
  store double 0.000000e+00, double* %185, align 1
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -56
  %1086 = add i64 %1081, 13
  store i64 %1086, i64* %PC.i, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  %1089 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1088, i64* %1089, align 1
  store double 0.000000e+00, double* %664, align 1
  %1090 = add i64 %1084, -48
  %1091 = add i64 %1081, 18
  store i64 %1091, i64* %PC.i, align 8
  %1092 = inttoptr i64 %1090 to i64*
  %1093 = load i64, i64* %1092, align 8
  %1094 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1093, i64* %1094, align 1
  store double 0.000000e+00, double* %684, align 1
  %1095 = add i64 %1084, -72
  %1096 = add i64 %1081, 21
  store i64 %1096, i64* %PC.i, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = add i32 %1098, 1
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i629, align 8
  %1101 = icmp eq i32 %1098, -1
  %1102 = icmp eq i32 %1099, 0
  %1103 = or i1 %1101, %1102
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %14, align 1
  %1105 = and i32 %1099, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %21, align 1
  %1110 = xor i32 %1098, %1099
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %27, align 1
  %1114 = icmp eq i32 %1099, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %30, align 1
  %1116 = lshr i32 %1099, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %33, align 1
  %1118 = lshr i32 %1098, 31
  %1119 = xor i32 %1116, %1118
  %1120 = add nuw nsw i32 %1119, %1116
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %39, align 1
  %1123 = sext i32 %1099 to i64
  store i64 %1123, i64* %RCX.i523, align 8
  %1124 = shl nsw i64 %1123, 2
  %1125 = add nsw i64 %1124, 6300752
  %1126 = add i64 %1081, 34
  store i64 %1126, i64* %PC.i, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RDI.i425, align 8
  %1130 = add i64 %1084, -8
  %1131 = add i64 %1081, 39
  store i64 %1131, i64* %PC.i, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  %1134 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %685, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1133, i64* %1134, align 1
  store double 0.000000e+00, double* %693, align 1
  %1135 = add i64 %1084, -16
  %1136 = add i64 %1081, 44
  store i64 %1136, i64* %PC.i, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  %1139 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %694, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1138, i64* %1139, align 1
  store double 0.000000e+00, double* %702, align 1
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %1141 = add i64 %1084, -24
  %1142 = add i64 %1081, 49
  store i64 %1142, i64* %PC.i, align 8
  %1143 = inttoptr i64 %1141 to double*
  %1144 = load double, double* %1143, align 8
  %1145 = bitcast %union.VectorReg* %1140 to double*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %1147 = load double, double* %52, align 1
  %1148 = fsub double %1144, %1147
  store double %1148, double* %1145, align 1
  store i64 0, i64* %1146, align 1
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -192
  %1151 = add i64 %1081, 61
  store i64 %1151, i64* %PC.i, align 8
  %1152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1153 = load i64, i64* %1152, align 1
  %1154 = inttoptr i64 %1150 to i64*
  store i64 %1153, i64* %1154, align 8
  %1155 = load i64, i64* %PC.i, align 8
  %1156 = load <2 x i32>, <2 x i32>* %729, align 1
  %1157 = load <2 x i32>, <2 x i32>* %732, align 1
  %1158 = extractelement <2 x i32> %1156, i32 0
  store i32 %1158, i32* %713, align 1
  %1159 = extractelement <2 x i32> %1156, i32 1
  store i32 %1159, i32* %716, align 1
  %1160 = extractelement <2 x i32> %1157, i32 0
  store i32 %1160, i32* %718, align 1
  %1161 = extractelement <2 x i32> %1157, i32 1
  store i32 %1161, i32* %721, align 1
  %1162 = load <2 x i32>, <2 x i32>* %751, align 1
  %1163 = load <2 x i32>, <2 x i32>* %754, align 1
  %1164 = extractelement <2 x i32> %1162, i32 0
  store i32 %1164, i32* %735, align 1
  %1165 = extractelement <2 x i32> %1162, i32 1
  store i32 %1165, i32* %738, align 1
  %1166 = extractelement <2 x i32> %1163, i32 0
  store i32 %1166, i32* %740, align 1
  %1167 = extractelement <2 x i32> %1163, i32 1
  store i32 %1167, i32* %743, align 1
  %1168 = load i64, i64* %RBP.i, align 8
  %1169 = add i64 %1168, -200
  %1170 = add i64 %1155, 14
  store i64 %1170, i64* %PC.i, align 8
  %1171 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  %1172 = load i64, i64* %1171, align 1
  %1173 = inttoptr i64 %1169 to i64*
  store i64 %1172, i64* %1173, align 8
  %1174 = load i64, i64* %PC.i, align 8
  %1175 = bitcast %union.VectorReg* %1140 to <2 x i32>*
  %1176 = load <2 x i32>, <2 x i32>* %1175, align 1
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %1178 = bitcast i64* %1177 to <2 x i32>*
  %1179 = load <2 x i32>, <2 x i32>* %1178, align 1
  %1180 = extractelement <2 x i32> %1176, i32 0
  store i32 %1180, i32* %757, align 1
  %1181 = extractelement <2 x i32> %1176, i32 1
  store i32 %1181, i32* %760, align 1
  %1182 = extractelement <2 x i32> %1179, i32 0
  store i32 %1182, i32* %762, align 1
  %1183 = extractelement <2 x i32> %1179, i32 1
  store i32 %1183, i32* %765, align 1
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -208
  %1186 = add i64 %1174, 11
  store i64 %1186, i64* %PC.i, align 8
  %1187 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  %1188 = load i64, i64* %1187, align 1
  %1189 = inttoptr i64 %1185 to i64*
  store i64 %1188, i64* %1189, align 8
  %1190 = load i64, i64* %PC.i, align 8
  %1191 = add i64 %1190, 489
  %1192 = add i64 %1190, 5
  %1193 = load i64, i64* %6, align 8
  %1194 = add i64 %1193, -8
  %1195 = inttoptr i64 %1194 to i64*
  store i64 %1192, i64* %1195, align 8
  store i64 %1194, i64* %6, align 8
  store i64 %1191, i64* %3, align 8
  %call2_4009f7 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1191, %struct.Memory* %call2_40099c)
  %1196 = load i64, i64* %PC.i, align 8
  %1197 = load double, double* bitcast (%G_0x43c__rip__type* @G_0x43c__rip_ to double*), align 8
  store double %1197, double* %183, align 1
  store double 0.000000e+00, double* %185, align 1
  %1198 = load i64, i64* %RBP.i, align 8
  %1199 = add i64 %1198, -84
  %1200 = add i64 %1196, 11
  store i64 %1200, i64* %PC.i, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = add i32 %1202, 1
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RAX.i629, align 8
  %1205 = icmp eq i32 %1202, -1
  %1206 = icmp eq i32 %1203, 0
  %1207 = or i1 %1205, %1206
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %14, align 1
  %1209 = and i32 %1203, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %21, align 1
  %1214 = xor i32 %1202, %1203
  %1215 = lshr i32 %1214, 4
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  store i8 %1217, i8* %27, align 1
  %1218 = icmp eq i32 %1203, 0
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %30, align 1
  %1220 = lshr i32 %1203, 31
  %1221 = trunc i32 %1220 to i8
  store i8 %1221, i8* %33, align 1
  %1222 = lshr i32 %1202, 31
  %1223 = xor i32 %1220, %1222
  %1224 = add nuw nsw i32 %1223, %1220
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %39, align 1
  %1227 = sext i32 %1203 to i64
  store i64 %1227, i64* %RCX.i523, align 8
  %1228 = shl nsw i64 %1227, 2
  %1229 = add nsw i64 %1228, 6300752
  %1230 = add i64 %1196, 24
  store i64 %1230, i64* %PC.i, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RDI.i425, align 8
  %1234 = add i64 %1198, -8
  %1235 = add i64 %1196, 29
  store i64 %1235, i64* %PC.i, align 8
  %1236 = inttoptr i64 %1234 to double*
  %1237 = load double, double* %1236, align 8
  %1238 = fsub double %1237, %1197
  store double %1238, double* %661, align 1
  store i64 0, i64* %663, align 1
  %1239 = add i64 %1198, -16
  %1240 = add i64 %1196, 38
  store i64 %1240, i64* %PC.i, align 8
  %1241 = inttoptr i64 %1239 to i64*
  %1242 = load i64, i64* %1241, align 8
  %1243 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1242, i64* %1243, align 1
  store double 0.000000e+00, double* %684, align 1
  %1244 = add i64 %1198, -24
  %1245 = add i64 %1196, 43
  store i64 %1245, i64* %PC.i, align 8
  %1246 = inttoptr i64 %1244 to double*
  %1247 = load double, double* %1246, align 8
  %1248 = fsub double %1247, %1197
  store double %1248, double* %690, align 1
  store i64 0, i64* %692, align 1
  %1249 = add i64 %1198, -216
  %1250 = add i64 %1196, 55
  store i64 %1250, i64* %PC.i, align 8
  %1251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1252 = load i64, i64* %1251, align 1
  %1253 = inttoptr i64 %1249 to i64*
  store i64 %1252, i64* %1253, align 8
  %1254 = load i64, i64* %PC.i, align 8
  %1255 = load <2 x i32>, <2 x i32>* %806, align 1
  %1256 = load <2 x i32>, <2 x i32>* %809, align 1
  %1257 = extractelement <2 x i32> %1255, i32 0
  store i32 %1257, i32* %713, align 1
  %1258 = extractelement <2 x i32> %1255, i32 1
  store i32 %1258, i32* %716, align 1
  %1259 = extractelement <2 x i32> %1256, i32 0
  store i32 %1259, i32* %718, align 1
  %1260 = extractelement <2 x i32> %1256, i32 1
  store i32 %1260, i32* %721, align 1
  %1261 = load <2 x i32>, <2 x i32>* %707, align 1
  %1262 = load <2 x i32>, <2 x i32>* %710, align 1
  %1263 = extractelement <2 x i32> %1261, i32 0
  store i32 %1263, i32* %735, align 1
  %1264 = extractelement <2 x i32> %1261, i32 1
  store i32 %1264, i32* %738, align 1
  %1265 = extractelement <2 x i32> %1262, i32 0
  store i32 %1265, i32* %740, align 1
  %1266 = extractelement <2 x i32> %1262, i32 1
  store i32 %1266, i32* %743, align 1
  %1267 = load <2 x i32>, <2 x i32>* %729, align 1
  %1268 = load <2 x i32>, <2 x i32>* %732, align 1
  %1269 = extractelement <2 x i32> %1267, i32 0
  store i32 %1269, i32* %757, align 1
  %1270 = extractelement <2 x i32> %1267, i32 1
  store i32 %1270, i32* %760, align 1
  %1271 = extractelement <2 x i32> %1268, i32 0
  store i32 %1271, i32* %762, align 1
  %1272 = extractelement <2 x i32> %1268, i32 1
  store i32 %1272, i32* %765, align 1
  %1273 = add i64 %1254, 429
  %1274 = add i64 %1254, 14
  %1275 = load i64, i64* %6, align 8
  %1276 = add i64 %1275, -8
  %1277 = inttoptr i64 %1276 to i64*
  store i64 %1274, i64* %1277, align 8
  store i64 %1276, i64* %6, align 8
  store i64 %1273, i64* %3, align 8
  %call2_400a3c = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1273, %struct.Memory* %call2_4009f7)
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -208
  %1280 = load i64, i64* %PC.i, align 8
  %1281 = add i64 %1280, 8
  store i64 %1281, i64* %PC.i, align 8
  %1282 = inttoptr i64 %1279 to i64*
  %1283 = load i64, i64* %1282, align 8
  %1284 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1283, i64* %1284, align 1
  store double 0.000000e+00, double* %185, align 1
  %1285 = add i64 %1278, -224
  %1286 = add i64 %1280, 16
  store i64 %1286, i64* %PC.i, align 8
  %1287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1288 = load i64, i64* %1287, align 1
  %1289 = inttoptr i64 %1285 to i64*
  store i64 %1288, i64* %1289, align 8
  %1290 = load i64, i64* %PC.i, align 8
  %1291 = load <2 x i32>, <2 x i32>* %839, align 1
  %1292 = load <2 x i32>, <2 x i32>* %842, align 1
  %1293 = extractelement <2 x i32> %1291, i32 0
  store i32 %1293, i32* %713, align 1
  %1294 = extractelement <2 x i32> %1291, i32 1
  store i32 %1294, i32* %716, align 1
  %1295 = extractelement <2 x i32> %1292, i32 0
  store i32 %1295, i32* %718, align 1
  %1296 = extractelement <2 x i32> %1292, i32 1
  store i32 %1296, i32* %721, align 1
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -216
  %1299 = add i64 %1290, 11
  store i64 %1299, i64* %PC.i, align 8
  %1300 = inttoptr i64 %1298 to i64*
  %1301 = load i64, i64* %1300, align 8
  %1302 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1301, i64* %1302, align 1
  store double 0.000000e+00, double* %185, align 1
  %1303 = add i64 %1297, -224
  %1304 = add i64 %1290, 19
  store i64 %1304, i64* %PC.i, align 8
  %1305 = inttoptr i64 %1303 to i64*
  %1306 = load i64, i64* %1305, align 8
  %1307 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1306, i64* %1307, align 1
  store double 0.000000e+00, double* %664, align 1
  %1308 = add i64 %1290, 735
  %1309 = add i64 %1290, 24
  %1310 = load i64, i64* %6, align 8
  %1311 = add i64 %1310, -8
  %1312 = inttoptr i64 %1311 to i64*
  store i64 %1309, i64* %1312, align 8
  store i64 %1311, i64* %6, align 8
  store i64 %1308, i64* %3, align 8
  %call2_400a64 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1308, %struct.Memory* %call2_400a3c)
  %1313 = load i64, i64* %PC.i, align 8
  %1314 = load double, double* bitcast (%G_0x3cf__rip__type* @G_0x3cf__rip_ to double*), align 8
  store double %1314, double* %183, align 1
  store double 0.000000e+00, double* %185, align 1
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -48
  %1317 = add i64 %1313, 13
  store i64 %1317, i64* %PC.i, align 8
  %1318 = inttoptr i64 %1316 to i64*
  %1319 = load i64, i64* %1318, align 8
  %1320 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1319, i64* %1320, align 1
  store double 0.000000e+00, double* %664, align 1
  %1321 = add i64 %1315, -76
  %1322 = add i64 %1313, 16
  store i64 %1322, i64* %PC.i, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = add i32 %1324, 1
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RAX.i629, align 8
  %1327 = icmp eq i32 %1324, -1
  %1328 = icmp eq i32 %1325, 0
  %1329 = or i1 %1327, %1328
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %14, align 1
  %1331 = and i32 %1325, 255
  %1332 = tail call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  store i8 %1335, i8* %21, align 1
  %1336 = xor i32 %1324, %1325
  %1337 = lshr i32 %1336, 4
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  store i8 %1339, i8* %27, align 1
  %1340 = icmp eq i32 %1325, 0
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %30, align 1
  %1342 = lshr i32 %1325, 31
  %1343 = trunc i32 %1342 to i8
  store i8 %1343, i8* %33, align 1
  %1344 = lshr i32 %1324, 31
  %1345 = xor i32 %1342, %1344
  %1346 = add nuw nsw i32 %1345, %1342
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %39, align 1
  %1349 = sext i32 %1325 to i64
  store i64 %1349, i64* %RCX.i523, align 8
  %1350 = shl nsw i64 %1349, 2
  %1351 = add nsw i64 %1350, 6300752
  %1352 = add i64 %1313, 29
  store i64 %1352, i64* %PC.i, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RDI.i425, align 8
  %1356 = add i64 %1315, -8
  %1357 = add i64 %1313, 34
  store i64 %1357, i64* %PC.i, align 8
  %1358 = inttoptr i64 %1356 to i64*
  %1359 = load i64, i64* %1358, align 8
  %1360 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %676, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1359, i64* %1360, align 1
  store double 0.000000e+00, double* %684, align 1
  %1361 = add i64 %1315, -16
  %1362 = add i64 %1313, 39
  store i64 %1362, i64* %PC.i, align 8
  %1363 = inttoptr i64 %1361 to double*
  %1364 = load double, double* %1363, align 8
  %1365 = fsub double %1364, %1314
  store double %1365, double* %690, align 1
  store i64 0, i64* %692, align 1
  %1366 = add i64 %1315, -24
  %1367 = add i64 %1313, 48
  store i64 %1367, i64* %PC.i, align 8
  %1368 = inttoptr i64 %1366 to double*
  %1369 = load double, double* %1368, align 8
  %1370 = fsub double %1369, %1314
  store double %1370, double* %699, align 1
  store i64 0, i64* %701, align 1
  %1371 = add i64 %1315, -232
  %1372 = add i64 %1313, 60
  store i64 %1372, i64* %PC.i, align 8
  %1373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1374 = load i64, i64* %1373, align 1
  %1375 = inttoptr i64 %1371 to i64*
  store i64 %1374, i64* %1375, align 8
  %1376 = load i64, i64* %PC.i, align 8
  %1377 = load <2 x i32>, <2 x i32>* %707, align 1
  %1378 = load <2 x i32>, <2 x i32>* %710, align 1
  %1379 = extractelement <2 x i32> %1377, i32 0
  store i32 %1379, i32* %713, align 1
  %1380 = extractelement <2 x i32> %1377, i32 1
  store i32 %1380, i32* %716, align 1
  %1381 = extractelement <2 x i32> %1378, i32 0
  store i32 %1381, i32* %718, align 1
  %1382 = extractelement <2 x i32> %1378, i32 1
  store i32 %1382, i32* %721, align 1
  %1383 = load <2 x i32>, <2 x i32>* %729, align 1
  %1384 = load <2 x i32>, <2 x i32>* %732, align 1
  %1385 = extractelement <2 x i32> %1383, i32 0
  store i32 %1385, i32* %735, align 1
  %1386 = extractelement <2 x i32> %1383, i32 1
  store i32 %1386, i32* %738, align 1
  %1387 = extractelement <2 x i32> %1384, i32 0
  store i32 %1387, i32* %740, align 1
  %1388 = extractelement <2 x i32> %1384, i32 1
  store i32 %1388, i32* %743, align 1
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -240
  %1391 = add i64 %1376, 14
  store i64 %1391, i64* %PC.i, align 8
  %1392 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  %1393 = load i64, i64* %1392, align 1
  %1394 = inttoptr i64 %1390 to i64*
  store i64 %1393, i64* %1394, align 8
  %1395 = load i64, i64* %PC.i, align 8
  %1396 = load <2 x i32>, <2 x i32>* %751, align 1
  %1397 = load <2 x i32>, <2 x i32>* %754, align 1
  %1398 = extractelement <2 x i32> %1396, i32 0
  store i32 %1398, i32* %757, align 1
  %1399 = extractelement <2 x i32> %1396, i32 1
  store i32 %1399, i32* %760, align 1
  %1400 = extractelement <2 x i32> %1397, i32 0
  store i32 %1400, i32* %762, align 1
  %1401 = extractelement <2 x i32> %1397, i32 1
  store i32 %1401, i32* %765, align 1
  %1402 = add i64 %1395, 301
  %1403 = add i64 %1395, 8
  %1404 = load i64, i64* %6, align 8
  %1405 = add i64 %1404, -8
  %1406 = inttoptr i64 %1405 to i64*
  store i64 %1403, i64* %1406, align 8
  store i64 %1405, i64* %6, align 8
  store i64 %1402, i64* %3, align 8
  %call2_400ab6 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1402, %struct.Memory* %call2_400a64)
  %1407 = load i64, i64* %PC.i, align 8
  %1408 = load double, double* bitcast (%G_0x37d__rip__type* @G_0x37d__rip_ to double*), align 8
  store double %1408, double* %183, align 1
  store double 0.000000e+00, double* %185, align 1
  %1409 = load i64, i64* %RBP.i, align 8
  %1410 = add i64 %1409, -88
  %1411 = add i64 %1407, 11
  store i64 %1411, i64* %PC.i, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  %1414 = add i32 %1413, 1
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RAX.i629, align 8
  %1416 = icmp eq i32 %1413, -1
  %1417 = icmp eq i32 %1414, 0
  %1418 = or i1 %1416, %1417
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %14, align 1
  %1420 = and i32 %1414, 255
  %1421 = tail call i32 @llvm.ctpop.i32(i32 %1420)
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = xor i8 %1423, 1
  store i8 %1424, i8* %21, align 1
  %1425 = xor i32 %1413, %1414
  %1426 = lshr i32 %1425, 4
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  store i8 %1428, i8* %27, align 1
  %1429 = icmp eq i32 %1414, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %30, align 1
  %1431 = lshr i32 %1414, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %33, align 1
  %1433 = lshr i32 %1413, 31
  %1434 = xor i32 %1431, %1433
  %1435 = add nuw nsw i32 %1434, %1431
  %1436 = icmp eq i32 %1435, 2
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %39, align 1
  %1438 = sext i32 %1414 to i64
  store i64 %1438, i64* %RCX.i523, align 8
  %1439 = shl nsw i64 %1438, 2
  %1440 = add nsw i64 %1439, 6300752
  %1441 = add i64 %1407, 24
  store i64 %1441, i64* %PC.i, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RDI.i425, align 8
  %1445 = add i64 %1409, -8
  %1446 = add i64 %1407, 29
  store i64 %1446, i64* %PC.i, align 8
  %1447 = inttoptr i64 %1445 to double*
  %1448 = load double, double* %1447, align 8
  %1449 = fsub double %1448, %1408
  store double %1449, double* %661, align 1
  store i64 0, i64* %663, align 1
  %1450 = add i64 %1409, -16
  %1451 = add i64 %1407, 38
  store i64 %1451, i64* %PC.i, align 8
  %1452 = inttoptr i64 %1450 to double*
  %1453 = load double, double* %1452, align 8
  %1454 = fsub double %1453, %1408
  store double %1454, double* %681, align 1
  store i64 0, i64* %683, align 1
  %1455 = add i64 %1409, -24
  %1456 = add i64 %1407, 47
  store i64 %1456, i64* %PC.i, align 8
  %1457 = inttoptr i64 %1455 to double*
  %1458 = load double, double* %1457, align 8
  %1459 = fsub double %1458, %1408
  store double %1459, double* %690, align 1
  store i64 0, i64* %692, align 1
  %1460 = add i64 %1409, -248
  %1461 = add i64 %1407, 59
  store i64 %1461, i64* %PC.i, align 8
  %1462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1463 = load i64, i64* %1462, align 1
  %1464 = inttoptr i64 %1460 to i64*
  store i64 %1463, i64* %1464, align 8
  %1465 = load i64, i64* %PC.i, align 8
  %1466 = load <2 x i32>, <2 x i32>* %806, align 1
  %1467 = load <2 x i32>, <2 x i32>* %809, align 1
  %1468 = extractelement <2 x i32> %1466, i32 0
  store i32 %1468, i32* %713, align 1
  %1469 = extractelement <2 x i32> %1466, i32 1
  store i32 %1469, i32* %716, align 1
  %1470 = extractelement <2 x i32> %1467, i32 0
  store i32 %1470, i32* %718, align 1
  %1471 = extractelement <2 x i32> %1467, i32 1
  store i32 %1471, i32* %721, align 1
  %1472 = load <2 x i32>, <2 x i32>* %707, align 1
  %1473 = load <2 x i32>, <2 x i32>* %710, align 1
  %1474 = extractelement <2 x i32> %1472, i32 0
  store i32 %1474, i32* %735, align 1
  %1475 = extractelement <2 x i32> %1472, i32 1
  store i32 %1475, i32* %738, align 1
  %1476 = extractelement <2 x i32> %1473, i32 0
  store i32 %1476, i32* %740, align 1
  %1477 = extractelement <2 x i32> %1473, i32 1
  store i32 %1477, i32* %743, align 1
  %1478 = load <2 x i32>, <2 x i32>* %729, align 1
  %1479 = load <2 x i32>, <2 x i32>* %732, align 1
  %1480 = extractelement <2 x i32> %1478, i32 0
  store i32 %1480, i32* %757, align 1
  %1481 = extractelement <2 x i32> %1478, i32 1
  store i32 %1481, i32* %760, align 1
  %1482 = extractelement <2 x i32> %1479, i32 0
  store i32 %1482, i32* %762, align 1
  %1483 = extractelement <2 x i32> %1479, i32 1
  store i32 %1483, i32* %765, align 1
  %1484 = add i64 %1465, 234
  %1485 = add i64 %1465, 14
  %1486 = load i64, i64* %6, align 8
  %1487 = add i64 %1486, -8
  %1488 = inttoptr i64 %1487 to i64*
  store i64 %1485, i64* %1488, align 8
  store i64 %1487, i64* %6, align 8
  store i64 %1484, i64* %3, align 8
  %call2_400aff = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1484, %struct.Memory* %call2_400ab6)
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -240
  %1491 = load i64, i64* %PC.i, align 8
  %1492 = add i64 %1491, 8
  store i64 %1492, i64* %PC.i, align 8
  %1493 = inttoptr i64 %1490 to i64*
  %1494 = load i64, i64* %1493, align 8
  %1495 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1494, i64* %1495, align 1
  store double 0.000000e+00, double* %185, align 1
  %1496 = add i64 %1489, -256
  %1497 = add i64 %1491, 16
  store i64 %1497, i64* %PC.i, align 8
  %1498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1499 = load i64, i64* %1498, align 1
  %1500 = inttoptr i64 %1496 to i64*
  store i64 %1499, i64* %1500, align 8
  %1501 = load i64, i64* %PC.i, align 8
  %1502 = load <2 x i32>, <2 x i32>* %839, align 1
  %1503 = load <2 x i32>, <2 x i32>* %842, align 1
  %1504 = extractelement <2 x i32> %1502, i32 0
  store i32 %1504, i32* %713, align 1
  %1505 = extractelement <2 x i32> %1502, i32 1
  store i32 %1505, i32* %716, align 1
  %1506 = extractelement <2 x i32> %1503, i32 0
  store i32 %1506, i32* %718, align 1
  %1507 = extractelement <2 x i32> %1503, i32 1
  store i32 %1507, i32* %721, align 1
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -248
  %1510 = add i64 %1501, 11
  store i64 %1510, i64* %PC.i, align 8
  %1511 = inttoptr i64 %1509 to i64*
  %1512 = load i64, i64* %1511, align 8
  %1513 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1512, i64* %1513, align 1
  store double 0.000000e+00, double* %185, align 1
  %1514 = add i64 %1508, -256
  %1515 = add i64 %1501, 19
  store i64 %1515, i64* %PC.i, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  %1518 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1517, i64* %1518, align 1
  store double 0.000000e+00, double* %664, align 1
  %1519 = add i64 %1501, 540
  %1520 = add i64 %1501, 24
  %1521 = load i64, i64* %6, align 8
  %1522 = add i64 %1521, -8
  %1523 = inttoptr i64 %1522 to i64*
  store i64 %1520, i64* %1523, align 8
  store i64 %1522, i64* %6, align 8
  store i64 %1519, i64* %3, align 8
  %call2_400b27 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1519, %struct.Memory* %call2_400aff)
  %1524 = load i64, i64* %RBP.i, align 8
  %1525 = add i64 %1524, -200
  %1526 = load i64, i64* %PC.i, align 8
  %1527 = add i64 %1526, 8
  store i64 %1527, i64* %PC.i, align 8
  %1528 = inttoptr i64 %1525 to i64*
  %1529 = load i64, i64* %1528, align 8
  %1530 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1529, i64* %1530, align 1
  store double 0.000000e+00, double* %185, align 1
  %1531 = add i64 %1524, -264
  %1532 = add i64 %1526, 16
  store i64 %1532, i64* %PC.i, align 8
  %1533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1534 = load i64, i64* %1533, align 1
  %1535 = inttoptr i64 %1531 to i64*
  store i64 %1534, i64* %1535, align 8
  %1536 = load i64, i64* %PC.i, align 8
  %1537 = load <2 x i32>, <2 x i32>* %839, align 1
  %1538 = load <2 x i32>, <2 x i32>* %842, align 1
  %1539 = extractelement <2 x i32> %1537, i32 0
  store i32 %1539, i32* %713, align 1
  %1540 = extractelement <2 x i32> %1537, i32 1
  store i32 %1540, i32* %716, align 1
  %1541 = extractelement <2 x i32> %1538, i32 0
  store i32 %1541, i32* %718, align 1
  %1542 = extractelement <2 x i32> %1538, i32 1
  store i32 %1542, i32* %721, align 1
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -232
  %1545 = add i64 %1536, 11
  store i64 %1545, i64* %PC.i, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  %1548 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1547, i64* %1548, align 1
  store double 0.000000e+00, double* %185, align 1
  %1549 = add i64 %1543, -264
  %1550 = add i64 %1536, 19
  store i64 %1550, i64* %PC.i, align 8
  %1551 = inttoptr i64 %1549 to i64*
  %1552 = load i64, i64* %1551, align 8
  %1553 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1552, i64* %1553, align 1
  store double 0.000000e+00, double* %664, align 1
  %1554 = add i64 %1536, 500
  %1555 = add i64 %1536, 24
  %1556 = load i64, i64* %6, align 8
  %1557 = add i64 %1556, -8
  %1558 = inttoptr i64 %1557 to i64*
  store i64 %1555, i64* %1558, align 8
  store i64 %1557, i64* %6, align 8
  store i64 %1554, i64* %3, align 8
  %call2_400b4f = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1554, %struct.Memory* %call2_400b27)
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -96
  %1561 = load i64, i64* %PC.i, align 8
  %1562 = add i64 %1561, 5
  store i64 %1562, i64* %PC.i, align 8
  %1563 = inttoptr i64 %1560 to i64*
  %1564 = load i64, i64* %1563, align 8
  %1565 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1564, i64* %1565, align 1
  store double 0.000000e+00, double* %185, align 1
  %1566 = add i64 %1559, -272
  %1567 = add i64 %1561, 13
  store i64 %1567, i64* %PC.i, align 8
  %1568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1569 = load i64, i64* %1568, align 1
  %1570 = inttoptr i64 %1566 to i64*
  store i64 %1569, i64* %1570, align 8
  %1571 = load i64, i64* %PC.i, align 8
  %1572 = load <2 x i32>, <2 x i32>* %839, align 1
  %1573 = load <2 x i32>, <2 x i32>* %842, align 1
  %1574 = extractelement <2 x i32> %1572, i32 0
  store i32 %1574, i32* %713, align 1
  %1575 = extractelement <2 x i32> %1572, i32 1
  store i32 %1575, i32* %716, align 1
  %1576 = extractelement <2 x i32> %1573, i32 0
  store i32 %1576, i32* %718, align 1
  %1577 = extractelement <2 x i32> %1573, i32 1
  store i32 %1577, i32* %721, align 1
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -192
  %1580 = add i64 %1571, 11
  store i64 %1580, i64* %PC.i, align 8
  %1581 = inttoptr i64 %1579 to i64*
  %1582 = load i64, i64* %1581, align 8
  %1583 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1582, i64* %1583, align 1
  store double 0.000000e+00, double* %185, align 1
  %1584 = add i64 %1578, -272
  %1585 = add i64 %1571, 19
  store i64 %1585, i64* %PC.i, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  %1588 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1587, i64* %1588, align 1
  store double 0.000000e+00, double* %664, align 1
  %1589 = add i64 %1571, 463
  %1590 = add i64 %1571, 24
  %1591 = load i64, i64* %6, align 8
  %1592 = add i64 %1591, -8
  %1593 = inttoptr i64 %1592 to i64*
  store i64 %1590, i64* %1593, align 8
  store i64 %1592, i64* %6, align 8
  store i64 %1589, i64* %3, align 8
  %call2_400b74 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1589, %struct.Memory* %call2_400b4f)
  %1594 = load i64, i64* %RSP.i556, align 8
  %1595 = load i64, i64* %PC.i, align 8
  %1596 = add i64 %1594, 272
  store i64 %1596, i64* %RSP.i556, align 8
  %1597 = icmp ugt i64 %1594, -273
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %14, align 1
  %1599 = trunc i64 %1596 to i32
  %1600 = and i32 %1599, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %21, align 1
  %1605 = xor i64 %1594, 16
  %1606 = xor i64 %1605, %1596
  %1607 = lshr i64 %1606, 4
  %1608 = trunc i64 %1607 to i8
  %1609 = and i8 %1608, 1
  store i8 %1609, i8* %27, align 1
  %1610 = icmp eq i64 %1596, 0
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %30, align 1
  %1612 = lshr i64 %1596, 63
  %1613 = trunc i64 %1612 to i8
  store i8 %1613, i8* %33, align 1
  %1614 = lshr i64 %1594, 63
  %1615 = xor i64 %1612, %1614
  %1616 = add nuw nsw i64 %1615, %1612
  %1617 = icmp eq i64 %1616, 2
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %39, align 1
  %1619 = add i64 %1595, 8
  store i64 %1619, i64* %PC.i, align 8
  %1620 = add i64 %1594, 280
  %1621 = inttoptr i64 %1596 to i64*
  %1622 = load i64, i64* %1621, align 8
  store i64 %1622, i64* %RBP.i, align 8
  store i64 %1620, i64* %6, align 8
  %1623 = add i64 %1595, 9
  store i64 %1623, i64* %PC.i, align 8
  %1624 = inttoptr i64 %1620 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %3, align 8
  %1626 = add i64 %1594, 288
  store i64 %1626, i64* %6, align 8
  ret %struct.Memory* %call2_400b74
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 272
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_callq_.floor_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_andl__0xff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fade(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x602450___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6300752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602450___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6300752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm5___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.grad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5dc__rip__type* @G_0x5dc__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movaps__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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

define %struct.Memory* @routine_callq_.lerp(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x58a__rip__type* @G_0x58a__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x531__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x531__rip__type* @G_0x531__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_0x497__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x497__rip__type* @G_0x497__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movaps__xmm5___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm6___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x43c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x43c__rip__type* @G_0x43c__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xd8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_0x3cf__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x3cf__rip__type* @G_0x3cf__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x37d__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x37d__rip__type* @G_0x37d__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -273
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
