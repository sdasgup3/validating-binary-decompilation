; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare %struct.Memory* @sub_400470.floor_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400ba0.fade(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400bf0.grad(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400d40.lerp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

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
  %call2_4006ff = tail call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %73, %struct.Memory* %2)
  %RAX.i615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %78 = load i64, i64* %3, align 8
  %79 = load double, double* %43, align 1
  %80 = tail call double @llvm.trunc.f64(double %79)
  %81 = tail call double @llvm.fabs.f64(double %80)
  %82 = fcmp ogt double %81, 0x41DFFFFFFFC00000
  %83 = fptosi double %80 to i32
  %84 = and i32 %83, 255
  %.op = zext i32 %84 to i64
  %85 = select i1 %82, i64 0, i64 %.op
  %86 = trunc i64 %85 to i32
  store i64 %85, i64* %RAX.i615, align 8
  store i8 0, i8* %14, align 1
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1
  %91 = icmp eq i32 %86, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -28
  %95 = add i64 %78, 12
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 %86, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -16
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 5
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %103 = add i64 %99, -672
  %104 = add i64 %99, 10
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  %call2_400715 = tail call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %103, %struct.Memory* %call2_4006ff)
  %108 = load i64, i64* %3, align 8
  %109 = load double, double* %43, align 1
  %110 = tail call double @llvm.trunc.f64(double %109)
  %111 = tail call double @llvm.fabs.f64(double %110)
  %112 = fcmp ogt double %111, 0x41DFFFFFFFC00000
  %113 = fptosi double %110 to i32
  %114 = and i32 %113, 255
  %.op13 = zext i32 %114 to i64
  %115 = select i1 %112, i64 0, i64 %.op13
  %116 = trunc i64 %115 to i32
  store i64 %115, i64* %RAX.i615, align 8
  store i8 0, i8* %14, align 1
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  %121 = icmp eq i32 %116, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -32
  %125 = add i64 %108, 12
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 %116, i32* %126, align 4
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -24
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 5
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %133 = add i64 %129, -694
  %134 = add i64 %129, 10
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %6, align 8
  store i64 %133, i64* %3, align 8
  %call2_40072b = tail call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %133, %struct.Memory* %call2_400715)
  %138 = load i64, i64* %3, align 8
  %139 = load double, double* %43, align 1
  %140 = tail call double @llvm.trunc.f64(double %139)
  %141 = tail call double @llvm.fabs.f64(double %140)
  %142 = fcmp ogt double %141, 0x41DFFFFFFFC00000
  %143 = fptosi double %140 to i32
  %144 = and i32 %143, 255
  %.op14 = zext i32 %144 to i64
  %145 = select i1 %142, i64 0, i64 %.op14
  %146 = trunc i64 %145 to i32
  store i64 %145, i64* %RAX.i615, align 8
  store i8 0, i8* %14, align 1
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = icmp eq i32 %146, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -36
  %155 = add i64 %138, 12
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %146, i32* %156, align 4
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -8
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 5
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %163 = add i64 %159, -716
  %164 = add i64 %159, 10
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167, align 8
  store i64 %166, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  %call2_400741 = tail call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %163, %struct.Memory* %call2_40072b)
  %168 = bitcast %union.VectorReg* %47 to i8*
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -8
  %171 = load i64, i64* %3, align 8
  %172 = add i64 %171, 5
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %170 to double*
  %174 = load double, double* %173, align 8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %176 = bitcast i64* %175 to double*
  %177 = load double, double* %43, align 1
  %178 = fsub double %174, %177
  store double %178, double* %52, align 1
  store i64 0, i64* %175, align 1
  %179 = add i64 %171, 14
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %170 to double*
  store double %178, double* %180, align 8
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -16
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 5
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %187 = add i64 %183, -740
  %188 = add i64 %183, 10
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %6, align 8
  store i64 %187, i64* %3, align 8
  %call2_400759 = tail call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %187, %struct.Memory* %call2_400741)
  %192 = load i64, i64* %RBP.i, align 8
  %193 = add i64 %192, -16
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 5
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %193 to double*
  %197 = load double, double* %196, align 8
  %198 = load double, double* %43, align 1
  %199 = fsub double %197, %198
  store double %199, double* %52, align 1
  store i64 0, i64* %175, align 1
  %200 = add i64 %194, 14
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %193 to double*
  store double %199, double* %201, align 8
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -24
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 5
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %203 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %208 = add i64 %204, -764
  %209 = add i64 %204, 10
  %210 = load i64, i64* %6, align 8
  %211 = add i64 %210, -8
  %212 = inttoptr i64 %211 to i64*
  store i64 %209, i64* %212, align 8
  store i64 %211, i64* %6, align 8
  store i64 %208, i64* %3, align 8
  %call2_400771 = tail call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %208, %struct.Memory* %call2_400759)
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -24
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 5
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %214 to double*
  %218 = load double, double* %217, align 8
  %219 = load double, double* %43, align 1
  %220 = fsub double %218, %219
  store double %220, double* %52, align 1
  store i64 0, i64* %175, align 1
  %221 = add i64 %215, 14
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %214 to double*
  store double %220, double* %222, align 8
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -8
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 5
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %229 = add i64 %225, 1052
  %230 = add i64 %225, 10
  %231 = load i64, i64* %6, align 8
  %232 = add i64 %231, -8
  %233 = inttoptr i64 %232 to i64*
  store i64 %230, i64* %233, align 8
  store i64 %232, i64* %6, align 8
  store i64 %229, i64* %3, align 8
  %call2_400789 = tail call %struct.Memory* @sub_400ba0.fade(%struct.State* %0, i64 %229, %struct.Memory* %call2_400771)
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -48
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 5
  store i64 %237, i64* %3, align 8
  %238 = load i64, i64* %44, align 1
  %239 = inttoptr i64 %235 to i64*
  store i64 %238, i64* %239, align 8
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -16
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 5
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %246 = add i64 %242, 1037
  %247 = add i64 %242, 10
  %248 = load i64, i64* %6, align 8
  %249 = add i64 %248, -8
  %250 = inttoptr i64 %249 to i64*
  store i64 %247, i64* %250, align 8
  store i64 %249, i64* %6, align 8
  store i64 %246, i64* %3, align 8
  %call2_400798 = tail call %struct.Memory* @sub_400ba0.fade(%struct.State* %0, i64 %246, %struct.Memory* %call2_400789)
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -56
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 5
  store i64 %254, i64* %3, align 8
  %255 = load i64, i64* %44, align 1
  %256 = inttoptr i64 %252 to i64*
  store i64 %255, i64* %256, align 8
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -24
  %259 = load i64, i64* %3, align 8
  %260 = add i64 %259, 5
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %263 = add i64 %259, 1022
  %264 = add i64 %259, 10
  %265 = load i64, i64* %6, align 8
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  store i64 %266, i64* %6, align 8
  store i64 %263, i64* %3, align 8
  %call2_4007a7 = tail call %struct.Memory* @sub_400ba0.fade(%struct.State* %0, i64 %263, %struct.Memory* %call2_400798)
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -64
  %270 = load i64, i64* %3, align 8
  %271 = add i64 %270, 5
  store i64 %271, i64* %3, align 8
  %272 = load i64, i64* %44, align 1
  %273 = inttoptr i64 %269 to i64*
  store i64 %272, i64* %273, align 8
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -28
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 4
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %RCX.i523, align 8
  %281 = shl nsw i64 %280, 2
  %282 = add nsw i64 %281, 6300752
  %283 = add i64 %276, 11
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RAX.i615, align 8
  %287 = add i64 %274, -32
  %288 = add i64 %276, 14
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %290, %285
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RAX.i615, align 8
  %293 = icmp ult i32 %291, %285
  %294 = icmp ult i32 %291, %290
  %295 = or i1 %293, %294
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %14, align 1
  %297 = and i32 %291, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %21, align 1
  %302 = xor i32 %290, %285
  %303 = xor i32 %302, %291
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %27, align 1
  %307 = icmp eq i32 %291, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %30, align 1
  %309 = lshr i32 %291, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %33, align 1
  %311 = lshr i32 %285, 31
  %312 = lshr i32 %290, 31
  %313 = xor i32 %309, %311
  %314 = xor i32 %309, %312
  %315 = add nuw nsw i32 %313, %314
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %39, align 1
  %318 = add i64 %274, -68
  %319 = add i64 %276, 17
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  store i32 %291, i32* %320, align 4
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -68
  %323 = load i64, i64* %3, align 8
  %324 = add i64 %323, 4
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RCX.i523, align 8
  %328 = shl nsw i64 %327, 2
  %329 = add nsw i64 %328, 6300752
  %330 = add i64 %323, 11
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i615, align 8
  %334 = add i64 %321, -36
  %335 = add i64 %323, 14
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = add i32 %337, %332
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX.i615, align 8
  %340 = icmp ult i32 %338, %332
  %341 = icmp ult i32 %338, %337
  %342 = or i1 %340, %341
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = and i32 %338, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %21, align 1
  %349 = xor i32 %337, %332
  %350 = xor i32 %349, %338
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %27, align 1
  %354 = icmp eq i32 %338, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %30, align 1
  %356 = lshr i32 %338, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %33, align 1
  %358 = lshr i32 %332, 31
  %359 = lshr i32 %337, 31
  %360 = xor i32 %356, %358
  %361 = xor i32 %356, %359
  %362 = add nuw nsw i32 %360, %361
  %363 = icmp eq i32 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %39, align 1
  %365 = add i64 %321, -72
  %366 = add i64 %323, 17
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 %338, i32* %367, align 4
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -68
  %370 = load i64, i64* %3, align 8
  %371 = add i64 %370, 3
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %369 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = add i32 %373, 1
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RAX.i615, align 8
  %376 = icmp eq i32 %373, -1
  %377 = icmp eq i32 %374, 0
  %378 = or i1 %376, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1
  %380 = and i32 %374, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %21, align 1
  %385 = xor i32 %374, %373
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %27, align 1
  %389 = zext i1 %377 to i8
  store i8 %389, i8* %30, align 1
  %390 = lshr i32 %374, 31
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %33, align 1
  %392 = lshr i32 %373, 31
  %393 = xor i32 %390, %392
  %394 = add nuw nsw i32 %393, %390
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %39, align 1
  %397 = sext i32 %374 to i64
  store i64 %397, i64* %RCX.i523, align 8
  %398 = shl nsw i64 %397, 2
  %399 = add nsw i64 %398, 6300752
  %400 = add i64 %370, 16
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX.i615, align 8
  %404 = add i64 %368, -36
  %405 = add i64 %370, 19
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = add i32 %407, %402
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RAX.i615, align 8
  %410 = icmp ult i32 %408, %402
  %411 = icmp ult i32 %408, %407
  %412 = or i1 %410, %411
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %14, align 1
  %414 = and i32 %408, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  %419 = xor i32 %407, %402
  %420 = xor i32 %419, %408
  %421 = lshr i32 %420, 4
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %27, align 1
  %424 = icmp eq i32 %408, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %30, align 1
  %426 = lshr i32 %408, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %33, align 1
  %428 = lshr i32 %402, 31
  %429 = lshr i32 %407, 31
  %430 = xor i32 %426, %428
  %431 = xor i32 %426, %429
  %432 = add nuw nsw i32 %430, %431
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = add i64 %368, -76
  %436 = add i64 %370, 22
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  store i32 %408, i32* %437, align 4
  %438 = load i64, i64* %RBP.i, align 8
  %439 = add i64 %438, -28
  %440 = load i64, i64* %3, align 8
  %441 = add i64 %440, 3
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, 1
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RAX.i615, align 8
  %446 = icmp eq i32 %443, -1
  %447 = icmp eq i32 %444, 0
  %448 = or i1 %446, %447
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %14, align 1
  %450 = and i32 %444, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %21, align 1
  %455 = xor i32 %444, %443
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %27, align 1
  %459 = zext i1 %447 to i8
  store i8 %459, i8* %30, align 1
  %460 = lshr i32 %444, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %33, align 1
  %462 = lshr i32 %443, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %460
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %39, align 1
  %467 = sext i32 %444 to i64
  store i64 %467, i64* %RCX.i523, align 8
  %468 = shl nsw i64 %467, 2
  %469 = add nsw i64 %468, 6300752
  %470 = add i64 %440, 16
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i615, align 8
  %474 = add i64 %438, -32
  %475 = add i64 %440, 19
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = add i32 %477, %472
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RAX.i615, align 8
  %480 = icmp ult i32 %478, %472
  %481 = icmp ult i32 %478, %477
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %14, align 1
  %484 = and i32 %478, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  %489 = xor i32 %477, %472
  %490 = xor i32 %489, %478
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %27, align 1
  %494 = icmp eq i32 %478, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %30, align 1
  %496 = lshr i32 %478, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %33, align 1
  %498 = lshr i32 %472, 31
  %499 = lshr i32 %477, 31
  %500 = xor i32 %496, %498
  %501 = xor i32 %496, %499
  %502 = add nuw nsw i32 %500, %501
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %39, align 1
  %505 = add i64 %438, -80
  %506 = add i64 %440, 22
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  store i32 %478, i32* %507, align 4
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -80
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 4
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %RCX.i523, align 8
  %515 = shl nsw i64 %514, 2
  %516 = add nsw i64 %515, 6300752
  %517 = add i64 %510, 11
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX.i615, align 8
  %521 = add i64 %508, -36
  %522 = add i64 %510, 14
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = add i32 %524, %519
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX.i615, align 8
  %527 = icmp ult i32 %525, %519
  %528 = icmp ult i32 %525, %524
  %529 = or i1 %527, %528
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %14, align 1
  %531 = and i32 %525, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %21, align 1
  %536 = xor i32 %524, %519
  %537 = xor i32 %536, %525
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %27, align 1
  %541 = icmp eq i32 %525, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %30, align 1
  %543 = lshr i32 %525, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %33, align 1
  %545 = lshr i32 %519, 31
  %546 = lshr i32 %524, 31
  %547 = xor i32 %543, %545
  %548 = xor i32 %543, %546
  %549 = add nuw nsw i32 %547, %548
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %39, align 1
  %552 = add i64 %508, -84
  %553 = add i64 %510, 17
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  store i32 %525, i32* %554, align 4
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -80
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 3
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, 1
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RAX.i615, align 8
  %563 = icmp eq i32 %560, -1
  %564 = icmp eq i32 %561, 0
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = and i32 %561, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %21, align 1
  %572 = xor i32 %561, %560
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %27, align 1
  %576 = zext i1 %564 to i8
  store i8 %576, i8* %30, align 1
  %577 = lshr i32 %561, 31
  %578 = trunc i32 %577 to i8
  store i8 %578, i8* %33, align 1
  %579 = lshr i32 %560, 31
  %580 = xor i32 %577, %579
  %581 = add nuw nsw i32 %580, %577
  %582 = icmp eq i32 %581, 2
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %39, align 1
  %584 = sext i32 %561 to i64
  store i64 %584, i64* %RCX.i523, align 8
  %585 = shl nsw i64 %584, 2
  %586 = add nsw i64 %585, 6300752
  %587 = add i64 %557, 16
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX.i615, align 8
  %591 = add i64 %555, -36
  %592 = add i64 %557, 19
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = add i32 %594, %589
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX.i615, align 8
  %597 = icmp ult i32 %595, %589
  %598 = icmp ult i32 %595, %594
  %599 = or i1 %597, %598
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %14, align 1
  %601 = and i32 %595, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %21, align 1
  %606 = xor i32 %594, %589
  %607 = xor i32 %606, %595
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %27, align 1
  %611 = icmp eq i32 %595, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %30, align 1
  %613 = lshr i32 %595, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %33, align 1
  %615 = lshr i32 %589, 31
  %616 = lshr i32 %594, 31
  %617 = xor i32 %613, %615
  %618 = xor i32 %613, %616
  %619 = add nuw nsw i32 %617, %618
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %39, align 1
  %622 = add i64 %555, -88
  %623 = add i64 %557, 22
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  store i32 %595, i32* %624, align 4
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -64
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 5
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %44, align 1
  store double 0.000000e+00, double* %72, align 1
  %631 = add i64 %625, -56
  %632 = add i64 %627, 10
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i64*
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %635 = bitcast %union.VectorReg* %56 to i8*
  %636 = add i64 %625, -48
  %637 = add i64 %627, 15
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  %640 = bitcast %union.VectorReg* %56 to double*
  store i64 %639, i64* %61, align 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %642 = bitcast i64* %641 to double*
  store double 0.000000e+00, double* %642, align 1
  %643 = add i64 %625, -72
  %644 = add i64 %627, 19
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  store i64 %647, i64* %RCX.i523, align 8
  %RDI.i425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %648 = shl nsw i64 %647, 2
  %649 = add nsw i64 %648, 6300752
  %650 = add i64 %627, 26
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RDI.i425, align 8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %655 = add i64 %625, -8
  %656 = add i64 %627, 31
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  %659 = bitcast %union.VectorReg* %654 to double*
  %660 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %654, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %658, i64* %660, align 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %662 = bitcast i64* %661 to double*
  store double 0.000000e+00, double* %662, align 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %664 = add i64 %625, -16
  %665 = add i64 %627, 36
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  %668 = bitcast %union.VectorReg* %663 to double*
  %669 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %663, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %667, i64* %669, align 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %671 = bitcast i64* %670 to double*
  store double 0.000000e+00, double* %671, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %673 = add i64 %625, -24
  %674 = add i64 %627, 41
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  %677 = bitcast %union.VectorReg* %672 to double*
  %678 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %672, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %676, i64* %678, align 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %680 = bitcast i64* %679 to double*
  store double 0.000000e+00, double* %680, align 1
  %681 = add i64 %625, -96
  %682 = add i64 %627, 46
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  store i64 %630, i64* %683, align 8
  %684 = load i64, i64* %3, align 8
  %685 = bitcast %union.VectorReg* %654 to <2 x i32>*
  %686 = load <2 x i32>, <2 x i32>* %685, align 1
  %687 = bitcast i64* %661 to <2 x i32>*
  %688 = load <2 x i32>, <2 x i32>* %687, align 1
  %689 = extractelement <2 x i32> %686, i32 0
  %690 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 %689, i32* %690, align 1
  %691 = extractelement <2 x i32> %686, i32 1
  %692 = getelementptr inbounds i8, i8* %64, i64 4
  %693 = bitcast i8* %692 to i32*
  store i32 %691, i32* %693, align 1
  %694 = extractelement <2 x i32> %688, i32 0
  %695 = bitcast i64* %71 to i32*
  store i32 %694, i32* %695, align 1
  %696 = extractelement <2 x i32> %688, i32 1
  %697 = getelementptr inbounds i8, i8* %64, i64 12
  %698 = bitcast i8* %697 to i32*
  store i32 %696, i32* %698, align 1
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -104
  %701 = add i64 %684, 8
  store i64 %701, i64* %3, align 8
  %702 = load i64, i64* %53, align 1
  %703 = inttoptr i64 %700 to i64*
  store i64 %702, i64* %703, align 8
  %704 = load i64, i64* %3, align 8
  %705 = bitcast %union.VectorReg* %663 to <2 x i32>*
  %706 = load <2 x i32>, <2 x i32>* %705, align 1
  %707 = bitcast i64* %670 to <2 x i32>*
  %708 = load <2 x i32>, <2 x i32>* %707, align 1
  %709 = extractelement <2 x i32> %706, i32 0
  %710 = bitcast %union.VectorReg* %47 to i32*
  store i32 %709, i32* %710, align 1
  %711 = extractelement <2 x i32> %706, i32 1
  %712 = getelementptr inbounds i8, i8* %168, i64 4
  %713 = bitcast i8* %712 to i32*
  store i32 %711, i32* %713, align 1
  %714 = extractelement <2 x i32> %708, i32 0
  %715 = bitcast i64* %175 to i32*
  store i32 %714, i32* %715, align 1
  %716 = extractelement <2 x i32> %708, i32 1
  %717 = getelementptr inbounds i8, i8* %168, i64 12
  %718 = bitcast i8* %717 to i32*
  store i32 %716, i32* %718, align 1
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -112
  %721 = add i64 %704, 8
  store i64 %721, i64* %3, align 8
  %722 = load i64, i64* %61, align 1
  %723 = inttoptr i64 %720 to i64*
  store i64 %722, i64* %723, align 8
  %724 = load i64, i64* %3, align 8
  %725 = bitcast %union.VectorReg* %672 to <2 x i32>*
  %726 = load <2 x i32>, <2 x i32>* %725, align 1
  %727 = bitcast i64* %679 to <2 x i32>*
  %728 = load <2 x i32>, <2 x i32>* %727, align 1
  %729 = extractelement <2 x i32> %726, i32 0
  %730 = bitcast %union.VectorReg* %56 to i32*
  store i32 %729, i32* %730, align 1
  %731 = extractelement <2 x i32> %726, i32 1
  %732 = getelementptr inbounds i8, i8* %635, i64 4
  %733 = bitcast i8* %732 to i32*
  store i32 %731, i32* %733, align 1
  %734 = extractelement <2 x i32> %728, i32 0
  %735 = bitcast i64* %641 to i32*
  store i32 %734, i32* %735, align 1
  %736 = extractelement <2 x i32> %728, i32 1
  %737 = getelementptr inbounds i8, i8* %635, i64 12
  %738 = bitcast i8* %737 to i32*
  store i32 %736, i32* %738, align 1
  %739 = add i64 %724, 908
  %740 = add i64 %724, 8
  %741 = load i64, i64* %6, align 8
  %742 = add i64 %741, -8
  %743 = inttoptr i64 %742 to i64*
  store i64 %740, i64* %743, align 8
  store i64 %742, i64* %6, align 8
  store i64 %739, i64* %3, align 8
  %call2_400867 = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %739, %struct.Memory* %call2_4007a7)
  %744 = load i64, i64* %3, align 8
  %745 = add i64 %744, 1508
  %746 = add i64 %744, 8
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -84
  %751 = add i64 %744, 12
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i523, align 8
  %755 = shl nsw i64 %754, 2
  %756 = add nsw i64 %755, 6300752
  %757 = add i64 %744, 19
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDI.i425, align 8
  %761 = add i64 %749, -8
  %762 = add i64 %744, 24
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to double*
  %764 = load double, double* %763, align 8
  %765 = bitcast i64 %748 to double
  %766 = fsub double %764, %765
  store double %766, double* %640, align 1
  store i64 0, i64* %641, align 1
  %767 = add i64 %749, -16
  %768 = add i64 %744, 33
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %771 = add i64 %749, -24
  %772 = add i64 %744, 38
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i64*
  %774 = load i64, i64* %773, align 8
  store i64 %774, i64* %660, align 1
  store double 0.000000e+00, double* %662, align 1
  %775 = add i64 %749, -120
  %776 = add i64 %744, 43
  store i64 %776, i64* %3, align 8
  %777 = load i64, i64* %44, align 1
  %778 = inttoptr i64 %775 to i64*
  store i64 %777, i64* %778, align 8
  %779 = load i64, i64* %3, align 8
  %780 = bitcast %union.VectorReg* %56 to <2 x i32>*
  %781 = load <2 x i32>, <2 x i32>* %780, align 1
  %782 = bitcast i64* %641 to <2 x i32>*
  %783 = load <2 x i32>, <2 x i32>* %782, align 1
  %784 = extractelement <2 x i32> %781, i32 0
  store i32 %784, i32* %690, align 1
  %785 = extractelement <2 x i32> %781, i32 1
  store i32 %785, i32* %693, align 1
  %786 = extractelement <2 x i32> %783, i32 0
  store i32 %786, i32* %695, align 1
  %787 = extractelement <2 x i32> %783, i32 1
  store i32 %787, i32* %698, align 1
  %788 = load <2 x i32>, <2 x i32>* %685, align 1
  %789 = load <2 x i32>, <2 x i32>* %687, align 1
  %790 = extractelement <2 x i32> %788, i32 0
  store i32 %790, i32* %730, align 1
  %791 = extractelement <2 x i32> %788, i32 1
  store i32 %791, i32* %733, align 1
  %792 = extractelement <2 x i32> %789, i32 0
  store i32 %792, i32* %735, align 1
  %793 = extractelement <2 x i32> %789, i32 1
  store i32 %793, i32* %738, align 1
  %794 = add i64 %779, 857
  %795 = add i64 %779, 11
  %796 = load i64, i64* %6, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %795, i64* %798, align 8
  store i64 %797, i64* %6, align 8
  store i64 %794, i64* %3, align 8
  %call2_40089d = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %794, %struct.Memory* %call2_400867)
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -112
  %801 = load i64, i64* %3, align 8
  %802 = add i64 %801, 5
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %800 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %805 = add i64 %799, -128
  %806 = add i64 %801, 10
  store i64 %806, i64* %3, align 8
  %807 = load i64, i64* %44, align 1
  %808 = inttoptr i64 %805 to i64*
  store i64 %807, i64* %808, align 8
  %809 = load i64, i64* %3, align 8
  %810 = bitcast %union.VectorReg* %47 to <2 x i32>*
  %811 = load <2 x i32>, <2 x i32>* %810, align 1
  %812 = bitcast i64* %175 to <2 x i32>*
  %813 = load <2 x i32>, <2 x i32>* %812, align 1
  %814 = extractelement <2 x i32> %811, i32 0
  store i32 %814, i32* %690, align 1
  %815 = extractelement <2 x i32> %811, i32 1
  store i32 %815, i32* %693, align 1
  %816 = extractelement <2 x i32> %813, i32 0
  store i32 %816, i32* %695, align 1
  %817 = extractelement <2 x i32> %813, i32 1
  store i32 %817, i32* %698, align 1
  %818 = load i64, i64* %RBP.i, align 8
  %819 = add i64 %818, -120
  %820 = add i64 %809, 8
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i64*
  %822 = load i64, i64* %821, align 8
  store i64 %822, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %823 = add i64 %818, -128
  %824 = add i64 %809, 13
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %827 = add i64 %809, 1172
  %828 = add i64 %809, 18
  %829 = load i64, i64* %6, align 8
  %830 = add i64 %829, -8
  %831 = inttoptr i64 %830 to i64*
  store i64 %828, i64* %831, align 8
  store i64 %830, i64* %6, align 8
  store i64 %827, i64* %3, align 8
  %call2_4008b9 = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %827, %struct.Memory* %call2_40089d)
  %832 = load i64, i64* %3, align 8
  %833 = add i64 %832, 1426
  %834 = add i64 %832, 8
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i64*
  %836 = load i64, i64* %835, align 8
  store i64 %836, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -48
  %839 = add i64 %832, 13
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %842 = add i64 %837, -76
  %843 = add i64 %832, 17
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX.i523, align 8
  %847 = shl nsw i64 %846, 2
  %848 = add nsw i64 %847, 6300752
  %849 = add i64 %832, 24
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RDI.i425, align 8
  %853 = add i64 %837, -8
  %854 = add i64 %832, 29
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %660, align 1
  store double 0.000000e+00, double* %662, align 1
  %857 = add i64 %837, -16
  %858 = add i64 %832, 34
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to double*
  %860 = load double, double* %859, align 8
  %861 = bitcast i64 %836 to double
  %862 = fsub double %860, %861
  store double %862, double* %668, align 1
  store i64 0, i64* %670, align 1
  %863 = add i64 %837, -24
  %864 = add i64 %832, 43
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %53, align 1
  %867 = add i64 %837, -136
  %868 = add i64 %832, 51
  store i64 %868, i64* %3, align 8
  %869 = load i64, i64* %44, align 1
  %870 = inttoptr i64 %867 to i64*
  store i64 %869, i64* %870, align 8
  %871 = load i64, i64* %3, align 8
  %872 = load <2 x i32>, <2 x i32>* %685, align 1
  %873 = load <2 x i32>, <2 x i32>* %687, align 1
  %874 = extractelement <2 x i32> %872, i32 0
  store i32 %874, i32* %690, align 1
  %875 = extractelement <2 x i32> %872, i32 1
  store i32 %875, i32* %693, align 1
  %876 = extractelement <2 x i32> %873, i32 0
  store i32 %876, i32* %695, align 1
  %877 = extractelement <2 x i32> %873, i32 1
  store i32 %877, i32* %698, align 1
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -144
  %880 = add i64 %871, 11
  store i64 %880, i64* %3, align 8
  %881 = load i64, i64* %53, align 1
  %882 = inttoptr i64 %879 to i64*
  store i64 %881, i64* %882, align 8
  %883 = load i64, i64* %3, align 8
  %884 = load <2 x i32>, <2 x i32>* %705, align 1
  %885 = load <2 x i32>, <2 x i32>* %707, align 1
  %886 = extractelement <2 x i32> %884, i32 0
  store i32 %886, i32* %710, align 1
  %887 = extractelement <2 x i32> %884, i32 1
  store i32 %887, i32* %713, align 1
  %888 = extractelement <2 x i32> %885, i32 0
  store i32 %888, i32* %715, align 1
  %889 = extractelement <2 x i32> %885, i32 1
  store i32 %889, i32* %718, align 1
  %890 = load i64, i64* %RBP.i, align 8
  %891 = add i64 %890, -144
  %892 = add i64 %883, 11
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %660, align 1
  store double 0.000000e+00, double* %662, align 1
  %895 = add i64 %890, -152
  %896 = add i64 %883, 19
  store i64 %896, i64* %3, align 8
  %897 = load i64, i64* %61, align 1
  %898 = inttoptr i64 %895 to i64*
  store i64 %897, i64* %898, align 8
  %899 = load i64, i64* %3, align 8
  %900 = load <2 x i32>, <2 x i32>* %685, align 1
  %901 = load <2 x i32>, <2 x i32>* %687, align 1
  %902 = extractelement <2 x i32> %900, i32 0
  store i32 %902, i32* %730, align 1
  %903 = extractelement <2 x i32> %900, i32 1
  store i32 %903, i32* %733, align 1
  %904 = extractelement <2 x i32> %901, i32 0
  store i32 %904, i32* %735, align 1
  %905 = extractelement <2 x i32> %901, i32 1
  store i32 %905, i32* %738, align 1
  %906 = add i64 %899, 737
  %907 = add i64 %899, 8
  %908 = load i64, i64* %6, align 8
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %907, i64* %910, align 8
  store i64 %909, i64* %6, align 8
  store i64 %906, i64* %3, align 8
  %call2_400912 = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %906, %struct.Memory* %call2_4008b9)
  %911 = load i64, i64* %3, align 8
  %912 = add i64 %911, 1337
  %913 = add i64 %911, 8
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i64*
  %915 = load i64, i64* %914, align 8
  store i64 %915, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -88
  %918 = add i64 %911, 12
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = sext i32 %920 to i64
  store i64 %921, i64* %RCX.i523, align 8
  %922 = shl nsw i64 %921, 2
  %923 = add nsw i64 %922, 6300752
  %924 = add i64 %911, 19
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RDI.i425, align 8
  %928 = add i64 %916, -8
  %929 = add i64 %911, 24
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to double*
  %931 = load double, double* %930, align 8
  %932 = bitcast i64 %915 to double
  %933 = fsub double %931, %932
  store double %933, double* %640, align 1
  store i64 0, i64* %641, align 1
  %934 = add i64 %916, -16
  %935 = add i64 %911, 33
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to double*
  %937 = load double, double* %936, align 8
  %938 = fsub double %937, %932
  store double %938, double* %659, align 1
  store i64 0, i64* %661, align 1
  %939 = add i64 %916, -24
  %940 = add i64 %911, 42
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %53, align 1
  %943 = add i64 %916, -160
  %944 = add i64 %911, 50
  store i64 %944, i64* %3, align 8
  %945 = load i64, i64* %44, align 1
  %946 = inttoptr i64 %943 to i64*
  store i64 %945, i64* %946, align 8
  %947 = load i64, i64* %3, align 8
  %948 = load <2 x i32>, <2 x i32>* %780, align 1
  %949 = load <2 x i32>, <2 x i32>* %782, align 1
  %950 = extractelement <2 x i32> %948, i32 0
  store i32 %950, i32* %690, align 1
  %951 = extractelement <2 x i32> %948, i32 1
  store i32 %951, i32* %693, align 1
  %952 = extractelement <2 x i32> %949, i32 0
  store i32 %952, i32* %695, align 1
  %953 = extractelement <2 x i32> %949, i32 1
  store i32 %953, i32* %698, align 1
  %954 = load i64, i64* %RBP.i, align 8
  %955 = add i64 %954, -168
  %956 = add i64 %947, 11
  store i64 %956, i64* %3, align 8
  %957 = load i64, i64* %53, align 1
  %958 = inttoptr i64 %955 to i64*
  store i64 %957, i64* %958, align 8
  %959 = load i64, i64* %3, align 8
  %960 = load <2 x i32>, <2 x i32>* %685, align 1
  %961 = load <2 x i32>, <2 x i32>* %687, align 1
  %962 = extractelement <2 x i32> %960, i32 0
  store i32 %962, i32* %710, align 1
  %963 = extractelement <2 x i32> %960, i32 1
  store i32 %963, i32* %713, align 1
  %964 = extractelement <2 x i32> %961, i32 0
  store i32 %964, i32* %715, align 1
  %965 = extractelement <2 x i32> %961, i32 1
  store i32 %965, i32* %718, align 1
  %966 = load i64, i64* %RBP.i, align 8
  %967 = add i64 %966, -168
  %968 = add i64 %959, 11
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i64*
  %970 = load i64, i64* %969, align 8
  store i64 %970, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %971 = add i64 %959, 668
  %972 = add i64 %959, 16
  %973 = load i64, i64* %6, align 8
  %974 = add i64 %973, -8
  %975 = inttoptr i64 %974 to i64*
  store i64 %972, i64* %975, align 8
  store i64 %974, i64* %6, align 8
  store i64 %971, i64* %3, align 8
  %call2_40095f = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %971, %struct.Memory* %call2_400912)
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -152
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, 8
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %977 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %982 = add i64 %976, -176
  %983 = add i64 %978, 16
  store i64 %983, i64* %3, align 8
  %984 = load i64, i64* %44, align 1
  %985 = inttoptr i64 %982 to i64*
  store i64 %984, i64* %985, align 8
  %986 = load i64, i64* %3, align 8
  %987 = load <2 x i32>, <2 x i32>* %810, align 1
  %988 = load <2 x i32>, <2 x i32>* %812, align 1
  %989 = extractelement <2 x i32> %987, i32 0
  store i32 %989, i32* %690, align 1
  %990 = extractelement <2 x i32> %987, i32 1
  store i32 %990, i32* %693, align 1
  %991 = extractelement <2 x i32> %988, i32 0
  store i32 %991, i32* %695, align 1
  %992 = extractelement <2 x i32> %988, i32 1
  store i32 %992, i32* %698, align 1
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -160
  %995 = add i64 %986, 11
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i64*
  %997 = load i64, i64* %996, align 8
  store i64 %997, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %998 = add i64 %993, -176
  %999 = add i64 %986, 19
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1002 = add i64 %986, 972
  %1003 = add i64 %986, 24
  %1004 = load i64, i64* %6, align 8
  %1005 = add i64 %1004, -8
  %1006 = inttoptr i64 %1005 to i64*
  store i64 %1003, i64* %1006, align 8
  store i64 %1005, i64* %6, align 8
  store i64 %1002, i64* %3, align 8
  %call2_400987 = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %1002, %struct.Memory* %call2_40095f)
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -104
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, 5
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1008 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i64 %1012, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1013 = add i64 %1007, -184
  %1014 = add i64 %1009, 13
  store i64 %1014, i64* %3, align 8
  %1015 = load i64, i64* %44, align 1
  %1016 = inttoptr i64 %1013 to i64*
  store i64 %1015, i64* %1016, align 8
  %1017 = load i64, i64* %3, align 8
  %1018 = load <2 x i32>, <2 x i32>* %810, align 1
  %1019 = load <2 x i32>, <2 x i32>* %812, align 1
  %1020 = extractelement <2 x i32> %1018, i32 0
  store i32 %1020, i32* %690, align 1
  %1021 = extractelement <2 x i32> %1018, i32 1
  store i32 %1021, i32* %693, align 1
  %1022 = extractelement <2 x i32> %1019, i32 0
  store i32 %1022, i32* %695, align 1
  %1023 = extractelement <2 x i32> %1019, i32 1
  store i32 %1023, i32* %698, align 1
  %1024 = load i64, i64* %RBP.i, align 8
  %1025 = add i64 %1024, -136
  %1026 = add i64 %1017, 11
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1029 = add i64 %1024, -184
  %1030 = add i64 %1017, 19
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1033 = add i64 %1017, 935
  %1034 = add i64 %1017, 24
  %1035 = load i64, i64* %6, align 8
  %1036 = add i64 %1035, -8
  %1037 = inttoptr i64 %1036 to i64*
  store i64 %1034, i64* %1037, align 8
  store i64 %1036, i64* %6, align 8
  store i64 %1033, i64* %3, align 8
  %call2_4009ac = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %1033, %struct.Memory* %call2_400987)
  %1038 = load i64, i64* %3, align 8
  %1039 = add i64 %1038, 1183
  %1040 = add i64 %1038, 8
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  store i64 %1042, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -56
  %1045 = add i64 %1038, 13
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046, align 8
  store i64 %1047, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1048 = add i64 %1043, -48
  %1049 = add i64 %1038, 18
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i64*
  %1051 = load i64, i64* %1050, align 8
  store i64 %1051, i64* %660, align 1
  store double 0.000000e+00, double* %662, align 1
  %1052 = add i64 %1043, -72
  %1053 = add i64 %1038, 21
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = add i32 %1055, 1
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RAX.i615, align 8
  %1058 = icmp eq i32 %1055, -1
  %1059 = icmp eq i32 %1056, 0
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %14, align 1
  %1062 = and i32 %1056, 255
  %1063 = tail call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  store i8 %1066, i8* %21, align 1
  %1067 = xor i32 %1056, %1055
  %1068 = lshr i32 %1067, 4
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  store i8 %1070, i8* %27, align 1
  %1071 = zext i1 %1059 to i8
  store i8 %1071, i8* %30, align 1
  %1072 = lshr i32 %1056, 31
  %1073 = trunc i32 %1072 to i8
  store i8 %1073, i8* %33, align 1
  %1074 = lshr i32 %1055, 31
  %1075 = xor i32 %1072, %1074
  %1076 = add nuw nsw i32 %1075, %1072
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %39, align 1
  %1079 = sext i32 %1056 to i64
  store i64 %1079, i64* %RCX.i523, align 8
  %1080 = shl nsw i64 %1079, 2
  %1081 = add nsw i64 %1080, 6300752
  %1082 = add i64 %1038, 34
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RDI.i425, align 8
  %1086 = add i64 %1043, -8
  %1087 = add i64 %1038, 39
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i64*
  %1089 = load i64, i64* %1088, align 8
  store i64 %1089, i64* %669, align 1
  store double 0.000000e+00, double* %671, align 1
  %1090 = add i64 %1043, -16
  %1091 = add i64 %1038, 44
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i64*
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %678, align 1
  store double 0.000000e+00, double* %680, align 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %1095 = add i64 %1043, -24
  %1096 = add i64 %1038, 49
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to double*
  %1098 = load double, double* %1097, align 8
  %1099 = bitcast %union.VectorReg* %1094 to double*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %1101 = bitcast i64 %1042 to double
  %1102 = fsub double %1098, %1101
  store double %1102, double* %1099, align 1
  store i64 0, i64* %1100, align 1
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -192
  %1105 = add i64 %1038, 61
  store i64 %1105, i64* %3, align 8
  %1106 = load i64, i64* %44, align 1
  %1107 = inttoptr i64 %1104 to i64*
  store i64 %1106, i64* %1107, align 8
  %1108 = load i64, i64* %3, align 8
  %1109 = load <2 x i32>, <2 x i32>* %705, align 1
  %1110 = load <2 x i32>, <2 x i32>* %707, align 1
  %1111 = extractelement <2 x i32> %1109, i32 0
  store i32 %1111, i32* %690, align 1
  %1112 = extractelement <2 x i32> %1109, i32 1
  store i32 %1112, i32* %693, align 1
  %1113 = extractelement <2 x i32> %1110, i32 0
  store i32 %1113, i32* %695, align 1
  %1114 = extractelement <2 x i32> %1110, i32 1
  store i32 %1114, i32* %698, align 1
  %1115 = load <2 x i32>, <2 x i32>* %725, align 1
  %1116 = load <2 x i32>, <2 x i32>* %727, align 1
  %1117 = extractelement <2 x i32> %1115, i32 0
  store i32 %1117, i32* %710, align 1
  %1118 = extractelement <2 x i32> %1115, i32 1
  store i32 %1118, i32* %713, align 1
  %1119 = extractelement <2 x i32> %1116, i32 0
  store i32 %1119, i32* %715, align 1
  %1120 = extractelement <2 x i32> %1116, i32 1
  store i32 %1120, i32* %718, align 1
  %1121 = load i64, i64* %RBP.i, align 8
  %1122 = add i64 %1121, -200
  %1123 = add i64 %1108, 14
  store i64 %1123, i64* %3, align 8
  %1124 = load i64, i64* %61, align 1
  %1125 = inttoptr i64 %1122 to i64*
  store i64 %1124, i64* %1125, align 8
  %1126 = load i64, i64* %3, align 8
  %1127 = bitcast %union.VectorReg* %1094 to <2 x i32>*
  %1128 = load <2 x i32>, <2 x i32>* %1127, align 1
  %1129 = bitcast i64* %1100 to <2 x i32>*
  %1130 = load <2 x i32>, <2 x i32>* %1129, align 1
  %1131 = extractelement <2 x i32> %1128, i32 0
  store i32 %1131, i32* %730, align 1
  %1132 = extractelement <2 x i32> %1128, i32 1
  store i32 %1132, i32* %733, align 1
  %1133 = extractelement <2 x i32> %1130, i32 0
  store i32 %1133, i32* %735, align 1
  %1134 = extractelement <2 x i32> %1130, i32 1
  store i32 %1134, i32* %738, align 1
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -208
  %1137 = add i64 %1126, 11
  store i64 %1137, i64* %3, align 8
  %1138 = load i64, i64* %660, align 1
  %1139 = inttoptr i64 %1136 to i64*
  store i64 %1138, i64* %1139, align 8
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, 489
  %1142 = add i64 %1140, 5
  %1143 = load i64, i64* %6, align 8
  %1144 = add i64 %1143, -8
  %1145 = inttoptr i64 %1144 to i64*
  store i64 %1142, i64* %1145, align 8
  store i64 %1144, i64* %6, align 8
  store i64 %1141, i64* %3, align 8
  %call2_400a07 = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %1141, %struct.Memory* %call2_4009ac)
  %1146 = load i64, i64* %3, align 8
  %1147 = add i64 %1146, 1092
  %1148 = add i64 %1146, 8
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1151 = load i64, i64* %RBP.i, align 8
  %1152 = add i64 %1151, -84
  %1153 = add i64 %1146, 11
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = add i32 %1155, 1
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RAX.i615, align 8
  %1158 = icmp eq i32 %1155, -1
  %1159 = icmp eq i32 %1156, 0
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = and i32 %1156, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %21, align 1
  %1167 = xor i32 %1156, %1155
  %1168 = lshr i32 %1167, 4
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %27, align 1
  %1171 = zext i1 %1159 to i8
  store i8 %1171, i8* %30, align 1
  %1172 = lshr i32 %1156, 31
  %1173 = trunc i32 %1172 to i8
  store i8 %1173, i8* %33, align 1
  %1174 = lshr i32 %1155, 31
  %1175 = xor i32 %1172, %1174
  %1176 = add nuw nsw i32 %1175, %1172
  %1177 = icmp eq i32 %1176, 2
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %39, align 1
  %1179 = sext i32 %1156 to i64
  store i64 %1179, i64* %RCX.i523, align 8
  %1180 = shl nsw i64 %1179, 2
  %1181 = add nsw i64 %1180, 6300752
  %1182 = add i64 %1146, 24
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RDI.i425, align 8
  %1186 = add i64 %1151, -8
  %1187 = add i64 %1146, 29
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to double*
  %1189 = load double, double* %1188, align 8
  %1190 = bitcast i64 %1150 to double
  %1191 = fsub double %1189, %1190
  store double %1191, double* %640, align 1
  store i64 0, i64* %641, align 1
  %1192 = add i64 %1151, -16
  %1193 = add i64 %1146, 38
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %660, align 1
  store double 0.000000e+00, double* %662, align 1
  %1196 = add i64 %1151, -24
  %1197 = add i64 %1146, 43
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to double*
  %1199 = load double, double* %1198, align 8
  %1200 = fsub double %1199, %1190
  store double %1200, double* %668, align 1
  store i64 0, i64* %670, align 1
  %1201 = add i64 %1151, -216
  %1202 = add i64 %1146, 55
  store i64 %1202, i64* %3, align 8
  %1203 = load i64, i64* %44, align 1
  %1204 = inttoptr i64 %1201 to i64*
  store i64 %1203, i64* %1204, align 8
  %1205 = load i64, i64* %3, align 8
  %1206 = load <2 x i32>, <2 x i32>* %780, align 1
  %1207 = load <2 x i32>, <2 x i32>* %782, align 1
  %1208 = extractelement <2 x i32> %1206, i32 0
  store i32 %1208, i32* %690, align 1
  %1209 = extractelement <2 x i32> %1206, i32 1
  store i32 %1209, i32* %693, align 1
  %1210 = extractelement <2 x i32> %1207, i32 0
  store i32 %1210, i32* %695, align 1
  %1211 = extractelement <2 x i32> %1207, i32 1
  store i32 %1211, i32* %698, align 1
  %1212 = load <2 x i32>, <2 x i32>* %685, align 1
  %1213 = load <2 x i32>, <2 x i32>* %687, align 1
  %1214 = extractelement <2 x i32> %1212, i32 0
  store i32 %1214, i32* %710, align 1
  %1215 = extractelement <2 x i32> %1212, i32 1
  store i32 %1215, i32* %713, align 1
  %1216 = extractelement <2 x i32> %1213, i32 0
  store i32 %1216, i32* %715, align 1
  %1217 = extractelement <2 x i32> %1213, i32 1
  store i32 %1217, i32* %718, align 1
  %1218 = load <2 x i32>, <2 x i32>* %705, align 1
  %1219 = load <2 x i32>, <2 x i32>* %707, align 1
  %1220 = extractelement <2 x i32> %1218, i32 0
  store i32 %1220, i32* %730, align 1
  %1221 = extractelement <2 x i32> %1218, i32 1
  store i32 %1221, i32* %733, align 1
  %1222 = extractelement <2 x i32> %1219, i32 0
  store i32 %1222, i32* %735, align 1
  %1223 = extractelement <2 x i32> %1219, i32 1
  store i32 %1223, i32* %738, align 1
  %1224 = add i64 %1205, 429
  %1225 = add i64 %1205, 14
  %1226 = load i64, i64* %6, align 8
  %1227 = add i64 %1226, -8
  %1228 = inttoptr i64 %1227 to i64*
  store i64 %1225, i64* %1228, align 8
  store i64 %1227, i64* %6, align 8
  store i64 %1224, i64* %3, align 8
  %call2_400a4c = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %1224, %struct.Memory* %call2_400a07)
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -208
  %1231 = load i64, i64* %3, align 8
  %1232 = add i64 %1231, 8
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1230 to i64*
  %1234 = load i64, i64* %1233, align 8
  store i64 %1234, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1235 = add i64 %1229, -224
  %1236 = add i64 %1231, 16
  store i64 %1236, i64* %3, align 8
  %1237 = load i64, i64* %44, align 1
  %1238 = inttoptr i64 %1235 to i64*
  store i64 %1237, i64* %1238, align 8
  %1239 = load i64, i64* %3, align 8
  %1240 = load <2 x i32>, <2 x i32>* %810, align 1
  %1241 = load <2 x i32>, <2 x i32>* %812, align 1
  %1242 = extractelement <2 x i32> %1240, i32 0
  store i32 %1242, i32* %690, align 1
  %1243 = extractelement <2 x i32> %1240, i32 1
  store i32 %1243, i32* %693, align 1
  %1244 = extractelement <2 x i32> %1241, i32 0
  store i32 %1244, i32* %695, align 1
  %1245 = extractelement <2 x i32> %1241, i32 1
  store i32 %1245, i32* %698, align 1
  %1246 = load i64, i64* %RBP.i, align 8
  %1247 = add i64 %1246, -216
  %1248 = add i64 %1239, 11
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1250, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1251 = add i64 %1246, -224
  %1252 = add i64 %1239, 19
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1255 = add i64 %1239, 735
  %1256 = add i64 %1239, 24
  %1257 = load i64, i64* %6, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  store i64 %1258, i64* %6, align 8
  store i64 %1255, i64* %3, align 8
  %call2_400a74 = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %1255, %struct.Memory* %call2_400a4c)
  %1260 = load i64, i64* %3, align 8
  %1261 = add i64 %1260, 983
  %1262 = add i64 %1260, 8
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i64*
  %1264 = load i64, i64* %1263, align 8
  store i64 %1264, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -48
  %1267 = add i64 %1260, 13
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1270 = add i64 %1265, -76
  %1271 = add i64 %1260, 16
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  %1273 = load i32, i32* %1272, align 4
  %1274 = add i32 %1273, 1
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RAX.i615, align 8
  %1276 = icmp eq i32 %1273, -1
  %1277 = icmp eq i32 %1274, 0
  %1278 = or i1 %1276, %1277
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %14, align 1
  %1280 = and i32 %1274, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %21, align 1
  %1285 = xor i32 %1274, %1273
  %1286 = lshr i32 %1285, 4
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %27, align 1
  %1289 = zext i1 %1277 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1274, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  %1292 = lshr i32 %1273, 31
  %1293 = xor i32 %1290, %1292
  %1294 = add nuw nsw i32 %1293, %1290
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %39, align 1
  %1297 = sext i32 %1274 to i64
  store i64 %1297, i64* %RCX.i523, align 8
  %1298 = shl nsw i64 %1297, 2
  %1299 = add nsw i64 %1298, 6300752
  %1300 = add i64 %1260, 29
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RDI.i425, align 8
  %1304 = add i64 %1265, -8
  %1305 = add i64 %1260, 34
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %660, align 1
  store double 0.000000e+00, double* %662, align 1
  %1308 = add i64 %1265, -16
  %1309 = add i64 %1260, 39
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to double*
  %1311 = load double, double* %1310, align 8
  %1312 = bitcast i64 %1264 to double
  %1313 = fsub double %1311, %1312
  store double %1313, double* %668, align 1
  store i64 0, i64* %670, align 1
  %1314 = add i64 %1265, -24
  %1315 = add i64 %1260, 48
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to double*
  %1317 = load double, double* %1316, align 8
  %1318 = fsub double %1317, %1312
  store double %1318, double* %677, align 1
  store i64 0, i64* %679, align 1
  %1319 = add i64 %1265, -232
  %1320 = add i64 %1260, 60
  store i64 %1320, i64* %3, align 8
  %1321 = load i64, i64* %44, align 1
  %1322 = inttoptr i64 %1319 to i64*
  store i64 %1321, i64* %1322, align 8
  %1323 = load i64, i64* %3, align 8
  %1324 = load <2 x i32>, <2 x i32>* %685, align 1
  %1325 = load <2 x i32>, <2 x i32>* %687, align 1
  %1326 = extractelement <2 x i32> %1324, i32 0
  store i32 %1326, i32* %690, align 1
  %1327 = extractelement <2 x i32> %1324, i32 1
  store i32 %1327, i32* %693, align 1
  %1328 = extractelement <2 x i32> %1325, i32 0
  store i32 %1328, i32* %695, align 1
  %1329 = extractelement <2 x i32> %1325, i32 1
  store i32 %1329, i32* %698, align 1
  %1330 = load <2 x i32>, <2 x i32>* %705, align 1
  %1331 = load <2 x i32>, <2 x i32>* %707, align 1
  %1332 = extractelement <2 x i32> %1330, i32 0
  store i32 %1332, i32* %710, align 1
  %1333 = extractelement <2 x i32> %1330, i32 1
  store i32 %1333, i32* %713, align 1
  %1334 = extractelement <2 x i32> %1331, i32 0
  store i32 %1334, i32* %715, align 1
  %1335 = extractelement <2 x i32> %1331, i32 1
  store i32 %1335, i32* %718, align 1
  %1336 = load i64, i64* %RBP.i, align 8
  %1337 = add i64 %1336, -240
  %1338 = add i64 %1323, 14
  store i64 %1338, i64* %3, align 8
  %1339 = load i64, i64* %61, align 1
  %1340 = inttoptr i64 %1337 to i64*
  store i64 %1339, i64* %1340, align 8
  %1341 = load i64, i64* %3, align 8
  %1342 = load <2 x i32>, <2 x i32>* %725, align 1
  %1343 = load <2 x i32>, <2 x i32>* %727, align 1
  %1344 = extractelement <2 x i32> %1342, i32 0
  store i32 %1344, i32* %730, align 1
  %1345 = extractelement <2 x i32> %1342, i32 1
  store i32 %1345, i32* %733, align 1
  %1346 = extractelement <2 x i32> %1343, i32 0
  store i32 %1346, i32* %735, align 1
  %1347 = extractelement <2 x i32> %1343, i32 1
  store i32 %1347, i32* %738, align 1
  %1348 = add i64 %1341, 301
  %1349 = add i64 %1341, 8
  %1350 = load i64, i64* %6, align 8
  %1351 = add i64 %1350, -8
  %1352 = inttoptr i64 %1351 to i64*
  store i64 %1349, i64* %1352, align 8
  store i64 %1351, i64* %6, align 8
  store i64 %1348, i64* %3, align 8
  %call2_400ac6 = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %1348, %struct.Memory* %call2_400a74)
  %1353 = load i64, i64* %3, align 8
  %1354 = add i64 %1353, 901
  %1355 = add i64 %1353, 8
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -88
  %1360 = add i64 %1353, 11
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = add i32 %1362, 1
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RAX.i615, align 8
  %1365 = icmp eq i32 %1362, -1
  %1366 = icmp eq i32 %1363, 0
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = and i32 %1363, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i32 %1363, %1362
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %27, align 1
  %1378 = zext i1 %1366 to i8
  store i8 %1378, i8* %30, align 1
  %1379 = lshr i32 %1363, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %33, align 1
  %1381 = lshr i32 %1362, 31
  %1382 = xor i32 %1379, %1381
  %1383 = add nuw nsw i32 %1382, %1379
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %39, align 1
  %1386 = sext i32 %1363 to i64
  store i64 %1386, i64* %RCX.i523, align 8
  %1387 = shl nsw i64 %1386, 2
  %1388 = add nsw i64 %1387, 6300752
  %1389 = add i64 %1353, 24
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RDI.i425, align 8
  %1393 = add i64 %1358, -8
  %1394 = add i64 %1353, 29
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to double*
  %1396 = load double, double* %1395, align 8
  %1397 = bitcast i64 %1357 to double
  %1398 = fsub double %1396, %1397
  store double %1398, double* %640, align 1
  store i64 0, i64* %641, align 1
  %1399 = add i64 %1358, -16
  %1400 = add i64 %1353, 38
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to double*
  %1402 = load double, double* %1401, align 8
  %1403 = fsub double %1402, %1397
  store double %1403, double* %659, align 1
  store i64 0, i64* %661, align 1
  %1404 = add i64 %1358, -24
  %1405 = add i64 %1353, 47
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to double*
  %1407 = load double, double* %1406, align 8
  %1408 = fsub double %1407, %1397
  store double %1408, double* %668, align 1
  store i64 0, i64* %670, align 1
  %1409 = add i64 %1358, -248
  %1410 = add i64 %1353, 59
  store i64 %1410, i64* %3, align 8
  %1411 = load i64, i64* %44, align 1
  %1412 = inttoptr i64 %1409 to i64*
  store i64 %1411, i64* %1412, align 8
  %1413 = load i64, i64* %3, align 8
  %1414 = load <2 x i32>, <2 x i32>* %780, align 1
  %1415 = load <2 x i32>, <2 x i32>* %782, align 1
  %1416 = extractelement <2 x i32> %1414, i32 0
  store i32 %1416, i32* %690, align 1
  %1417 = extractelement <2 x i32> %1414, i32 1
  store i32 %1417, i32* %693, align 1
  %1418 = extractelement <2 x i32> %1415, i32 0
  store i32 %1418, i32* %695, align 1
  %1419 = extractelement <2 x i32> %1415, i32 1
  store i32 %1419, i32* %698, align 1
  %1420 = load <2 x i32>, <2 x i32>* %685, align 1
  %1421 = load <2 x i32>, <2 x i32>* %687, align 1
  %1422 = extractelement <2 x i32> %1420, i32 0
  store i32 %1422, i32* %710, align 1
  %1423 = extractelement <2 x i32> %1420, i32 1
  store i32 %1423, i32* %713, align 1
  %1424 = extractelement <2 x i32> %1421, i32 0
  store i32 %1424, i32* %715, align 1
  %1425 = extractelement <2 x i32> %1421, i32 1
  store i32 %1425, i32* %718, align 1
  %1426 = load <2 x i32>, <2 x i32>* %705, align 1
  %1427 = load <2 x i32>, <2 x i32>* %707, align 1
  %1428 = extractelement <2 x i32> %1426, i32 0
  store i32 %1428, i32* %730, align 1
  %1429 = extractelement <2 x i32> %1426, i32 1
  store i32 %1429, i32* %733, align 1
  %1430 = extractelement <2 x i32> %1427, i32 0
  store i32 %1430, i32* %735, align 1
  %1431 = extractelement <2 x i32> %1427, i32 1
  store i32 %1431, i32* %738, align 1
  %1432 = add i64 %1413, 234
  %1433 = add i64 %1413, 14
  %1434 = load i64, i64* %6, align 8
  %1435 = add i64 %1434, -8
  %1436 = inttoptr i64 %1435 to i64*
  store i64 %1433, i64* %1436, align 8
  store i64 %1435, i64* %6, align 8
  store i64 %1432, i64* %3, align 8
  %call2_400b0f = tail call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %1432, %struct.Memory* %call2_400ac6)
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -240
  %1439 = load i64, i64* %3, align 8
  %1440 = add i64 %1439, 8
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1438 to i64*
  %1442 = load i64, i64* %1441, align 8
  store i64 %1442, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1443 = add i64 %1437, -256
  %1444 = add i64 %1439, 16
  store i64 %1444, i64* %3, align 8
  %1445 = load i64, i64* %44, align 1
  %1446 = inttoptr i64 %1443 to i64*
  store i64 %1445, i64* %1446, align 8
  %1447 = load i64, i64* %3, align 8
  %1448 = load <2 x i32>, <2 x i32>* %810, align 1
  %1449 = load <2 x i32>, <2 x i32>* %812, align 1
  %1450 = extractelement <2 x i32> %1448, i32 0
  store i32 %1450, i32* %690, align 1
  %1451 = extractelement <2 x i32> %1448, i32 1
  store i32 %1451, i32* %693, align 1
  %1452 = extractelement <2 x i32> %1449, i32 0
  store i32 %1452, i32* %695, align 1
  %1453 = extractelement <2 x i32> %1449, i32 1
  store i32 %1453, i32* %698, align 1
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -248
  %1456 = add i64 %1447, 11
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1459 = add i64 %1454, -256
  %1460 = add i64 %1447, 19
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i64*
  %1462 = load i64, i64* %1461, align 8
  store i64 %1462, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1463 = add i64 %1447, 540
  %1464 = add i64 %1447, 24
  %1465 = load i64, i64* %6, align 8
  %1466 = add i64 %1465, -8
  %1467 = inttoptr i64 %1466 to i64*
  store i64 %1464, i64* %1467, align 8
  store i64 %1466, i64* %6, align 8
  store i64 %1463, i64* %3, align 8
  %call2_400b37 = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %1463, %struct.Memory* %call2_400b0f)
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -200
  %1470 = load i64, i64* %3, align 8
  %1471 = add i64 %1470, 8
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1469 to i64*
  %1473 = load i64, i64* %1472, align 8
  store i64 %1473, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1474 = add i64 %1468, -264
  %1475 = add i64 %1470, 16
  store i64 %1475, i64* %3, align 8
  %1476 = load i64, i64* %44, align 1
  %1477 = inttoptr i64 %1474 to i64*
  store i64 %1476, i64* %1477, align 8
  %1478 = load i64, i64* %3, align 8
  %1479 = load <2 x i32>, <2 x i32>* %810, align 1
  %1480 = load <2 x i32>, <2 x i32>* %812, align 1
  %1481 = extractelement <2 x i32> %1479, i32 0
  store i32 %1481, i32* %690, align 1
  %1482 = extractelement <2 x i32> %1479, i32 1
  store i32 %1482, i32* %693, align 1
  %1483 = extractelement <2 x i32> %1480, i32 0
  store i32 %1483, i32* %695, align 1
  %1484 = extractelement <2 x i32> %1480, i32 1
  store i32 %1484, i32* %698, align 1
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -232
  %1487 = add i64 %1478, 11
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1490 = add i64 %1485, -264
  %1491 = add i64 %1478, 19
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1494 = add i64 %1478, 500
  %1495 = add i64 %1478, 24
  %1496 = load i64, i64* %6, align 8
  %1497 = add i64 %1496, -8
  %1498 = inttoptr i64 %1497 to i64*
  store i64 %1495, i64* %1498, align 8
  store i64 %1497, i64* %6, align 8
  store i64 %1494, i64* %3, align 8
  %call2_400b5f = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %1494, %struct.Memory* %call2_400b37)
  %1499 = load i64, i64* %RBP.i, align 8
  %1500 = add i64 %1499, -96
  %1501 = load i64, i64* %3, align 8
  %1502 = add i64 %1501, 5
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1500 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1505 = add i64 %1499, -272
  %1506 = add i64 %1501, 13
  store i64 %1506, i64* %3, align 8
  %1507 = load i64, i64* %44, align 1
  %1508 = inttoptr i64 %1505 to i64*
  store i64 %1507, i64* %1508, align 8
  %1509 = load i64, i64* %3, align 8
  %1510 = load <2 x i32>, <2 x i32>* %810, align 1
  %1511 = load <2 x i32>, <2 x i32>* %812, align 1
  %1512 = extractelement <2 x i32> %1510, i32 0
  store i32 %1512, i32* %690, align 1
  %1513 = extractelement <2 x i32> %1510, i32 1
  store i32 %1513, i32* %693, align 1
  %1514 = extractelement <2 x i32> %1511, i32 0
  store i32 %1514, i32* %695, align 1
  %1515 = extractelement <2 x i32> %1511, i32 1
  store i32 %1515, i32* %698, align 1
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -192
  %1518 = add i64 %1509, 11
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i64*
  %1520 = load i64, i64* %1519, align 8
  store i64 %1520, i64* %53, align 1
  store double 0.000000e+00, double* %176, align 1
  %1521 = add i64 %1516, -272
  %1522 = add i64 %1509, 19
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i64*
  %1524 = load i64, i64* %1523, align 8
  store i64 %1524, i64* %61, align 1
  store double 0.000000e+00, double* %642, align 1
  %1525 = add i64 %1509, 463
  %1526 = add i64 %1509, 24
  %1527 = load i64, i64* %6, align 8
  %1528 = add i64 %1527, -8
  %1529 = inttoptr i64 %1528 to i64*
  store i64 %1526, i64* %1529, align 8
  store i64 %1528, i64* %6, align 8
  store i64 %1525, i64* %3, align 8
  %call2_400b84 = tail call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %1525, %struct.Memory* %call2_400b5f)
  %1530 = load i64, i64* %6, align 8
  %1531 = load i64, i64* %3, align 8
  %1532 = add i64 %1530, 272
  store i64 %1532, i64* %6, align 8
  %1533 = icmp ugt i64 %1530, -273
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %14, align 1
  %1535 = trunc i64 %1532 to i32
  %1536 = and i32 %1535, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %21, align 1
  %1541 = xor i64 %1530, 16
  %1542 = xor i64 %1541, %1532
  %1543 = lshr i64 %1542, 4
  %1544 = trunc i64 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %27, align 1
  %1546 = icmp eq i64 %1532, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %30, align 1
  %1548 = lshr i64 %1532, 63
  %1549 = trunc i64 %1548 to i8
  store i8 %1549, i8* %33, align 1
  %1550 = lshr i64 %1530, 63
  %1551 = xor i64 %1548, %1550
  %1552 = add nuw nsw i64 %1551, %1548
  %1553 = icmp eq i64 %1552, 2
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %39, align 1
  %1555 = add i64 %1531, 8
  store i64 %1555, i64* %3, align 8
  %1556 = add i64 %1530, 280
  %1557 = inttoptr i64 %1532 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RBP.i, align 8
  store i64 %1556, i64* %6, align 8
  %1559 = add i64 %1531, 9
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1556 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %3, align 8
  %1562 = add i64 %1530, 288
  store i64 %1562, i64* %6, align 8
  ret %struct.Memory* %call2_400b84
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
define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fade(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_0x602450___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602450___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.grad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1508
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movaps__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.lerp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1426
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x531__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1337
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x497__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1183
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
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm6___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x43c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1092
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xd8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3cf__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 983
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x37d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 901
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
