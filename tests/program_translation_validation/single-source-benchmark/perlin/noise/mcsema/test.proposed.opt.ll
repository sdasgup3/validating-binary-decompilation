; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x37d__rip__4197059__type = type <{ [16 x i8] }>
%G_0x3cf__rip__4196977__type = type <{ [16 x i8] }>
%G_0x43c__rip__4196868__type = type <{ [16 x i8] }>
%G_0x497__rip__4196777__type = type <{ [16 x i8] }>
%G_0x531__rip__4196623__type = type <{ [16 x i8] }>
%G_0x58a__rip__4196534__type = type <{ [16 x i8] }>
%G_0x5dc__rip__4196452__type = type <{ [16 x i8] }>
%G_0x602450___rcx_4__type = type <{ [4 x i8] }>
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
@G_0x37d__rip__4197059_ = local_unnamed_addr global %G_0x37d__rip__4197059__type zeroinitializer
@G_0x3cf__rip__4196977_ = local_unnamed_addr global %G_0x3cf__rip__4196977__type zeroinitializer
@G_0x43c__rip__4196868_ = local_unnamed_addr global %G_0x43c__rip__4196868__type zeroinitializer
@G_0x497__rip__4196777_ = local_unnamed_addr global %G_0x497__rip__4196777__type zeroinitializer
@G_0x531__rip__4196623_ = local_unnamed_addr global %G_0x531__rip__4196623__type zeroinitializer
@G_0x58a__rip__4196534_ = local_unnamed_addr global %G_0x58a__rip__4196534__type zeroinitializer
@G_0x5dc__rip__4196452_ = local_unnamed_addr global %G_0x5dc__rip__4196452__type zeroinitializer
@G_0x602450___rcx_4_ = global %G_0x602450___rcx_4__type zeroinitializer

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
  %11 = add i64 %7, -280
  store i64 %11, i64* %6, align 8
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
  store i64 %42, i64* %3, align 8
  %43 = bitcast [32 x %union.VectorReg]* %40 to double*
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %45 = load i64, i64* %44, align 1
  %46 = inttoptr i64 %41 to i64*
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -16
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %3, align 8
  %52 = bitcast %union.VectorReg* %47 to double*
  %53 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %47, i64 0, i32 0, i32 0, i32 0, i64 0
  %54 = load i64, i64* %53, align 1
  %55 = inttoptr i64 %49 to i64*
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %3, align 8
  %61 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  %62 = load i64, i64* %61, align 1
  %63 = inttoptr i64 %58 to i64*
  store i64 %62, i64* %63, align 8
  %64 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 5
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %44, align 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %72 = bitcast i64* %71 to double*
  store double 0.000000e+00, double* %72, align 1
  %73 = add i64 %67, -650
  %74 = add i64 %67, 10
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  %78 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  %RAX.i629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %79 = load i64, i64* %3, align 8
  %80 = load double, double* %43, align 1
  %81 = tail call double @llvm.trunc.f64(double %80)
  %82 = tail call double @llvm.fabs.f64(double %81)
  %83 = fcmp ogt double %82, 0x41DFFFFFFFC00000
  %84 = fptosi double %81 to i32
  %85 = and i32 %84, 255
  %.op = zext i32 %85 to i64
  %86 = select i1 %83, i64 0, i64 %.op
  %87 = trunc i64 %86 to i32
  store i64 %86, i64* %RAX.i629, align 8
  store i8 0, i8* %14, align 1
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1
  %92 = icmp eq i32 %87, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -28
  %96 = add i64 %79, 12
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 %87, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -16
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 5
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %104 = add i64 %100, -672
  %105 = add i64 %100, 10
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %108, align 8
  store i64 %107, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  %109 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %78)
  %110 = load i64, i64* %3, align 8
  %111 = load double, double* %43, align 1
  %112 = tail call double @llvm.trunc.f64(double %111)
  %113 = tail call double @llvm.fabs.f64(double %112)
  %114 = fcmp ogt double %113, 0x41DFFFFFFFC00000
  %115 = fptosi double %112 to i32
  %116 = and i32 %115, 255
  %.op1 = zext i32 %116 to i64
  %117 = select i1 %114, i64 0, i64 %.op1
  %118 = trunc i64 %117 to i32
  store i64 %117, i64* %RAX.i629, align 8
  store i8 0, i8* %14, align 1
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %21, align 1
  %123 = icmp eq i32 %118, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -32
  %127 = add i64 %110, 12
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i32*
  store i32 %118, i32* %128, align 4
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -24
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 5
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %135 = add i64 %131, -694
  %136 = add i64 %131, 10
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %6, align 8
  store i64 %135, i64* %3, align 8
  %140 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %109)
  %141 = load i64, i64* %3, align 8
  %142 = load double, double* %43, align 1
  %143 = tail call double @llvm.trunc.f64(double %142)
  %144 = tail call double @llvm.fabs.f64(double %143)
  %145 = fcmp ogt double %144, 0x41DFFFFFFFC00000
  %146 = fptosi double %143 to i32
  %147 = and i32 %146, 255
  %.op2 = zext i32 %147 to i64
  %148 = select i1 %145, i64 0, i64 %.op2
  %149 = trunc i64 %148 to i32
  store i64 %148, i64* %RAX.i629, align 8
  store i8 0, i8* %14, align 1
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %21, align 1
  %154 = icmp eq i32 %149, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -36
  %158 = add i64 %141, 12
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  store i32 %149, i32* %159, align 4
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -8
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 5
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %166 = add i64 %162, -716
  %167 = add i64 %162, 10
  %168 = load i64, i64* %6, align 8
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %6, align 8
  store i64 %166, i64* %3, align 8
  %171 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %140)
  %172 = bitcast %union.VectorReg* %47 to i8*
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -8
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 5
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to double*
  %178 = load double, double* %177, align 8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %180 = bitcast i64* %179 to double*
  %181 = load double, double* %43, align 1
  %182 = fsub double %178, %181
  store double %182, double* %52, align 1
  store i64 0, i64* %179, align 1
  %183 = add i64 %175, 14
  store i64 %183, i64* %3, align 8
  store double %182, double* %177, align 8
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -16
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 5
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %190 = add i64 %186, -740
  %191 = add i64 %186, 10
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %6, align 8
  store i64 %190, i64* %3, align 8
  %195 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %171)
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -16
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 5
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %197 to double*
  %201 = load double, double* %200, align 8
  %202 = load double, double* %43, align 1
  %203 = fsub double %201, %202
  store double %203, double* %52, align 1
  store i64 0, i64* %179, align 1
  %204 = add i64 %198, 14
  store i64 %204, i64* %3, align 8
  store double %203, double* %200, align 8
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -24
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, 5
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %206 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %211 = add i64 %207, -764
  %212 = add i64 %207, 10
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %6, align 8
  store i64 %211, i64* %3, align 8
  %216 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %195)
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -24
  %219 = load i64, i64* %3, align 8
  %220 = add i64 %219, 5
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %218 to double*
  %222 = load double, double* %221, align 8
  %223 = load double, double* %43, align 1
  %224 = fsub double %222, %223
  store double %224, double* %52, align 1
  store i64 0, i64* %179, align 1
  %225 = add i64 %219, 14
  store i64 %225, i64* %3, align 8
  store double %224, double* %221, align 8
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -8
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, 5
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %227 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %232 = add i64 %228, 1052
  %233 = add i64 %228, 10
  %234 = load i64, i64* %6, align 8
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %236, align 8
  store i64 %235, i64* %6, align 8
  store i64 %232, i64* %3, align 8
  %call2_400779 = tail call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %232, %struct.Memory* %216)
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -48
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 5
  store i64 %240, i64* %3, align 8
  %241 = load i64, i64* %44, align 1
  %242 = inttoptr i64 %238 to i64*
  store i64 %241, i64* %242, align 8
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -16
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 5
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %244 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %249 = add i64 %245, 1037
  %250 = add i64 %245, 10
  %251 = load i64, i64* %6, align 8
  %252 = add i64 %251, -8
  %253 = inttoptr i64 %252 to i64*
  store i64 %250, i64* %253, align 8
  store i64 %252, i64* %6, align 8
  store i64 %249, i64* %3, align 8
  %call2_400788 = tail call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %249, %struct.Memory* %call2_400779)
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -56
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 5
  store i64 %257, i64* %3, align 8
  %258 = load i64, i64* %44, align 1
  %259 = inttoptr i64 %255 to i64*
  store i64 %258, i64* %259, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -24
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, 5
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %261 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %266 = add i64 %262, 1022
  %267 = add i64 %262, 10
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  %call2_400797 = tail call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %266, %struct.Memory* %call2_400788)
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -64
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 5
  store i64 %274, i64* %3, align 8
  %275 = load i64, i64* %44, align 1
  %276 = inttoptr i64 %272 to i64*
  store i64 %275, i64* %276, align 8
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -28
  %279 = load i64, i64* %3, align 8
  %280 = add i64 %279, 4
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RCX.i523, align 8
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %284, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %286 = add i64 %279, 11
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX.i629, align 8
  %290 = add i64 %277, -32
  %291 = add i64 %279, 14
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, %288
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RAX.i629, align 8
  %296 = icmp ult i32 %294, %288
  %297 = icmp ult i32 %294, %293
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %21, align 1
  %305 = xor i32 %293, %288
  %306 = xor i32 %305, %294
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %27, align 1
  %310 = icmp eq i32 %294, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %30, align 1
  %312 = lshr i32 %294, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %33, align 1
  %314 = lshr i32 %288, 31
  %315 = lshr i32 %293, 31
  %316 = xor i32 %312, %314
  %317 = xor i32 %312, %315
  %318 = add nuw nsw i32 %316, %317
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %39, align 1
  %321 = add i64 %277, -68
  %322 = add i64 %279, 17
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  store i32 %294, i32* %323, align 4
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -68
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, 4
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %325 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  store i64 %330, i64* %RCX.i523, align 8
  %331 = shl nsw i64 %330, 2
  %332 = add i64 %331, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %333 = add i64 %326, 11
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i629, align 8
  %337 = add i64 %324, -36
  %338 = add i64 %326, 14
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = add i32 %340, %335
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX.i629, align 8
  %343 = icmp ult i32 %341, %335
  %344 = icmp ult i32 %341, %340
  %345 = or i1 %343, %344
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %14, align 1
  %347 = and i32 %341, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %21, align 1
  %352 = xor i32 %340, %335
  %353 = xor i32 %352, %341
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %27, align 1
  %357 = icmp eq i32 %341, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %30, align 1
  %359 = lshr i32 %341, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %33, align 1
  %361 = lshr i32 %335, 31
  %362 = lshr i32 %340, 31
  %363 = xor i32 %359, %361
  %364 = xor i32 %359, %362
  %365 = add nuw nsw i32 %363, %364
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %39, align 1
  %368 = add i64 %324, -72
  %369 = add i64 %326, 17
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  store i32 %341, i32* %370, align 4
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -68
  %373 = load i64, i64* %3, align 8
  %374 = add i64 %373, 3
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, 1
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX.i629, align 8
  %379 = icmp eq i32 %376, -1
  %380 = icmp eq i32 %377, 0
  %381 = or i1 %379, %380
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %14, align 1
  %383 = and i32 %377, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  %388 = xor i32 %376, %377
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %27, align 1
  %392 = zext i1 %380 to i8
  store i8 %392, i8* %30, align 1
  %393 = lshr i32 %377, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %33, align 1
  %395 = lshr i32 %376, 31
  %396 = xor i32 %393, %395
  %397 = add nuw nsw i32 %396, %393
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %39, align 1
  %400 = sext i32 %377 to i64
  store i64 %400, i64* %RCX.i523, align 8
  %401 = shl nsw i64 %400, 2
  %402 = add i64 %401, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %403 = add i64 %373, 16
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RAX.i629, align 8
  %407 = add i64 %371, -36
  %408 = add i64 %373, 19
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, %405
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RAX.i629, align 8
  %413 = icmp ult i32 %411, %405
  %414 = icmp ult i32 %411, %410
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = and i32 %411, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i32 %410, %405
  %423 = xor i32 %422, %411
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %27, align 1
  %427 = icmp eq i32 %411, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %30, align 1
  %429 = lshr i32 %411, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %33, align 1
  %431 = lshr i32 %405, 31
  %432 = lshr i32 %410, 31
  %433 = xor i32 %429, %431
  %434 = xor i32 %429, %432
  %435 = add nuw nsw i32 %433, %434
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %39, align 1
  %438 = add i64 %371, -76
  %439 = add i64 %373, 22
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 %411, i32* %440, align 4
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -28
  %443 = load i64, i64* %3, align 8
  %444 = add i64 %443, 3
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %442 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = add i32 %446, 1
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RAX.i629, align 8
  %449 = icmp eq i32 %446, -1
  %450 = icmp eq i32 %447, 0
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %447, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i32 %446, %447
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %27, align 1
  %462 = zext i1 %450 to i8
  store i8 %462, i8* %30, align 1
  %463 = lshr i32 %447, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %33, align 1
  %465 = lshr i32 %446, 31
  %466 = xor i32 %463, %465
  %467 = add nuw nsw i32 %466, %463
  %468 = icmp eq i32 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %39, align 1
  %470 = sext i32 %447 to i64
  store i64 %470, i64* %RCX.i523, align 8
  %471 = shl nsw i64 %470, 2
  %472 = add i64 %471, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %473 = add i64 %443, 16
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX.i629, align 8
  %477 = add i64 %441, -32
  %478 = add i64 %443, 19
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, %475
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX.i629, align 8
  %483 = icmp ult i32 %481, %475
  %484 = icmp ult i32 %481, %480
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %14, align 1
  %487 = and i32 %481, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %21, align 1
  %492 = xor i32 %480, %475
  %493 = xor i32 %492, %481
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %27, align 1
  %497 = icmp eq i32 %481, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %30, align 1
  %499 = lshr i32 %481, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %33, align 1
  %501 = lshr i32 %475, 31
  %502 = lshr i32 %480, 31
  %503 = xor i32 %499, %501
  %504 = xor i32 %499, %502
  %505 = add nuw nsw i32 %503, %504
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %39, align 1
  %508 = add i64 %441, -80
  %509 = add i64 %443, 22
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  store i32 %481, i32* %510, align 4
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -80
  %513 = load i64, i64* %3, align 8
  %514 = add i64 %513, 4
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %512 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sext i32 %516 to i64
  store i64 %517, i64* %RCX.i523, align 8
  %518 = shl nsw i64 %517, 2
  %519 = add i64 %518, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %520 = add i64 %513, 11
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RAX.i629, align 8
  %524 = add i64 %511, -36
  %525 = add i64 %513, 14
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = add i32 %527, %522
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i629, align 8
  %530 = icmp ult i32 %528, %522
  %531 = icmp ult i32 %528, %527
  %532 = or i1 %530, %531
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %14, align 1
  %534 = and i32 %528, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  %539 = xor i32 %527, %522
  %540 = xor i32 %539, %528
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %27, align 1
  %544 = icmp eq i32 %528, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %30, align 1
  %546 = lshr i32 %528, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %33, align 1
  %548 = lshr i32 %522, 31
  %549 = lshr i32 %527, 31
  %550 = xor i32 %546, %548
  %551 = xor i32 %546, %549
  %552 = add nuw nsw i32 %550, %551
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %39, align 1
  %555 = add i64 %511, -84
  %556 = add i64 %513, 17
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 %528, i32* %557, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -80
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 3
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, 1
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RAX.i629, align 8
  %566 = icmp eq i32 %563, -1
  %567 = icmp eq i32 %564, 0
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %14, align 1
  %570 = and i32 %564, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %21, align 1
  %575 = xor i32 %563, %564
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %27, align 1
  %579 = zext i1 %567 to i8
  store i8 %579, i8* %30, align 1
  %580 = lshr i32 %564, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %33, align 1
  %582 = lshr i32 %563, 31
  %583 = xor i32 %580, %582
  %584 = add nuw nsw i32 %583, %580
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %39, align 1
  %587 = sext i32 %564 to i64
  store i64 %587, i64* %RCX.i523, align 8
  %588 = shl nsw i64 %587, 2
  %589 = add i64 %588, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %590 = add i64 %560, 16
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RAX.i629, align 8
  %594 = add i64 %558, -36
  %595 = add i64 %560, 19
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = add i32 %597, %592
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RAX.i629, align 8
  %600 = icmp ult i32 %598, %592
  %601 = icmp ult i32 %598, %597
  %602 = or i1 %600, %601
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %14, align 1
  %604 = and i32 %598, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %21, align 1
  %609 = xor i32 %597, %592
  %610 = xor i32 %609, %598
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %27, align 1
  %614 = icmp eq i32 %598, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %30, align 1
  %616 = lshr i32 %598, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %33, align 1
  %618 = lshr i32 %592, 31
  %619 = lshr i32 %597, 31
  %620 = xor i32 %616, %618
  %621 = xor i32 %616, %619
  %622 = add nuw nsw i32 %620, %621
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %39, align 1
  %625 = add i64 %558, -88
  %626 = add i64 %560, 22
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  store i32 %598, i32* %627, align 4
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -64
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 5
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %629 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %634 = add i64 %628, -56
  %635 = add i64 %630, 10
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %638 = bitcast %union.VectorReg* %56 to i8*
  %639 = add i64 %628, -48
  %640 = add i64 %630, 15
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  %643 = bitcast %union.VectorReg* %56 to double*
  store i64 %642, i64* %61, align 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %645 = bitcast i64* %644 to double*
  store double 0.000000e+00, double* %645, align 1
  %646 = add i64 %628, -72
  %647 = add i64 %630, 19
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sext i32 %649 to i64
  store i64 %650, i64* %RCX.i523, align 8
  %RDI.i425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %651 = shl nsw i64 %650, 2
  %652 = add i64 %651, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %653 = add i64 %630, 26
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RDI.i425, align 8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %658 = add i64 %628, -8
  %659 = add i64 %630, 31
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i64*
  %661 = load i64, i64* %660, align 8
  %662 = bitcast %union.VectorReg* %657 to double*
  %663 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %657, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %661, i64* %663, align 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %665 = bitcast i64* %664 to double*
  store double 0.000000e+00, double* %665, align 1
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %667 = add i64 %628, -16
  %668 = add i64 %630, 36
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  %670 = load i64, i64* %669, align 8
  %671 = bitcast %union.VectorReg* %666 to double*
  %672 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %666, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %670, i64* %672, align 1
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %674 = bitcast i64* %673 to double*
  store double 0.000000e+00, double* %674, align 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %676 = add i64 %628, -24
  %677 = add i64 %630, 41
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  %680 = bitcast %union.VectorReg* %675 to double*
  %681 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %675, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %679, i64* %681, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %683 = bitcast i64* %682 to double*
  store double 0.000000e+00, double* %683, align 1
  %684 = add i64 %628, -96
  %685 = add i64 %630, 46
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  store i64 %633, i64* %686, align 8
  %687 = load i64, i64* %3, align 8
  %688 = bitcast %union.VectorReg* %657 to <2 x i32>*
  %689 = load <2 x i32>, <2 x i32>* %688, align 1
  %690 = bitcast i64* %664 to <2 x i32>*
  %691 = load <2 x i32>, <2 x i32>* %690, align 1
  %692 = extractelement <2 x i32> %689, i32 0
  %693 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 %692, i32* %693, align 1
  %694 = extractelement <2 x i32> %689, i32 1
  %695 = getelementptr inbounds i8, i8* %64, i64 4
  %696 = bitcast i8* %695 to i32*
  store i32 %694, i32* %696, align 1
  %697 = extractelement <2 x i32> %691, i32 0
  %698 = bitcast i64* %71 to i32*
  store i32 %697, i32* %698, align 1
  %699 = extractelement <2 x i32> %691, i32 1
  %700 = getelementptr inbounds i8, i8* %64, i64 12
  %701 = bitcast i8* %700 to i32*
  store i32 %699, i32* %701, align 1
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -104
  %704 = add i64 %687, 8
  store i64 %704, i64* %3, align 8
  %705 = load i64, i64* %53, align 1
  %706 = inttoptr i64 %703 to i64*
  store i64 %705, i64* %706, align 8
  %707 = load i64, i64* %3, align 8
  %708 = bitcast %union.VectorReg* %666 to <2 x i32>*
  %709 = load <2 x i32>, <2 x i32>* %708, align 1
  %710 = bitcast i64* %673 to <2 x i32>*
  %711 = load <2 x i32>, <2 x i32>* %710, align 1
  %712 = extractelement <2 x i32> %709, i32 0
  %713 = bitcast %union.VectorReg* %47 to i32*
  store i32 %712, i32* %713, align 1
  %714 = extractelement <2 x i32> %709, i32 1
  %715 = getelementptr inbounds i8, i8* %172, i64 4
  %716 = bitcast i8* %715 to i32*
  store i32 %714, i32* %716, align 1
  %717 = extractelement <2 x i32> %711, i32 0
  %718 = bitcast i64* %179 to i32*
  store i32 %717, i32* %718, align 1
  %719 = extractelement <2 x i32> %711, i32 1
  %720 = getelementptr inbounds i8, i8* %172, i64 12
  %721 = bitcast i8* %720 to i32*
  store i32 %719, i32* %721, align 1
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -112
  %724 = add i64 %707, 8
  store i64 %724, i64* %3, align 8
  %725 = load i64, i64* %61, align 1
  %726 = inttoptr i64 %723 to i64*
  store i64 %725, i64* %726, align 8
  %727 = load i64, i64* %3, align 8
  %728 = bitcast %union.VectorReg* %675 to <2 x i32>*
  %729 = load <2 x i32>, <2 x i32>* %728, align 1
  %730 = bitcast i64* %682 to <2 x i32>*
  %731 = load <2 x i32>, <2 x i32>* %730, align 1
  %732 = extractelement <2 x i32> %729, i32 0
  %733 = bitcast %union.VectorReg* %56 to i32*
  store i32 %732, i32* %733, align 1
  %734 = extractelement <2 x i32> %729, i32 1
  %735 = getelementptr inbounds i8, i8* %638, i64 4
  %736 = bitcast i8* %735 to i32*
  store i32 %734, i32* %736, align 1
  %737 = extractelement <2 x i32> %731, i32 0
  %738 = bitcast i64* %644 to i32*
  store i32 %737, i32* %738, align 1
  %739 = extractelement <2 x i32> %731, i32 1
  %740 = getelementptr inbounds i8, i8* %638, i64 12
  %741 = bitcast i8* %740 to i32*
  store i32 %739, i32* %741, align 1
  %742 = add i64 %727, 908
  %743 = add i64 %727, 8
  %744 = load i64, i64* %6, align 8
  %745 = add i64 %744, -8
  %746 = inttoptr i64 %745 to i64*
  store i64 %743, i64* %746, align 8
  store i64 %745, i64* %6, align 8
  store i64 %742, i64* %3, align 8
  %call2_400857 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %742, %struct.Memory* %call2_400797)
  %747 = load i64, i64* %3, align 8
  %748 = load double, double* bitcast (%G_0x5dc__rip__4196452__type* @G_0x5dc__rip__4196452_ to double*), align 8
  store double %748, double* %52, align 1
  store double 0.000000e+00, double* %180, align 1
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -84
  %751 = add i64 %747, 12
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i523, align 8
  %755 = shl nsw i64 %754, 2
  %756 = add i64 %755, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %757 = add i64 %747, 19
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDI.i425, align 8
  %761 = add i64 %749, -8
  %762 = add i64 %747, 24
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to double*
  %764 = load double, double* %763, align 8
  %765 = fsub double %764, %748
  store double %765, double* %643, align 1
  store i64 0, i64* %644, align 1
  %766 = add i64 %749, -16
  %767 = add i64 %747, 33
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i64*
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %770 = add i64 %749, -24
  %771 = add i64 %747, 38
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %663, align 1
  store double 0.000000e+00, double* %665, align 1
  %774 = add i64 %749, -120
  %775 = add i64 %747, 43
  store i64 %775, i64* %3, align 8
  %776 = load i64, i64* %44, align 1
  %777 = inttoptr i64 %774 to i64*
  store i64 %776, i64* %777, align 8
  %778 = load i64, i64* %3, align 8
  %779 = bitcast %union.VectorReg* %56 to <2 x i32>*
  %780 = load <2 x i32>, <2 x i32>* %779, align 1
  %781 = bitcast i64* %644 to <2 x i32>*
  %782 = load <2 x i32>, <2 x i32>* %781, align 1
  %783 = extractelement <2 x i32> %780, i32 0
  store i32 %783, i32* %693, align 1
  %784 = extractelement <2 x i32> %780, i32 1
  store i32 %784, i32* %696, align 1
  %785 = extractelement <2 x i32> %782, i32 0
  store i32 %785, i32* %698, align 1
  %786 = extractelement <2 x i32> %782, i32 1
  store i32 %786, i32* %701, align 1
  %787 = load <2 x i32>, <2 x i32>* %688, align 1
  %788 = load <2 x i32>, <2 x i32>* %690, align 1
  %789 = extractelement <2 x i32> %787, i32 0
  store i32 %789, i32* %733, align 1
  %790 = extractelement <2 x i32> %787, i32 1
  store i32 %790, i32* %736, align 1
  %791 = extractelement <2 x i32> %788, i32 0
  store i32 %791, i32* %738, align 1
  %792 = extractelement <2 x i32> %788, i32 1
  store i32 %792, i32* %741, align 1
  %793 = add i64 %778, 857
  %794 = add i64 %778, 11
  %795 = load i64, i64* %6, align 8
  %796 = add i64 %795, -8
  %797 = inttoptr i64 %796 to i64*
  store i64 %794, i64* %797, align 8
  store i64 %796, i64* %6, align 8
  store i64 %793, i64* %3, align 8
  %call2_40088d = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %793, %struct.Memory* %call2_400857)
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -112
  %800 = load i64, i64* %3, align 8
  %801 = add i64 %800, 5
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %799 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %804 = add i64 %798, -128
  %805 = add i64 %800, 10
  store i64 %805, i64* %3, align 8
  %806 = load i64, i64* %44, align 1
  %807 = inttoptr i64 %804 to i64*
  store i64 %806, i64* %807, align 8
  %808 = load i64, i64* %3, align 8
  %809 = bitcast %union.VectorReg* %47 to <2 x i32>*
  %810 = load <2 x i32>, <2 x i32>* %809, align 1
  %811 = bitcast i64* %179 to <2 x i32>*
  %812 = load <2 x i32>, <2 x i32>* %811, align 1
  %813 = extractelement <2 x i32> %810, i32 0
  store i32 %813, i32* %693, align 1
  %814 = extractelement <2 x i32> %810, i32 1
  store i32 %814, i32* %696, align 1
  %815 = extractelement <2 x i32> %812, i32 0
  store i32 %815, i32* %698, align 1
  %816 = extractelement <2 x i32> %812, i32 1
  store i32 %816, i32* %701, align 1
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -120
  %819 = add i64 %808, 8
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %822 = add i64 %817, -128
  %823 = add i64 %808, 13
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  %825 = load i64, i64* %824, align 8
  store i64 %825, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %826 = add i64 %808, 1172
  %827 = add i64 %808, 18
  %828 = load i64, i64* %6, align 8
  %829 = add i64 %828, -8
  %830 = inttoptr i64 %829 to i64*
  store i64 %827, i64* %830, align 8
  store i64 %829, i64* %6, align 8
  store i64 %826, i64* %3, align 8
  %call2_4008a9 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %826, %struct.Memory* %call2_40088d)
  %831 = load i64, i64* %3, align 8
  %832 = load double, double* bitcast (%G_0x58a__rip__4196534__type* @G_0x58a__rip__4196534_ to double*), align 8
  store double %832, double* %52, align 1
  store double 0.000000e+00, double* %180, align 1
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -48
  %835 = add i64 %831, 13
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %838 = add i64 %833, -76
  %839 = add i64 %831, 17
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = sext i32 %841 to i64
  store i64 %842, i64* %RCX.i523, align 8
  %843 = shl nsw i64 %842, 2
  %844 = add i64 %843, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %845 = add i64 %831, 24
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RDI.i425, align 8
  %849 = add i64 %833, -8
  %850 = add i64 %831, 29
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %663, align 1
  store double 0.000000e+00, double* %665, align 1
  %853 = add i64 %833, -16
  %854 = add i64 %831, 34
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to double*
  %856 = load double, double* %855, align 8
  %857 = fsub double %856, %832
  store double %857, double* %671, align 1
  store i64 0, i64* %673, align 1
  %858 = add i64 %833, -24
  %859 = add i64 %831, 43
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  store i64 %861, i64* %53, align 1
  %862 = add i64 %833, -136
  %863 = add i64 %831, 51
  store i64 %863, i64* %3, align 8
  %864 = load i64, i64* %44, align 1
  %865 = inttoptr i64 %862 to i64*
  store i64 %864, i64* %865, align 8
  %866 = load i64, i64* %3, align 8
  %867 = load <2 x i32>, <2 x i32>* %688, align 1
  %868 = load <2 x i32>, <2 x i32>* %690, align 1
  %869 = extractelement <2 x i32> %867, i32 0
  store i32 %869, i32* %693, align 1
  %870 = extractelement <2 x i32> %867, i32 1
  store i32 %870, i32* %696, align 1
  %871 = extractelement <2 x i32> %868, i32 0
  store i32 %871, i32* %698, align 1
  %872 = extractelement <2 x i32> %868, i32 1
  store i32 %872, i32* %701, align 1
  %873 = load i64, i64* %RBP.i, align 8
  %874 = add i64 %873, -144
  %875 = add i64 %866, 11
  store i64 %875, i64* %3, align 8
  %876 = load i64, i64* %53, align 1
  %877 = inttoptr i64 %874 to i64*
  store i64 %876, i64* %877, align 8
  %878 = load i64, i64* %3, align 8
  %879 = load <2 x i32>, <2 x i32>* %708, align 1
  %880 = load <2 x i32>, <2 x i32>* %710, align 1
  %881 = extractelement <2 x i32> %879, i32 0
  store i32 %881, i32* %713, align 1
  %882 = extractelement <2 x i32> %879, i32 1
  store i32 %882, i32* %716, align 1
  %883 = extractelement <2 x i32> %880, i32 0
  store i32 %883, i32* %718, align 1
  %884 = extractelement <2 x i32> %880, i32 1
  store i32 %884, i32* %721, align 1
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -144
  %887 = add i64 %878, 11
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %663, align 1
  store double 0.000000e+00, double* %665, align 1
  %890 = add i64 %885, -152
  %891 = add i64 %878, 19
  store i64 %891, i64* %3, align 8
  %892 = load i64, i64* %61, align 1
  %893 = inttoptr i64 %890 to i64*
  store i64 %892, i64* %893, align 8
  %894 = load i64, i64* %3, align 8
  %895 = load <2 x i32>, <2 x i32>* %688, align 1
  %896 = load <2 x i32>, <2 x i32>* %690, align 1
  %897 = extractelement <2 x i32> %895, i32 0
  store i32 %897, i32* %733, align 1
  %898 = extractelement <2 x i32> %895, i32 1
  store i32 %898, i32* %736, align 1
  %899 = extractelement <2 x i32> %896, i32 0
  store i32 %899, i32* %738, align 1
  %900 = extractelement <2 x i32> %896, i32 1
  store i32 %900, i32* %741, align 1
  %901 = add i64 %894, 737
  %902 = add i64 %894, 8
  %903 = load i64, i64* %6, align 8
  %904 = add i64 %903, -8
  %905 = inttoptr i64 %904 to i64*
  store i64 %902, i64* %905, align 8
  store i64 %904, i64* %6, align 8
  store i64 %901, i64* %3, align 8
  %call2_400902 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %901, %struct.Memory* %call2_4008a9)
  %906 = load i64, i64* %3, align 8
  %907 = load double, double* bitcast (%G_0x531__rip__4196623__type* @G_0x531__rip__4196623_ to double*), align 8
  store double %907, double* %52, align 1
  store double 0.000000e+00, double* %180, align 1
  %908 = load i64, i64* %RBP.i, align 8
  %909 = add i64 %908, -88
  %910 = add i64 %906, 12
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i523, align 8
  %914 = shl nsw i64 %913, 2
  %915 = add i64 %914, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %916 = add i64 %906, 19
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RDI.i425, align 8
  %920 = add i64 %908, -8
  %921 = add i64 %906, 24
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to double*
  %923 = load double, double* %922, align 8
  %924 = fsub double %923, %907
  store double %924, double* %643, align 1
  store i64 0, i64* %644, align 1
  %925 = add i64 %908, -16
  %926 = add i64 %906, 33
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to double*
  %928 = load double, double* %927, align 8
  %929 = fsub double %928, %907
  store double %929, double* %662, align 1
  store i64 0, i64* %664, align 1
  %930 = add i64 %908, -24
  %931 = add i64 %906, 42
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %53, align 1
  %934 = add i64 %908, -160
  %935 = add i64 %906, 50
  store i64 %935, i64* %3, align 8
  %936 = load i64, i64* %44, align 1
  %937 = inttoptr i64 %934 to i64*
  store i64 %936, i64* %937, align 8
  %938 = load i64, i64* %3, align 8
  %939 = load <2 x i32>, <2 x i32>* %779, align 1
  %940 = load <2 x i32>, <2 x i32>* %781, align 1
  %941 = extractelement <2 x i32> %939, i32 0
  store i32 %941, i32* %693, align 1
  %942 = extractelement <2 x i32> %939, i32 1
  store i32 %942, i32* %696, align 1
  %943 = extractelement <2 x i32> %940, i32 0
  store i32 %943, i32* %698, align 1
  %944 = extractelement <2 x i32> %940, i32 1
  store i32 %944, i32* %701, align 1
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -168
  %947 = add i64 %938, 11
  store i64 %947, i64* %3, align 8
  %948 = load i64, i64* %53, align 1
  %949 = inttoptr i64 %946 to i64*
  store i64 %948, i64* %949, align 8
  %950 = load i64, i64* %3, align 8
  %951 = load <2 x i32>, <2 x i32>* %688, align 1
  %952 = load <2 x i32>, <2 x i32>* %690, align 1
  %953 = extractelement <2 x i32> %951, i32 0
  store i32 %953, i32* %713, align 1
  %954 = extractelement <2 x i32> %951, i32 1
  store i32 %954, i32* %716, align 1
  %955 = extractelement <2 x i32> %952, i32 0
  store i32 %955, i32* %718, align 1
  %956 = extractelement <2 x i32> %952, i32 1
  store i32 %956, i32* %721, align 1
  %957 = load i64, i64* %RBP.i, align 8
  %958 = add i64 %957, -168
  %959 = add i64 %950, 11
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %962 = add i64 %950, 668
  %963 = add i64 %950, 16
  %964 = load i64, i64* %6, align 8
  %965 = add i64 %964, -8
  %966 = inttoptr i64 %965 to i64*
  store i64 %963, i64* %966, align 8
  store i64 %965, i64* %6, align 8
  store i64 %962, i64* %3, align 8
  %call2_40094f = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %962, %struct.Memory* %call2_400902)
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -152
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, 8
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %968 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %973 = add i64 %967, -176
  %974 = add i64 %969, 16
  store i64 %974, i64* %3, align 8
  %975 = load i64, i64* %44, align 1
  %976 = inttoptr i64 %973 to i64*
  store i64 %975, i64* %976, align 8
  %977 = load i64, i64* %3, align 8
  %978 = load <2 x i32>, <2 x i32>* %809, align 1
  %979 = load <2 x i32>, <2 x i32>* %811, align 1
  %980 = extractelement <2 x i32> %978, i32 0
  store i32 %980, i32* %693, align 1
  %981 = extractelement <2 x i32> %978, i32 1
  store i32 %981, i32* %696, align 1
  %982 = extractelement <2 x i32> %979, i32 0
  store i32 %982, i32* %698, align 1
  %983 = extractelement <2 x i32> %979, i32 1
  store i32 %983, i32* %701, align 1
  %984 = load i64, i64* %RBP.i, align 8
  %985 = add i64 %984, -160
  %986 = add i64 %977, 11
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i64*
  %988 = load i64, i64* %987, align 8
  store i64 %988, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %989 = add i64 %984, -176
  %990 = add i64 %977, 19
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %993 = add i64 %977, 972
  %994 = add i64 %977, 24
  %995 = load i64, i64* %6, align 8
  %996 = add i64 %995, -8
  %997 = inttoptr i64 %996 to i64*
  store i64 %994, i64* %997, align 8
  store i64 %996, i64* %6, align 8
  store i64 %993, i64* %3, align 8
  %call2_400977 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %993, %struct.Memory* %call2_40094f)
  %998 = load i64, i64* %RBP.i, align 8
  %999 = add i64 %998, -104
  %1000 = load i64, i64* %3, align 8
  %1001 = add i64 %1000, 5
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1004 = add i64 %998, -184
  %1005 = add i64 %1000, 13
  store i64 %1005, i64* %3, align 8
  %1006 = load i64, i64* %44, align 1
  %1007 = inttoptr i64 %1004 to i64*
  store i64 %1006, i64* %1007, align 8
  %1008 = load i64, i64* %3, align 8
  %1009 = load <2 x i32>, <2 x i32>* %809, align 1
  %1010 = load <2 x i32>, <2 x i32>* %811, align 1
  %1011 = extractelement <2 x i32> %1009, i32 0
  store i32 %1011, i32* %693, align 1
  %1012 = extractelement <2 x i32> %1009, i32 1
  store i32 %1012, i32* %696, align 1
  %1013 = extractelement <2 x i32> %1010, i32 0
  store i32 %1013, i32* %698, align 1
  %1014 = extractelement <2 x i32> %1010, i32 1
  store i32 %1014, i32* %701, align 1
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -136
  %1017 = add i64 %1008, 11
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1020 = add i64 %1015, -184
  %1021 = add i64 %1008, 19
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1024 = add i64 %1008, 935
  %1025 = add i64 %1008, 24
  %1026 = load i64, i64* %6, align 8
  %1027 = add i64 %1026, -8
  %1028 = inttoptr i64 %1027 to i64*
  store i64 %1025, i64* %1028, align 8
  store i64 %1027, i64* %6, align 8
  store i64 %1024, i64* %3, align 8
  %call2_40099c = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1024, %struct.Memory* %call2_400977)
  %1029 = load i64, i64* %3, align 8
  %1030 = load i64, i64* bitcast (%G_0x497__rip__4196777__type* @G_0x497__rip__4196777_ to i64*), align 8
  store i64 %1030, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1031 = load i64, i64* %RBP.i, align 8
  %1032 = add i64 %1031, -56
  %1033 = add i64 %1029, 13
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1036 = add i64 %1031, -48
  %1037 = add i64 %1029, 18
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %663, align 1
  store double 0.000000e+00, double* %665, align 1
  %1040 = add i64 %1031, -72
  %1041 = add i64 %1029, 21
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = add i32 %1043, 1
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i629, align 8
  %1046 = icmp eq i32 %1043, -1
  %1047 = icmp eq i32 %1044, 0
  %1048 = or i1 %1046, %1047
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %14, align 1
  %1050 = and i32 %1044, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %21, align 1
  %1055 = xor i32 %1043, %1044
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %27, align 1
  %1059 = zext i1 %1047 to i8
  store i8 %1059, i8* %30, align 1
  %1060 = lshr i32 %1044, 31
  %1061 = trunc i32 %1060 to i8
  store i8 %1061, i8* %33, align 1
  %1062 = lshr i32 %1043, 31
  %1063 = xor i32 %1060, %1062
  %1064 = add nuw nsw i32 %1063, %1060
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %39, align 1
  %1067 = sext i32 %1044 to i64
  store i64 %1067, i64* %RCX.i523, align 8
  %1068 = shl nsw i64 %1067, 2
  %1069 = add i64 %1068, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1070 = add i64 %1029, 34
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RDI.i425, align 8
  %1074 = add i64 %1031, -8
  %1075 = add i64 %1029, 39
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i64*
  %1077 = load i64, i64* %1076, align 8
  store i64 %1077, i64* %672, align 1
  store double 0.000000e+00, double* %674, align 1
  %1078 = add i64 %1031, -16
  %1079 = add i64 %1029, 44
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %681, align 1
  store double 0.000000e+00, double* %683, align 1
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %1083 = add i64 %1031, -24
  %1084 = add i64 %1029, 49
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to double*
  %1086 = load double, double* %1085, align 8
  %1087 = bitcast %union.VectorReg* %1082 to double*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %1089 = bitcast i64 %1030 to double
  %1090 = fsub double %1086, %1089
  store double %1090, double* %1087, align 1
  store i64 0, i64* %1088, align 1
  %1091 = add i64 %1031, -192
  %1092 = add i64 %1029, 61
  store i64 %1092, i64* %3, align 8
  %1093 = load i64, i64* %44, align 1
  %1094 = inttoptr i64 %1091 to i64*
  store i64 %1093, i64* %1094, align 8
  %1095 = load i64, i64* %3, align 8
  %1096 = load <2 x i32>, <2 x i32>* %708, align 1
  %1097 = load <2 x i32>, <2 x i32>* %710, align 1
  %1098 = extractelement <2 x i32> %1096, i32 0
  store i32 %1098, i32* %693, align 1
  %1099 = extractelement <2 x i32> %1096, i32 1
  store i32 %1099, i32* %696, align 1
  %1100 = extractelement <2 x i32> %1097, i32 0
  store i32 %1100, i32* %698, align 1
  %1101 = extractelement <2 x i32> %1097, i32 1
  store i32 %1101, i32* %701, align 1
  %1102 = load <2 x i32>, <2 x i32>* %728, align 1
  %1103 = load <2 x i32>, <2 x i32>* %730, align 1
  %1104 = extractelement <2 x i32> %1102, i32 0
  store i32 %1104, i32* %713, align 1
  %1105 = extractelement <2 x i32> %1102, i32 1
  store i32 %1105, i32* %716, align 1
  %1106 = extractelement <2 x i32> %1103, i32 0
  store i32 %1106, i32* %718, align 1
  %1107 = extractelement <2 x i32> %1103, i32 1
  store i32 %1107, i32* %721, align 1
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -200
  %1110 = add i64 %1095, 14
  store i64 %1110, i64* %3, align 8
  %1111 = load i64, i64* %61, align 1
  %1112 = inttoptr i64 %1109 to i64*
  store i64 %1111, i64* %1112, align 8
  %1113 = load i64, i64* %3, align 8
  %1114 = bitcast %union.VectorReg* %1082 to <2 x i32>*
  %1115 = load <2 x i32>, <2 x i32>* %1114, align 1
  %1116 = bitcast i64* %1088 to <2 x i32>*
  %1117 = load <2 x i32>, <2 x i32>* %1116, align 1
  %1118 = extractelement <2 x i32> %1115, i32 0
  store i32 %1118, i32* %733, align 1
  %1119 = extractelement <2 x i32> %1115, i32 1
  store i32 %1119, i32* %736, align 1
  %1120 = extractelement <2 x i32> %1117, i32 0
  store i32 %1120, i32* %738, align 1
  %1121 = extractelement <2 x i32> %1117, i32 1
  store i32 %1121, i32* %741, align 1
  %1122 = load i64, i64* %RBP.i, align 8
  %1123 = add i64 %1122, -208
  %1124 = add i64 %1113, 11
  store i64 %1124, i64* %3, align 8
  %1125 = load i64, i64* %663, align 1
  %1126 = inttoptr i64 %1123 to i64*
  store i64 %1125, i64* %1126, align 8
  %1127 = load i64, i64* %3, align 8
  %1128 = add i64 %1127, 489
  %1129 = add i64 %1127, 5
  %1130 = load i64, i64* %6, align 8
  %1131 = add i64 %1130, -8
  %1132 = inttoptr i64 %1131 to i64*
  store i64 %1129, i64* %1132, align 8
  store i64 %1131, i64* %6, align 8
  store i64 %1128, i64* %3, align 8
  %call2_4009f7 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1128, %struct.Memory* %call2_40099c)
  %1133 = load i64, i64* %3, align 8
  %1134 = load double, double* bitcast (%G_0x43c__rip__4196868__type* @G_0x43c__rip__4196868_ to double*), align 8
  store double %1134, double* %52, align 1
  store double 0.000000e+00, double* %180, align 1
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -84
  %1137 = add i64 %1133, 11
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = add i32 %1139, 1
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i629, align 8
  %1142 = icmp eq i32 %1139, -1
  %1143 = icmp eq i32 %1140, 0
  %1144 = or i1 %1142, %1143
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = and i32 %1140, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i32 %1139, %1140
  %1152 = lshr i32 %1151, 4
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  store i8 %1154, i8* %27, align 1
  %1155 = zext i1 %1143 to i8
  store i8 %1155, i8* %30, align 1
  %1156 = lshr i32 %1140, 31
  %1157 = trunc i32 %1156 to i8
  store i8 %1157, i8* %33, align 1
  %1158 = lshr i32 %1139, 31
  %1159 = xor i32 %1156, %1158
  %1160 = add nuw nsw i32 %1159, %1156
  %1161 = icmp eq i32 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %39, align 1
  %1163 = sext i32 %1140 to i64
  store i64 %1163, i64* %RCX.i523, align 8
  %1164 = shl nsw i64 %1163, 2
  %1165 = add i64 %1164, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1166 = add i64 %1133, 24
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RDI.i425, align 8
  %1170 = add i64 %1135, -8
  %1171 = add i64 %1133, 29
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to double*
  %1173 = load double, double* %1172, align 8
  %1174 = fsub double %1173, %1134
  store double %1174, double* %643, align 1
  store i64 0, i64* %644, align 1
  %1175 = add i64 %1135, -16
  %1176 = add i64 %1133, 38
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  %1178 = load i64, i64* %1177, align 8
  store i64 %1178, i64* %663, align 1
  store double 0.000000e+00, double* %665, align 1
  %1179 = add i64 %1135, -24
  %1180 = add i64 %1133, 43
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to double*
  %1182 = load double, double* %1181, align 8
  %1183 = fsub double %1182, %1134
  store double %1183, double* %671, align 1
  store i64 0, i64* %673, align 1
  %1184 = add i64 %1135, -216
  %1185 = add i64 %1133, 55
  store i64 %1185, i64* %3, align 8
  %1186 = load i64, i64* %44, align 1
  %1187 = inttoptr i64 %1184 to i64*
  store i64 %1186, i64* %1187, align 8
  %1188 = load i64, i64* %3, align 8
  %1189 = load <2 x i32>, <2 x i32>* %779, align 1
  %1190 = load <2 x i32>, <2 x i32>* %781, align 1
  %1191 = extractelement <2 x i32> %1189, i32 0
  store i32 %1191, i32* %693, align 1
  %1192 = extractelement <2 x i32> %1189, i32 1
  store i32 %1192, i32* %696, align 1
  %1193 = extractelement <2 x i32> %1190, i32 0
  store i32 %1193, i32* %698, align 1
  %1194 = extractelement <2 x i32> %1190, i32 1
  store i32 %1194, i32* %701, align 1
  %1195 = load <2 x i32>, <2 x i32>* %688, align 1
  %1196 = load <2 x i32>, <2 x i32>* %690, align 1
  %1197 = extractelement <2 x i32> %1195, i32 0
  store i32 %1197, i32* %713, align 1
  %1198 = extractelement <2 x i32> %1195, i32 1
  store i32 %1198, i32* %716, align 1
  %1199 = extractelement <2 x i32> %1196, i32 0
  store i32 %1199, i32* %718, align 1
  %1200 = extractelement <2 x i32> %1196, i32 1
  store i32 %1200, i32* %721, align 1
  %1201 = load <2 x i32>, <2 x i32>* %708, align 1
  %1202 = load <2 x i32>, <2 x i32>* %710, align 1
  %1203 = extractelement <2 x i32> %1201, i32 0
  store i32 %1203, i32* %733, align 1
  %1204 = extractelement <2 x i32> %1201, i32 1
  store i32 %1204, i32* %736, align 1
  %1205 = extractelement <2 x i32> %1202, i32 0
  store i32 %1205, i32* %738, align 1
  %1206 = extractelement <2 x i32> %1202, i32 1
  store i32 %1206, i32* %741, align 1
  %1207 = add i64 %1188, 429
  %1208 = add i64 %1188, 14
  %1209 = load i64, i64* %6, align 8
  %1210 = add i64 %1209, -8
  %1211 = inttoptr i64 %1210 to i64*
  store i64 %1208, i64* %1211, align 8
  store i64 %1210, i64* %6, align 8
  store i64 %1207, i64* %3, align 8
  %call2_400a3c = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1207, %struct.Memory* %call2_4009f7)
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -208
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, 8
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1213 to i64*
  %1217 = load i64, i64* %1216, align 8
  store i64 %1217, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1218 = add i64 %1212, -224
  %1219 = add i64 %1214, 16
  store i64 %1219, i64* %3, align 8
  %1220 = load i64, i64* %44, align 1
  %1221 = inttoptr i64 %1218 to i64*
  store i64 %1220, i64* %1221, align 8
  %1222 = load i64, i64* %3, align 8
  %1223 = load <2 x i32>, <2 x i32>* %809, align 1
  %1224 = load <2 x i32>, <2 x i32>* %811, align 1
  %1225 = extractelement <2 x i32> %1223, i32 0
  store i32 %1225, i32* %693, align 1
  %1226 = extractelement <2 x i32> %1223, i32 1
  store i32 %1226, i32* %696, align 1
  %1227 = extractelement <2 x i32> %1224, i32 0
  store i32 %1227, i32* %698, align 1
  %1228 = extractelement <2 x i32> %1224, i32 1
  store i32 %1228, i32* %701, align 1
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -216
  %1231 = add i64 %1222, 11
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  store i64 %1233, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1234 = add i64 %1229, -224
  %1235 = add i64 %1222, 19
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1238 = add i64 %1222, 735
  %1239 = add i64 %1222, 24
  %1240 = load i64, i64* %6, align 8
  %1241 = add i64 %1240, -8
  %1242 = inttoptr i64 %1241 to i64*
  store i64 %1239, i64* %1242, align 8
  store i64 %1241, i64* %6, align 8
  store i64 %1238, i64* %3, align 8
  %call2_400a64 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1238, %struct.Memory* %call2_400a3c)
  %1243 = load i64, i64* %3, align 8
  %1244 = load double, double* bitcast (%G_0x3cf__rip__4196977__type* @G_0x3cf__rip__4196977_ to double*), align 8
  store double %1244, double* %52, align 1
  store double 0.000000e+00, double* %180, align 1
  %1245 = load i64, i64* %RBP.i, align 8
  %1246 = add i64 %1245, -48
  %1247 = add i64 %1243, 13
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1250 = add i64 %1245, -76
  %1251 = add i64 %1243, 16
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = add i32 %1253, 1
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RAX.i629, align 8
  %1256 = icmp eq i32 %1253, -1
  %1257 = icmp eq i32 %1254, 0
  %1258 = or i1 %1256, %1257
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = and i32 %1254, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i32 %1253, %1254
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = zext i1 %1257 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i32 %1254, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i32 %1253, 31
  %1273 = xor i32 %1270, %1272
  %1274 = add nuw nsw i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %39, align 1
  %1277 = sext i32 %1254 to i64
  store i64 %1277, i64* %RCX.i523, align 8
  %1278 = shl nsw i64 %1277, 2
  %1279 = add i64 %1278, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1280 = add i64 %1243, 29
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RDI.i425, align 8
  %1284 = add i64 %1245, -8
  %1285 = add i64 %1243, 34
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i64*
  %1287 = load i64, i64* %1286, align 8
  store i64 %1287, i64* %663, align 1
  store double 0.000000e+00, double* %665, align 1
  %1288 = add i64 %1245, -16
  %1289 = add i64 %1243, 39
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to double*
  %1291 = load double, double* %1290, align 8
  %1292 = fsub double %1291, %1244
  store double %1292, double* %671, align 1
  store i64 0, i64* %673, align 1
  %1293 = add i64 %1245, -24
  %1294 = add i64 %1243, 48
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to double*
  %1296 = load double, double* %1295, align 8
  %1297 = fsub double %1296, %1244
  store double %1297, double* %680, align 1
  store i64 0, i64* %682, align 1
  %1298 = add i64 %1245, -232
  %1299 = add i64 %1243, 60
  store i64 %1299, i64* %3, align 8
  %1300 = load i64, i64* %44, align 1
  %1301 = inttoptr i64 %1298 to i64*
  store i64 %1300, i64* %1301, align 8
  %1302 = load i64, i64* %3, align 8
  %1303 = load <2 x i32>, <2 x i32>* %688, align 1
  %1304 = load <2 x i32>, <2 x i32>* %690, align 1
  %1305 = extractelement <2 x i32> %1303, i32 0
  store i32 %1305, i32* %693, align 1
  %1306 = extractelement <2 x i32> %1303, i32 1
  store i32 %1306, i32* %696, align 1
  %1307 = extractelement <2 x i32> %1304, i32 0
  store i32 %1307, i32* %698, align 1
  %1308 = extractelement <2 x i32> %1304, i32 1
  store i32 %1308, i32* %701, align 1
  %1309 = load <2 x i32>, <2 x i32>* %708, align 1
  %1310 = load <2 x i32>, <2 x i32>* %710, align 1
  %1311 = extractelement <2 x i32> %1309, i32 0
  store i32 %1311, i32* %713, align 1
  %1312 = extractelement <2 x i32> %1309, i32 1
  store i32 %1312, i32* %716, align 1
  %1313 = extractelement <2 x i32> %1310, i32 0
  store i32 %1313, i32* %718, align 1
  %1314 = extractelement <2 x i32> %1310, i32 1
  store i32 %1314, i32* %721, align 1
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -240
  %1317 = add i64 %1302, 14
  store i64 %1317, i64* %3, align 8
  %1318 = load i64, i64* %61, align 1
  %1319 = inttoptr i64 %1316 to i64*
  store i64 %1318, i64* %1319, align 8
  %1320 = load i64, i64* %3, align 8
  %1321 = load <2 x i32>, <2 x i32>* %728, align 1
  %1322 = load <2 x i32>, <2 x i32>* %730, align 1
  %1323 = extractelement <2 x i32> %1321, i32 0
  store i32 %1323, i32* %733, align 1
  %1324 = extractelement <2 x i32> %1321, i32 1
  store i32 %1324, i32* %736, align 1
  %1325 = extractelement <2 x i32> %1322, i32 0
  store i32 %1325, i32* %738, align 1
  %1326 = extractelement <2 x i32> %1322, i32 1
  store i32 %1326, i32* %741, align 1
  %1327 = add i64 %1320, 301
  %1328 = add i64 %1320, 8
  %1329 = load i64, i64* %6, align 8
  %1330 = add i64 %1329, -8
  %1331 = inttoptr i64 %1330 to i64*
  store i64 %1328, i64* %1331, align 8
  store i64 %1330, i64* %6, align 8
  store i64 %1327, i64* %3, align 8
  %call2_400ab6 = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1327, %struct.Memory* %call2_400a64)
  %1332 = load i64, i64* %3, align 8
  %1333 = load double, double* bitcast (%G_0x37d__rip__4197059__type* @G_0x37d__rip__4197059_ to double*), align 8
  store double %1333, double* %52, align 1
  store double 0.000000e+00, double* %180, align 1
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -88
  %1336 = add i64 %1332, 11
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = add i32 %1338, 1
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i629, align 8
  %1341 = icmp eq i32 %1338, -1
  %1342 = icmp eq i32 %1339, 0
  %1343 = or i1 %1341, %1342
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %14, align 1
  %1345 = and i32 %1339, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %21, align 1
  %1350 = xor i32 %1338, %1339
  %1351 = lshr i32 %1350, 4
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %27, align 1
  %1354 = zext i1 %1342 to i8
  store i8 %1354, i8* %30, align 1
  %1355 = lshr i32 %1339, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %33, align 1
  %1357 = lshr i32 %1338, 31
  %1358 = xor i32 %1355, %1357
  %1359 = add nuw nsw i32 %1358, %1355
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %39, align 1
  %1362 = sext i32 %1339 to i64
  store i64 %1362, i64* %RCX.i523, align 8
  %1363 = shl nsw i64 %1362, 2
  %1364 = add i64 %1363, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1365 = add i64 %1332, 24
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RDI.i425, align 8
  %1369 = add i64 %1334, -8
  %1370 = add i64 %1332, 29
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to double*
  %1372 = load double, double* %1371, align 8
  %1373 = fsub double %1372, %1333
  store double %1373, double* %643, align 1
  store i64 0, i64* %644, align 1
  %1374 = add i64 %1334, -16
  %1375 = add i64 %1332, 38
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to double*
  %1377 = load double, double* %1376, align 8
  %1378 = fsub double %1377, %1333
  store double %1378, double* %662, align 1
  store i64 0, i64* %664, align 1
  %1379 = add i64 %1334, -24
  %1380 = add i64 %1332, 47
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to double*
  %1382 = load double, double* %1381, align 8
  %1383 = fsub double %1382, %1333
  store double %1383, double* %671, align 1
  store i64 0, i64* %673, align 1
  %1384 = add i64 %1334, -248
  %1385 = add i64 %1332, 59
  store i64 %1385, i64* %3, align 8
  %1386 = load i64, i64* %44, align 1
  %1387 = inttoptr i64 %1384 to i64*
  store i64 %1386, i64* %1387, align 8
  %1388 = load i64, i64* %3, align 8
  %1389 = load <2 x i32>, <2 x i32>* %779, align 1
  %1390 = load <2 x i32>, <2 x i32>* %781, align 1
  %1391 = extractelement <2 x i32> %1389, i32 0
  store i32 %1391, i32* %693, align 1
  %1392 = extractelement <2 x i32> %1389, i32 1
  store i32 %1392, i32* %696, align 1
  %1393 = extractelement <2 x i32> %1390, i32 0
  store i32 %1393, i32* %698, align 1
  %1394 = extractelement <2 x i32> %1390, i32 1
  store i32 %1394, i32* %701, align 1
  %1395 = load <2 x i32>, <2 x i32>* %688, align 1
  %1396 = load <2 x i32>, <2 x i32>* %690, align 1
  %1397 = extractelement <2 x i32> %1395, i32 0
  store i32 %1397, i32* %713, align 1
  %1398 = extractelement <2 x i32> %1395, i32 1
  store i32 %1398, i32* %716, align 1
  %1399 = extractelement <2 x i32> %1396, i32 0
  store i32 %1399, i32* %718, align 1
  %1400 = extractelement <2 x i32> %1396, i32 1
  store i32 %1400, i32* %721, align 1
  %1401 = load <2 x i32>, <2 x i32>* %708, align 1
  %1402 = load <2 x i32>, <2 x i32>* %710, align 1
  %1403 = extractelement <2 x i32> %1401, i32 0
  store i32 %1403, i32* %733, align 1
  %1404 = extractelement <2 x i32> %1401, i32 1
  store i32 %1404, i32* %736, align 1
  %1405 = extractelement <2 x i32> %1402, i32 0
  store i32 %1405, i32* %738, align 1
  %1406 = extractelement <2 x i32> %1402, i32 1
  store i32 %1406, i32* %741, align 1
  %1407 = add i64 %1388, 234
  %1408 = add i64 %1388, 14
  %1409 = load i64, i64* %6, align 8
  %1410 = add i64 %1409, -8
  %1411 = inttoptr i64 %1410 to i64*
  store i64 %1408, i64* %1411, align 8
  store i64 %1410, i64* %6, align 8
  store i64 %1407, i64* %3, align 8
  %call2_400aff = tail call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %1407, %struct.Memory* %call2_400ab6)
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = add i64 %1412, -240
  %1414 = load i64, i64* %3, align 8
  %1415 = add i64 %1414, 8
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1413 to i64*
  %1417 = load i64, i64* %1416, align 8
  store i64 %1417, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1418 = add i64 %1412, -256
  %1419 = add i64 %1414, 16
  store i64 %1419, i64* %3, align 8
  %1420 = load i64, i64* %44, align 1
  %1421 = inttoptr i64 %1418 to i64*
  store i64 %1420, i64* %1421, align 8
  %1422 = load i64, i64* %3, align 8
  %1423 = load <2 x i32>, <2 x i32>* %809, align 1
  %1424 = load <2 x i32>, <2 x i32>* %811, align 1
  %1425 = extractelement <2 x i32> %1423, i32 0
  store i32 %1425, i32* %693, align 1
  %1426 = extractelement <2 x i32> %1423, i32 1
  store i32 %1426, i32* %696, align 1
  %1427 = extractelement <2 x i32> %1424, i32 0
  store i32 %1427, i32* %698, align 1
  %1428 = extractelement <2 x i32> %1424, i32 1
  store i32 %1428, i32* %701, align 1
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -248
  %1431 = add i64 %1422, 11
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i64*
  %1433 = load i64, i64* %1432, align 8
  store i64 %1433, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1434 = add i64 %1429, -256
  %1435 = add i64 %1422, 19
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i64*
  %1437 = load i64, i64* %1436, align 8
  store i64 %1437, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1438 = add i64 %1422, 540
  %1439 = add i64 %1422, 24
  %1440 = load i64, i64* %6, align 8
  %1441 = add i64 %1440, -8
  %1442 = inttoptr i64 %1441 to i64*
  store i64 %1439, i64* %1442, align 8
  store i64 %1441, i64* %6, align 8
  store i64 %1438, i64* %3, align 8
  %call2_400b27 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1438, %struct.Memory* %call2_400aff)
  %1443 = load i64, i64* %RBP.i, align 8
  %1444 = add i64 %1443, -200
  %1445 = load i64, i64* %3, align 8
  %1446 = add i64 %1445, 8
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1444 to i64*
  %1448 = load i64, i64* %1447, align 8
  store i64 %1448, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1449 = add i64 %1443, -264
  %1450 = add i64 %1445, 16
  store i64 %1450, i64* %3, align 8
  %1451 = load i64, i64* %44, align 1
  %1452 = inttoptr i64 %1449 to i64*
  store i64 %1451, i64* %1452, align 8
  %1453 = load i64, i64* %3, align 8
  %1454 = load <2 x i32>, <2 x i32>* %809, align 1
  %1455 = load <2 x i32>, <2 x i32>* %811, align 1
  %1456 = extractelement <2 x i32> %1454, i32 0
  store i32 %1456, i32* %693, align 1
  %1457 = extractelement <2 x i32> %1454, i32 1
  store i32 %1457, i32* %696, align 1
  %1458 = extractelement <2 x i32> %1455, i32 0
  store i32 %1458, i32* %698, align 1
  %1459 = extractelement <2 x i32> %1455, i32 1
  store i32 %1459, i32* %701, align 1
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -232
  %1462 = add i64 %1453, 11
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1465 = add i64 %1460, -264
  %1466 = add i64 %1453, 19
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1469 = add i64 %1453, 500
  %1470 = add i64 %1453, 24
  %1471 = load i64, i64* %6, align 8
  %1472 = add i64 %1471, -8
  %1473 = inttoptr i64 %1472 to i64*
  store i64 %1470, i64* %1473, align 8
  store i64 %1472, i64* %6, align 8
  store i64 %1469, i64* %3, align 8
  %call2_400b4f = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1469, %struct.Memory* %call2_400b27)
  %1474 = load i64, i64* %RBP.i, align 8
  %1475 = add i64 %1474, -96
  %1476 = load i64, i64* %3, align 8
  %1477 = add i64 %1476, 5
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1475 to i64*
  %1479 = load i64, i64* %1478, align 8
  store i64 %1479, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1480 = add i64 %1474, -272
  %1481 = add i64 %1476, 13
  store i64 %1481, i64* %3, align 8
  %1482 = load i64, i64* %44, align 1
  %1483 = inttoptr i64 %1480 to i64*
  store i64 %1482, i64* %1483, align 8
  %1484 = load i64, i64* %3, align 8
  %1485 = load <2 x i32>, <2 x i32>* %809, align 1
  %1486 = load <2 x i32>, <2 x i32>* %811, align 1
  %1487 = extractelement <2 x i32> %1485, i32 0
  store i32 %1487, i32* %693, align 1
  %1488 = extractelement <2 x i32> %1485, i32 1
  store i32 %1488, i32* %696, align 1
  %1489 = extractelement <2 x i32> %1486, i32 0
  store i32 %1489, i32* %698, align 1
  %1490 = extractelement <2 x i32> %1486, i32 1
  store i32 %1490, i32* %701, align 1
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -192
  %1493 = add i64 %1484, 11
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %53, align 1
  store double 0.000000e+00, double* %180, align 1
  %1496 = add i64 %1491, -272
  %1497 = add i64 %1484, 19
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i64*
  %1499 = load i64, i64* %1498, align 8
  store i64 %1499, i64* %61, align 1
  store double 0.000000e+00, double* %645, align 1
  %1500 = add i64 %1484, 463
  %1501 = add i64 %1484, 24
  %1502 = load i64, i64* %6, align 8
  %1503 = add i64 %1502, -8
  %1504 = inttoptr i64 %1503 to i64*
  store i64 %1501, i64* %1504, align 8
  store i64 %1503, i64* %6, align 8
  store i64 %1500, i64* %3, align 8
  %call2_400b74 = tail call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %1500, %struct.Memory* %call2_400b4f)
  %1505 = load i64, i64* %6, align 8
  %1506 = load i64, i64* %3, align 8
  %1507 = add i64 %1505, 272
  store i64 %1507, i64* %6, align 8
  %1508 = icmp ugt i64 %1505, -273
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %14, align 1
  %1510 = trunc i64 %1507 to i32
  %1511 = and i32 %1510, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %21, align 1
  %1516 = xor i64 %1505, 16
  %1517 = xor i64 %1516, %1507
  %1518 = lshr i64 %1517, 4
  %1519 = trunc i64 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %27, align 1
  %1521 = icmp eq i64 %1507, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %30, align 1
  %1523 = lshr i64 %1507, 63
  %1524 = trunc i64 %1523 to i8
  store i8 %1524, i8* %33, align 1
  %1525 = lshr i64 %1505, 63
  %1526 = xor i64 %1523, %1525
  %1527 = add nuw nsw i64 %1526, %1523
  %1528 = icmp eq i64 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %39, align 1
  %1530 = add i64 %1506, 8
  store i64 %1530, i64* %3, align 8
  %1531 = add i64 %1505, 280
  %1532 = inttoptr i64 %1507 to i64*
  %1533 = load i64, i64* %1532, align 8
  store i64 %1533, i64* %RBP.i, align 8
  store i64 %1531, i64* %6, align 8
  %1534 = add i64 %1506, 9
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1531 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %3, align 8
  %1537 = add i64 %1505, 288
  store i64 %1537, i64* %6, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %5 = add i64 %4, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
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
  %20 = xor i32 %6, %7
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
  %5 = add i64 %4, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5dc__rip__4196452__type* @G_0x5dc__rip__4196452_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x58a__rip__4196534__type* @G_0x58a__rip__4196534_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x531__rip__4196623__type* @G_0x531__rip__4196623_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x497__rip__4196777__type* @G_0x497__rip__4196777_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x43c__rip__4196868__type* @G_0x43c__rip__4196868_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x3cf__rip__4196977__type* @G_0x3cf__rip__4196977_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x37d__rip__4197059__type* @G_0x37d__rip__4197059_ to i64*), align 8
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
