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

; Function Attrs: alwaysinline
define %struct.Memory* @mul4(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %RDX.i995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %RDX.i995, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -16
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %RDX.i995, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %62 = add i64 %57, 8
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to double*
  %64 = load double, double* %63, align 8
  %65 = bitcast [32 x %union.VectorReg]* %61 to double*
  store double %64, double* %65, align 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %67 = bitcast i64* %66 to double*
  store double 0.000000e+00, double* %67, align 1
  %68 = add i64 %55, -24
  %69 = add i64 %57, 12
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RDX.i995, align 8
  %72 = add i64 %57, 16
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to double*
  %74 = load double, double* %73, align 8
  %75 = fmul double %64, %74
  store double %75, double* %65, align 1
  store i64 0, i64* %66, align 1
  %76 = add i64 %57, 20
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %59, align 8
  store i64 %77, i64* %RDX.i995, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %79 = add i64 %77, 8
  %80 = add i64 %57, 25
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to double*
  %82 = load double, double* %81, align 8
  %83 = bitcast %union.VectorReg* %78 to double*
  store double %82, double* %83, align 1
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %85 = bitcast i64* %84 to double*
  store double 0.000000e+00, double* %85, align 1
  %86 = add i64 %57, 29
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %70, align 8
  store i64 %87, i64* %RDX.i995, align 8
  %88 = add i64 %87, 32
  %89 = add i64 %57, 34
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to double*
  %91 = load double, double* %90, align 8
  %92 = fmul double %82, %91
  store double %92, double* %83, align 1
  store i64 0, i64* %84, align 1
  %93 = fadd double %75, %92
  store double %93, double* %65, align 1
  store i64 0, i64* %66, align 1
  %94 = add i64 %57, 42
  store i64 %94, i64* %3, align 8
  %95 = load i64, i64* %59, align 8
  store i64 %95, i64* %RDX.i995, align 8
  %96 = add i64 %95, 16
  %97 = add i64 %57, 47
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to double*
  %99 = load double, double* %98, align 8
  store double %99, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %100 = add i64 %57, 51
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %70, align 8
  store i64 %101, i64* %RDX.i995, align 8
  %102 = add i64 %101, 64
  %103 = add i64 %57, 56
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to double*
  %105 = load double, double* %104, align 8
  %106 = fmul double %99, %105
  store double %106, double* %83, align 1
  store i64 0, i64* %84, align 1
  %107 = fadd double %93, %106
  store double %107, double* %65, align 1
  store i64 0, i64* %66, align 1
  %108 = add i64 %57, 64
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %59, align 8
  store i64 %109, i64* %RDX.i995, align 8
  %110 = add i64 %109, 24
  %111 = add i64 %57, 69
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to double*
  %113 = load double, double* %112, align 8
  store double %113, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %114 = add i64 %57, 73
  store i64 %114, i64* %3, align 8
  %115 = load i64, i64* %70, align 8
  store i64 %115, i64* %RDX.i995, align 8
  %116 = add i64 %115, 96
  %117 = add i64 %57, 78
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to double*
  %119 = load double, double* %118, align 8
  %120 = fmul double %113, %119
  store double %120, double* %83, align 1
  store i64 0, i64* %84, align 1
  %121 = fadd double %107, %120
  store double %121, double* %65, align 1
  store i64 0, i64* %66, align 1
  %122 = add i64 %55, -160
  %123 = add i64 %57, 90
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to double*
  store double %121, double* %124, align 8
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -16
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 4
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RDX.i995, align 8
  %131 = add i64 %127, 8
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to double*
  %133 = load double, double* %132, align 8
  store double %133, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %134 = add i64 %125, -24
  %135 = add i64 %127, 12
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RDX.i995, align 8
  %138 = add i64 %137, 8
  %139 = add i64 %127, 17
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to double*
  %141 = load double, double* %140, align 8
  %142 = fmul double %133, %141
  store double %142, double* %65, align 1
  store i64 0, i64* %66, align 1
  %143 = add i64 %127, 21
  store i64 %143, i64* %3, align 8
  %144 = load i64, i64* %129, align 8
  store i64 %144, i64* %RDX.i995, align 8
  %145 = add i64 %144, 8
  %146 = add i64 %127, 26
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to double*
  %148 = load double, double* %147, align 8
  store double %148, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %149 = add i64 %127, 30
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %136, align 8
  store i64 %150, i64* %RDX.i995, align 8
  %151 = add i64 %150, 40
  %152 = add i64 %127, 35
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to double*
  %154 = load double, double* %153, align 8
  %155 = fmul double %148, %154
  store double %155, double* %83, align 1
  store i64 0, i64* %84, align 1
  %156 = fadd double %142, %155
  store double %156, double* %65, align 1
  store i64 0, i64* %66, align 1
  %157 = add i64 %127, 43
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %129, align 8
  store i64 %158, i64* %RDX.i995, align 8
  %159 = add i64 %158, 16
  %160 = add i64 %127, 48
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to double*
  %162 = load double, double* %161, align 8
  store double %162, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %163 = add i64 %127, 52
  store i64 %163, i64* %3, align 8
  %164 = load i64, i64* %136, align 8
  store i64 %164, i64* %RDX.i995, align 8
  %165 = add i64 %164, 72
  %166 = add i64 %127, 57
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to double*
  %168 = load double, double* %167, align 8
  %169 = fmul double %162, %168
  store double %169, double* %83, align 1
  store i64 0, i64* %84, align 1
  %170 = fadd double %156, %169
  store double %170, double* %65, align 1
  store i64 0, i64* %66, align 1
  %171 = add i64 %127, 65
  store i64 %171, i64* %3, align 8
  %172 = load i64, i64* %129, align 8
  store i64 %172, i64* %RDX.i995, align 8
  %173 = add i64 %172, 24
  %174 = add i64 %127, 70
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to double*
  %176 = load double, double* %175, align 8
  store double %176, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %177 = add i64 %127, 74
  store i64 %177, i64* %3, align 8
  %178 = load i64, i64* %136, align 8
  store i64 %178, i64* %RDX.i995, align 8
  %179 = add i64 %178, 104
  %180 = add i64 %127, 79
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to double*
  %182 = load double, double* %181, align 8
  %183 = fmul double %176, %182
  store double %183, double* %83, align 1
  store i64 0, i64* %84, align 1
  %184 = fadd double %170, %183
  store double %184, double* %65, align 1
  store i64 0, i64* %66, align 1
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -152
  %187 = add i64 %127, 91
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to double*
  store double %184, double* %188, align 8
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -16
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 4
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %190 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %RDX.i995, align 8
  %195 = add i64 %191, 8
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to double*
  %197 = load double, double* %196, align 8
  store double %197, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %198 = add i64 %189, -24
  %199 = add i64 %191, 12
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %RDX.i995, align 8
  %202 = add i64 %201, 16
  %203 = add i64 %191, 17
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to double*
  %205 = load double, double* %204, align 8
  %206 = fmul double %197, %205
  store double %206, double* %65, align 1
  store i64 0, i64* %66, align 1
  %207 = add i64 %191, 21
  store i64 %207, i64* %3, align 8
  %208 = load i64, i64* %193, align 8
  store i64 %208, i64* %RDX.i995, align 8
  %209 = add i64 %208, 8
  %210 = add i64 %191, 26
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to double*
  %212 = load double, double* %211, align 8
  store double %212, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %213 = add i64 %191, 30
  store i64 %213, i64* %3, align 8
  %214 = load i64, i64* %200, align 8
  store i64 %214, i64* %RDX.i995, align 8
  %215 = add i64 %214, 48
  %216 = add i64 %191, 35
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to double*
  %218 = load double, double* %217, align 8
  %219 = fmul double %212, %218
  store double %219, double* %83, align 1
  store i64 0, i64* %84, align 1
  %220 = fadd double %206, %219
  store double %220, double* %65, align 1
  store i64 0, i64* %66, align 1
  %221 = add i64 %191, 43
  store i64 %221, i64* %3, align 8
  %222 = load i64, i64* %193, align 8
  store i64 %222, i64* %RDX.i995, align 8
  %223 = add i64 %222, 16
  %224 = add i64 %191, 48
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to double*
  %226 = load double, double* %225, align 8
  store double %226, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %227 = add i64 %191, 52
  store i64 %227, i64* %3, align 8
  %228 = load i64, i64* %200, align 8
  store i64 %228, i64* %RDX.i995, align 8
  %229 = add i64 %228, 80
  %230 = add i64 %191, 57
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to double*
  %232 = load double, double* %231, align 8
  %233 = fmul double %226, %232
  store double %233, double* %83, align 1
  store i64 0, i64* %84, align 1
  %234 = fadd double %220, %233
  store double %234, double* %65, align 1
  store i64 0, i64* %66, align 1
  %235 = add i64 %191, 65
  store i64 %235, i64* %3, align 8
  %236 = load i64, i64* %193, align 8
  store i64 %236, i64* %RDX.i995, align 8
  %237 = add i64 %236, 24
  %238 = add i64 %191, 70
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to double*
  %240 = load double, double* %239, align 8
  store double %240, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %241 = add i64 %191, 74
  store i64 %241, i64* %3, align 8
  %242 = load i64, i64* %200, align 8
  store i64 %242, i64* %RDX.i995, align 8
  %243 = add i64 %242, 112
  %244 = add i64 %191, 79
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to double*
  %246 = load double, double* %245, align 8
  %247 = fmul double %240, %246
  store double %247, double* %83, align 1
  store i64 0, i64* %84, align 1
  %248 = fadd double %234, %247
  store double %248, double* %65, align 1
  store i64 0, i64* %66, align 1
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -144
  %251 = add i64 %191, 91
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to double*
  store double %248, double* %252, align 8
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -16
  %255 = load i64, i64* %3, align 8
  %256 = add i64 %255, 4
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %254 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RDX.i995, align 8
  %259 = add i64 %255, 8
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to double*
  %261 = load double, double* %260, align 8
  store double %261, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %262 = add i64 %253, -24
  %263 = add i64 %255, 12
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RDX.i995, align 8
  %266 = add i64 %265, 24
  %267 = add i64 %255, 17
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to double*
  %269 = load double, double* %268, align 8
  %270 = fmul double %261, %269
  store double %270, double* %65, align 1
  store i64 0, i64* %66, align 1
  %271 = add i64 %255, 21
  store i64 %271, i64* %3, align 8
  %272 = load i64, i64* %257, align 8
  store i64 %272, i64* %RDX.i995, align 8
  %273 = add i64 %272, 8
  %274 = add i64 %255, 26
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to double*
  %276 = load double, double* %275, align 8
  store double %276, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %277 = add i64 %255, 30
  store i64 %277, i64* %3, align 8
  %278 = load i64, i64* %264, align 8
  store i64 %278, i64* %RDX.i995, align 8
  %279 = add i64 %278, 56
  %280 = add i64 %255, 35
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to double*
  %282 = load double, double* %281, align 8
  %283 = fmul double %276, %282
  store double %283, double* %83, align 1
  store i64 0, i64* %84, align 1
  %284 = fadd double %270, %283
  store double %284, double* %65, align 1
  store i64 0, i64* %66, align 1
  %285 = add i64 %255, 43
  store i64 %285, i64* %3, align 8
  %286 = load i64, i64* %257, align 8
  store i64 %286, i64* %RDX.i995, align 8
  %287 = add i64 %286, 16
  %288 = add i64 %255, 48
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to double*
  %290 = load double, double* %289, align 8
  store double %290, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %291 = add i64 %255, 52
  store i64 %291, i64* %3, align 8
  %292 = load i64, i64* %264, align 8
  store i64 %292, i64* %RDX.i995, align 8
  %293 = add i64 %292, 88
  %294 = add i64 %255, 57
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to double*
  %296 = load double, double* %295, align 8
  %297 = fmul double %290, %296
  store double %297, double* %83, align 1
  store i64 0, i64* %84, align 1
  %298 = fadd double %284, %297
  store double %298, double* %65, align 1
  store i64 0, i64* %66, align 1
  %299 = add i64 %255, 65
  store i64 %299, i64* %3, align 8
  %300 = load i64, i64* %257, align 8
  store i64 %300, i64* %RDX.i995, align 8
  %301 = add i64 %300, 24
  %302 = add i64 %255, 70
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to double*
  %304 = load double, double* %303, align 8
  store double %304, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %305 = add i64 %255, 74
  store i64 %305, i64* %3, align 8
  %306 = load i64, i64* %264, align 8
  store i64 %306, i64* %RDX.i995, align 8
  %307 = add i64 %306, 120
  %308 = add i64 %255, 79
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to double*
  %310 = load double, double* %309, align 8
  %311 = fmul double %304, %310
  store double %311, double* %83, align 1
  store i64 0, i64* %84, align 1
  %312 = fadd double %298, %311
  store double %312, double* %65, align 1
  store i64 0, i64* %66, align 1
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -136
  %315 = add i64 %255, 91
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to double*
  store double %312, double* %316, align 8
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -16
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDX.i995, align 8
  %323 = add i64 %322, 32
  %324 = add i64 %319, 9
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to double*
  %326 = load double, double* %325, align 8
  store double %326, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %327 = add i64 %317, -24
  %328 = add i64 %319, 13
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RDX.i995, align 8
  %331 = add i64 %319, 17
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to double*
  %333 = load double, double* %332, align 8
  %334 = fmul double %326, %333
  store double %334, double* %65, align 1
  store i64 0, i64* %66, align 1
  %335 = add i64 %319, 21
  store i64 %335, i64* %3, align 8
  %336 = load i64, i64* %321, align 8
  store i64 %336, i64* %RDX.i995, align 8
  %337 = add i64 %336, 40
  %338 = add i64 %319, 26
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to double*
  %340 = load double, double* %339, align 8
  store double %340, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %341 = add i64 %319, 30
  store i64 %341, i64* %3, align 8
  %342 = load i64, i64* %329, align 8
  store i64 %342, i64* %RDX.i995, align 8
  %343 = add i64 %342, 32
  %344 = add i64 %319, 35
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to double*
  %346 = load double, double* %345, align 8
  %347 = fmul double %340, %346
  store double %347, double* %83, align 1
  store i64 0, i64* %84, align 1
  %348 = fadd double %334, %347
  store double %348, double* %65, align 1
  store i64 0, i64* %66, align 1
  %349 = add i64 %319, 43
  store i64 %349, i64* %3, align 8
  %350 = load i64, i64* %321, align 8
  store i64 %350, i64* %RDX.i995, align 8
  %351 = add i64 %350, 48
  %352 = add i64 %319, 48
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to double*
  %354 = load double, double* %353, align 8
  store double %354, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %355 = add i64 %319, 52
  store i64 %355, i64* %3, align 8
  %356 = load i64, i64* %329, align 8
  store i64 %356, i64* %RDX.i995, align 8
  %357 = add i64 %356, 64
  %358 = add i64 %319, 57
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to double*
  %360 = load double, double* %359, align 8
  %361 = fmul double %354, %360
  store double %361, double* %83, align 1
  store i64 0, i64* %84, align 1
  %362 = fadd double %348, %361
  store double %362, double* %65, align 1
  store i64 0, i64* %66, align 1
  %363 = add i64 %319, 65
  store i64 %363, i64* %3, align 8
  %364 = load i64, i64* %321, align 8
  store i64 %364, i64* %RDX.i995, align 8
  %365 = add i64 %364, 56
  %366 = add i64 %319, 70
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to double*
  %368 = load double, double* %367, align 8
  store double %368, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %369 = add i64 %319, 74
  store i64 %369, i64* %3, align 8
  %370 = load i64, i64* %329, align 8
  store i64 %370, i64* %RDX.i995, align 8
  %371 = add i64 %370, 96
  %372 = add i64 %319, 79
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to double*
  %374 = load double, double* %373, align 8
  %375 = fmul double %368, %374
  store double %375, double* %83, align 1
  store i64 0, i64* %84, align 1
  %376 = fadd double %362, %375
  store double %376, double* %65, align 1
  store i64 0, i64* %66, align 1
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -128
  %379 = add i64 %319, 88
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to double*
  store double %376, double* %380, align 8
  %381 = load i64, i64* %RBP.i, align 8
  %382 = add i64 %381, -16
  %383 = load i64, i64* %3, align 8
  %384 = add i64 %383, 4
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %382 to i64*
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %RDX.i995, align 8
  %387 = add i64 %386, 32
  %388 = add i64 %383, 9
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to double*
  %390 = load double, double* %389, align 8
  store double %390, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %391 = add i64 %381, -24
  %392 = add i64 %383, 13
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RDX.i995, align 8
  %395 = add i64 %394, 8
  %396 = add i64 %383, 18
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to double*
  %398 = load double, double* %397, align 8
  %399 = fmul double %390, %398
  store double %399, double* %65, align 1
  store i64 0, i64* %66, align 1
  %400 = add i64 %383, 22
  store i64 %400, i64* %3, align 8
  %401 = load i64, i64* %385, align 8
  store i64 %401, i64* %RDX.i995, align 8
  %402 = add i64 %401, 40
  %403 = add i64 %383, 27
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to double*
  %405 = load double, double* %404, align 8
  store double %405, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %406 = add i64 %383, 31
  store i64 %406, i64* %3, align 8
  %407 = load i64, i64* %393, align 8
  store i64 %407, i64* %RDX.i995, align 8
  %408 = add i64 %407, 40
  %409 = add i64 %383, 36
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to double*
  %411 = load double, double* %410, align 8
  %412 = fmul double %405, %411
  store double %412, double* %83, align 1
  store i64 0, i64* %84, align 1
  %413 = fadd double %399, %412
  store double %413, double* %65, align 1
  store i64 0, i64* %66, align 1
  %414 = add i64 %383, 44
  store i64 %414, i64* %3, align 8
  %415 = load i64, i64* %385, align 8
  store i64 %415, i64* %RDX.i995, align 8
  %416 = add i64 %415, 48
  %417 = add i64 %383, 49
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to double*
  %419 = load double, double* %418, align 8
  store double %419, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %420 = add i64 %383, 53
  store i64 %420, i64* %3, align 8
  %421 = load i64, i64* %393, align 8
  store i64 %421, i64* %RDX.i995, align 8
  %422 = add i64 %421, 72
  %423 = add i64 %383, 58
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to double*
  %425 = load double, double* %424, align 8
  %426 = fmul double %419, %425
  store double %426, double* %83, align 1
  store i64 0, i64* %84, align 1
  %427 = fadd double %413, %426
  store double %427, double* %65, align 1
  store i64 0, i64* %66, align 1
  %428 = add i64 %383, 66
  store i64 %428, i64* %3, align 8
  %429 = load i64, i64* %385, align 8
  store i64 %429, i64* %RDX.i995, align 8
  %430 = add i64 %429, 56
  %431 = add i64 %383, 71
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to double*
  %433 = load double, double* %432, align 8
  store double %433, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %434 = add i64 %383, 75
  store i64 %434, i64* %3, align 8
  %435 = load i64, i64* %393, align 8
  store i64 %435, i64* %RDX.i995, align 8
  %436 = add i64 %435, 104
  %437 = add i64 %383, 80
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to double*
  %439 = load double, double* %438, align 8
  %440 = fmul double %433, %439
  store double %440, double* %83, align 1
  store i64 0, i64* %84, align 1
  %441 = fadd double %427, %440
  store double %441, double* %65, align 1
  store i64 0, i64* %66, align 1
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -120
  %444 = add i64 %383, 89
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to double*
  store double %441, double* %445, align 8
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -16
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, 4
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %447 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RDX.i995, align 8
  %452 = add i64 %451, 32
  %453 = add i64 %448, 9
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to double*
  %455 = load double, double* %454, align 8
  store double %455, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %456 = add i64 %446, -24
  %457 = add i64 %448, 13
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RDX.i995, align 8
  %460 = add i64 %459, 16
  %461 = add i64 %448, 18
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to double*
  %463 = load double, double* %462, align 8
  %464 = fmul double %455, %463
  store double %464, double* %65, align 1
  store i64 0, i64* %66, align 1
  %465 = add i64 %448, 22
  store i64 %465, i64* %3, align 8
  %466 = load i64, i64* %450, align 8
  store i64 %466, i64* %RDX.i995, align 8
  %467 = add i64 %466, 40
  %468 = add i64 %448, 27
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to double*
  %470 = load double, double* %469, align 8
  store double %470, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %471 = add i64 %448, 31
  store i64 %471, i64* %3, align 8
  %472 = load i64, i64* %458, align 8
  store i64 %472, i64* %RDX.i995, align 8
  %473 = add i64 %472, 48
  %474 = add i64 %448, 36
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to double*
  %476 = load double, double* %475, align 8
  %477 = fmul double %470, %476
  store double %477, double* %83, align 1
  store i64 0, i64* %84, align 1
  %478 = fadd double %464, %477
  store double %478, double* %65, align 1
  store i64 0, i64* %66, align 1
  %479 = add i64 %448, 44
  store i64 %479, i64* %3, align 8
  %480 = load i64, i64* %450, align 8
  store i64 %480, i64* %RDX.i995, align 8
  %481 = add i64 %480, 48
  %482 = add i64 %448, 49
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to double*
  %484 = load double, double* %483, align 8
  store double %484, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %485 = add i64 %448, 53
  store i64 %485, i64* %3, align 8
  %486 = load i64, i64* %458, align 8
  store i64 %486, i64* %RDX.i995, align 8
  %487 = add i64 %486, 80
  %488 = add i64 %448, 58
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to double*
  %490 = load double, double* %489, align 8
  %491 = fmul double %484, %490
  store double %491, double* %83, align 1
  store i64 0, i64* %84, align 1
  %492 = fadd double %478, %491
  store double %492, double* %65, align 1
  store i64 0, i64* %66, align 1
  %493 = add i64 %448, 66
  store i64 %493, i64* %3, align 8
  %494 = load i64, i64* %450, align 8
  store i64 %494, i64* %RDX.i995, align 8
  %495 = add i64 %494, 56
  %496 = add i64 %448, 71
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to double*
  %498 = load double, double* %497, align 8
  store double %498, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %499 = add i64 %448, 75
  store i64 %499, i64* %3, align 8
  %500 = load i64, i64* %458, align 8
  store i64 %500, i64* %RDX.i995, align 8
  %501 = add i64 %500, 112
  %502 = add i64 %448, 80
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to double*
  %504 = load double, double* %503, align 8
  %505 = fmul double %498, %504
  store double %505, double* %83, align 1
  store i64 0, i64* %84, align 1
  %506 = fadd double %492, %505
  store double %506, double* %65, align 1
  store i64 0, i64* %66, align 1
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -112
  %509 = add i64 %448, 89
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to double*
  store double %506, double* %510, align 8
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -16
  %513 = load i64, i64* %3, align 8
  %514 = add i64 %513, 4
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %512 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RDX.i995, align 8
  %517 = add i64 %516, 32
  %518 = add i64 %513, 9
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to double*
  %520 = load double, double* %519, align 8
  store double %520, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %521 = add i64 %511, -24
  %522 = add i64 %513, 13
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RDX.i995, align 8
  %525 = add i64 %524, 24
  %526 = add i64 %513, 18
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to double*
  %528 = load double, double* %527, align 8
  %529 = fmul double %520, %528
  store double %529, double* %65, align 1
  store i64 0, i64* %66, align 1
  %530 = add i64 %513, 22
  store i64 %530, i64* %3, align 8
  %531 = load i64, i64* %515, align 8
  store i64 %531, i64* %RDX.i995, align 8
  %532 = add i64 %531, 40
  %533 = add i64 %513, 27
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to double*
  %535 = load double, double* %534, align 8
  store double %535, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %536 = add i64 %513, 31
  store i64 %536, i64* %3, align 8
  %537 = load i64, i64* %523, align 8
  store i64 %537, i64* %RDX.i995, align 8
  %538 = add i64 %537, 56
  %539 = add i64 %513, 36
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to double*
  %541 = load double, double* %540, align 8
  %542 = fmul double %535, %541
  store double %542, double* %83, align 1
  store i64 0, i64* %84, align 1
  %543 = fadd double %529, %542
  store double %543, double* %65, align 1
  store i64 0, i64* %66, align 1
  %544 = add i64 %513, 44
  store i64 %544, i64* %3, align 8
  %545 = load i64, i64* %515, align 8
  store i64 %545, i64* %RDX.i995, align 8
  %546 = add i64 %545, 48
  %547 = add i64 %513, 49
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to double*
  %549 = load double, double* %548, align 8
  store double %549, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %550 = add i64 %513, 53
  store i64 %550, i64* %3, align 8
  %551 = load i64, i64* %523, align 8
  store i64 %551, i64* %RDX.i995, align 8
  %552 = add i64 %551, 88
  %553 = add i64 %513, 58
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to double*
  %555 = load double, double* %554, align 8
  %556 = fmul double %549, %555
  store double %556, double* %83, align 1
  store i64 0, i64* %84, align 1
  %557 = fadd double %543, %556
  store double %557, double* %65, align 1
  store i64 0, i64* %66, align 1
  %558 = add i64 %513, 66
  store i64 %558, i64* %3, align 8
  %559 = load i64, i64* %515, align 8
  store i64 %559, i64* %RDX.i995, align 8
  %560 = add i64 %559, 56
  %561 = add i64 %513, 71
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  store double %563, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %564 = add i64 %513, 75
  store i64 %564, i64* %3, align 8
  %565 = load i64, i64* %523, align 8
  store i64 %565, i64* %RDX.i995, align 8
  %566 = add i64 %565, 120
  %567 = add i64 %513, 80
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to double*
  %569 = load double, double* %568, align 8
  %570 = fmul double %563, %569
  store double %570, double* %83, align 1
  store i64 0, i64* %84, align 1
  %571 = fadd double %557, %570
  store double %571, double* %65, align 1
  store i64 0, i64* %66, align 1
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -104
  %574 = add i64 %513, 89
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to double*
  store double %571, double* %575, align 8
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -16
  %578 = load i64, i64* %3, align 8
  %579 = add i64 %578, 4
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %577 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RDX.i995, align 8
  %582 = add i64 %581, 64
  %583 = add i64 %578, 9
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to double*
  %585 = load double, double* %584, align 8
  store double %585, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %586 = add i64 %576, -24
  %587 = add i64 %578, 13
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RDX.i995, align 8
  %590 = add i64 %578, 17
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to double*
  %592 = load double, double* %591, align 8
  %593 = fmul double %585, %592
  store double %593, double* %65, align 1
  store i64 0, i64* %66, align 1
  %594 = add i64 %578, 21
  store i64 %594, i64* %3, align 8
  %595 = load i64, i64* %580, align 8
  store i64 %595, i64* %RDX.i995, align 8
  %596 = add i64 %595, 72
  %597 = add i64 %578, 26
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to double*
  %599 = load double, double* %598, align 8
  store double %599, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %600 = add i64 %578, 30
  store i64 %600, i64* %3, align 8
  %601 = load i64, i64* %588, align 8
  store i64 %601, i64* %RDX.i995, align 8
  %602 = add i64 %601, 32
  %603 = add i64 %578, 35
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to double*
  %605 = load double, double* %604, align 8
  %606 = fmul double %599, %605
  store double %606, double* %83, align 1
  store i64 0, i64* %84, align 1
  %607 = fadd double %593, %606
  store double %607, double* %65, align 1
  store i64 0, i64* %66, align 1
  %608 = add i64 %578, 43
  store i64 %608, i64* %3, align 8
  %609 = load i64, i64* %580, align 8
  store i64 %609, i64* %RDX.i995, align 8
  %610 = add i64 %609, 80
  %611 = add i64 %578, 48
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to double*
  %613 = load double, double* %612, align 8
  store double %613, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %614 = add i64 %578, 52
  store i64 %614, i64* %3, align 8
  %615 = load i64, i64* %588, align 8
  store i64 %615, i64* %RDX.i995, align 8
  %616 = add i64 %615, 64
  %617 = add i64 %578, 57
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to double*
  %619 = load double, double* %618, align 8
  %620 = fmul double %613, %619
  store double %620, double* %83, align 1
  store i64 0, i64* %84, align 1
  %621 = fadd double %607, %620
  store double %621, double* %65, align 1
  store i64 0, i64* %66, align 1
  %622 = add i64 %578, 65
  store i64 %622, i64* %3, align 8
  %623 = load i64, i64* %580, align 8
  store i64 %623, i64* %RDX.i995, align 8
  %624 = add i64 %623, 88
  %625 = add i64 %578, 70
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to double*
  %627 = load double, double* %626, align 8
  store double %627, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %628 = add i64 %578, 74
  store i64 %628, i64* %3, align 8
  %629 = load i64, i64* %588, align 8
  store i64 %629, i64* %RDX.i995, align 8
  %630 = add i64 %629, 96
  %631 = add i64 %578, 79
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to double*
  %633 = load double, double* %632, align 8
  %634 = fmul double %627, %633
  store double %634, double* %83, align 1
  store i64 0, i64* %84, align 1
  %635 = fadd double %621, %634
  store double %635, double* %65, align 1
  store i64 0, i64* %66, align 1
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -96
  %638 = add i64 %578, 88
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to double*
  store double %635, double* %639, align 8
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -16
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, 4
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %641 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RDX.i995, align 8
  %646 = add i64 %645, 64
  %647 = add i64 %642, 9
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to double*
  %649 = load double, double* %648, align 8
  store double %649, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %650 = add i64 %640, -24
  %651 = add i64 %642, 13
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RDX.i995, align 8
  %654 = add i64 %653, 8
  %655 = add i64 %642, 18
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to double*
  %657 = load double, double* %656, align 8
  %658 = fmul double %649, %657
  store double %658, double* %65, align 1
  store i64 0, i64* %66, align 1
  %659 = add i64 %642, 22
  store i64 %659, i64* %3, align 8
  %660 = load i64, i64* %644, align 8
  store i64 %660, i64* %RDX.i995, align 8
  %661 = add i64 %660, 72
  %662 = add i64 %642, 27
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to double*
  %664 = load double, double* %663, align 8
  store double %664, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %665 = add i64 %642, 31
  store i64 %665, i64* %3, align 8
  %666 = load i64, i64* %652, align 8
  store i64 %666, i64* %RDX.i995, align 8
  %667 = add i64 %666, 40
  %668 = add i64 %642, 36
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to double*
  %670 = load double, double* %669, align 8
  %671 = fmul double %664, %670
  store double %671, double* %83, align 1
  store i64 0, i64* %84, align 1
  %672 = fadd double %658, %671
  store double %672, double* %65, align 1
  store i64 0, i64* %66, align 1
  %673 = add i64 %642, 44
  store i64 %673, i64* %3, align 8
  %674 = load i64, i64* %644, align 8
  store i64 %674, i64* %RDX.i995, align 8
  %675 = add i64 %674, 80
  %676 = add i64 %642, 49
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to double*
  %678 = load double, double* %677, align 8
  store double %678, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %679 = add i64 %642, 53
  store i64 %679, i64* %3, align 8
  %680 = load i64, i64* %652, align 8
  store i64 %680, i64* %RDX.i995, align 8
  %681 = add i64 %680, 72
  %682 = add i64 %642, 58
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to double*
  %684 = load double, double* %683, align 8
  %685 = fmul double %678, %684
  store double %685, double* %83, align 1
  store i64 0, i64* %84, align 1
  %686 = fadd double %672, %685
  store double %686, double* %65, align 1
  store i64 0, i64* %66, align 1
  %687 = add i64 %642, 66
  store i64 %687, i64* %3, align 8
  %688 = load i64, i64* %644, align 8
  store i64 %688, i64* %RDX.i995, align 8
  %689 = add i64 %688, 88
  %690 = add i64 %642, 71
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to double*
  %692 = load double, double* %691, align 8
  store double %692, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %693 = add i64 %642, 75
  store i64 %693, i64* %3, align 8
  %694 = load i64, i64* %652, align 8
  store i64 %694, i64* %RDX.i995, align 8
  %695 = add i64 %694, 104
  %696 = add i64 %642, 80
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to double*
  %698 = load double, double* %697, align 8
  %699 = fmul double %692, %698
  store double %699, double* %83, align 1
  store i64 0, i64* %84, align 1
  %700 = fadd double %686, %699
  store double %700, double* %65, align 1
  store i64 0, i64* %66, align 1
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -88
  %703 = add i64 %642, 89
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to double*
  store double %700, double* %704, align 8
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -16
  %707 = load i64, i64* %3, align 8
  %708 = add i64 %707, 4
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RDX.i995, align 8
  %711 = add i64 %710, 64
  %712 = add i64 %707, 9
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to double*
  %714 = load double, double* %713, align 8
  store double %714, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %715 = add i64 %705, -24
  %716 = add i64 %707, 13
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RDX.i995, align 8
  %719 = add i64 %718, 16
  %720 = add i64 %707, 18
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to double*
  %722 = load double, double* %721, align 8
  %723 = fmul double %714, %722
  store double %723, double* %65, align 1
  store i64 0, i64* %66, align 1
  %724 = add i64 %707, 22
  store i64 %724, i64* %3, align 8
  %725 = load i64, i64* %709, align 8
  store i64 %725, i64* %RDX.i995, align 8
  %726 = add i64 %725, 72
  %727 = add i64 %707, 27
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to double*
  %729 = load double, double* %728, align 8
  store double %729, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %730 = add i64 %707, 31
  store i64 %730, i64* %3, align 8
  %731 = load i64, i64* %717, align 8
  store i64 %731, i64* %RDX.i995, align 8
  %732 = add i64 %731, 48
  %733 = add i64 %707, 36
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to double*
  %735 = load double, double* %734, align 8
  %736 = fmul double %729, %735
  store double %736, double* %83, align 1
  store i64 0, i64* %84, align 1
  %737 = fadd double %723, %736
  store double %737, double* %65, align 1
  store i64 0, i64* %66, align 1
  %738 = add i64 %707, 44
  store i64 %738, i64* %3, align 8
  %739 = load i64, i64* %709, align 8
  store i64 %739, i64* %RDX.i995, align 8
  %740 = add i64 %739, 80
  %741 = add i64 %707, 49
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to double*
  %743 = load double, double* %742, align 8
  store double %743, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %744 = add i64 %707, 53
  store i64 %744, i64* %3, align 8
  %745 = load i64, i64* %717, align 8
  store i64 %745, i64* %RDX.i995, align 8
  %746 = add i64 %745, 80
  %747 = add i64 %707, 58
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to double*
  %749 = load double, double* %748, align 8
  %750 = fmul double %743, %749
  store double %750, double* %83, align 1
  store i64 0, i64* %84, align 1
  %751 = fadd double %737, %750
  store double %751, double* %65, align 1
  store i64 0, i64* %66, align 1
  %752 = add i64 %707, 66
  store i64 %752, i64* %3, align 8
  %753 = load i64, i64* %709, align 8
  store i64 %753, i64* %RDX.i995, align 8
  %754 = add i64 %753, 88
  %755 = add i64 %707, 71
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to double*
  %757 = load double, double* %756, align 8
  store double %757, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %758 = add i64 %707, 75
  store i64 %758, i64* %3, align 8
  %759 = load i64, i64* %717, align 8
  store i64 %759, i64* %RDX.i995, align 8
  %760 = add i64 %759, 112
  %761 = add i64 %707, 80
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to double*
  %763 = load double, double* %762, align 8
  %764 = fmul double %757, %763
  store double %764, double* %83, align 1
  store i64 0, i64* %84, align 1
  %765 = fadd double %751, %764
  store double %765, double* %65, align 1
  store i64 0, i64* %66, align 1
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -80
  %768 = add i64 %707, 89
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to double*
  store double %765, double* %769, align 8
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -16
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 4
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %771 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %RDX.i995, align 8
  %776 = add i64 %775, 64
  %777 = add i64 %772, 9
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to double*
  %779 = load double, double* %778, align 8
  store double %779, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %780 = add i64 %770, -24
  %781 = add i64 %772, 13
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %RDX.i995, align 8
  %784 = add i64 %783, 24
  %785 = add i64 %772, 18
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to double*
  %787 = load double, double* %786, align 8
  %788 = fmul double %779, %787
  store double %788, double* %65, align 1
  store i64 0, i64* %66, align 1
  %789 = add i64 %772, 22
  store i64 %789, i64* %3, align 8
  %790 = load i64, i64* %774, align 8
  store i64 %790, i64* %RDX.i995, align 8
  %791 = add i64 %790, 72
  %792 = add i64 %772, 27
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to double*
  %794 = load double, double* %793, align 8
  store double %794, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %795 = add i64 %772, 31
  store i64 %795, i64* %3, align 8
  %796 = load i64, i64* %782, align 8
  store i64 %796, i64* %RDX.i995, align 8
  %797 = add i64 %796, 56
  %798 = add i64 %772, 36
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to double*
  %800 = load double, double* %799, align 8
  %801 = fmul double %794, %800
  store double %801, double* %83, align 1
  store i64 0, i64* %84, align 1
  %802 = fadd double %788, %801
  store double %802, double* %65, align 1
  store i64 0, i64* %66, align 1
  %803 = add i64 %772, 44
  store i64 %803, i64* %3, align 8
  %804 = load i64, i64* %774, align 8
  store i64 %804, i64* %RDX.i995, align 8
  %805 = add i64 %804, 80
  %806 = add i64 %772, 49
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to double*
  %808 = load double, double* %807, align 8
  store double %808, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %809 = add i64 %772, 53
  store i64 %809, i64* %3, align 8
  %810 = load i64, i64* %782, align 8
  store i64 %810, i64* %RDX.i995, align 8
  %811 = add i64 %810, 88
  %812 = add i64 %772, 58
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to double*
  %814 = load double, double* %813, align 8
  %815 = fmul double %808, %814
  store double %815, double* %83, align 1
  store i64 0, i64* %84, align 1
  %816 = fadd double %802, %815
  store double %816, double* %65, align 1
  store i64 0, i64* %66, align 1
  %817 = add i64 %772, 66
  store i64 %817, i64* %3, align 8
  %818 = load i64, i64* %774, align 8
  store i64 %818, i64* %RDX.i995, align 8
  %819 = add i64 %818, 88
  %820 = add i64 %772, 71
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to double*
  %822 = load double, double* %821, align 8
  store double %822, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %823 = add i64 %772, 75
  store i64 %823, i64* %3, align 8
  %824 = load i64, i64* %782, align 8
  store i64 %824, i64* %RDX.i995, align 8
  %825 = add i64 %824, 120
  %826 = add i64 %772, 80
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to double*
  %828 = load double, double* %827, align 8
  %829 = fmul double %822, %828
  store double %829, double* %83, align 1
  store i64 0, i64* %84, align 1
  %830 = fadd double %816, %829
  store double %830, double* %65, align 1
  store i64 0, i64* %66, align 1
  %831 = load i64, i64* %RBP.i, align 8
  %832 = add i64 %831, -72
  %833 = add i64 %772, 89
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to double*
  store double %830, double* %834, align 8
  %835 = load i64, i64* %RBP.i, align 8
  %836 = add i64 %835, -16
  %837 = load i64, i64* %3, align 8
  %838 = add i64 %837, 4
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %836 to i64*
  %840 = load i64, i64* %839, align 8
  store i64 %840, i64* %RDX.i995, align 8
  %841 = add i64 %840, 96
  %842 = add i64 %837, 9
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to double*
  %844 = load double, double* %843, align 8
  store double %844, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %845 = add i64 %835, -24
  %846 = add i64 %837, 13
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i64*
  %848 = load i64, i64* %847, align 8
  store i64 %848, i64* %RDX.i995, align 8
  %849 = add i64 %837, 17
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to double*
  %851 = load double, double* %850, align 8
  %852 = fmul double %844, %851
  store double %852, double* %65, align 1
  store i64 0, i64* %66, align 1
  %853 = add i64 %837, 21
  store i64 %853, i64* %3, align 8
  %854 = load i64, i64* %839, align 8
  store i64 %854, i64* %RDX.i995, align 8
  %855 = add i64 %854, 104
  %856 = add i64 %837, 26
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to double*
  %858 = load double, double* %857, align 8
  store double %858, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %859 = add i64 %837, 30
  store i64 %859, i64* %3, align 8
  %860 = load i64, i64* %847, align 8
  store i64 %860, i64* %RDX.i995, align 8
  %861 = add i64 %860, 32
  %862 = add i64 %837, 35
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to double*
  %864 = load double, double* %863, align 8
  %865 = fmul double %858, %864
  store double %865, double* %83, align 1
  store i64 0, i64* %84, align 1
  %866 = fadd double %852, %865
  store double %866, double* %65, align 1
  store i64 0, i64* %66, align 1
  %867 = add i64 %837, 43
  store i64 %867, i64* %3, align 8
  %868 = load i64, i64* %839, align 8
  store i64 %868, i64* %RDX.i995, align 8
  %869 = add i64 %868, 112
  %870 = add i64 %837, 48
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to double*
  %872 = load double, double* %871, align 8
  store double %872, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %873 = add i64 %837, 52
  store i64 %873, i64* %3, align 8
  %874 = load i64, i64* %847, align 8
  store i64 %874, i64* %RDX.i995, align 8
  %875 = add i64 %874, 64
  %876 = add i64 %837, 57
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to double*
  %878 = load double, double* %877, align 8
  %879 = fmul double %872, %878
  store double %879, double* %83, align 1
  store i64 0, i64* %84, align 1
  %880 = fadd double %866, %879
  store double %880, double* %65, align 1
  store i64 0, i64* %66, align 1
  %881 = add i64 %837, 65
  store i64 %881, i64* %3, align 8
  %882 = load i64, i64* %839, align 8
  store i64 %882, i64* %RDX.i995, align 8
  %883 = add i64 %882, 120
  %884 = add i64 %837, 70
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to double*
  %886 = load double, double* %885, align 8
  store double %886, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %887 = add i64 %837, 74
  store i64 %887, i64* %3, align 8
  %888 = load i64, i64* %847, align 8
  store i64 %888, i64* %RDX.i995, align 8
  %889 = add i64 %888, 96
  %890 = add i64 %837, 79
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to double*
  %892 = load double, double* %891, align 8
  %893 = fmul double %886, %892
  store double %893, double* %83, align 1
  store i64 0, i64* %84, align 1
  %894 = fadd double %880, %893
  store double %894, double* %65, align 1
  store i64 0, i64* %66, align 1
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -64
  %897 = add i64 %837, 88
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to double*
  store double %894, double* %898, align 8
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -16
  %901 = load i64, i64* %3, align 8
  %902 = add i64 %901, 4
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %900 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RDX.i995, align 8
  %905 = add i64 %904, 96
  %906 = add i64 %901, 9
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to double*
  %908 = load double, double* %907, align 8
  store double %908, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %909 = add i64 %899, -24
  %910 = add i64 %901, 13
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %RDX.i995, align 8
  %913 = add i64 %912, 8
  %914 = add i64 %901, 18
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to double*
  %916 = load double, double* %915, align 8
  %917 = fmul double %908, %916
  store double %917, double* %65, align 1
  store i64 0, i64* %66, align 1
  %918 = add i64 %901, 22
  store i64 %918, i64* %3, align 8
  %919 = load i64, i64* %903, align 8
  store i64 %919, i64* %RDX.i995, align 8
  %920 = add i64 %919, 104
  %921 = add i64 %901, 27
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to double*
  %923 = load double, double* %922, align 8
  store double %923, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %924 = add i64 %901, 31
  store i64 %924, i64* %3, align 8
  %925 = load i64, i64* %911, align 8
  store i64 %925, i64* %RDX.i995, align 8
  %926 = add i64 %925, 40
  %927 = add i64 %901, 36
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to double*
  %929 = load double, double* %928, align 8
  %930 = fmul double %923, %929
  store double %930, double* %83, align 1
  store i64 0, i64* %84, align 1
  %931 = fadd double %917, %930
  store double %931, double* %65, align 1
  store i64 0, i64* %66, align 1
  %932 = add i64 %901, 44
  store i64 %932, i64* %3, align 8
  %933 = load i64, i64* %903, align 8
  store i64 %933, i64* %RDX.i995, align 8
  %934 = add i64 %933, 112
  %935 = add i64 %901, 49
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to double*
  %937 = load double, double* %936, align 8
  store double %937, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %938 = add i64 %901, 53
  store i64 %938, i64* %3, align 8
  %939 = load i64, i64* %911, align 8
  store i64 %939, i64* %RDX.i995, align 8
  %940 = add i64 %939, 72
  %941 = add i64 %901, 58
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to double*
  %943 = load double, double* %942, align 8
  %944 = fmul double %937, %943
  store double %944, double* %83, align 1
  store i64 0, i64* %84, align 1
  %945 = fadd double %931, %944
  store double %945, double* %65, align 1
  store i64 0, i64* %66, align 1
  %946 = add i64 %901, 66
  store i64 %946, i64* %3, align 8
  %947 = load i64, i64* %903, align 8
  store i64 %947, i64* %RDX.i995, align 8
  %948 = add i64 %947, 120
  %949 = add i64 %901, 71
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to double*
  %951 = load double, double* %950, align 8
  store double %951, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %952 = add i64 %901, 75
  store i64 %952, i64* %3, align 8
  %953 = load i64, i64* %911, align 8
  store i64 %953, i64* %RDX.i995, align 8
  %954 = add i64 %953, 104
  %955 = add i64 %901, 80
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to double*
  %957 = load double, double* %956, align 8
  %958 = fmul double %951, %957
  store double %958, double* %83, align 1
  store i64 0, i64* %84, align 1
  %959 = fadd double %945, %958
  store double %959, double* %65, align 1
  store i64 0, i64* %66, align 1
  %960 = load i64, i64* %RBP.i, align 8
  %961 = add i64 %960, -56
  %962 = add i64 %901, 89
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to double*
  store double %959, double* %963, align 8
  %964 = load i64, i64* %RBP.i, align 8
  %965 = add i64 %964, -16
  %966 = load i64, i64* %3, align 8
  %967 = add i64 %966, 4
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %965 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %RDX.i995, align 8
  %970 = add i64 %969, 96
  %971 = add i64 %966, 9
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to double*
  %973 = load double, double* %972, align 8
  store double %973, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %974 = add i64 %964, -24
  %975 = add i64 %966, 13
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %RDX.i995, align 8
  %978 = add i64 %977, 16
  %979 = add i64 %966, 18
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to double*
  %981 = load double, double* %980, align 8
  %982 = fmul double %973, %981
  store double %982, double* %65, align 1
  store i64 0, i64* %66, align 1
  %983 = add i64 %966, 22
  store i64 %983, i64* %3, align 8
  %984 = load i64, i64* %968, align 8
  store i64 %984, i64* %RDX.i995, align 8
  %985 = add i64 %984, 104
  %986 = add i64 %966, 27
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to double*
  %988 = load double, double* %987, align 8
  store double %988, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %989 = add i64 %966, 31
  store i64 %989, i64* %3, align 8
  %990 = load i64, i64* %976, align 8
  store i64 %990, i64* %RDX.i995, align 8
  %991 = add i64 %990, 48
  %992 = add i64 %966, 36
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to double*
  %994 = load double, double* %993, align 8
  %995 = fmul double %988, %994
  store double %995, double* %83, align 1
  store i64 0, i64* %84, align 1
  %996 = fadd double %982, %995
  store double %996, double* %65, align 1
  store i64 0, i64* %66, align 1
  %997 = add i64 %966, 44
  store i64 %997, i64* %3, align 8
  %998 = load i64, i64* %968, align 8
  store i64 %998, i64* %RDX.i995, align 8
  %999 = add i64 %998, 112
  %1000 = add i64 %966, 49
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to double*
  %1002 = load double, double* %1001, align 8
  store double %1002, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1003 = add i64 %966, 53
  store i64 %1003, i64* %3, align 8
  %1004 = load i64, i64* %976, align 8
  store i64 %1004, i64* %RDX.i995, align 8
  %1005 = add i64 %1004, 80
  %1006 = add i64 %966, 58
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to double*
  %1008 = load double, double* %1007, align 8
  %1009 = fmul double %1002, %1008
  store double %1009, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1010 = fadd double %996, %1009
  store double %1010, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1011 = add i64 %966, 66
  store i64 %1011, i64* %3, align 8
  %1012 = load i64, i64* %968, align 8
  store i64 %1012, i64* %RDX.i995, align 8
  %1013 = add i64 %1012, 120
  %1014 = add i64 %966, 71
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to double*
  %1016 = load double, double* %1015, align 8
  store double %1016, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1017 = add i64 %966, 75
  store i64 %1017, i64* %3, align 8
  %1018 = load i64, i64* %976, align 8
  store i64 %1018, i64* %RDX.i995, align 8
  %1019 = add i64 %1018, 112
  %1020 = add i64 %966, 80
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to double*
  %1022 = load double, double* %1021, align 8
  %1023 = fmul double %1016, %1022
  store double %1023, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1024 = fadd double %1010, %1023
  store double %1024, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -48
  %1027 = add i64 %966, 89
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to double*
  store double %1024, double* %1028, align 8
  %1029 = load i64, i64* %RBP.i, align 8
  %1030 = add i64 %1029, -16
  %1031 = load i64, i64* %3, align 8
  %1032 = add i64 %1031, 4
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1030 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %RDX.i995, align 8
  %1035 = add i64 %1034, 96
  %1036 = add i64 %1031, 9
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to double*
  %1038 = load double, double* %1037, align 8
  store double %1038, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %1039 = add i64 %1029, -24
  %1040 = add i64 %1031, 13
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  store i64 %1042, i64* %RDX.i995, align 8
  %1043 = add i64 %1042, 24
  %1044 = add i64 %1031, 18
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to double*
  %1046 = load double, double* %1045, align 8
  %1047 = fmul double %1038, %1046
  store double %1047, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1048 = add i64 %1031, 22
  store i64 %1048, i64* %3, align 8
  %1049 = load i64, i64* %1033, align 8
  store i64 %1049, i64* %RDX.i995, align 8
  %1050 = add i64 %1049, 104
  %1051 = add i64 %1031, 27
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to double*
  %1053 = load double, double* %1052, align 8
  store double %1053, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1054 = add i64 %1031, 31
  store i64 %1054, i64* %3, align 8
  %1055 = load i64, i64* %1041, align 8
  store i64 %1055, i64* %RDX.i995, align 8
  %1056 = add i64 %1055, 56
  %1057 = add i64 %1031, 36
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to double*
  %1059 = load double, double* %1058, align 8
  %1060 = fmul double %1053, %1059
  store double %1060, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1061 = fadd double %1047, %1060
  store double %1061, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1062 = add i64 %1031, 44
  store i64 %1062, i64* %3, align 8
  %1063 = load i64, i64* %1033, align 8
  store i64 %1063, i64* %RDX.i995, align 8
  %1064 = add i64 %1063, 112
  %1065 = add i64 %1031, 49
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to double*
  %1067 = load double, double* %1066, align 8
  store double %1067, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1068 = add i64 %1031, 53
  store i64 %1068, i64* %3, align 8
  %1069 = load i64, i64* %1041, align 8
  store i64 %1069, i64* %RDX.i995, align 8
  %1070 = add i64 %1069, 88
  %1071 = add i64 %1031, 58
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to double*
  %1073 = load double, double* %1072, align 8
  %1074 = fmul double %1067, %1073
  store double %1074, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1075 = fadd double %1061, %1074
  store double %1075, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1076 = add i64 %1031, 66
  store i64 %1076, i64* %3, align 8
  %1077 = load i64, i64* %1033, align 8
  store i64 %1077, i64* %RDX.i995, align 8
  %1078 = add i64 %1077, 120
  %1079 = add i64 %1031, 71
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to double*
  %1081 = load double, double* %1080, align 8
  store double %1081, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1082 = add i64 %1031, 75
  store i64 %1082, i64* %3, align 8
  %1083 = load i64, i64* %1041, align 8
  store i64 %1083, i64* %RDX.i995, align 8
  %1084 = add i64 %1083, 120
  %1085 = add i64 %1031, 80
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to double*
  %1087 = load double, double* %1086, align 8
  %1088 = fmul double %1081, %1087
  store double %1088, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1089 = fadd double %1075, %1088
  store double %1089, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -40
  %1092 = add i64 %1031, 89
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to double*
  store double %1089, double* %1093, align 8
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -28
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 7
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1095 to i32*
  store i32 0, i32* %1098, align 4
  %RAX.i29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400b0f

block_.L_400b0f:                                  ; preds = %block_400b19, %entry
  %1099 = phi i64 [ %1180, %block_400b19 ], [ %.pre, %entry ]
  %1100 = load i64, i64* %RBP.i, align 8
  %1101 = add i64 %1100, -28
  %1102 = add i64 %1099, 4
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = add i32 %1104, -16
  %1106 = icmp ult i32 %1104, 16
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %14, align 1
  %1108 = and i32 %1105, 255
  %1109 = tail call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %21, align 1
  %1113 = xor i32 %1104, 16
  %1114 = xor i32 %1113, %1105
  %1115 = lshr i32 %1114, 4
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, i8* %26, align 1
  %1118 = icmp eq i32 %1105, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %29, align 1
  %1120 = lshr i32 %1105, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %32, align 1
  %1122 = lshr i32 %1104, 31
  %1123 = xor i32 %1120, %1122
  %1124 = add nuw nsw i32 %1123, %1122
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %38, align 1
  %.v = select i1 %1106, i64 10, i64 52
  %1127 = add i64 %1099, %.v
  store i64 %1127, i64* %3, align 8
  br i1 %1106, label %block_400b19, label %block_.L_400b43

block_400b19:                                     ; preds = %block_.L_400b0f
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %3, align 8
  %1129 = load i32, i32* %1103, align 4
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX.i29, align 8
  store i64 %1130, i64* %RCX.i27, align 8
  %1131 = shl nuw nsw i64 %1130, 3
  %1132 = add i64 %1100, -160
  %1133 = add i64 %1132, %1131
  %1134 = add i64 %1127, 14
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i64*
  %1136 = load i64, i64* %1135, align 8
  %1137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1136, i64* %1137, align 1
  store double 0.000000e+00, double* %67, align 1
  %1138 = add i64 %1100, -8
  %1139 = add i64 %1127, 18
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i64*
  %1141 = load i64, i64* %1140, align 8
  store i64 %1141, i64* %RCX.i27, align 8
  %1142 = add i64 %1127, 21
  store i64 %1142, i64* %3, align 8
  %1143 = load i32, i32* %1103, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i29, align 8
  store i64 %1144, i64* %RDX.i995, align 8
  %1145 = shl nuw nsw i64 %1144, 3
  %1146 = add i64 %1145, %1141
  %1147 = add i64 %1127, 28
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  store i64 %1136, i64* %1148, align 8
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -28
  %1151 = load i64, i64* %3, align 8
  %1152 = add i64 %1151, 3
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1150 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = add i32 %1154, 1
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX.i29, align 8
  %1157 = icmp eq i32 %1154, -1
  %1158 = icmp eq i32 %1155, 0
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %14, align 1
  %1161 = and i32 %1155, 255
  %1162 = tail call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  store i8 %1165, i8* %21, align 1
  %1166 = xor i32 %1154, %1155
  %1167 = lshr i32 %1166, 4
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %26, align 1
  %1170 = zext i1 %1158 to i8
  store i8 %1170, i8* %29, align 1
  %1171 = lshr i32 %1155, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %32, align 1
  %1173 = lshr i32 %1154, 31
  %1174 = xor i32 %1171, %1173
  %1175 = add nuw nsw i32 %1174, %1171
  %1176 = icmp eq i32 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %38, align 1
  %1178 = add i64 %1151, 9
  store i64 %1178, i64* %3, align 8
  store i32 %1155, i32* %1153, align 4
  %1179 = load i64, i64* %3, align 8
  %1180 = add i64 %1179, -47
  store i64 %1180, i64* %3, align 8
  br label %block_.L_400b0f

block_.L_400b43:                                  ; preds = %block_.L_400b0f
  %1181 = load i64, i64* %6, align 8
  %1182 = add i64 %1181, 32
  store i64 %1182, i64* %6, align 8
  %1183 = icmp ugt i64 %1181, -33
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %14, align 1
  %1185 = trunc i64 %1182 to i32
  %1186 = and i32 %1185, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = xor i64 %1181, %1182
  %1192 = lshr i64 %1191, 4
  %1193 = trunc i64 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %26, align 1
  %1195 = icmp eq i64 %1182, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %29, align 1
  %1197 = lshr i64 %1182, 63
  %1198 = trunc i64 %1197 to i8
  store i8 %1198, i8* %32, align 1
  %1199 = lshr i64 %1181, 63
  %1200 = xor i64 %1197, %1199
  %1201 = add nuw nsw i64 %1200, %1197
  %1202 = icmp eq i64 %1201, 2
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %38, align 1
  %1204 = add i64 %1127, 5
  store i64 %1204, i64* %3, align 8
  %1205 = add i64 %1181, 40
  %1206 = inttoptr i64 %1182 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %RBP.i, align 8
  store i64 %1205, i64* %6, align 8
  %1208 = add i64 %1127, 6
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1205 to i64*
  %1210 = load i64, i64* %1209, align 8
  store i64 %1210, i64* %3, align 8
  %1211 = add i64 %1181, 48
  store i64 %1211, i64* %6, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RDX to double**
  %5 = load double*, double** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = load double, double* %5, align 8
  %11 = fmul double %9, %10
  store double %11, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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

define %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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

define %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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

define %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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

define %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
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

define %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
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

define %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 56
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64
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

define %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
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

define %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 80
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

define %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 88
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
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

define %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
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

define %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 112
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

define %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 120
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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

define %struct.Memory* @routine_jae_.L_400b43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %11, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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

define %struct.Memory* @routine_jmpq_.L_400b0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
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
  %17 = xor i64 %3, %6
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
