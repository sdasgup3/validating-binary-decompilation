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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @cft1st(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -32
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 24
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i1794, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i1791, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -16
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RDX.i1791, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %64 = add i64 %59, 8
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %62 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = bitcast [32 x %union.VectorReg]* %63 to double*
  %68 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %66, i64* %68, align 1
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %70 = bitcast i64* %69 to double*
  store double 0.000000e+00, double* %70, align 1
  %71 = add i64 %59, 12
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %61, align 8
  store i64 %72, i64* %RDX.i1791, align 8
  %73 = add i64 %72, 16
  %74 = add i64 %59, 17
  store i64 %74, i64* %3, align 8
  %75 = bitcast i64 %66 to double
  %76 = inttoptr i64 %73 to double*
  %77 = load double, double* %76, align 8
  %78 = fadd double %75, %77
  store double %78, double* %67, align 1
  store i64 0, i64* %69, align 1
  %79 = add i64 %57, -96
  %80 = add i64 %59, 22
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to double*
  store double %78, double* %81, align 8
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -16
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RDX.i1791, align 8
  %88 = add i64 %87, 8
  %89 = add i64 %84, 9
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %92 = add i64 %84, 13
  store i64 %92, i64* %3, align 8
  %93 = load i64, i64* %86, align 8
  store i64 %93, i64* %RDX.i1791, align 8
  %94 = add i64 %93, 24
  %95 = add i64 %84, 18
  store i64 %95, i64* %3, align 8
  %96 = bitcast i64 %91 to double
  %97 = inttoptr i64 %94 to double*
  %98 = load double, double* %97, align 8
  %99 = fadd double %96, %98
  store double %99, double* %67, align 1
  store i64 0, i64* %69, align 1
  %100 = add i64 %82, -104
  %101 = add i64 %84, 23
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to double*
  store double %99, double* %102, align 8
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -16
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RDX.i1791, align 8
  %109 = add i64 %105, 8
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %112 = add i64 %105, 12
  store i64 %112, i64* %3, align 8
  %113 = load i64, i64* %107, align 8
  store i64 %113, i64* %RDX.i1791, align 8
  %114 = add i64 %113, 16
  %115 = add i64 %105, 17
  store i64 %115, i64* %3, align 8
  %116 = bitcast i64 %111 to double
  %117 = inttoptr i64 %114 to double*
  %118 = load double, double* %117, align 8
  %119 = fsub double %116, %118
  store double %119, double* %67, align 1
  store i64 0, i64* %69, align 1
  %120 = add i64 %103, -112
  %121 = add i64 %105, 22
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to double*
  store double %119, double* %122, align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -16
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RDX.i1791, align 8
  %129 = add i64 %128, 8
  %130 = add i64 %125, 9
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %133 = add i64 %125, 13
  store i64 %133, i64* %3, align 8
  %134 = load i64, i64* %127, align 8
  store i64 %134, i64* %RDX.i1791, align 8
  %135 = add i64 %134, 24
  %136 = add i64 %125, 18
  store i64 %136, i64* %3, align 8
  %137 = bitcast i64 %132 to double
  %138 = inttoptr i64 %135 to double*
  %139 = load double, double* %138, align 8
  %140 = fsub double %137, %139
  store double %140, double* %67, align 1
  store i64 0, i64* %69, align 1
  %141 = add i64 %123, -120
  %142 = add i64 %125, 23
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to double*
  store double %140, double* %143, align 8
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -16
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %145 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RDX.i1791, align 8
  %150 = add i64 %149, 32
  %151 = add i64 %146, 9
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %154 = add i64 %146, 13
  store i64 %154, i64* %3, align 8
  %155 = load i64, i64* %148, align 8
  store i64 %155, i64* %RDX.i1791, align 8
  %156 = add i64 %155, 48
  %157 = add i64 %146, 18
  store i64 %157, i64* %3, align 8
  %158 = bitcast i64 %153 to double
  %159 = inttoptr i64 %156 to double*
  %160 = load double, double* %159, align 8
  %161 = fadd double %158, %160
  store double %161, double* %67, align 1
  store i64 0, i64* %69, align 1
  %162 = add i64 %144, -128
  %163 = add i64 %146, 23
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to double*
  store double %161, double* %164, align 8
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -16
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 4
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RDX.i1791, align 8
  %171 = add i64 %170, 40
  %172 = add i64 %167, 9
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %175 = add i64 %167, 13
  store i64 %175, i64* %3, align 8
  %176 = load i64, i64* %169, align 8
  store i64 %176, i64* %RDX.i1791, align 8
  %177 = add i64 %176, 56
  %178 = add i64 %167, 18
  store i64 %178, i64* %3, align 8
  %179 = bitcast i64 %174 to double
  %180 = inttoptr i64 %177 to double*
  %181 = load double, double* %180, align 8
  %182 = fadd double %179, %181
  store double %182, double* %67, align 1
  store i64 0, i64* %69, align 1
  %183 = add i64 %165, -136
  %184 = add i64 %167, 26
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to double*
  store double %182, double* %185, align 8
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -16
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 4
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RDX.i1791, align 8
  %192 = add i64 %191, 32
  %193 = add i64 %188, 9
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %196 = add i64 %188, 13
  store i64 %196, i64* %3, align 8
  %197 = load i64, i64* %190, align 8
  store i64 %197, i64* %RDX.i1791, align 8
  %198 = add i64 %197, 48
  %199 = add i64 %188, 18
  store i64 %199, i64* %3, align 8
  %200 = bitcast i64 %195 to double
  %201 = inttoptr i64 %198 to double*
  %202 = load double, double* %201, align 8
  %203 = fsub double %200, %202
  store double %203, double* %67, align 1
  store i64 0, i64* %69, align 1
  %204 = add i64 %186, -144
  %205 = add i64 %188, 26
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to double*
  store double %203, double* %206, align 8
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -16
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 4
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %208 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RDX.i1791, align 8
  %213 = add i64 %212, 40
  %214 = add i64 %209, 9
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %217 = add i64 %209, 13
  store i64 %217, i64* %3, align 8
  %218 = load i64, i64* %211, align 8
  store i64 %218, i64* %RDX.i1791, align 8
  %219 = add i64 %218, 56
  %220 = add i64 %209, 18
  store i64 %220, i64* %3, align 8
  %221 = bitcast i64 %216 to double
  %222 = inttoptr i64 %219 to double*
  %223 = load double, double* %222, align 8
  %224 = fsub double %221, %223
  store double %224, double* %67, align 1
  store i64 0, i64* %69, align 1
  %225 = add i64 %207, -152
  %226 = add i64 %209, 26
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to double*
  store double %224, double* %227, align 8
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -96
  %230 = load i64, i64* %3, align 8
  %231 = add i64 %230, 5
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %229 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %234 = add i64 %228, -128
  %235 = add i64 %230, 10
  store i64 %235, i64* %3, align 8
  %236 = bitcast i64 %233 to double
  %237 = inttoptr i64 %234 to double*
  %238 = load double, double* %237, align 8
  %239 = fadd double %236, %238
  store double %239, double* %67, align 1
  store i64 0, i64* %69, align 1
  %240 = add i64 %228, -16
  %241 = add i64 %230, 14
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RDX.i1791, align 8
  %244 = add i64 %230, 18
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to double*
  store double %239, double* %245, align 8
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -104
  %248 = load i64, i64* %3, align 8
  %249 = add i64 %248, 5
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %247 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %252 = add i64 %246, -136
  %253 = add i64 %248, 13
  store i64 %253, i64* %3, align 8
  %254 = bitcast i64 %251 to double
  %255 = inttoptr i64 %252 to double*
  %256 = load double, double* %255, align 8
  %257 = fadd double %254, %256
  store double %257, double* %67, align 1
  store i64 0, i64* %69, align 1
  %258 = add i64 %246, -16
  %259 = add i64 %248, 17
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RDX.i1791, align 8
  %262 = add i64 %261, 8
  %263 = add i64 %248, 22
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to double*
  store double %257, double* %264, align 8
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -96
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, 5
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %266 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %271 = add i64 %265, -128
  %272 = add i64 %267, 10
  store i64 %272, i64* %3, align 8
  %273 = bitcast i64 %270 to double
  %274 = inttoptr i64 %271 to double*
  %275 = load double, double* %274, align 8
  %276 = fsub double %273, %275
  store double %276, double* %67, align 1
  store i64 0, i64* %69, align 1
  %277 = add i64 %265, -16
  %278 = add i64 %267, 14
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RDX.i1791, align 8
  %281 = add i64 %280, 32
  %282 = add i64 %267, 19
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to double*
  store double %276, double* %283, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -104
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 5
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %290 = add i64 %284, -136
  %291 = add i64 %286, 13
  store i64 %291, i64* %3, align 8
  %292 = bitcast i64 %289 to double
  %293 = inttoptr i64 %290 to double*
  %294 = load double, double* %293, align 8
  %295 = fsub double %292, %294
  store double %295, double* %67, align 1
  store i64 0, i64* %69, align 1
  %296 = add i64 %284, -16
  %297 = add i64 %286, 17
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RDX.i1791, align 8
  %300 = add i64 %299, 40
  %301 = add i64 %286, 22
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to double*
  store double %295, double* %302, align 8
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -112
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, 5
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %304 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %309 = add i64 %303, -152
  %310 = add i64 %305, 13
  store i64 %310, i64* %3, align 8
  %311 = bitcast i64 %308 to double
  %312 = inttoptr i64 %309 to double*
  %313 = load double, double* %312, align 8
  %314 = fsub double %311, %313
  store double %314, double* %67, align 1
  store i64 0, i64* %69, align 1
  %315 = add i64 %303, -16
  %316 = add i64 %305, 17
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %RDX.i1791, align 8
  %319 = add i64 %318, 16
  %320 = add i64 %305, 22
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to double*
  store double %314, double* %321, align 8
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -120
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 5
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %323 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %328 = add i64 %322, -144
  %329 = add i64 %324, 13
  store i64 %329, i64* %3, align 8
  %330 = bitcast i64 %327 to double
  %331 = inttoptr i64 %328 to double*
  %332 = load double, double* %331, align 8
  %333 = fadd double %330, %332
  store double %333, double* %67, align 1
  store i64 0, i64* %69, align 1
  %334 = add i64 %322, -16
  %335 = add i64 %324, 17
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RDX.i1791, align 8
  %338 = add i64 %337, 24
  %339 = add i64 %324, 22
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to double*
  store double %333, double* %340, align 8
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -112
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, 5
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %347 = add i64 %341, -152
  %348 = add i64 %343, 13
  store i64 %348, i64* %3, align 8
  %349 = bitcast i64 %346 to double
  %350 = inttoptr i64 %347 to double*
  %351 = load double, double* %350, align 8
  %352 = fadd double %349, %351
  store double %352, double* %67, align 1
  store i64 0, i64* %69, align 1
  %353 = add i64 %341, -16
  %354 = add i64 %343, 17
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i64*
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %RDX.i1791, align 8
  %357 = add i64 %356, 48
  %358 = add i64 %343, 22
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to double*
  store double %352, double* %359, align 8
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -120
  %362 = load i64, i64* %3, align 8
  %363 = add i64 %362, 5
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %361 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %366 = add i64 %360, -144
  %367 = add i64 %362, 13
  store i64 %367, i64* %3, align 8
  %368 = bitcast i64 %365 to double
  %369 = inttoptr i64 %366 to double*
  %370 = load double, double* %369, align 8
  %371 = fsub double %368, %370
  store double %371, double* %67, align 1
  store i64 0, i64* %69, align 1
  %372 = add i64 %360, -16
  %373 = add i64 %362, 17
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RDX.i1791, align 8
  %376 = add i64 %375, 56
  %377 = add i64 %362, 22
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to double*
  store double %371, double* %378, align 8
  %379 = load i64, i64* %RBP.i, align 8
  %380 = add i64 %379, -24
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, 4
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %380 to i64*
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %RDX.i1791, align 8
  %385 = add i64 %384, 16
  %386 = add i64 %381, 9
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %389 = add i64 %379, -48
  %390 = add i64 %381, 14
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  store i64 %388, i64* %391, align 8
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -16
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, 4
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RDX.i1791, align 8
  %398 = add i64 %397, 64
  %399 = add i64 %394, 9
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %402 = add i64 %394, 13
  store i64 %402, i64* %3, align 8
  %403 = load i64, i64* %396, align 8
  store i64 %403, i64* %RDX.i1791, align 8
  %404 = add i64 %403, 80
  %405 = add i64 %394, 18
  store i64 %405, i64* %3, align 8
  %406 = bitcast i64 %401 to double
  %407 = inttoptr i64 %404 to double*
  %408 = load double, double* %407, align 8
  %409 = fadd double %406, %408
  store double %409, double* %67, align 1
  store i64 0, i64* %69, align 1
  %410 = add i64 %392, -96
  %411 = add i64 %394, 23
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to double*
  store double %409, double* %412, align 8
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -16
  %415 = load i64, i64* %3, align 8
  %416 = add i64 %415, 4
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %414 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RDX.i1791, align 8
  %419 = add i64 %418, 72
  %420 = add i64 %415, 9
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %423 = add i64 %415, 13
  store i64 %423, i64* %3, align 8
  %424 = load i64, i64* %417, align 8
  store i64 %424, i64* %RDX.i1791, align 8
  %425 = add i64 %424, 88
  %426 = add i64 %415, 18
  store i64 %426, i64* %3, align 8
  %427 = bitcast i64 %422 to double
  %428 = inttoptr i64 %425 to double*
  %429 = load double, double* %428, align 8
  %430 = fadd double %427, %429
  store double %430, double* %67, align 1
  store i64 0, i64* %69, align 1
  %431 = add i64 %413, -104
  %432 = add i64 %415, 23
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to double*
  store double %430, double* %433, align 8
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -16
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, 4
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RDX.i1791, align 8
  %440 = add i64 %439, 64
  %441 = add i64 %436, 9
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %444 = add i64 %436, 13
  store i64 %444, i64* %3, align 8
  %445 = load i64, i64* %438, align 8
  store i64 %445, i64* %RDX.i1791, align 8
  %446 = add i64 %445, 80
  %447 = add i64 %436, 18
  store i64 %447, i64* %3, align 8
  %448 = bitcast i64 %443 to double
  %449 = inttoptr i64 %446 to double*
  %450 = load double, double* %449, align 8
  %451 = fsub double %448, %450
  store double %451, double* %67, align 1
  store i64 0, i64* %69, align 1
  %452 = add i64 %434, -112
  %453 = add i64 %436, 23
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to double*
  store double %451, double* %454, align 8
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -16
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 4
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %456 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RDX.i1791, align 8
  %461 = add i64 %460, 72
  %462 = add i64 %457, 9
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %465 = add i64 %457, 13
  store i64 %465, i64* %3, align 8
  %466 = load i64, i64* %459, align 8
  store i64 %466, i64* %RDX.i1791, align 8
  %467 = add i64 %466, 88
  %468 = add i64 %457, 18
  store i64 %468, i64* %3, align 8
  %469 = bitcast i64 %464 to double
  %470 = inttoptr i64 %467 to double*
  %471 = load double, double* %470, align 8
  %472 = fsub double %469, %471
  store double %472, double* %67, align 1
  store i64 0, i64* %69, align 1
  %473 = add i64 %455, -120
  %474 = add i64 %457, 23
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to double*
  store double %472, double* %475, align 8
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -16
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, 4
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %RDX.i1791, align 8
  %482 = add i64 %481, 96
  %483 = add i64 %478, 9
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %486 = add i64 %478, 13
  store i64 %486, i64* %3, align 8
  %487 = load i64, i64* %480, align 8
  store i64 %487, i64* %RDX.i1791, align 8
  %488 = add i64 %487, 112
  %489 = add i64 %478, 18
  store i64 %489, i64* %3, align 8
  %490 = bitcast i64 %485 to double
  %491 = inttoptr i64 %488 to double*
  %492 = load double, double* %491, align 8
  %493 = fadd double %490, %492
  store double %493, double* %67, align 1
  store i64 0, i64* %69, align 1
  %494 = add i64 %476, -128
  %495 = add i64 %478, 23
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to double*
  store double %493, double* %496, align 8
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -16
  %499 = load i64, i64* %3, align 8
  %500 = add i64 %499, 4
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %498 to i64*
  %502 = load i64, i64* %501, align 8
  store i64 %502, i64* %RDX.i1791, align 8
  %503 = add i64 %502, 104
  %504 = add i64 %499, 9
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %507 = add i64 %499, 13
  store i64 %507, i64* %3, align 8
  %508 = load i64, i64* %501, align 8
  store i64 %508, i64* %RDX.i1791, align 8
  %509 = add i64 %508, 120
  %510 = add i64 %499, 18
  store i64 %510, i64* %3, align 8
  %511 = bitcast i64 %506 to double
  %512 = inttoptr i64 %509 to double*
  %513 = load double, double* %512, align 8
  %514 = fadd double %511, %513
  store double %514, double* %67, align 1
  store i64 0, i64* %69, align 1
  %515 = add i64 %497, -136
  %516 = add i64 %499, 26
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to double*
  store double %514, double* %517, align 8
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -16
  %520 = load i64, i64* %3, align 8
  %521 = add i64 %520, 4
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %519 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %RDX.i1791, align 8
  %524 = add i64 %523, 96
  %525 = add i64 %520, 9
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %528 = add i64 %520, 13
  store i64 %528, i64* %3, align 8
  %529 = load i64, i64* %522, align 8
  store i64 %529, i64* %RDX.i1791, align 8
  %530 = add i64 %529, 112
  %531 = add i64 %520, 18
  store i64 %531, i64* %3, align 8
  %532 = bitcast i64 %527 to double
  %533 = inttoptr i64 %530 to double*
  %534 = load double, double* %533, align 8
  %535 = fsub double %532, %534
  store double %535, double* %67, align 1
  store i64 0, i64* %69, align 1
  %536 = add i64 %518, -144
  %537 = add i64 %520, 26
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to double*
  store double %535, double* %538, align 8
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -16
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, 4
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RDX.i1791, align 8
  %545 = add i64 %544, 104
  %546 = add i64 %541, 9
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %549 = add i64 %541, 13
  store i64 %549, i64* %3, align 8
  %550 = load i64, i64* %543, align 8
  store i64 %550, i64* %RDX.i1791, align 8
  %551 = add i64 %550, 120
  %552 = add i64 %541, 18
  store i64 %552, i64* %3, align 8
  %553 = bitcast i64 %548 to double
  %554 = inttoptr i64 %551 to double*
  %555 = load double, double* %554, align 8
  %556 = fsub double %553, %555
  store double %556, double* %67, align 1
  store i64 0, i64* %69, align 1
  %557 = add i64 %539, -152
  %558 = add i64 %541, 26
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to double*
  store double %556, double* %559, align 8
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -96
  %562 = load i64, i64* %3, align 8
  %563 = add i64 %562, 5
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %561 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %566 = add i64 %560, -128
  %567 = add i64 %562, 10
  store i64 %567, i64* %3, align 8
  %568 = bitcast i64 %565 to double
  %569 = inttoptr i64 %566 to double*
  %570 = load double, double* %569, align 8
  %571 = fadd double %568, %570
  store double %571, double* %67, align 1
  store i64 0, i64* %69, align 1
  %572 = add i64 %560, -16
  %573 = add i64 %562, 14
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RDX.i1791, align 8
  %576 = add i64 %575, 64
  %577 = add i64 %562, 19
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to double*
  store double %571, double* %578, align 8
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -104
  %581 = load i64, i64* %3, align 8
  %582 = add i64 %581, 5
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %580 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %585 = add i64 %579, -136
  %586 = add i64 %581, 13
  store i64 %586, i64* %3, align 8
  %587 = bitcast i64 %584 to double
  %588 = inttoptr i64 %585 to double*
  %589 = load double, double* %588, align 8
  %590 = fadd double %587, %589
  store double %590, double* %67, align 1
  store i64 0, i64* %69, align 1
  %591 = add i64 %579, -16
  %592 = add i64 %581, 17
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %RDX.i1791, align 8
  %595 = add i64 %594, 72
  %596 = add i64 %581, 22
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to double*
  store double %590, double* %597, align 8
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -136
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, 8
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %599 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %604 = add i64 %598, -104
  %605 = add i64 %600, 13
  store i64 %605, i64* %3, align 8
  %606 = bitcast i64 %603 to double
  %607 = inttoptr i64 %604 to double*
  %608 = load double, double* %607, align 8
  %609 = fsub double %606, %608
  store double %609, double* %67, align 1
  store i64 0, i64* %69, align 1
  %610 = add i64 %598, -16
  %611 = add i64 %600, 17
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i64*
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %RDX.i1791, align 8
  %614 = add i64 %613, 96
  %615 = add i64 %600, 22
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to double*
  store double %609, double* %616, align 8
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -96
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 5
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %618 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %623 = add i64 %617, -128
  %624 = add i64 %619, 10
  store i64 %624, i64* %3, align 8
  %625 = bitcast i64 %622 to double
  %626 = inttoptr i64 %623 to double*
  %627 = load double, double* %626, align 8
  %628 = fsub double %625, %627
  store double %628, double* %67, align 1
  store i64 0, i64* %69, align 1
  %629 = add i64 %617, -16
  %630 = add i64 %619, 14
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %RDX.i1791, align 8
  %633 = add i64 %632, 104
  %634 = add i64 %619, 19
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to double*
  store double %628, double* %635, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -112
  %638 = load i64, i64* %3, align 8
  %639 = add i64 %638, 5
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %637 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %642 = add i64 %636, -152
  %643 = add i64 %638, 13
  store i64 %643, i64* %3, align 8
  %644 = bitcast i64 %641 to double
  %645 = inttoptr i64 %642 to double*
  %646 = load double, double* %645, align 8
  %647 = fsub double %644, %646
  store double %647, double* %67, align 1
  store i64 0, i64* %69, align 1
  %648 = add i64 %636, -96
  %649 = add i64 %638, 18
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to double*
  store double %647, double* %650, align 8
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -120
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 5
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %657 = add i64 %651, -144
  %658 = add i64 %653, 13
  store i64 %658, i64* %3, align 8
  %659 = bitcast i64 %656 to double
  %660 = inttoptr i64 %657 to double*
  %661 = load double, double* %660, align 8
  %662 = fadd double %659, %661
  store double %662, double* %67, align 1
  store i64 0, i64* %69, align 1
  %663 = add i64 %651, -104
  %664 = add i64 %653, 18
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to double*
  store double %662, double* %665, align 8
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -48
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 5
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %673 = bitcast %union.VectorReg* %672 to i8*
  %674 = add i64 %666, -96
  %675 = add i64 %668, 10
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  %678 = bitcast %union.VectorReg* %672 to double*
  %679 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %672, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %677, i64* %679, align 1
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %681 = bitcast i64* %680 to double*
  store double 0.000000e+00, double* %681, align 1
  %682 = add i64 %666, -104
  %683 = add i64 %668, 15
  store i64 %683, i64* %3, align 8
  %684 = bitcast i64 %677 to double
  %685 = inttoptr i64 %682 to double*
  %686 = load double, double* %685, align 8
  %687 = fsub double %684, %686
  store double %687, double* %678, align 1
  store i64 0, i64* %680, align 1
  %688 = bitcast i64 %671 to double
  %689 = fmul double %688, %687
  store double %689, double* %67, align 1
  store i64 0, i64* %69, align 1
  %690 = add i64 %666, -16
  %691 = add i64 %668, 23
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i64*
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %RDX.i1791, align 8
  %694 = add i64 %693, 80
  %695 = add i64 %668, 28
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to double*
  store double %689, double* %696, align 8
  %697 = load i64, i64* %RBP.i, align 8
  %698 = add i64 %697, -48
  %699 = load i64, i64* %3, align 8
  %700 = add i64 %699, 5
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %698 to i64*
  %702 = load i64, i64* %701, align 8
  store i64 %702, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %703 = add i64 %697, -96
  %704 = add i64 %699, 10
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %707 = add i64 %697, -104
  %708 = add i64 %699, 15
  store i64 %708, i64* %3, align 8
  %709 = bitcast i64 %706 to double
  %710 = inttoptr i64 %707 to double*
  %711 = load double, double* %710, align 8
  %712 = fadd double %709, %711
  store double %712, double* %678, align 1
  store i64 0, i64* %680, align 1
  %713 = bitcast i64 %702 to double
  %714 = fmul double %713, %712
  store double %714, double* %67, align 1
  store i64 0, i64* %69, align 1
  %715 = add i64 %697, -16
  %716 = add i64 %699, 23
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RDX.i1791, align 8
  %719 = add i64 %718, 88
  %720 = add i64 %699, 28
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to double*
  store double %714, double* %721, align 8
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -152
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, 8
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %723 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %728 = add i64 %722, -112
  %729 = add i64 %724, 13
  store i64 %729, i64* %3, align 8
  %730 = bitcast i64 %727 to double
  %731 = inttoptr i64 %728 to double*
  %732 = load double, double* %731, align 8
  %733 = fadd double %730, %732
  store double %733, double* %67, align 1
  store i64 0, i64* %69, align 1
  %734 = add i64 %722, -96
  %735 = add i64 %724, 18
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to double*
  store double %733, double* %736, align 8
  %737 = load i64, i64* %RBP.i, align 8
  %738 = add i64 %737, -144
  %739 = load i64, i64* %3, align 8
  %740 = add i64 %739, 8
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %738 to i64*
  %742 = load i64, i64* %741, align 8
  store i64 %742, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %743 = add i64 %737, -120
  %744 = add i64 %739, 13
  store i64 %744, i64* %3, align 8
  %745 = bitcast i64 %742 to double
  %746 = inttoptr i64 %743 to double*
  %747 = load double, double* %746, align 8
  %748 = fsub double %745, %747
  store double %748, double* %67, align 1
  store i64 0, i64* %69, align 1
  %749 = add i64 %737, -104
  %750 = add i64 %739, 18
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to double*
  store double %748, double* %751, align 8
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -48
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 5
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %753 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %758 = add i64 %752, -104
  %759 = add i64 %754, 10
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %762 = add i64 %752, -96
  %763 = add i64 %754, 15
  store i64 %763, i64* %3, align 8
  %764 = bitcast i64 %761 to double
  %765 = inttoptr i64 %762 to double*
  %766 = load double, double* %765, align 8
  %767 = fsub double %764, %766
  store double %767, double* %678, align 1
  store i64 0, i64* %680, align 1
  %768 = bitcast i64 %757 to double
  %769 = fmul double %768, %767
  store double %769, double* %67, align 1
  store i64 0, i64* %69, align 1
  %770 = add i64 %752, -16
  %771 = add i64 %754, 23
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %RDX.i1791, align 8
  %774 = add i64 %773, 112
  %775 = add i64 %754, 28
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to double*
  store double %769, double* %776, align 8
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -48
  %779 = load i64, i64* %3, align 8
  %780 = add i64 %779, 5
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %778 to i64*
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %783 = add i64 %777, -104
  %784 = add i64 %779, 10
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %787 = add i64 %777, -96
  %788 = add i64 %779, 15
  store i64 %788, i64* %3, align 8
  %789 = bitcast i64 %786 to double
  %790 = inttoptr i64 %787 to double*
  %791 = load double, double* %790, align 8
  %792 = fadd double %789, %791
  store double %792, double* %678, align 1
  store i64 0, i64* %680, align 1
  %793 = bitcast i64 %782 to double
  %794 = fmul double %793, %792
  store double %794, double* %67, align 1
  store i64 0, i64* %69, align 1
  %795 = add i64 %777, -16
  %796 = add i64 %779, 23
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i64*
  %798 = load i64, i64* %797, align 8
  store i64 %798, i64* %RDX.i1791, align 8
  %799 = add i64 %798, 120
  %800 = add i64 %779, 28
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to double*
  store double %794, double* %801, align 8
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -32
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 7
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %803 to i32*
  store i32 0, i32* %806, align 4
  %807 = load i64, i64* %RBP.i, align 8
  %808 = add i64 %807, -28
  %809 = load i64, i64* %3, align 8
  %810 = add i64 %809, 7
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %808 to i32*
  store i32 16, i32* %811, align 4
  %RAX.i1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %813 = bitcast %union.VectorReg* %812 to i8*
  %814 = bitcast [32 x %union.VectorReg]* %63 to <2 x i32>*
  %815 = bitcast i64* %69 to <2 x i32>*
  %816 = bitcast %union.VectorReg* %812 to i32*
  %817 = getelementptr inbounds i8, i8* %813, i64 4
  %818 = bitcast i8* %817 to i32*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %820 = bitcast i64* %819 to i32*
  %821 = getelementptr inbounds i8, i8* %813, i64 12
  %822 = bitcast i8* %821 to i32*
  %823 = bitcast %union.VectorReg* %812 to double*
  %824 = bitcast %union.VectorReg* %672 to i32*
  %825 = getelementptr inbounds i8, i8* %673, i64 4
  %826 = bitcast i8* %825 to i32*
  %827 = bitcast i64* %680 to i32*
  %828 = getelementptr inbounds i8, i8* %673, i64 12
  %829 = bitcast i8* %828 to i32*
  %830 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %812, i64 0, i32 0, i32 0, i32 0, i64 0
  %831 = bitcast i64* %819 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402c02

block_.L_402c02:                                  ; preds = %block_402c0e, %entry
  %832 = phi i64 [ %3499, %block_402c0e ], [ %.pre, %entry ]
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -28
  %835 = add i64 %832, 3
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX.i1283, align 8
  %839 = add i64 %833, -4
  %840 = add i64 %832, 6
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = sub i32 %837, %842
  %844 = icmp ult i32 %837, %842
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %14, align 1
  %846 = and i32 %843, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %21, align 1
  %851 = xor i32 %842, %837
  %852 = xor i32 %851, %843
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %27, align 1
  %856 = icmp eq i32 %843, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %30, align 1
  %858 = lshr i32 %843, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %33, align 1
  %860 = lshr i32 %837, 31
  %861 = lshr i32 %842, 31
  %862 = xor i32 %861, %860
  %863 = xor i32 %858, %860
  %864 = add nuw nsw i32 %863, %862
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %39, align 1
  %867 = icmp ne i8 %859, 0
  %868 = xor i1 %867, %865
  %.v = select i1 %868, i64 12, i64 1820
  %869 = add i64 %832, %.v
  store i64 %869, i64* %3, align 8
  br i1 %868, label %block_402c0e, label %block_.L_40331e

block_402c0e:                                     ; preds = %block_.L_402c02
  store i64 -9223372036854775808, i64* %RAX.i1283, align 8
  %870 = add i64 %869, 5346
  %871 = add i64 %869, 18
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %874 = add i64 %833, -32
  %875 = add i64 %869, 21
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, 2
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RCX.i1272, align 8
  %880 = icmp ugt i32 %877, -3
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %14, align 1
  %882 = and i32 %878, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = xor i32 %878, %877
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %27, align 1
  %891 = icmp eq i32 %878, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %30, align 1
  %893 = lshr i32 %878, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %33, align 1
  %895 = lshr i32 %877, 31
  %896 = xor i32 %893, %895
  %897 = add nuw nsw i32 %896, %893
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %39, align 1
  %900 = add i64 %869, 27
  store i64 %900, i64* %3, align 8
  store i32 %878, i32* %876, align 4
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -32
  %903 = load i64, i64* %3, align 8
  %904 = add i64 %903, 3
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %902 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = shl i32 %906, 1
  %908 = icmp slt i32 %906, 0
  %909 = icmp slt i32 %907, 0
  %910 = xor i1 %908, %909
  %911 = zext i32 %907 to i64
  store i64 %911, i64* %RCX.i1272, align 8
  %.lobit = lshr i32 %906, 31
  %912 = trunc i32 %.lobit to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %907, 254
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %918 = icmp eq i32 %907, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %30, align 1
  %920 = lshr i32 %906, 30
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %33, align 1
  %923 = zext i1 %910 to i8
  store i8 %923, i8* %39, align 1
  %924 = add i64 %901, -36
  %925 = add i64 %903, 8
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  store i32 %907, i32* %926, align 4
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -24
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 4
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RDX.i1791, align 8
  %933 = add i64 %927, -32
  %934 = add i64 %929, 8
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = sext i32 %936 to i64
  store i64 %937, i64* %RSI.i1794, align 8
  %938 = shl nsw i64 %937, 3
  %939 = add i64 %938, %932
  %940 = add i64 %929, 13
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %943 = add i64 %927, -64
  %944 = add i64 %929, 18
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  store i64 %942, i64* %945, align 8
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -24
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 4
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %947 to i64*
  %951 = load i64, i64* %950, align 8
  store i64 %951, i64* %RDX.i1791, align 8
  %952 = add i64 %946, -32
  %953 = add i64 %948, 7
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = add i32 %955, 1
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RCX.i1272, align 8
  %958 = icmp eq i32 %955, -1
  %959 = icmp eq i32 %956, 0
  %960 = or i1 %958, %959
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %14, align 1
  %962 = and i32 %956, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %21, align 1
  %967 = xor i32 %956, %955
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %27, align 1
  %971 = zext i1 %959 to i8
  store i8 %971, i8* %30, align 1
  %972 = lshr i32 %956, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %33, align 1
  %974 = lshr i32 %955, 31
  %975 = xor i32 %972, %974
  %976 = add nuw nsw i32 %975, %972
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %39, align 1
  %979 = sext i32 %956 to i64
  store i64 %979, i64* %RSI.i1794, align 8
  %980 = shl nsw i64 %979, 3
  %981 = add i64 %951, %980
  %982 = add i64 %948, 18
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %985 = add i64 %946, -72
  %986 = add i64 %948, 23
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i64*
  store i64 %984, i64* %987, align 8
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -24
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 4
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %989 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RDX.i1791, align 8
  %994 = add i64 %988, -36
  %995 = add i64 %990, 8
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  store i64 %998, i64* %RSI.i1794, align 8
  %999 = shl nsw i64 %998, 3
  %1000 = add i64 %999, %993
  %1001 = add i64 %990, 13
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1004 = add i64 %988, -48
  %1005 = add i64 %990, 18
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i64*
  store i64 %1003, i64* %1006, align 8
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -24
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, 4
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1008 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i64 %1012, i64* %RDX.i1791, align 8
  %1013 = add i64 %1007, -36
  %1014 = add i64 %1009, 7
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = add i32 %1016, 1
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RCX.i1272, align 8
  %1019 = icmp eq i32 %1016, -1
  %1020 = icmp eq i32 %1017, 0
  %1021 = or i1 %1019, %1020
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %14, align 1
  %1023 = and i32 %1017, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %21, align 1
  %1028 = xor i32 %1017, %1016
  %1029 = lshr i32 %1028, 4
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  store i8 %1031, i8* %27, align 1
  %1032 = zext i1 %1020 to i8
  store i8 %1032, i8* %30, align 1
  %1033 = lshr i32 %1017, 31
  %1034 = trunc i32 %1033 to i8
  store i8 %1034, i8* %33, align 1
  %1035 = lshr i32 %1016, 31
  %1036 = xor i32 %1033, %1035
  %1037 = add nuw nsw i32 %1036, %1033
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %39, align 1
  %1040 = sext i32 %1017 to i64
  store i64 %1040, i64* %RSI.i1794, align 8
  %1041 = shl nsw i64 %1040, 3
  %1042 = add i64 %1012, %1041
  %1043 = add i64 %1009, 18
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1046 = add i64 %1007, -56
  %1047 = add i64 %1009, 23
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  store i64 %1045, i64* %1048, align 8
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -48
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, 5
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1055 = load <2 x i32>, <2 x i32>* %814, align 1
  %1056 = load <2 x i32>, <2 x i32>* %815, align 1
  %1057 = extractelement <2 x i32> %1055, i32 0
  store i32 %1057, i32* %816, align 1
  %1058 = extractelement <2 x i32> %1055, i32 1
  store i32 %1058, i32* %818, align 1
  %1059 = extractelement <2 x i32> %1056, i32 0
  store i32 %1059, i32* %820, align 1
  %1060 = extractelement <2 x i32> %1056, i32 1
  store i32 %1060, i32* %822, align 1
  %1061 = add i64 %1049, -72
  %1062 = add i64 %1051, 13
  store i64 %1062, i64* %3, align 8
  %1063 = load double, double* %823, align 1
  %1064 = inttoptr i64 %1061 to double*
  %1065 = load double, double* %1064, align 8
  %1066 = fmul double %1063, %1065
  store double %1066, double* %823, align 1
  %1067 = add i64 %1049, -56
  %1068 = add i64 %1051, 18
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to double*
  %1070 = load double, double* %1069, align 8
  %1071 = fmul double %1066, %1070
  store double %1071, double* %823, align 1
  %1072 = bitcast i64 %1054 to double
  %1073 = fsub double %1072, %1071
  %1074 = add i64 %1049, -80
  %1075 = add i64 %1051, 27
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to double*
  store double %1073, double* %1076, align 8
  %1077 = load i64, i64* %3, align 8
  %1078 = load <2 x i32>, <2 x i32>* %814, align 1
  %1079 = load <2 x i32>, <2 x i32>* %815, align 1
  %1080 = extractelement <2 x i32> %1078, i32 0
  store i32 %1080, i32* %824, align 1
  %1081 = extractelement <2 x i32> %1078, i32 1
  store i32 %1081, i32* %826, align 1
  %1082 = extractelement <2 x i32> %1079, i32 0
  store i32 %1082, i32* %827, align 1
  %1083 = extractelement <2 x i32> %1079, i32 1
  store i32 %1083, i32* %829, align 1
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -72
  %1086 = add i64 %1077, 8
  store i64 %1086, i64* %3, align 8
  %1087 = load double, double* %678, align 1
  %1088 = inttoptr i64 %1085 to double*
  %1089 = load double, double* %1088, align 8
  %1090 = fmul double %1087, %1089
  store double %1090, double* %678, align 1
  %1091 = add i64 %1084, -48
  %1092 = add i64 %1077, 13
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to double*
  %1094 = load double, double* %1093, align 8
  %1095 = fmul double %1090, %1094
  store double %1095, double* %678, align 1
  %1096 = add i64 %1084, -56
  %1097 = add i64 %1077, 18
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to double*
  %1099 = load double, double* %1098, align 8
  %1100 = fsub double %1095, %1099
  store double %1100, double* %678, align 1
  %1101 = add i64 %1084, -88
  %1102 = add i64 %1077, 23
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to double*
  store double %1100, double* %1103, align 8
  %1104 = load i64, i64* %RBP.i, align 8
  %1105 = add i64 %1104, -16
  %1106 = load i64, i64* %3, align 8
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1105 to i64*
  %1109 = load i64, i64* %1108, align 8
  store i64 %1109, i64* %RDX.i1791, align 8
  %1110 = add i64 %1104, -28
  %1111 = add i64 %1106, 8
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RSI.i1794, align 8
  %1115 = shl nsw i64 %1114, 3
  %1116 = add i64 %1115, %1109
  %1117 = add i64 %1106, 13
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1120 = add i64 %1106, 17
  store i64 %1120, i64* %3, align 8
  %1121 = load i64, i64* %1108, align 8
  store i64 %1121, i64* %RDX.i1791, align 8
  %1122 = add i64 %1106, 20
  store i64 %1122, i64* %3, align 8
  %1123 = load i32, i32* %1112, align 4
  %1124 = add i32 %1123, 2
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RCX.i1272, align 8
  %1126 = icmp ugt i32 %1123, -3
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %14, align 1
  %1128 = and i32 %1124, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %21, align 1
  %1133 = xor i32 %1124, %1123
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %27, align 1
  %1137 = icmp eq i32 %1124, 0
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %30, align 1
  %1139 = lshr i32 %1124, 31
  %1140 = trunc i32 %1139 to i8
  store i8 %1140, i8* %33, align 1
  %1141 = lshr i32 %1123, 31
  %1142 = xor i32 %1139, %1141
  %1143 = add nuw nsw i32 %1142, %1139
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %39, align 1
  %1146 = sext i32 %1124 to i64
  store i64 %1146, i64* %RSI.i1794, align 8
  %1147 = shl nsw i64 %1146, 3
  %1148 = add i64 %1121, %1147
  %1149 = add i64 %1106, 31
  store i64 %1149, i64* %3, align 8
  %1150 = bitcast i64 %1119 to double
  %1151 = inttoptr i64 %1148 to double*
  %1152 = load double, double* %1151, align 8
  %1153 = fadd double %1150, %1152
  store double %1153, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1154 = add i64 %1104, -96
  %1155 = add i64 %1106, 36
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to double*
  store double %1153, double* %1156, align 8
  %1157 = load i64, i64* %RBP.i, align 8
  %1158 = add i64 %1157, -16
  %1159 = load i64, i64* %3, align 8
  %1160 = add i64 %1159, 4
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1158 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RDX.i1791, align 8
  %1163 = add i64 %1157, -28
  %1164 = add i64 %1159, 7
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = add i32 %1166, 1
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RCX.i1272, align 8
  %1169 = icmp eq i32 %1166, -1
  %1170 = icmp eq i32 %1167, 0
  %1171 = or i1 %1169, %1170
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %14, align 1
  %1173 = and i32 %1167, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %21, align 1
  %1178 = xor i32 %1167, %1166
  %1179 = lshr i32 %1178, 4
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  store i8 %1181, i8* %27, align 1
  %1182 = zext i1 %1170 to i8
  store i8 %1182, i8* %30, align 1
  %1183 = lshr i32 %1167, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %33, align 1
  %1185 = lshr i32 %1166, 31
  %1186 = xor i32 %1183, %1185
  %1187 = add nuw nsw i32 %1186, %1183
  %1188 = icmp eq i32 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %39, align 1
  %1190 = sext i32 %1167 to i64
  store i64 %1190, i64* %RSI.i1794, align 8
  %1191 = shl nsw i64 %1190, 3
  %1192 = add i64 %1162, %1191
  %1193 = add i64 %1159, 18
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1196 = add i64 %1159, 22
  store i64 %1196, i64* %3, align 8
  %1197 = load i64, i64* %1161, align 8
  store i64 %1197, i64* %RDX.i1791, align 8
  %1198 = add i64 %1159, 25
  store i64 %1198, i64* %3, align 8
  %1199 = load i32, i32* %1165, align 4
  %1200 = add i32 %1199, 3
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RCX.i1272, align 8
  %1202 = icmp ugt i32 %1199, -4
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %14, align 1
  %1204 = and i32 %1200, 255
  %1205 = tail call i32 @llvm.ctpop.i32(i32 %1204)
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = xor i8 %1207, 1
  store i8 %1208, i8* %21, align 1
  %1209 = xor i32 %1200, %1199
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  store i8 %1212, i8* %27, align 1
  %1213 = icmp eq i32 %1200, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %30, align 1
  %1215 = lshr i32 %1200, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %33, align 1
  %1217 = lshr i32 %1199, 31
  %1218 = xor i32 %1215, %1217
  %1219 = add nuw nsw i32 %1218, %1215
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %39, align 1
  %1222 = sext i32 %1200 to i64
  store i64 %1222, i64* %RSI.i1794, align 8
  %1223 = shl nsw i64 %1222, 3
  %1224 = add i64 %1197, %1223
  %1225 = add i64 %1159, 36
  store i64 %1225, i64* %3, align 8
  %1226 = bitcast i64 %1195 to double
  %1227 = inttoptr i64 %1224 to double*
  %1228 = load double, double* %1227, align 8
  %1229 = fadd double %1226, %1228
  store double %1229, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -104
  %1232 = add i64 %1159, 41
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to double*
  store double %1229, double* %1233, align 8
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -16
  %1236 = load i64, i64* %3, align 8
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1235 to i64*
  %1239 = load i64, i64* %1238, align 8
  store i64 %1239, i64* %RDX.i1791, align 8
  %1240 = add i64 %1234, -28
  %1241 = add i64 %1236, 8
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = sext i32 %1243 to i64
  store i64 %1244, i64* %RSI.i1794, align 8
  %1245 = shl nsw i64 %1244, 3
  %1246 = add i64 %1245, %1239
  %1247 = add i64 %1236, 13
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1250 = add i64 %1236, 17
  store i64 %1250, i64* %3, align 8
  %1251 = load i64, i64* %1238, align 8
  store i64 %1251, i64* %RDX.i1791, align 8
  %1252 = add i64 %1236, 20
  store i64 %1252, i64* %3, align 8
  %1253 = load i32, i32* %1242, align 4
  %1254 = add i32 %1253, 2
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RCX.i1272, align 8
  %1256 = icmp ugt i32 %1253, -3
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %14, align 1
  %1258 = and i32 %1254, 255
  %1259 = tail call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  store i8 %1262, i8* %21, align 1
  %1263 = xor i32 %1254, %1253
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  store i8 %1266, i8* %27, align 1
  %1267 = icmp eq i32 %1254, 0
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %30, align 1
  %1269 = lshr i32 %1254, 31
  %1270 = trunc i32 %1269 to i8
  store i8 %1270, i8* %33, align 1
  %1271 = lshr i32 %1253, 31
  %1272 = xor i32 %1269, %1271
  %1273 = add nuw nsw i32 %1272, %1269
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %39, align 1
  %1276 = sext i32 %1254 to i64
  store i64 %1276, i64* %RSI.i1794, align 8
  %1277 = shl nsw i64 %1276, 3
  %1278 = add i64 %1251, %1277
  %1279 = add i64 %1236, 31
  store i64 %1279, i64* %3, align 8
  %1280 = bitcast i64 %1249 to double
  %1281 = inttoptr i64 %1278 to double*
  %1282 = load double, double* %1281, align 8
  %1283 = fsub double %1280, %1282
  store double %1283, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1284 = add i64 %1234, -112
  %1285 = add i64 %1236, 36
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to double*
  store double %1283, double* %1286, align 8
  %1287 = load i64, i64* %RBP.i, align 8
  %1288 = add i64 %1287, -16
  %1289 = load i64, i64* %3, align 8
  %1290 = add i64 %1289, 4
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1288 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RDX.i1791, align 8
  %1293 = add i64 %1287, -28
  %1294 = add i64 %1289, 7
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = add i32 %1296, 1
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RCX.i1272, align 8
  %1299 = icmp eq i32 %1296, -1
  %1300 = icmp eq i32 %1297, 0
  %1301 = or i1 %1299, %1300
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %14, align 1
  %1303 = and i32 %1297, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %21, align 1
  %1308 = xor i32 %1297, %1296
  %1309 = lshr i32 %1308, 4
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %27, align 1
  %1312 = zext i1 %1300 to i8
  store i8 %1312, i8* %30, align 1
  %1313 = lshr i32 %1297, 31
  %1314 = trunc i32 %1313 to i8
  store i8 %1314, i8* %33, align 1
  %1315 = lshr i32 %1296, 31
  %1316 = xor i32 %1313, %1315
  %1317 = add nuw nsw i32 %1316, %1313
  %1318 = icmp eq i32 %1317, 2
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %39, align 1
  %1320 = sext i32 %1297 to i64
  store i64 %1320, i64* %RSI.i1794, align 8
  %1321 = shl nsw i64 %1320, 3
  %1322 = add i64 %1292, %1321
  %1323 = add i64 %1289, 18
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1326 = add i64 %1289, 22
  store i64 %1326, i64* %3, align 8
  %1327 = load i64, i64* %1291, align 8
  store i64 %1327, i64* %RDX.i1791, align 8
  %1328 = add i64 %1289, 25
  store i64 %1328, i64* %3, align 8
  %1329 = load i32, i32* %1295, align 4
  %1330 = add i32 %1329, 3
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RCX.i1272, align 8
  %1332 = icmp ugt i32 %1329, -4
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %14, align 1
  %1334 = and i32 %1330, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %21, align 1
  %1339 = xor i32 %1330, %1329
  %1340 = lshr i32 %1339, 4
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  store i8 %1342, i8* %27, align 1
  %1343 = icmp eq i32 %1330, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %30, align 1
  %1345 = lshr i32 %1330, 31
  %1346 = trunc i32 %1345 to i8
  store i8 %1346, i8* %33, align 1
  %1347 = lshr i32 %1329, 31
  %1348 = xor i32 %1345, %1347
  %1349 = add nuw nsw i32 %1348, %1345
  %1350 = icmp eq i32 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %39, align 1
  %1352 = sext i32 %1330 to i64
  store i64 %1352, i64* %RSI.i1794, align 8
  %1353 = shl nsw i64 %1352, 3
  %1354 = add i64 %1327, %1353
  %1355 = add i64 %1289, 36
  store i64 %1355, i64* %3, align 8
  %1356 = bitcast i64 %1325 to double
  %1357 = inttoptr i64 %1354 to double*
  %1358 = load double, double* %1357, align 8
  %1359 = fsub double %1356, %1358
  store double %1359, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -120
  %1362 = add i64 %1289, 41
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to double*
  store double %1359, double* %1363, align 8
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -16
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RDX.i1791, align 8
  %1370 = add i64 %1364, -28
  %1371 = add i64 %1366, 7
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = add i32 %1373, 4
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RCX.i1272, align 8
  %1376 = icmp ugt i32 %1373, -5
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %14, align 1
  %1378 = and i32 %1374, 255
  %1379 = tail call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %21, align 1
  %1383 = xor i32 %1374, %1373
  %1384 = lshr i32 %1383, 4
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  store i8 %1386, i8* %27, align 1
  %1387 = icmp eq i32 %1374, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %30, align 1
  %1389 = lshr i32 %1374, 31
  %1390 = trunc i32 %1389 to i8
  store i8 %1390, i8* %33, align 1
  %1391 = lshr i32 %1373, 31
  %1392 = xor i32 %1389, %1391
  %1393 = add nuw nsw i32 %1392, %1389
  %1394 = icmp eq i32 %1393, 2
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %39, align 1
  %1396 = sext i32 %1374 to i64
  store i64 %1396, i64* %RSI.i1794, align 8
  %1397 = shl nsw i64 %1396, 3
  %1398 = add i64 %1369, %1397
  %1399 = add i64 %1366, 18
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i64*
  %1401 = load i64, i64* %1400, align 8
  store i64 %1401, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1402 = add i64 %1366, 22
  store i64 %1402, i64* %3, align 8
  %1403 = load i64, i64* %1368, align 8
  store i64 %1403, i64* %RDX.i1791, align 8
  %1404 = add i64 %1366, 25
  store i64 %1404, i64* %3, align 8
  %1405 = load i32, i32* %1372, align 4
  %1406 = add i32 %1405, 6
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i1272, align 8
  %1408 = icmp ugt i32 %1405, -7
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = and i32 %1406, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %21, align 1
  %1415 = xor i32 %1406, %1405
  %1416 = lshr i32 %1415, 4
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %27, align 1
  %1419 = icmp eq i32 %1406, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %30, align 1
  %1421 = lshr i32 %1406, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %33, align 1
  %1423 = lshr i32 %1405, 31
  %1424 = xor i32 %1421, %1423
  %1425 = add nuw nsw i32 %1424, %1421
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %39, align 1
  %1428 = sext i32 %1406 to i64
  store i64 %1428, i64* %RSI.i1794, align 8
  %1429 = shl nsw i64 %1428, 3
  %1430 = add i64 %1403, %1429
  %1431 = add i64 %1366, 36
  store i64 %1431, i64* %3, align 8
  %1432 = bitcast i64 %1401 to double
  %1433 = inttoptr i64 %1430 to double*
  %1434 = load double, double* %1433, align 8
  %1435 = fadd double %1432, %1434
  store double %1435, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1436 = load i64, i64* %RBP.i, align 8
  %1437 = add i64 %1436, -128
  %1438 = add i64 %1366, 41
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to double*
  store double %1435, double* %1439, align 8
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -16
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1441 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %RDX.i1791, align 8
  %1446 = add i64 %1440, -28
  %1447 = add i64 %1442, 7
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = add i32 %1449, 5
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RCX.i1272, align 8
  %1452 = icmp ugt i32 %1449, -6
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %14, align 1
  %1454 = and i32 %1450, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %21, align 1
  %1459 = xor i32 %1450, %1449
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %27, align 1
  %1463 = icmp eq i32 %1450, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %30, align 1
  %1465 = lshr i32 %1450, 31
  %1466 = trunc i32 %1465 to i8
  store i8 %1466, i8* %33, align 1
  %1467 = lshr i32 %1449, 31
  %1468 = xor i32 %1465, %1467
  %1469 = add nuw nsw i32 %1468, %1465
  %1470 = icmp eq i32 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %39, align 1
  %1472 = sext i32 %1450 to i64
  store i64 %1472, i64* %RSI.i1794, align 8
  %1473 = shl nsw i64 %1472, 3
  %1474 = add i64 %1445, %1473
  %1475 = add i64 %1442, 18
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1478 = add i64 %1442, 22
  store i64 %1478, i64* %3, align 8
  %1479 = load i64, i64* %1444, align 8
  store i64 %1479, i64* %RDX.i1791, align 8
  %1480 = add i64 %1442, 25
  store i64 %1480, i64* %3, align 8
  %1481 = load i32, i32* %1448, align 4
  %1482 = add i32 %1481, 7
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RCX.i1272, align 8
  %1484 = icmp ugt i32 %1481, -8
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %14, align 1
  %1486 = and i32 %1482, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %21, align 1
  %1491 = xor i32 %1482, %1481
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  store i8 %1494, i8* %27, align 1
  %1495 = icmp eq i32 %1482, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %30, align 1
  %1497 = lshr i32 %1482, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %33, align 1
  %1499 = lshr i32 %1481, 31
  %1500 = xor i32 %1497, %1499
  %1501 = add nuw nsw i32 %1500, %1497
  %1502 = icmp eq i32 %1501, 2
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %39, align 1
  %1504 = sext i32 %1482 to i64
  store i64 %1504, i64* %RSI.i1794, align 8
  %1505 = shl nsw i64 %1504, 3
  %1506 = add i64 %1479, %1505
  %1507 = add i64 %1442, 36
  store i64 %1507, i64* %3, align 8
  %1508 = bitcast i64 %1477 to double
  %1509 = inttoptr i64 %1506 to double*
  %1510 = load double, double* %1509, align 8
  %1511 = fadd double %1508, %1510
  store double %1511, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1512 = load i64, i64* %RBP.i, align 8
  %1513 = add i64 %1512, -136
  %1514 = add i64 %1442, 44
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to double*
  store double %1511, double* %1515, align 8
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -16
  %1518 = load i64, i64* %3, align 8
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1517 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %RDX.i1791, align 8
  %1522 = add i64 %1516, -28
  %1523 = add i64 %1518, 7
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = add i32 %1525, 4
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RCX.i1272, align 8
  %1528 = icmp ugt i32 %1525, -5
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %14, align 1
  %1530 = and i32 %1526, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %21, align 1
  %1535 = xor i32 %1526, %1525
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  store i8 %1538, i8* %27, align 1
  %1539 = icmp eq i32 %1526, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %30, align 1
  %1541 = lshr i32 %1526, 31
  %1542 = trunc i32 %1541 to i8
  store i8 %1542, i8* %33, align 1
  %1543 = lshr i32 %1525, 31
  %1544 = xor i32 %1541, %1543
  %1545 = add nuw nsw i32 %1544, %1541
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %39, align 1
  %1548 = sext i32 %1526 to i64
  store i64 %1548, i64* %RSI.i1794, align 8
  %1549 = shl nsw i64 %1548, 3
  %1550 = add i64 %1521, %1549
  %1551 = add i64 %1518, 18
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i64*
  %1553 = load i64, i64* %1552, align 8
  store i64 %1553, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1554 = add i64 %1518, 22
  store i64 %1554, i64* %3, align 8
  %1555 = load i64, i64* %1520, align 8
  store i64 %1555, i64* %RDX.i1791, align 8
  %1556 = add i64 %1518, 25
  store i64 %1556, i64* %3, align 8
  %1557 = load i32, i32* %1524, align 4
  %1558 = add i32 %1557, 6
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RCX.i1272, align 8
  %1560 = icmp ugt i32 %1557, -7
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %14, align 1
  %1562 = and i32 %1558, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %21, align 1
  %1567 = xor i32 %1558, %1557
  %1568 = lshr i32 %1567, 4
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %27, align 1
  %1571 = icmp eq i32 %1558, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %30, align 1
  %1573 = lshr i32 %1558, 31
  %1574 = trunc i32 %1573 to i8
  store i8 %1574, i8* %33, align 1
  %1575 = lshr i32 %1557, 31
  %1576 = xor i32 %1573, %1575
  %1577 = add nuw nsw i32 %1576, %1573
  %1578 = icmp eq i32 %1577, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %39, align 1
  %1580 = sext i32 %1558 to i64
  store i64 %1580, i64* %RSI.i1794, align 8
  %1581 = shl nsw i64 %1580, 3
  %1582 = add i64 %1555, %1581
  %1583 = add i64 %1518, 36
  store i64 %1583, i64* %3, align 8
  %1584 = bitcast i64 %1553 to double
  %1585 = inttoptr i64 %1582 to double*
  %1586 = load double, double* %1585, align 8
  %1587 = fsub double %1584, %1586
  store double %1587, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1588 = load i64, i64* %RBP.i, align 8
  %1589 = add i64 %1588, -144
  %1590 = add i64 %1518, 44
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to double*
  store double %1587, double* %1591, align 8
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -16
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1593 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RDX.i1791, align 8
  %1598 = add i64 %1592, -28
  %1599 = add i64 %1594, 7
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = add i32 %1601, 5
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RCX.i1272, align 8
  %1604 = icmp ugt i32 %1601, -6
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %14, align 1
  %1606 = and i32 %1602, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %21, align 1
  %1611 = xor i32 %1602, %1601
  %1612 = lshr i32 %1611, 4
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %27, align 1
  %1615 = icmp eq i32 %1602, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %30, align 1
  %1617 = lshr i32 %1602, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %33, align 1
  %1619 = lshr i32 %1601, 31
  %1620 = xor i32 %1617, %1619
  %1621 = add nuw nsw i32 %1620, %1617
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %39, align 1
  %1624 = sext i32 %1602 to i64
  store i64 %1624, i64* %RSI.i1794, align 8
  %1625 = shl nsw i64 %1624, 3
  %1626 = add i64 %1597, %1625
  %1627 = add i64 %1594, 18
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1630 = add i64 %1594, 22
  store i64 %1630, i64* %3, align 8
  %1631 = load i64, i64* %1596, align 8
  store i64 %1631, i64* %RDX.i1791, align 8
  %1632 = add i64 %1594, 25
  store i64 %1632, i64* %3, align 8
  %1633 = load i32, i32* %1600, align 4
  %1634 = add i32 %1633, 7
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RCX.i1272, align 8
  %1636 = icmp ugt i32 %1633, -8
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %14, align 1
  %1638 = and i32 %1634, 255
  %1639 = tail call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  store i8 %1642, i8* %21, align 1
  %1643 = xor i32 %1634, %1633
  %1644 = lshr i32 %1643, 4
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  store i8 %1646, i8* %27, align 1
  %1647 = icmp eq i32 %1634, 0
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %30, align 1
  %1649 = lshr i32 %1634, 31
  %1650 = trunc i32 %1649 to i8
  store i8 %1650, i8* %33, align 1
  %1651 = lshr i32 %1633, 31
  %1652 = xor i32 %1649, %1651
  %1653 = add nuw nsw i32 %1652, %1649
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %39, align 1
  %1656 = sext i32 %1634 to i64
  store i64 %1656, i64* %RSI.i1794, align 8
  %1657 = shl nsw i64 %1656, 3
  %1658 = add i64 %1631, %1657
  %1659 = add i64 %1594, 36
  store i64 %1659, i64* %3, align 8
  %1660 = bitcast i64 %1629 to double
  %1661 = inttoptr i64 %1658 to double*
  %1662 = load double, double* %1661, align 8
  %1663 = fsub double %1660, %1662
  store double %1663, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -152
  %1666 = add i64 %1594, 44
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to double*
  store double %1663, double* %1667, align 8
  %1668 = load i64, i64* %RBP.i, align 8
  %1669 = add i64 %1668, -96
  %1670 = load i64, i64* %3, align 8
  %1671 = add i64 %1670, 5
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1669 to i64*
  %1673 = load i64, i64* %1672, align 8
  store i64 %1673, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1674 = add i64 %1668, -128
  %1675 = add i64 %1670, 10
  store i64 %1675, i64* %3, align 8
  %1676 = bitcast i64 %1673 to double
  %1677 = inttoptr i64 %1674 to double*
  %1678 = load double, double* %1677, align 8
  %1679 = fadd double %1676, %1678
  store double %1679, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1680 = add i64 %1668, -16
  %1681 = add i64 %1670, 14
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %RDX.i1791, align 8
  %1684 = add i64 %1668, -28
  %1685 = add i64 %1670, 18
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = sext i32 %1687 to i64
  store i64 %1688, i64* %RSI.i1794, align 8
  %1689 = shl nsw i64 %1688, 3
  %1690 = add i64 %1689, %1683
  %1691 = add i64 %1670, 23
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to double*
  store double %1679, double* %1692, align 8
  %1693 = load i64, i64* %RBP.i, align 8
  %1694 = add i64 %1693, -104
  %1695 = load i64, i64* %3, align 8
  %1696 = add i64 %1695, 5
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1694 to i64*
  %1698 = load i64, i64* %1697, align 8
  store i64 %1698, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1699 = add i64 %1693, -136
  %1700 = add i64 %1695, 13
  store i64 %1700, i64* %3, align 8
  %1701 = bitcast i64 %1698 to double
  %1702 = inttoptr i64 %1699 to double*
  %1703 = load double, double* %1702, align 8
  %1704 = fadd double %1701, %1703
  store double %1704, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1705 = add i64 %1693, -16
  %1706 = add i64 %1695, 17
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i64*
  %1708 = load i64, i64* %1707, align 8
  store i64 %1708, i64* %RDX.i1791, align 8
  %1709 = add i64 %1693, -28
  %1710 = add i64 %1695, 20
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  %1713 = add i32 %1712, 1
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RCX.i1272, align 8
  %1715 = icmp eq i32 %1712, -1
  %1716 = icmp eq i32 %1713, 0
  %1717 = or i1 %1715, %1716
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %14, align 1
  %1719 = and i32 %1713, 255
  %1720 = tail call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  store i8 %1723, i8* %21, align 1
  %1724 = xor i32 %1713, %1712
  %1725 = lshr i32 %1724, 4
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  store i8 %1727, i8* %27, align 1
  %1728 = zext i1 %1716 to i8
  store i8 %1728, i8* %30, align 1
  %1729 = lshr i32 %1713, 31
  %1730 = trunc i32 %1729 to i8
  store i8 %1730, i8* %33, align 1
  %1731 = lshr i32 %1712, 31
  %1732 = xor i32 %1729, %1731
  %1733 = add nuw nsw i32 %1732, %1729
  %1734 = icmp eq i32 %1733, 2
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %39, align 1
  %1736 = sext i32 %1713 to i64
  store i64 %1736, i64* %RSI.i1794, align 8
  %1737 = shl nsw i64 %1736, 3
  %1738 = add i64 %1708, %1737
  %1739 = add i64 %1695, 31
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to double*
  store double %1704, double* %1740, align 8
  %1741 = load i64, i64* %RBP.i, align 8
  %1742 = add i64 %1741, -128
  %1743 = load i64, i64* %3, align 8
  %1744 = add i64 %1743, 5
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1742 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1747 = add i64 %1741, -96
  %1748 = add i64 %1743, 10
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to double*
  %1750 = load double, double* %1749, align 8
  %1751 = bitcast i64 %1746 to double
  %1752 = fsub double %1750, %1751
  store double %1752, double* %823, align 1
  store i64 0, i64* %819, align 1
  %1753 = add i64 %1743, 19
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1747 to double*
  store double %1752, double* %1754, align 8
  %1755 = load i64, i64* %RBP.i, align 8
  %1756 = add i64 %1755, -136
  %1757 = load i64, i64* %3, align 8
  %1758 = add i64 %1757, 8
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1756 to i64*
  %1760 = load i64, i64* %1759, align 8
  store i64 %1760, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1761 = add i64 %1755, -104
  %1762 = add i64 %1757, 13
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to double*
  %1764 = load double, double* %1763, align 8
  %1765 = bitcast i64 %1760 to double
  %1766 = fsub double %1764, %1765
  store double %1766, double* %823, align 1
  store i64 0, i64* %819, align 1
  %1767 = add i64 %1757, 22
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1761 to double*
  store double %1766, double* %1768, align 8
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -64
  %1771 = load i64, i64* %3, align 8
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1775 = add i64 %1769, -96
  %1776 = add i64 %1771, 10
  store i64 %1776, i64* %3, align 8
  %1777 = bitcast i64 %1774 to double
  %1778 = inttoptr i64 %1775 to double*
  %1779 = load double, double* %1778, align 8
  %1780 = fmul double %1777, %1779
  store double %1780, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1781 = add i64 %1769, -72
  %1782 = add i64 %1771, 15
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i64*
  %1784 = load i64, i64* %1783, align 8
  store i64 %1784, i64* %830, align 1
  store double 0.000000e+00, double* %831, align 1
  %1785 = add i64 %1769, -104
  %1786 = add i64 %1771, 20
  store i64 %1786, i64* %3, align 8
  %1787 = bitcast i64 %1784 to double
  %1788 = inttoptr i64 %1785 to double*
  %1789 = load double, double* %1788, align 8
  %1790 = fmul double %1787, %1789
  store double %1790, double* %823, align 1
  store i64 0, i64* %819, align 1
  %1791 = fsub double %1780, %1790
  store double %1791, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1792 = add i64 %1769, -16
  %1793 = add i64 %1771, 28
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  store i64 %1795, i64* %RDX.i1791, align 8
  %1796 = add i64 %1769, -28
  %1797 = add i64 %1771, 31
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = add i32 %1799, 4
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RCX.i1272, align 8
  %1802 = icmp ugt i32 %1799, -5
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %14, align 1
  %1804 = and i32 %1800, 255
  %1805 = tail call i32 @llvm.ctpop.i32(i32 %1804)
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  store i8 %1808, i8* %21, align 1
  %1809 = xor i32 %1800, %1799
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %27, align 1
  %1813 = icmp eq i32 %1800, 0
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %30, align 1
  %1815 = lshr i32 %1800, 31
  %1816 = trunc i32 %1815 to i8
  store i8 %1816, i8* %33, align 1
  %1817 = lshr i32 %1799, 31
  %1818 = xor i32 %1815, %1817
  %1819 = add nuw nsw i32 %1818, %1815
  %1820 = icmp eq i32 %1819, 2
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %39, align 1
  %1822 = sext i32 %1800 to i64
  store i64 %1822, i64* %RSI.i1794, align 8
  %1823 = shl nsw i64 %1822, 3
  %1824 = add i64 %1795, %1823
  %1825 = add i64 %1771, 42
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to double*
  store double %1791, double* %1826, align 8
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -64
  %1829 = load i64, i64* %3, align 8
  %1830 = add i64 %1829, 5
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1828 to i64*
  %1832 = load i64, i64* %1831, align 8
  store i64 %1832, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1833 = add i64 %1827, -104
  %1834 = add i64 %1829, 10
  store i64 %1834, i64* %3, align 8
  %1835 = bitcast i64 %1832 to double
  %1836 = inttoptr i64 %1833 to double*
  %1837 = load double, double* %1836, align 8
  %1838 = fmul double %1835, %1837
  store double %1838, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1839 = add i64 %1827, -72
  %1840 = add i64 %1829, 15
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i64*
  %1842 = load i64, i64* %1841, align 8
  store i64 %1842, i64* %830, align 1
  store double 0.000000e+00, double* %831, align 1
  %1843 = add i64 %1827, -96
  %1844 = add i64 %1829, 20
  store i64 %1844, i64* %3, align 8
  %1845 = bitcast i64 %1842 to double
  %1846 = inttoptr i64 %1843 to double*
  %1847 = load double, double* %1846, align 8
  %1848 = fmul double %1845, %1847
  store double %1848, double* %823, align 1
  store i64 0, i64* %819, align 1
  %1849 = fadd double %1838, %1848
  store double %1849, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1850 = add i64 %1827, -16
  %1851 = add i64 %1829, 28
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i64*
  %1853 = load i64, i64* %1852, align 8
  store i64 %1853, i64* %RDX.i1791, align 8
  %1854 = add i64 %1827, -28
  %1855 = add i64 %1829, 31
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  %1858 = add i32 %1857, 5
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RCX.i1272, align 8
  %1860 = icmp ugt i32 %1857, -6
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %14, align 1
  %1862 = and i32 %1858, 255
  %1863 = tail call i32 @llvm.ctpop.i32(i32 %1862)
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  %1866 = xor i8 %1865, 1
  store i8 %1866, i8* %21, align 1
  %1867 = xor i32 %1858, %1857
  %1868 = lshr i32 %1867, 4
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  store i8 %1870, i8* %27, align 1
  %1871 = icmp eq i32 %1858, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %30, align 1
  %1873 = lshr i32 %1858, 31
  %1874 = trunc i32 %1873 to i8
  store i8 %1874, i8* %33, align 1
  %1875 = lshr i32 %1857, 31
  %1876 = xor i32 %1873, %1875
  %1877 = add nuw nsw i32 %1876, %1873
  %1878 = icmp eq i32 %1877, 2
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %39, align 1
  %1880 = sext i32 %1858 to i64
  store i64 %1880, i64* %RSI.i1794, align 8
  %1881 = shl nsw i64 %1880, 3
  %1882 = add i64 %1853, %1881
  %1883 = add i64 %1829, 42
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to double*
  store double %1849, double* %1884, align 8
  %1885 = load i64, i64* %RBP.i, align 8
  %1886 = add i64 %1885, -112
  %1887 = load i64, i64* %3, align 8
  %1888 = add i64 %1887, 5
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1886 to i64*
  %1890 = load i64, i64* %1889, align 8
  store i64 %1890, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1891 = add i64 %1885, -152
  %1892 = add i64 %1887, 13
  store i64 %1892, i64* %3, align 8
  %1893 = bitcast i64 %1890 to double
  %1894 = inttoptr i64 %1891 to double*
  %1895 = load double, double* %1894, align 8
  %1896 = fsub double %1893, %1895
  store double %1896, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1897 = add i64 %1885, -96
  %1898 = add i64 %1887, 18
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to double*
  store double %1896, double* %1899, align 8
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -120
  %1902 = load i64, i64* %3, align 8
  %1903 = add i64 %1902, 5
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1901 to i64*
  %1905 = load i64, i64* %1904, align 8
  store i64 %1905, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1906 = add i64 %1900, -144
  %1907 = add i64 %1902, 13
  store i64 %1907, i64* %3, align 8
  %1908 = bitcast i64 %1905 to double
  %1909 = inttoptr i64 %1906 to double*
  %1910 = load double, double* %1909, align 8
  %1911 = fadd double %1908, %1910
  store double %1911, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1912 = add i64 %1900, -104
  %1913 = add i64 %1902, 18
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to double*
  store double %1911, double* %1914, align 8
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -48
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 5
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1916 to i64*
  %1920 = load i64, i64* %1919, align 8
  store i64 %1920, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1921 = add i64 %1915, -96
  %1922 = add i64 %1917, 10
  store i64 %1922, i64* %3, align 8
  %1923 = bitcast i64 %1920 to double
  %1924 = inttoptr i64 %1921 to double*
  %1925 = load double, double* %1924, align 8
  %1926 = fmul double %1923, %1925
  store double %1926, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1927 = add i64 %1915, -56
  %1928 = add i64 %1917, 15
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i64*
  %1930 = load i64, i64* %1929, align 8
  store i64 %1930, i64* %830, align 1
  store double 0.000000e+00, double* %831, align 1
  %1931 = add i64 %1915, -104
  %1932 = add i64 %1917, 20
  store i64 %1932, i64* %3, align 8
  %1933 = bitcast i64 %1930 to double
  %1934 = inttoptr i64 %1931 to double*
  %1935 = load double, double* %1934, align 8
  %1936 = fmul double %1933, %1935
  store double %1936, double* %823, align 1
  store i64 0, i64* %819, align 1
  %1937 = fsub double %1926, %1936
  store double %1937, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1938 = add i64 %1915, -16
  %1939 = add i64 %1917, 28
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i64*
  %1941 = load i64, i64* %1940, align 8
  store i64 %1941, i64* %RDX.i1791, align 8
  %1942 = add i64 %1915, -28
  %1943 = add i64 %1917, 31
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = add i32 %1945, 2
  %1947 = zext i32 %1946 to i64
  store i64 %1947, i64* %RCX.i1272, align 8
  %1948 = icmp ugt i32 %1945, -3
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %14, align 1
  %1950 = and i32 %1946, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  %1955 = xor i32 %1946, %1945
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %27, align 1
  %1959 = icmp eq i32 %1946, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %30, align 1
  %1961 = lshr i32 %1946, 31
  %1962 = trunc i32 %1961 to i8
  store i8 %1962, i8* %33, align 1
  %1963 = lshr i32 %1945, 31
  %1964 = xor i32 %1961, %1963
  %1965 = add nuw nsw i32 %1964, %1961
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %39, align 1
  %1968 = sext i32 %1946 to i64
  store i64 %1968, i64* %RSI.i1794, align 8
  %1969 = shl nsw i64 %1968, 3
  %1970 = add i64 %1941, %1969
  %1971 = add i64 %1917, 42
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to double*
  store double %1937, double* %1972, align 8
  %1973 = load i64, i64* %RBP.i, align 8
  %1974 = add i64 %1973, -48
  %1975 = load i64, i64* %3, align 8
  %1976 = add i64 %1975, 5
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1974 to i64*
  %1978 = load i64, i64* %1977, align 8
  store i64 %1978, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %1979 = add i64 %1973, -104
  %1980 = add i64 %1975, 10
  store i64 %1980, i64* %3, align 8
  %1981 = bitcast i64 %1978 to double
  %1982 = inttoptr i64 %1979 to double*
  %1983 = load double, double* %1982, align 8
  %1984 = fmul double %1981, %1983
  store double %1984, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1985 = add i64 %1973, -56
  %1986 = add i64 %1975, 15
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i64*
  %1988 = load i64, i64* %1987, align 8
  store i64 %1988, i64* %830, align 1
  store double 0.000000e+00, double* %831, align 1
  %1989 = add i64 %1973, -96
  %1990 = add i64 %1975, 20
  store i64 %1990, i64* %3, align 8
  %1991 = bitcast i64 %1988 to double
  %1992 = inttoptr i64 %1989 to double*
  %1993 = load double, double* %1992, align 8
  %1994 = fmul double %1991, %1993
  store double %1994, double* %823, align 1
  store i64 0, i64* %819, align 1
  %1995 = fadd double %1984, %1994
  store double %1995, double* %678, align 1
  store i64 0, i64* %680, align 1
  %1996 = add i64 %1973, -16
  %1997 = add i64 %1975, 28
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i64*
  %1999 = load i64, i64* %1998, align 8
  store i64 %1999, i64* %RDX.i1791, align 8
  %2000 = add i64 %1973, -28
  %2001 = add i64 %1975, 31
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = add i32 %2003, 3
  %2005 = zext i32 %2004 to i64
  store i64 %2005, i64* %RCX.i1272, align 8
  %2006 = icmp ugt i32 %2003, -4
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %14, align 1
  %2008 = and i32 %2004, 255
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %21, align 1
  %2013 = xor i32 %2004, %2003
  %2014 = lshr i32 %2013, 4
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  store i8 %2016, i8* %27, align 1
  %2017 = icmp eq i32 %2004, 0
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %30, align 1
  %2019 = lshr i32 %2004, 31
  %2020 = trunc i32 %2019 to i8
  store i8 %2020, i8* %33, align 1
  %2021 = lshr i32 %2003, 31
  %2022 = xor i32 %2019, %2021
  %2023 = add nuw nsw i32 %2022, %2019
  %2024 = icmp eq i32 %2023, 2
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %39, align 1
  %2026 = sext i32 %2004 to i64
  store i64 %2026, i64* %RSI.i1794, align 8
  %2027 = shl nsw i64 %2026, 3
  %2028 = add i64 %1999, %2027
  %2029 = add i64 %1975, 42
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to double*
  store double %1995, double* %2030, align 8
  %2031 = load i64, i64* %RBP.i, align 8
  %2032 = add i64 %2031, -112
  %2033 = load i64, i64* %3, align 8
  %2034 = add i64 %2033, 5
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2032 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2037 = add i64 %2031, -152
  %2038 = add i64 %2033, 13
  store i64 %2038, i64* %3, align 8
  %2039 = bitcast i64 %2036 to double
  %2040 = inttoptr i64 %2037 to double*
  %2041 = load double, double* %2040, align 8
  %2042 = fadd double %2039, %2041
  store double %2042, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2043 = add i64 %2031, -96
  %2044 = add i64 %2033, 18
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to double*
  store double %2042, double* %2045, align 8
  %2046 = load i64, i64* %RBP.i, align 8
  %2047 = add i64 %2046, -120
  %2048 = load i64, i64* %3, align 8
  %2049 = add i64 %2048, 5
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2047 to i64*
  %2051 = load i64, i64* %2050, align 8
  store i64 %2051, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2052 = add i64 %2046, -144
  %2053 = add i64 %2048, 13
  store i64 %2053, i64* %3, align 8
  %2054 = bitcast i64 %2051 to double
  %2055 = inttoptr i64 %2052 to double*
  %2056 = load double, double* %2055, align 8
  %2057 = fsub double %2054, %2056
  store double %2057, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2058 = add i64 %2046, -104
  %2059 = add i64 %2048, 18
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to double*
  store double %2057, double* %2060, align 8
  %2061 = load i64, i64* %RBP.i, align 8
  %2062 = add i64 %2061, -80
  %2063 = load i64, i64* %3, align 8
  %2064 = add i64 %2063, 5
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2062 to i64*
  %2066 = load i64, i64* %2065, align 8
  store i64 %2066, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2067 = add i64 %2061, -96
  %2068 = add i64 %2063, 10
  store i64 %2068, i64* %3, align 8
  %2069 = bitcast i64 %2066 to double
  %2070 = inttoptr i64 %2067 to double*
  %2071 = load double, double* %2070, align 8
  %2072 = fmul double %2069, %2071
  store double %2072, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2073 = add i64 %2061, -88
  %2074 = add i64 %2063, 15
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i64*
  %2076 = load i64, i64* %2075, align 8
  store i64 %2076, i64* %830, align 1
  store double 0.000000e+00, double* %831, align 1
  %2077 = add i64 %2061, -104
  %2078 = add i64 %2063, 20
  store i64 %2078, i64* %3, align 8
  %2079 = bitcast i64 %2076 to double
  %2080 = inttoptr i64 %2077 to double*
  %2081 = load double, double* %2080, align 8
  %2082 = fmul double %2079, %2081
  store double %2082, double* %823, align 1
  store i64 0, i64* %819, align 1
  %2083 = fsub double %2072, %2082
  store double %2083, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2084 = add i64 %2061, -16
  %2085 = add i64 %2063, 28
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i64*
  %2087 = load i64, i64* %2086, align 8
  store i64 %2087, i64* %RDX.i1791, align 8
  %2088 = add i64 %2061, -28
  %2089 = add i64 %2063, 31
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = add i32 %2091, 6
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RCX.i1272, align 8
  %2094 = icmp ugt i32 %2091, -7
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %14, align 1
  %2096 = and i32 %2092, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %21, align 1
  %2101 = xor i32 %2092, %2091
  %2102 = lshr i32 %2101, 4
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  store i8 %2104, i8* %27, align 1
  %2105 = icmp eq i32 %2092, 0
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %30, align 1
  %2107 = lshr i32 %2092, 31
  %2108 = trunc i32 %2107 to i8
  store i8 %2108, i8* %33, align 1
  %2109 = lshr i32 %2091, 31
  %2110 = xor i32 %2107, %2109
  %2111 = add nuw nsw i32 %2110, %2107
  %2112 = icmp eq i32 %2111, 2
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %39, align 1
  %2114 = sext i32 %2092 to i64
  store i64 %2114, i64* %RSI.i1794, align 8
  %2115 = shl nsw i64 %2114, 3
  %2116 = add i64 %2087, %2115
  %2117 = add i64 %2063, 42
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to double*
  store double %2083, double* %2118, align 8
  %2119 = load i64, i64* %RBP.i, align 8
  %2120 = add i64 %2119, -80
  %2121 = load i64, i64* %3, align 8
  %2122 = add i64 %2121, 5
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2120 to i64*
  %2124 = load i64, i64* %2123, align 8
  store i64 %2124, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2125 = add i64 %2119, -104
  %2126 = add i64 %2121, 10
  store i64 %2126, i64* %3, align 8
  %2127 = bitcast i64 %2124 to double
  %2128 = inttoptr i64 %2125 to double*
  %2129 = load double, double* %2128, align 8
  %2130 = fmul double %2127, %2129
  store double %2130, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2131 = add i64 %2119, -88
  %2132 = add i64 %2121, 15
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %830, align 1
  store double 0.000000e+00, double* %831, align 1
  %2135 = add i64 %2119, -96
  %2136 = add i64 %2121, 20
  store i64 %2136, i64* %3, align 8
  %2137 = bitcast i64 %2134 to double
  %2138 = inttoptr i64 %2135 to double*
  %2139 = load double, double* %2138, align 8
  %2140 = fmul double %2137, %2139
  store double %2140, double* %823, align 1
  store i64 0, i64* %819, align 1
  %2141 = fadd double %2130, %2140
  store double %2141, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2142 = add i64 %2119, -16
  %2143 = add i64 %2121, 28
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i64*
  %2145 = load i64, i64* %2144, align 8
  store i64 %2145, i64* %RDX.i1791, align 8
  %2146 = add i64 %2119, -28
  %2147 = add i64 %2121, 31
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = add i32 %2149, 7
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RCX.i1272, align 8
  %2152 = icmp ugt i32 %2149, -8
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %14, align 1
  %2154 = and i32 %2150, 255
  %2155 = tail call i32 @llvm.ctpop.i32(i32 %2154)
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = xor i8 %2157, 1
  store i8 %2158, i8* %21, align 1
  %2159 = xor i32 %2150, %2149
  %2160 = lshr i32 %2159, 4
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  store i8 %2162, i8* %27, align 1
  %2163 = icmp eq i32 %2150, 0
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %30, align 1
  %2165 = lshr i32 %2150, 31
  %2166 = trunc i32 %2165 to i8
  store i8 %2166, i8* %33, align 1
  %2167 = lshr i32 %2149, 31
  %2168 = xor i32 %2165, %2167
  %2169 = add nuw nsw i32 %2168, %2165
  %2170 = icmp eq i32 %2169, 2
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %39, align 1
  %2172 = sext i32 %2150 to i64
  store i64 %2172, i64* %RSI.i1794, align 8
  %2173 = shl nsw i64 %2172, 3
  %2174 = add i64 %2145, %2173
  %2175 = add i64 %2121, 42
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to double*
  store double %2141, double* %2176, align 8
  %2177 = load i64, i64* %RBP.i, align 8
  %2178 = add i64 %2177, -24
  %2179 = load i64, i64* %3, align 8
  %2180 = add i64 %2179, 4
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2178 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RDX.i1791, align 8
  %2183 = add i64 %2177, -36
  %2184 = add i64 %2179, 7
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = add i32 %2186, 2
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RCX.i1272, align 8
  %2189 = icmp ugt i32 %2186, -3
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %14, align 1
  %2191 = and i32 %2187, 255
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %21, align 1
  %2196 = xor i32 %2187, %2186
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %27, align 1
  %2200 = icmp eq i32 %2187, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %30, align 1
  %2202 = lshr i32 %2187, 31
  %2203 = trunc i32 %2202 to i8
  store i8 %2203, i8* %33, align 1
  %2204 = lshr i32 %2186, 31
  %2205 = xor i32 %2202, %2204
  %2206 = add nuw nsw i32 %2205, %2202
  %2207 = icmp eq i32 %2206, 2
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %39, align 1
  %2209 = sext i32 %2187 to i64
  store i64 %2209, i64* %RSI.i1794, align 8
  %2210 = shl nsw i64 %2209, 3
  %2211 = add i64 %2182, %2210
  %2212 = add i64 %2179, 18
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i64*
  %2214 = load i64, i64* %2213, align 8
  store i64 %2214, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2215 = add i64 %2177, -48
  %2216 = add i64 %2179, 23
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i64*
  store i64 %2214, i64* %2217, align 8
  %2218 = load i64, i64* %RBP.i, align 8
  %2219 = add i64 %2218, -24
  %2220 = load i64, i64* %3, align 8
  %2221 = add i64 %2220, 4
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2219 to i64*
  %2223 = load i64, i64* %2222, align 8
  store i64 %2223, i64* %RDX.i1791, align 8
  %2224 = add i64 %2218, -36
  %2225 = add i64 %2220, 7
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = add i32 %2227, 3
  %2229 = zext i32 %2228 to i64
  store i64 %2229, i64* %RCX.i1272, align 8
  %2230 = icmp ugt i32 %2227, -4
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %14, align 1
  %2232 = and i32 %2228, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %21, align 1
  %2237 = xor i32 %2228, %2227
  %2238 = lshr i32 %2237, 4
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  store i8 %2240, i8* %27, align 1
  %2241 = icmp eq i32 %2228, 0
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %30, align 1
  %2243 = lshr i32 %2228, 31
  %2244 = trunc i32 %2243 to i8
  store i8 %2244, i8* %33, align 1
  %2245 = lshr i32 %2227, 31
  %2246 = xor i32 %2243, %2245
  %2247 = add nuw nsw i32 %2246, %2243
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %39, align 1
  %2250 = sext i32 %2228 to i64
  store i64 %2250, i64* %RSI.i1794, align 8
  %2251 = shl nsw i64 %2250, 3
  %2252 = add i64 %2223, %2251
  %2253 = add i64 %2220, 18
  store i64 %2253, i64* %3, align 8
  %2254 = inttoptr i64 %2252 to i64*
  %2255 = load i64, i64* %2254, align 8
  store i64 %2255, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2256 = add i64 %2218, -56
  %2257 = add i64 %2220, 23
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i64*
  store i64 %2255, i64* %2258, align 8
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -48
  %2261 = load i64, i64* %3, align 8
  %2262 = add i64 %2261, 5
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2260 to i64*
  %2264 = load i64, i64* %2263, align 8
  store i64 %2264, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %2265 = load <2 x i32>, <2 x i32>* %814, align 1
  %2266 = load <2 x i32>, <2 x i32>* %815, align 1
  %2267 = extractelement <2 x i32> %2265, i32 0
  store i32 %2267, i32* %816, align 1
  %2268 = extractelement <2 x i32> %2265, i32 1
  store i32 %2268, i32* %818, align 1
  %2269 = extractelement <2 x i32> %2266, i32 0
  store i32 %2269, i32* %820, align 1
  %2270 = extractelement <2 x i32> %2266, i32 1
  store i32 %2270, i32* %822, align 1
  %2271 = add i64 %2259, -64
  %2272 = add i64 %2261, 13
  store i64 %2272, i64* %3, align 8
  %2273 = load double, double* %823, align 1
  %2274 = inttoptr i64 %2271 to double*
  %2275 = load double, double* %2274, align 8
  %2276 = fmul double %2273, %2275
  store double %2276, double* %823, align 1
  %2277 = add i64 %2259, -56
  %2278 = add i64 %2261, 18
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to double*
  %2280 = load double, double* %2279, align 8
  %2281 = fmul double %2276, %2280
  store double %2281, double* %823, align 1
  %2282 = bitcast i64 %2264 to double
  %2283 = fsub double %2282, %2281
  store double %2283, double* %678, align 1
  store i64 0, i64* %680, align 1
  %2284 = add i64 %2259, -80
  %2285 = add i64 %2261, 27
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to double*
  store double %2283, double* %2286, align 8
  %2287 = load i64, i64* %RBP.i, align 8
  %2288 = add i64 %2287, -64
  %2289 = load i64, i64* %3, align 8
  %2290 = add i64 %2289, 5
  store i64 %2290, i64* %3, align 8
  %2291 = load double, double* %67, align 1
  %2292 = inttoptr i64 %2288 to double*
  %2293 = load double, double* %2292, align 8
  %2294 = fmul double %2291, %2293
  store double %2294, double* %67, align 1
  %2295 = add i64 %2287, -48
  %2296 = add i64 %2289, 10
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to double*
  %2298 = load double, double* %2297, align 8
  %2299 = fmul double %2294, %2298
  store double %2299, double* %67, align 1
  %2300 = add i64 %2287, -56
  %2301 = add i64 %2289, 15
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to double*
  %2303 = load double, double* %2302, align 8
  %2304 = fsub double %2299, %2303
  store double %2304, double* %67, align 1
  %2305 = add i64 %2287, -88
  %2306 = add i64 %2289, 20
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to double*
  store double %2304, double* %2307, align 8
  %2308 = load i64, i64* %RBP.i, align 8
  %2309 = add i64 %2308, -16
  %2310 = load i64, i64* %3, align 8
  %2311 = add i64 %2310, 4
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2309 to i64*
  %2313 = load i64, i64* %2312, align 8
  store i64 %2313, i64* %RDX.i1791, align 8
  %2314 = add i64 %2308, -28
  %2315 = add i64 %2310, 7
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i32*
  %2317 = load i32, i32* %2316, align 4
  %2318 = add i32 %2317, 8
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RCX.i1272, align 8
  %2320 = icmp ugt i32 %2317, -9
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %14, align 1
  %2322 = and i32 %2318, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %21, align 1
  %2327 = xor i32 %2318, %2317
  %2328 = lshr i32 %2327, 4
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %27, align 1
  %2331 = icmp eq i32 %2318, 0
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %30, align 1
  %2333 = lshr i32 %2318, 31
  %2334 = trunc i32 %2333 to i8
  store i8 %2334, i8* %33, align 1
  %2335 = lshr i32 %2317, 31
  %2336 = xor i32 %2333, %2335
  %2337 = add nuw nsw i32 %2336, %2333
  %2338 = icmp eq i32 %2337, 2
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %39, align 1
  %2340 = sext i32 %2318 to i64
  store i64 %2340, i64* %RSI.i1794, align 8
  %2341 = shl nsw i64 %2340, 3
  %2342 = add i64 %2313, %2341
  %2343 = add i64 %2310, 18
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i64*
  %2345 = load i64, i64* %2344, align 8
  store i64 %2345, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2346 = add i64 %2310, 22
  store i64 %2346, i64* %3, align 8
  %2347 = load i64, i64* %2312, align 8
  store i64 %2347, i64* %RDX.i1791, align 8
  %2348 = add i64 %2310, 25
  store i64 %2348, i64* %3, align 8
  %2349 = load i32, i32* %2316, align 4
  %2350 = add i32 %2349, 10
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RCX.i1272, align 8
  %2352 = icmp ugt i32 %2349, -11
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %14, align 1
  %2354 = and i32 %2350, 255
  %2355 = tail call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  store i8 %2358, i8* %21, align 1
  %2359 = xor i32 %2350, %2349
  %2360 = lshr i32 %2359, 4
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  store i8 %2362, i8* %27, align 1
  %2363 = icmp eq i32 %2350, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %30, align 1
  %2365 = lshr i32 %2350, 31
  %2366 = trunc i32 %2365 to i8
  store i8 %2366, i8* %33, align 1
  %2367 = lshr i32 %2349, 31
  %2368 = xor i32 %2365, %2367
  %2369 = add nuw nsw i32 %2368, %2365
  %2370 = icmp eq i32 %2369, 2
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %39, align 1
  %2372 = sext i32 %2350 to i64
  store i64 %2372, i64* %RSI.i1794, align 8
  %2373 = shl nsw i64 %2372, 3
  %2374 = add i64 %2347, %2373
  %2375 = add i64 %2310, 36
  store i64 %2375, i64* %3, align 8
  %2376 = bitcast i64 %2345 to double
  %2377 = inttoptr i64 %2374 to double*
  %2378 = load double, double* %2377, align 8
  %2379 = fadd double %2376, %2378
  store double %2379, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -96
  %2382 = add i64 %2310, 41
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to double*
  store double %2379, double* %2383, align 8
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -16
  %2386 = load i64, i64* %3, align 8
  %2387 = add i64 %2386, 4
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2385 to i64*
  %2389 = load i64, i64* %2388, align 8
  store i64 %2389, i64* %RDX.i1791, align 8
  %2390 = add i64 %2384, -28
  %2391 = add i64 %2386, 7
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  %2394 = add i32 %2393, 9
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RCX.i1272, align 8
  %2396 = icmp ugt i32 %2393, -10
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %14, align 1
  %2398 = and i32 %2394, 255
  %2399 = tail call i32 @llvm.ctpop.i32(i32 %2398)
  %2400 = trunc i32 %2399 to i8
  %2401 = and i8 %2400, 1
  %2402 = xor i8 %2401, 1
  store i8 %2402, i8* %21, align 1
  %2403 = xor i32 %2394, %2393
  %2404 = lshr i32 %2403, 4
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  store i8 %2406, i8* %27, align 1
  %2407 = icmp eq i32 %2394, 0
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %30, align 1
  %2409 = lshr i32 %2394, 31
  %2410 = trunc i32 %2409 to i8
  store i8 %2410, i8* %33, align 1
  %2411 = lshr i32 %2393, 31
  %2412 = xor i32 %2409, %2411
  %2413 = add nuw nsw i32 %2412, %2409
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %39, align 1
  %2416 = sext i32 %2394 to i64
  store i64 %2416, i64* %RSI.i1794, align 8
  %2417 = shl nsw i64 %2416, 3
  %2418 = add i64 %2389, %2417
  %2419 = add i64 %2386, 18
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2422 = add i64 %2386, 22
  store i64 %2422, i64* %3, align 8
  %2423 = load i64, i64* %2388, align 8
  store i64 %2423, i64* %RDX.i1791, align 8
  %2424 = add i64 %2386, 25
  store i64 %2424, i64* %3, align 8
  %2425 = load i32, i32* %2392, align 4
  %2426 = add i32 %2425, 11
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %RCX.i1272, align 8
  %2428 = icmp ugt i32 %2425, -12
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %14, align 1
  %2430 = and i32 %2426, 255
  %2431 = tail call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  store i8 %2434, i8* %21, align 1
  %2435 = xor i32 %2426, %2425
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %27, align 1
  %2439 = icmp eq i32 %2426, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %30, align 1
  %2441 = lshr i32 %2426, 31
  %2442 = trunc i32 %2441 to i8
  store i8 %2442, i8* %33, align 1
  %2443 = lshr i32 %2425, 31
  %2444 = xor i32 %2441, %2443
  %2445 = add nuw nsw i32 %2444, %2441
  %2446 = icmp eq i32 %2445, 2
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %39, align 1
  %2448 = sext i32 %2426 to i64
  store i64 %2448, i64* %RSI.i1794, align 8
  %2449 = shl nsw i64 %2448, 3
  %2450 = add i64 %2423, %2449
  %2451 = add i64 %2386, 36
  store i64 %2451, i64* %3, align 8
  %2452 = bitcast i64 %2421 to double
  %2453 = inttoptr i64 %2450 to double*
  %2454 = load double, double* %2453, align 8
  %2455 = fadd double %2452, %2454
  store double %2455, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2456 = load i64, i64* %RBP.i, align 8
  %2457 = add i64 %2456, -104
  %2458 = add i64 %2386, 41
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to double*
  store double %2455, double* %2459, align 8
  %2460 = load i64, i64* %RBP.i, align 8
  %2461 = add i64 %2460, -16
  %2462 = load i64, i64* %3, align 8
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2461 to i64*
  %2465 = load i64, i64* %2464, align 8
  store i64 %2465, i64* %RDX.i1791, align 8
  %2466 = add i64 %2460, -28
  %2467 = add i64 %2462, 7
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = add i32 %2469, 8
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RCX.i1272, align 8
  %2472 = icmp ugt i32 %2469, -9
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %14, align 1
  %2474 = and i32 %2470, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %21, align 1
  %2479 = xor i32 %2470, %2469
  %2480 = lshr i32 %2479, 4
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  store i8 %2482, i8* %27, align 1
  %2483 = icmp eq i32 %2470, 0
  %2484 = zext i1 %2483 to i8
  store i8 %2484, i8* %30, align 1
  %2485 = lshr i32 %2470, 31
  %2486 = trunc i32 %2485 to i8
  store i8 %2486, i8* %33, align 1
  %2487 = lshr i32 %2469, 31
  %2488 = xor i32 %2485, %2487
  %2489 = add nuw nsw i32 %2488, %2485
  %2490 = icmp eq i32 %2489, 2
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %39, align 1
  %2492 = sext i32 %2470 to i64
  store i64 %2492, i64* %RSI.i1794, align 8
  %2493 = shl nsw i64 %2492, 3
  %2494 = add i64 %2465, %2493
  %2495 = add i64 %2462, 18
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i64*
  %2497 = load i64, i64* %2496, align 8
  store i64 %2497, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2498 = add i64 %2462, 22
  store i64 %2498, i64* %3, align 8
  %2499 = load i64, i64* %2464, align 8
  store i64 %2499, i64* %RDX.i1791, align 8
  %2500 = add i64 %2462, 25
  store i64 %2500, i64* %3, align 8
  %2501 = load i32, i32* %2468, align 4
  %2502 = add i32 %2501, 10
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RCX.i1272, align 8
  %2504 = icmp ugt i32 %2501, -11
  %2505 = zext i1 %2504 to i8
  store i8 %2505, i8* %14, align 1
  %2506 = and i32 %2502, 255
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %21, align 1
  %2511 = xor i32 %2502, %2501
  %2512 = lshr i32 %2511, 4
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  store i8 %2514, i8* %27, align 1
  %2515 = icmp eq i32 %2502, 0
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %30, align 1
  %2517 = lshr i32 %2502, 31
  %2518 = trunc i32 %2517 to i8
  store i8 %2518, i8* %33, align 1
  %2519 = lshr i32 %2501, 31
  %2520 = xor i32 %2517, %2519
  %2521 = add nuw nsw i32 %2520, %2517
  %2522 = icmp eq i32 %2521, 2
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %39, align 1
  %2524 = sext i32 %2502 to i64
  store i64 %2524, i64* %RSI.i1794, align 8
  %2525 = shl nsw i64 %2524, 3
  %2526 = add i64 %2499, %2525
  %2527 = add i64 %2462, 36
  store i64 %2527, i64* %3, align 8
  %2528 = bitcast i64 %2497 to double
  %2529 = inttoptr i64 %2526 to double*
  %2530 = load double, double* %2529, align 8
  %2531 = fsub double %2528, %2530
  store double %2531, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2532 = load i64, i64* %RBP.i, align 8
  %2533 = add i64 %2532, -112
  %2534 = add i64 %2462, 41
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to double*
  store double %2531, double* %2535, align 8
  %2536 = load i64, i64* %RBP.i, align 8
  %2537 = add i64 %2536, -16
  %2538 = load i64, i64* %3, align 8
  %2539 = add i64 %2538, 4
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2537 to i64*
  %2541 = load i64, i64* %2540, align 8
  store i64 %2541, i64* %RDX.i1791, align 8
  %2542 = add i64 %2536, -28
  %2543 = add i64 %2538, 7
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = add i32 %2545, 9
  %2547 = zext i32 %2546 to i64
  store i64 %2547, i64* %RCX.i1272, align 8
  %2548 = icmp ugt i32 %2545, -10
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %14, align 1
  %2550 = and i32 %2546, 255
  %2551 = tail call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %21, align 1
  %2555 = xor i32 %2546, %2545
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  store i8 %2558, i8* %27, align 1
  %2559 = icmp eq i32 %2546, 0
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %30, align 1
  %2561 = lshr i32 %2546, 31
  %2562 = trunc i32 %2561 to i8
  store i8 %2562, i8* %33, align 1
  %2563 = lshr i32 %2545, 31
  %2564 = xor i32 %2561, %2563
  %2565 = add nuw nsw i32 %2564, %2561
  %2566 = icmp eq i32 %2565, 2
  %2567 = zext i1 %2566 to i8
  store i8 %2567, i8* %39, align 1
  %2568 = sext i32 %2546 to i64
  store i64 %2568, i64* %RSI.i1794, align 8
  %2569 = shl nsw i64 %2568, 3
  %2570 = add i64 %2541, %2569
  %2571 = add i64 %2538, 18
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i64*
  %2573 = load i64, i64* %2572, align 8
  store i64 %2573, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2574 = add i64 %2538, 22
  store i64 %2574, i64* %3, align 8
  %2575 = load i64, i64* %2540, align 8
  store i64 %2575, i64* %RDX.i1791, align 8
  %2576 = add i64 %2538, 25
  store i64 %2576, i64* %3, align 8
  %2577 = load i32, i32* %2544, align 4
  %2578 = add i32 %2577, 11
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RCX.i1272, align 8
  %2580 = icmp ugt i32 %2577, -12
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %14, align 1
  %2582 = and i32 %2578, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %21, align 1
  %2587 = xor i32 %2578, %2577
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %27, align 1
  %2591 = icmp eq i32 %2578, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %30, align 1
  %2593 = lshr i32 %2578, 31
  %2594 = trunc i32 %2593 to i8
  store i8 %2594, i8* %33, align 1
  %2595 = lshr i32 %2577, 31
  %2596 = xor i32 %2593, %2595
  %2597 = add nuw nsw i32 %2596, %2593
  %2598 = icmp eq i32 %2597, 2
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %39, align 1
  %2600 = sext i32 %2578 to i64
  store i64 %2600, i64* %RSI.i1794, align 8
  %2601 = shl nsw i64 %2600, 3
  %2602 = add i64 %2575, %2601
  %2603 = add i64 %2538, 36
  store i64 %2603, i64* %3, align 8
  %2604 = bitcast i64 %2573 to double
  %2605 = inttoptr i64 %2602 to double*
  %2606 = load double, double* %2605, align 8
  %2607 = fsub double %2604, %2606
  store double %2607, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2608 = load i64, i64* %RBP.i, align 8
  %2609 = add i64 %2608, -120
  %2610 = add i64 %2538, 41
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to double*
  store double %2607, double* %2611, align 8
  %2612 = load i64, i64* %RBP.i, align 8
  %2613 = add i64 %2612, -16
  %2614 = load i64, i64* %3, align 8
  %2615 = add i64 %2614, 4
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2613 to i64*
  %2617 = load i64, i64* %2616, align 8
  store i64 %2617, i64* %RDX.i1791, align 8
  %2618 = add i64 %2612, -28
  %2619 = add i64 %2614, 7
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  %2621 = load i32, i32* %2620, align 4
  %2622 = add i32 %2621, 12
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RCX.i1272, align 8
  %2624 = icmp ugt i32 %2621, -13
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %14, align 1
  %2626 = and i32 %2622, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %21, align 1
  %2631 = xor i32 %2622, %2621
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %27, align 1
  %2635 = icmp eq i32 %2622, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %30, align 1
  %2637 = lshr i32 %2622, 31
  %2638 = trunc i32 %2637 to i8
  store i8 %2638, i8* %33, align 1
  %2639 = lshr i32 %2621, 31
  %2640 = xor i32 %2637, %2639
  %2641 = add nuw nsw i32 %2640, %2637
  %2642 = icmp eq i32 %2641, 2
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %39, align 1
  %2644 = sext i32 %2622 to i64
  store i64 %2644, i64* %RSI.i1794, align 8
  %2645 = shl nsw i64 %2644, 3
  %2646 = add i64 %2617, %2645
  %2647 = add i64 %2614, 18
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i64*
  %2649 = load i64, i64* %2648, align 8
  store i64 %2649, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2650 = add i64 %2614, 22
  store i64 %2650, i64* %3, align 8
  %2651 = load i64, i64* %2616, align 8
  store i64 %2651, i64* %RDX.i1791, align 8
  %2652 = add i64 %2614, 25
  store i64 %2652, i64* %3, align 8
  %2653 = load i32, i32* %2620, align 4
  %2654 = add i32 %2653, 14
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RCX.i1272, align 8
  %2656 = icmp ugt i32 %2653, -15
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %14, align 1
  %2658 = and i32 %2654, 255
  %2659 = tail call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  store i8 %2662, i8* %21, align 1
  %2663 = xor i32 %2654, %2653
  %2664 = lshr i32 %2663, 4
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  store i8 %2666, i8* %27, align 1
  %2667 = icmp eq i32 %2654, 0
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %30, align 1
  %2669 = lshr i32 %2654, 31
  %2670 = trunc i32 %2669 to i8
  store i8 %2670, i8* %33, align 1
  %2671 = lshr i32 %2653, 31
  %2672 = xor i32 %2669, %2671
  %2673 = add nuw nsw i32 %2672, %2669
  %2674 = icmp eq i32 %2673, 2
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %39, align 1
  %2676 = sext i32 %2654 to i64
  store i64 %2676, i64* %RSI.i1794, align 8
  %2677 = shl nsw i64 %2676, 3
  %2678 = add i64 %2651, %2677
  %2679 = add i64 %2614, 36
  store i64 %2679, i64* %3, align 8
  %2680 = bitcast i64 %2649 to double
  %2681 = inttoptr i64 %2678 to double*
  %2682 = load double, double* %2681, align 8
  %2683 = fadd double %2680, %2682
  store double %2683, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2684 = load i64, i64* %RBP.i, align 8
  %2685 = add i64 %2684, -128
  %2686 = add i64 %2614, 41
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to double*
  store double %2683, double* %2687, align 8
  %2688 = load i64, i64* %RBP.i, align 8
  %2689 = add i64 %2688, -16
  %2690 = load i64, i64* %3, align 8
  %2691 = add i64 %2690, 4
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2689 to i64*
  %2693 = load i64, i64* %2692, align 8
  store i64 %2693, i64* %RDX.i1791, align 8
  %2694 = add i64 %2688, -28
  %2695 = add i64 %2690, 7
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i32*
  %2697 = load i32, i32* %2696, align 4
  %2698 = add i32 %2697, 13
  %2699 = zext i32 %2698 to i64
  store i64 %2699, i64* %RCX.i1272, align 8
  %2700 = icmp ugt i32 %2697, -14
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %14, align 1
  %2702 = and i32 %2698, 255
  %2703 = tail call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  store i8 %2706, i8* %21, align 1
  %2707 = xor i32 %2698, %2697
  %2708 = lshr i32 %2707, 4
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  store i8 %2710, i8* %27, align 1
  %2711 = icmp eq i32 %2698, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %30, align 1
  %2713 = lshr i32 %2698, 31
  %2714 = trunc i32 %2713 to i8
  store i8 %2714, i8* %33, align 1
  %2715 = lshr i32 %2697, 31
  %2716 = xor i32 %2713, %2715
  %2717 = add nuw nsw i32 %2716, %2713
  %2718 = icmp eq i32 %2717, 2
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %39, align 1
  %2720 = sext i32 %2698 to i64
  store i64 %2720, i64* %RSI.i1794, align 8
  %2721 = shl nsw i64 %2720, 3
  %2722 = add i64 %2693, %2721
  %2723 = add i64 %2690, 18
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i64*
  %2725 = load i64, i64* %2724, align 8
  store i64 %2725, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2726 = add i64 %2690, 22
  store i64 %2726, i64* %3, align 8
  %2727 = load i64, i64* %2692, align 8
  store i64 %2727, i64* %RDX.i1791, align 8
  %2728 = add i64 %2690, 25
  store i64 %2728, i64* %3, align 8
  %2729 = load i32, i32* %2696, align 4
  %2730 = add i32 %2729, 15
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RCX.i1272, align 8
  %2732 = icmp ugt i32 %2729, -16
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %14, align 1
  %2734 = and i32 %2730, 255
  %2735 = tail call i32 @llvm.ctpop.i32(i32 %2734)
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = xor i8 %2737, 1
  store i8 %2738, i8* %21, align 1
  %2739 = xor i32 %2730, %2729
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  store i8 %2742, i8* %27, align 1
  %2743 = icmp eq i32 %2730, 0
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %30, align 1
  %2745 = lshr i32 %2730, 31
  %2746 = trunc i32 %2745 to i8
  store i8 %2746, i8* %33, align 1
  %2747 = lshr i32 %2729, 31
  %2748 = xor i32 %2745, %2747
  %2749 = add nuw nsw i32 %2748, %2745
  %2750 = icmp eq i32 %2749, 2
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %39, align 1
  %2752 = sext i32 %2730 to i64
  store i64 %2752, i64* %RSI.i1794, align 8
  %2753 = shl nsw i64 %2752, 3
  %2754 = add i64 %2727, %2753
  %2755 = add i64 %2690, 36
  store i64 %2755, i64* %3, align 8
  %2756 = bitcast i64 %2725 to double
  %2757 = inttoptr i64 %2754 to double*
  %2758 = load double, double* %2757, align 8
  %2759 = fadd double %2756, %2758
  store double %2759, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2760 = load i64, i64* %RBP.i, align 8
  %2761 = add i64 %2760, -136
  %2762 = add i64 %2690, 44
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to double*
  store double %2759, double* %2763, align 8
  %2764 = load i64, i64* %RBP.i, align 8
  %2765 = add i64 %2764, -16
  %2766 = load i64, i64* %3, align 8
  %2767 = add i64 %2766, 4
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2765 to i64*
  %2769 = load i64, i64* %2768, align 8
  store i64 %2769, i64* %RDX.i1791, align 8
  %2770 = add i64 %2764, -28
  %2771 = add i64 %2766, 7
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  %2773 = load i32, i32* %2772, align 4
  %2774 = add i32 %2773, 12
  %2775 = zext i32 %2774 to i64
  store i64 %2775, i64* %RCX.i1272, align 8
  %2776 = icmp ugt i32 %2773, -13
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %14, align 1
  %2778 = and i32 %2774, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %21, align 1
  %2783 = xor i32 %2774, %2773
  %2784 = lshr i32 %2783, 4
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %27, align 1
  %2787 = icmp eq i32 %2774, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %30, align 1
  %2789 = lshr i32 %2774, 31
  %2790 = trunc i32 %2789 to i8
  store i8 %2790, i8* %33, align 1
  %2791 = lshr i32 %2773, 31
  %2792 = xor i32 %2789, %2791
  %2793 = add nuw nsw i32 %2792, %2789
  %2794 = icmp eq i32 %2793, 2
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %39, align 1
  %2796 = sext i32 %2774 to i64
  store i64 %2796, i64* %RSI.i1794, align 8
  %2797 = shl nsw i64 %2796, 3
  %2798 = add i64 %2769, %2797
  %2799 = add i64 %2766, 18
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i64*
  %2801 = load i64, i64* %2800, align 8
  store i64 %2801, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2802 = add i64 %2766, 22
  store i64 %2802, i64* %3, align 8
  %2803 = load i64, i64* %2768, align 8
  store i64 %2803, i64* %RDX.i1791, align 8
  %2804 = add i64 %2766, 25
  store i64 %2804, i64* %3, align 8
  %2805 = load i32, i32* %2772, align 4
  %2806 = add i32 %2805, 14
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RCX.i1272, align 8
  %2808 = icmp ugt i32 %2805, -15
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %14, align 1
  %2810 = and i32 %2806, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %21, align 1
  %2815 = xor i32 %2806, %2805
  %2816 = lshr i32 %2815, 4
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  store i8 %2818, i8* %27, align 1
  %2819 = icmp eq i32 %2806, 0
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %30, align 1
  %2821 = lshr i32 %2806, 31
  %2822 = trunc i32 %2821 to i8
  store i8 %2822, i8* %33, align 1
  %2823 = lshr i32 %2805, 31
  %2824 = xor i32 %2821, %2823
  %2825 = add nuw nsw i32 %2824, %2821
  %2826 = icmp eq i32 %2825, 2
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %39, align 1
  %2828 = sext i32 %2806 to i64
  store i64 %2828, i64* %RSI.i1794, align 8
  %2829 = shl nsw i64 %2828, 3
  %2830 = add i64 %2803, %2829
  %2831 = add i64 %2766, 36
  store i64 %2831, i64* %3, align 8
  %2832 = bitcast i64 %2801 to double
  %2833 = inttoptr i64 %2830 to double*
  %2834 = load double, double* %2833, align 8
  %2835 = fsub double %2832, %2834
  store double %2835, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -144
  %2838 = add i64 %2766, 44
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to double*
  store double %2835, double* %2839, align 8
  %2840 = load i64, i64* %RBP.i, align 8
  %2841 = add i64 %2840, -16
  %2842 = load i64, i64* %3, align 8
  %2843 = add i64 %2842, 4
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2841 to i64*
  %2845 = load i64, i64* %2844, align 8
  store i64 %2845, i64* %RDX.i1791, align 8
  %2846 = add i64 %2840, -28
  %2847 = add i64 %2842, 7
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = add i32 %2849, 13
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RCX.i1272, align 8
  %2852 = icmp ugt i32 %2849, -14
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %14, align 1
  %2854 = and i32 %2850, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %21, align 1
  %2859 = xor i32 %2850, %2849
  %2860 = lshr i32 %2859, 4
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  store i8 %2862, i8* %27, align 1
  %2863 = icmp eq i32 %2850, 0
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %30, align 1
  %2865 = lshr i32 %2850, 31
  %2866 = trunc i32 %2865 to i8
  store i8 %2866, i8* %33, align 1
  %2867 = lshr i32 %2849, 31
  %2868 = xor i32 %2865, %2867
  %2869 = add nuw nsw i32 %2868, %2865
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %39, align 1
  %2872 = sext i32 %2850 to i64
  store i64 %2872, i64* %RSI.i1794, align 8
  %2873 = shl nsw i64 %2872, 3
  %2874 = add i64 %2845, %2873
  %2875 = add i64 %2842, 18
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  %2877 = load i64, i64* %2876, align 8
  store i64 %2877, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2878 = add i64 %2842, 22
  store i64 %2878, i64* %3, align 8
  %2879 = load i64, i64* %2844, align 8
  store i64 %2879, i64* %RDX.i1791, align 8
  %2880 = add i64 %2842, 25
  store i64 %2880, i64* %3, align 8
  %2881 = load i32, i32* %2848, align 4
  %2882 = add i32 %2881, 15
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RCX.i1272, align 8
  %2884 = icmp ugt i32 %2881, -16
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %14, align 1
  %2886 = and i32 %2882, 255
  %2887 = tail call i32 @llvm.ctpop.i32(i32 %2886)
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  %2890 = xor i8 %2889, 1
  store i8 %2890, i8* %21, align 1
  %2891 = xor i32 %2882, %2881
  %2892 = lshr i32 %2891, 4
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  store i8 %2894, i8* %27, align 1
  %2895 = icmp eq i32 %2882, 0
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %30, align 1
  %2897 = lshr i32 %2882, 31
  %2898 = trunc i32 %2897 to i8
  store i8 %2898, i8* %33, align 1
  %2899 = lshr i32 %2881, 31
  %2900 = xor i32 %2897, %2899
  %2901 = add nuw nsw i32 %2900, %2897
  %2902 = icmp eq i32 %2901, 2
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %39, align 1
  %2904 = sext i32 %2882 to i64
  store i64 %2904, i64* %RSI.i1794, align 8
  %2905 = shl nsw i64 %2904, 3
  %2906 = add i64 %2879, %2905
  %2907 = add i64 %2842, 36
  store i64 %2907, i64* %3, align 8
  %2908 = bitcast i64 %2877 to double
  %2909 = inttoptr i64 %2906 to double*
  %2910 = load double, double* %2909, align 8
  %2911 = fsub double %2908, %2910
  store double %2911, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2912 = load i64, i64* %RBP.i, align 8
  %2913 = add i64 %2912, -152
  %2914 = add i64 %2842, 44
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to double*
  store double %2911, double* %2915, align 8
  %2916 = load i64, i64* %RBP.i, align 8
  %2917 = add i64 %2916, -96
  %2918 = load i64, i64* %3, align 8
  %2919 = add i64 %2918, 5
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2917 to i64*
  %2921 = load i64, i64* %2920, align 8
  store i64 %2921, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2922 = add i64 %2916, -128
  %2923 = add i64 %2918, 10
  store i64 %2923, i64* %3, align 8
  %2924 = bitcast i64 %2921 to double
  %2925 = inttoptr i64 %2922 to double*
  %2926 = load double, double* %2925, align 8
  %2927 = fadd double %2924, %2926
  store double %2927, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2928 = add i64 %2916, -16
  %2929 = add i64 %2918, 14
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RDX.i1791, align 8
  %2932 = add i64 %2916, -28
  %2933 = add i64 %2918, 17
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = add i32 %2935, 8
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RCX.i1272, align 8
  %2938 = icmp ugt i32 %2935, -9
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %14, align 1
  %2940 = and i32 %2936, 255
  %2941 = tail call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  store i8 %2944, i8* %21, align 1
  %2945 = xor i32 %2936, %2935
  %2946 = lshr i32 %2945, 4
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  store i8 %2948, i8* %27, align 1
  %2949 = icmp eq i32 %2936, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %30, align 1
  %2951 = lshr i32 %2936, 31
  %2952 = trunc i32 %2951 to i8
  store i8 %2952, i8* %33, align 1
  %2953 = lshr i32 %2935, 31
  %2954 = xor i32 %2951, %2953
  %2955 = add nuw nsw i32 %2954, %2951
  %2956 = icmp eq i32 %2955, 2
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %39, align 1
  %2958 = sext i32 %2936 to i64
  store i64 %2958, i64* %RSI.i1794, align 8
  %2959 = shl nsw i64 %2958, 3
  %2960 = add i64 %2931, %2959
  %2961 = add i64 %2918, 28
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to double*
  store double %2927, double* %2962, align 8
  %2963 = load i64, i64* %RBP.i, align 8
  %2964 = add i64 %2963, -104
  %2965 = load i64, i64* %3, align 8
  %2966 = add i64 %2965, 5
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2964 to i64*
  %2968 = load i64, i64* %2967, align 8
  store i64 %2968, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %2969 = add i64 %2963, -136
  %2970 = add i64 %2965, 13
  store i64 %2970, i64* %3, align 8
  %2971 = bitcast i64 %2968 to double
  %2972 = inttoptr i64 %2969 to double*
  %2973 = load double, double* %2972, align 8
  %2974 = fadd double %2971, %2973
  store double %2974, double* %67, align 1
  store i64 0, i64* %69, align 1
  %2975 = add i64 %2963, -16
  %2976 = add i64 %2965, 17
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i64*
  %2978 = load i64, i64* %2977, align 8
  store i64 %2978, i64* %RDX.i1791, align 8
  %2979 = add i64 %2963, -28
  %2980 = add i64 %2965, 20
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  %2982 = load i32, i32* %2981, align 4
  %2983 = add i32 %2982, 9
  %2984 = zext i32 %2983 to i64
  store i64 %2984, i64* %RCX.i1272, align 8
  %2985 = icmp ugt i32 %2982, -10
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %14, align 1
  %2987 = and i32 %2983, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %21, align 1
  %2992 = xor i32 %2983, %2982
  %2993 = lshr i32 %2992, 4
  %2994 = trunc i32 %2993 to i8
  %2995 = and i8 %2994, 1
  store i8 %2995, i8* %27, align 1
  %2996 = icmp eq i32 %2983, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %30, align 1
  %2998 = lshr i32 %2983, 31
  %2999 = trunc i32 %2998 to i8
  store i8 %2999, i8* %33, align 1
  %3000 = lshr i32 %2982, 31
  %3001 = xor i32 %2998, %3000
  %3002 = add nuw nsw i32 %3001, %2998
  %3003 = icmp eq i32 %3002, 2
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %39, align 1
  %3005 = sext i32 %2983 to i64
  store i64 %3005, i64* %RSI.i1794, align 8
  %3006 = shl nsw i64 %3005, 3
  %3007 = add i64 %2978, %3006
  %3008 = add i64 %2965, 31
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to double*
  store double %2974, double* %3009, align 8
  %3010 = load i64, i64* %RBP.i, align 8
  %3011 = add i64 %3010, -128
  %3012 = load i64, i64* %3, align 8
  %3013 = add i64 %3012, 5
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3011 to i64*
  %3015 = load i64, i64* %3014, align 8
  store i64 %3015, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3016 = add i64 %3010, -96
  %3017 = add i64 %3012, 10
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to double*
  %3019 = load double, double* %3018, align 8
  %3020 = bitcast i64 %3015 to double
  %3021 = fsub double %3019, %3020
  store double %3021, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3022 = add i64 %3012, 19
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3016 to double*
  store double %3021, double* %3023, align 8
  %3024 = load i64, i64* %RBP.i, align 8
  %3025 = add i64 %3024, -136
  %3026 = load i64, i64* %3, align 8
  %3027 = add i64 %3026, 8
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3025 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3030 = add i64 %3024, -104
  %3031 = add i64 %3026, 13
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to double*
  %3033 = load double, double* %3032, align 8
  %3034 = bitcast i64 %3029 to double
  %3035 = fsub double %3033, %3034
  store double %3035, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3036 = add i64 %3026, 22
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3030 to double*
  store double %3035, double* %3037, align 8
  %3038 = load i64, i64* %RBP.i, align 8
  %3039 = add i64 %3038, -72
  %3040 = load i64, i64* %3, align 8
  %3041 = add i64 %3040, 5
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3039 to i64*
  %3043 = load i64, i64* %3042, align 8
  %3044 = load i64, i64* %RAX.i1283, align 8
  %3045 = xor i64 %3044, %3043
  store i64 %3045, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %3046 = trunc i64 %3045 to i32
  %3047 = and i32 %3046, 255
  %3048 = tail call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  store i8 %3051, i8* %21, align 1
  %3052 = icmp eq i64 %3045, 0
  %3053 = zext i1 %3052 to i8
  store i8 %3053, i8* %30, align 1
  %3054 = lshr i64 %3045, 63
  %3055 = trunc i64 %3054 to i8
  store i8 %3055, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %3045, i64* %68, align 1
  store i64 0, i64* %69, align 1
  %3056 = add i64 %3038, -96
  %3057 = add i64 %3040, 23
  store i64 %3057, i64* %3, align 8
  %.cast4 = bitcast i64 %3045 to double
  %3058 = inttoptr i64 %3056 to double*
  %3059 = load double, double* %3058, align 8
  %3060 = fmul double %.cast4, %3059
  store double %3060, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3061 = add i64 %3038, -64
  %3062 = add i64 %3040, 28
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3061 to i64*
  %3064 = load i64, i64* %3063, align 8
  store i64 %3064, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %3065 = add i64 %3038, -104
  %3066 = add i64 %3040, 33
  store i64 %3066, i64* %3, align 8
  %3067 = bitcast i64 %3064 to double
  %3068 = inttoptr i64 %3065 to double*
  %3069 = load double, double* %3068, align 8
  %3070 = fmul double %3067, %3069
  store double %3070, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3071 = fsub double %3060, %3070
  store double %3071, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3072 = add i64 %3038, -16
  %3073 = add i64 %3040, 41
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i64*
  %3075 = load i64, i64* %3074, align 8
  store i64 %3075, i64* %RDX.i1791, align 8
  %3076 = add i64 %3038, -28
  %3077 = add i64 %3040, 44
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = add i32 %3079, 12
  %3081 = zext i32 %3080 to i64
  store i64 %3081, i64* %RCX.i1272, align 8
  %3082 = icmp ugt i32 %3079, -13
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %14, align 1
  %3084 = and i32 %3080, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %21, align 1
  %3089 = xor i32 %3080, %3079
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %27, align 1
  %3093 = icmp eq i32 %3080, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %30, align 1
  %3095 = lshr i32 %3080, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %33, align 1
  %3097 = lshr i32 %3079, 31
  %3098 = xor i32 %3095, %3097
  %3099 = add nuw nsw i32 %3098, %3095
  %3100 = icmp eq i32 %3099, 2
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %39, align 1
  %3102 = sext i32 %3080 to i64
  store i64 %3102, i64* %RSI.i1794, align 8
  %3103 = shl nsw i64 %3102, 3
  %3104 = add i64 %3075, %3103
  %3105 = add i64 %3040, 55
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to double*
  store double %3071, double* %3106, align 8
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -72
  %3109 = load i64, i64* %3, align 8
  %3110 = add i64 %3109, 5
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3108 to i64*
  %3112 = load i64, i64* %3111, align 8
  %3113 = load i64, i64* %RAX.i1283, align 8
  %3114 = xor i64 %3113, %3112
  store i64 %3114, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %3115 = trunc i64 %3114 to i32
  %3116 = and i32 %3115, 255
  %3117 = tail call i32 @llvm.ctpop.i32(i32 %3116)
  %3118 = trunc i32 %3117 to i8
  %3119 = and i8 %3118, 1
  %3120 = xor i8 %3119, 1
  store i8 %3120, i8* %21, align 1
  %3121 = icmp eq i64 %3114, 0
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %30, align 1
  %3123 = lshr i64 %3114, 63
  %3124 = trunc i64 %3123 to i8
  store i8 %3124, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %3114, i64* %68, align 1
  store i64 0, i64* %69, align 1
  %3125 = add i64 %3107, -104
  %3126 = add i64 %3109, 23
  store i64 %3126, i64* %3, align 8
  %.cast5 = bitcast i64 %3114 to double
  %3127 = inttoptr i64 %3125 to double*
  %3128 = load double, double* %3127, align 8
  %3129 = fmul double %.cast5, %3128
  store double %3129, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3130 = add i64 %3107, -64
  %3131 = add i64 %3109, 28
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i64*
  %3133 = load i64, i64* %3132, align 8
  store i64 %3133, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %3134 = add i64 %3107, -96
  %3135 = add i64 %3109, 33
  store i64 %3135, i64* %3, align 8
  %3136 = bitcast i64 %3133 to double
  %3137 = inttoptr i64 %3134 to double*
  %3138 = load double, double* %3137, align 8
  %3139 = fmul double %3136, %3138
  store double %3139, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3140 = fadd double %3129, %3139
  store double %3140, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3141 = add i64 %3107, -16
  %3142 = add i64 %3109, 41
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i64*
  %3144 = load i64, i64* %3143, align 8
  store i64 %3144, i64* %RAX.i1283, align 8
  %3145 = add i64 %3107, -28
  %3146 = add i64 %3109, 44
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = add i32 %3148, 13
  %3150 = zext i32 %3149 to i64
  store i64 %3150, i64* %RCX.i1272, align 8
  %3151 = icmp ugt i32 %3148, -14
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %14, align 1
  %3153 = and i32 %3149, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153)
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %21, align 1
  %3158 = xor i32 %3149, %3148
  %3159 = lshr i32 %3158, 4
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  store i8 %3161, i8* %27, align 1
  %3162 = icmp eq i32 %3149, 0
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %30, align 1
  %3164 = lshr i32 %3149, 31
  %3165 = trunc i32 %3164 to i8
  store i8 %3165, i8* %33, align 1
  %3166 = lshr i32 %3148, 31
  %3167 = xor i32 %3164, %3166
  %3168 = add nuw nsw i32 %3167, %3164
  %3169 = icmp eq i32 %3168, 2
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %39, align 1
  %3171 = sext i32 %3149 to i64
  store i64 %3171, i64* %RDX.i1791, align 8
  %3172 = shl nsw i64 %3171, 3
  %3173 = add i64 %3144, %3172
  %3174 = add i64 %3109, 55
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to double*
  store double %3140, double* %3175, align 8
  %3176 = load i64, i64* %RBP.i, align 8
  %3177 = add i64 %3176, -112
  %3178 = load i64, i64* %3, align 8
  %3179 = add i64 %3178, 5
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3177 to i64*
  %3181 = load i64, i64* %3180, align 8
  store i64 %3181, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3182 = add i64 %3176, -152
  %3183 = add i64 %3178, 13
  store i64 %3183, i64* %3, align 8
  %3184 = bitcast i64 %3181 to double
  %3185 = inttoptr i64 %3182 to double*
  %3186 = load double, double* %3185, align 8
  %3187 = fsub double %3184, %3186
  store double %3187, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3188 = add i64 %3176, -96
  %3189 = add i64 %3178, 18
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to double*
  store double %3187, double* %3190, align 8
  %3191 = load i64, i64* %RBP.i, align 8
  %3192 = add i64 %3191, -120
  %3193 = load i64, i64* %3, align 8
  %3194 = add i64 %3193, 5
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3192 to i64*
  %3196 = load i64, i64* %3195, align 8
  store i64 %3196, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3197 = add i64 %3191, -144
  %3198 = add i64 %3193, 13
  store i64 %3198, i64* %3, align 8
  %3199 = bitcast i64 %3196 to double
  %3200 = inttoptr i64 %3197 to double*
  %3201 = load double, double* %3200, align 8
  %3202 = fadd double %3199, %3201
  store double %3202, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3203 = add i64 %3191, -104
  %3204 = add i64 %3193, 18
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to double*
  store double %3202, double* %3205, align 8
  %3206 = load i64, i64* %RBP.i, align 8
  %3207 = add i64 %3206, -48
  %3208 = load i64, i64* %3, align 8
  %3209 = add i64 %3208, 5
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3207 to i64*
  %3211 = load i64, i64* %3210, align 8
  store i64 %3211, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3212 = add i64 %3206, -96
  %3213 = add i64 %3208, 10
  store i64 %3213, i64* %3, align 8
  %3214 = bitcast i64 %3211 to double
  %3215 = inttoptr i64 %3212 to double*
  %3216 = load double, double* %3215, align 8
  %3217 = fmul double %3214, %3216
  store double %3217, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3218 = add i64 %3206, -56
  %3219 = add i64 %3208, 15
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i64*
  %3221 = load i64, i64* %3220, align 8
  store i64 %3221, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %3222 = add i64 %3206, -104
  %3223 = add i64 %3208, 20
  store i64 %3223, i64* %3, align 8
  %3224 = bitcast i64 %3221 to double
  %3225 = inttoptr i64 %3222 to double*
  %3226 = load double, double* %3225, align 8
  %3227 = fmul double %3224, %3226
  store double %3227, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3228 = fsub double %3217, %3227
  store double %3228, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3229 = add i64 %3206, -16
  %3230 = add i64 %3208, 28
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i64*
  %3232 = load i64, i64* %3231, align 8
  store i64 %3232, i64* %RAX.i1283, align 8
  %3233 = add i64 %3206, -28
  %3234 = add i64 %3208, 31
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  %3236 = load i32, i32* %3235, align 4
  %3237 = add i32 %3236, 10
  %3238 = zext i32 %3237 to i64
  store i64 %3238, i64* %RCX.i1272, align 8
  %3239 = icmp ugt i32 %3236, -11
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %14, align 1
  %3241 = and i32 %3237, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %21, align 1
  %3246 = xor i32 %3237, %3236
  %3247 = lshr i32 %3246, 4
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  store i8 %3249, i8* %27, align 1
  %3250 = icmp eq i32 %3237, 0
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %30, align 1
  %3252 = lshr i32 %3237, 31
  %3253 = trunc i32 %3252 to i8
  store i8 %3253, i8* %33, align 1
  %3254 = lshr i32 %3236, 31
  %3255 = xor i32 %3252, %3254
  %3256 = add nuw nsw i32 %3255, %3252
  %3257 = icmp eq i32 %3256, 2
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %39, align 1
  %3259 = sext i32 %3237 to i64
  store i64 %3259, i64* %RDX.i1791, align 8
  %3260 = shl nsw i64 %3259, 3
  %3261 = add i64 %3232, %3260
  %3262 = add i64 %3208, 42
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to double*
  store double %3228, double* %3263, align 8
  %3264 = load i64, i64* %RBP.i, align 8
  %3265 = add i64 %3264, -48
  %3266 = load i64, i64* %3, align 8
  %3267 = add i64 %3266, 5
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3265 to i64*
  %3269 = load i64, i64* %3268, align 8
  store i64 %3269, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3270 = add i64 %3264, -104
  %3271 = add i64 %3266, 10
  store i64 %3271, i64* %3, align 8
  %3272 = bitcast i64 %3269 to double
  %3273 = inttoptr i64 %3270 to double*
  %3274 = load double, double* %3273, align 8
  %3275 = fmul double %3272, %3274
  store double %3275, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3276 = add i64 %3264, -56
  %3277 = add i64 %3266, 15
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i64*
  %3279 = load i64, i64* %3278, align 8
  store i64 %3279, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %3280 = add i64 %3264, -96
  %3281 = add i64 %3266, 20
  store i64 %3281, i64* %3, align 8
  %3282 = bitcast i64 %3279 to double
  %3283 = inttoptr i64 %3280 to double*
  %3284 = load double, double* %3283, align 8
  %3285 = fmul double %3282, %3284
  store double %3285, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3286 = fadd double %3275, %3285
  store double %3286, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3287 = add i64 %3264, -16
  %3288 = add i64 %3266, 28
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i64*
  %3290 = load i64, i64* %3289, align 8
  store i64 %3290, i64* %RAX.i1283, align 8
  %3291 = add i64 %3264, -28
  %3292 = add i64 %3266, 31
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3291 to i32*
  %3294 = load i32, i32* %3293, align 4
  %3295 = add i32 %3294, 11
  %3296 = zext i32 %3295 to i64
  store i64 %3296, i64* %RCX.i1272, align 8
  %3297 = icmp ugt i32 %3294, -12
  %3298 = zext i1 %3297 to i8
  store i8 %3298, i8* %14, align 1
  %3299 = and i32 %3295, 255
  %3300 = tail call i32 @llvm.ctpop.i32(i32 %3299)
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  store i8 %3303, i8* %21, align 1
  %3304 = xor i32 %3295, %3294
  %3305 = lshr i32 %3304, 4
  %3306 = trunc i32 %3305 to i8
  %3307 = and i8 %3306, 1
  store i8 %3307, i8* %27, align 1
  %3308 = icmp eq i32 %3295, 0
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %30, align 1
  %3310 = lshr i32 %3295, 31
  %3311 = trunc i32 %3310 to i8
  store i8 %3311, i8* %33, align 1
  %3312 = lshr i32 %3294, 31
  %3313 = xor i32 %3310, %3312
  %3314 = add nuw nsw i32 %3313, %3310
  %3315 = icmp eq i32 %3314, 2
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %39, align 1
  %3317 = sext i32 %3295 to i64
  store i64 %3317, i64* %RDX.i1791, align 8
  %3318 = shl nsw i64 %3317, 3
  %3319 = add i64 %3290, %3318
  %3320 = add i64 %3266, 42
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to double*
  store double %3286, double* %3321, align 8
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -112
  %3324 = load i64, i64* %3, align 8
  %3325 = add i64 %3324, 5
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3323 to i64*
  %3327 = load i64, i64* %3326, align 8
  store i64 %3327, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3328 = add i64 %3322, -152
  %3329 = add i64 %3324, 13
  store i64 %3329, i64* %3, align 8
  %3330 = bitcast i64 %3327 to double
  %3331 = inttoptr i64 %3328 to double*
  %3332 = load double, double* %3331, align 8
  %3333 = fadd double %3330, %3332
  store double %3333, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3334 = add i64 %3322, -96
  %3335 = add i64 %3324, 18
  store i64 %3335, i64* %3, align 8
  %3336 = inttoptr i64 %3334 to double*
  store double %3333, double* %3336, align 8
  %3337 = load i64, i64* %RBP.i, align 8
  %3338 = add i64 %3337, -120
  %3339 = load i64, i64* %3, align 8
  %3340 = add i64 %3339, 5
  store i64 %3340, i64* %3, align 8
  %3341 = inttoptr i64 %3338 to i64*
  %3342 = load i64, i64* %3341, align 8
  store i64 %3342, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3343 = add i64 %3337, -144
  %3344 = add i64 %3339, 13
  store i64 %3344, i64* %3, align 8
  %3345 = bitcast i64 %3342 to double
  %3346 = inttoptr i64 %3343 to double*
  %3347 = load double, double* %3346, align 8
  %3348 = fsub double %3345, %3347
  store double %3348, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3349 = add i64 %3337, -104
  %3350 = add i64 %3339, 18
  store i64 %3350, i64* %3, align 8
  %3351 = inttoptr i64 %3349 to double*
  store double %3348, double* %3351, align 8
  %3352 = load i64, i64* %RBP.i, align 8
  %3353 = add i64 %3352, -80
  %3354 = load i64, i64* %3, align 8
  %3355 = add i64 %3354, 5
  store i64 %3355, i64* %3, align 8
  %3356 = inttoptr i64 %3353 to i64*
  %3357 = load i64, i64* %3356, align 8
  store i64 %3357, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3358 = add i64 %3352, -96
  %3359 = add i64 %3354, 10
  store i64 %3359, i64* %3, align 8
  %3360 = bitcast i64 %3357 to double
  %3361 = inttoptr i64 %3358 to double*
  %3362 = load double, double* %3361, align 8
  %3363 = fmul double %3360, %3362
  store double %3363, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3364 = add i64 %3352, -88
  %3365 = add i64 %3354, 15
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3364 to i64*
  %3367 = load i64, i64* %3366, align 8
  store i64 %3367, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %3368 = add i64 %3352, -104
  %3369 = add i64 %3354, 20
  store i64 %3369, i64* %3, align 8
  %3370 = bitcast i64 %3367 to double
  %3371 = inttoptr i64 %3368 to double*
  %3372 = load double, double* %3371, align 8
  %3373 = fmul double %3370, %3372
  store double %3373, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3374 = fsub double %3363, %3373
  store double %3374, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3375 = add i64 %3352, -16
  %3376 = add i64 %3354, 28
  store i64 %3376, i64* %3, align 8
  %3377 = inttoptr i64 %3375 to i64*
  %3378 = load i64, i64* %3377, align 8
  store i64 %3378, i64* %RAX.i1283, align 8
  %3379 = add i64 %3352, -28
  %3380 = add i64 %3354, 31
  store i64 %3380, i64* %3, align 8
  %3381 = inttoptr i64 %3379 to i32*
  %3382 = load i32, i32* %3381, align 4
  %3383 = add i32 %3382, 14
  %3384 = zext i32 %3383 to i64
  store i64 %3384, i64* %RCX.i1272, align 8
  %3385 = icmp ugt i32 %3382, -15
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %14, align 1
  %3387 = and i32 %3383, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %21, align 1
  %3392 = xor i32 %3383, %3382
  %3393 = lshr i32 %3392, 4
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  store i8 %3395, i8* %27, align 1
  %3396 = icmp eq i32 %3383, 0
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %30, align 1
  %3398 = lshr i32 %3383, 31
  %3399 = trunc i32 %3398 to i8
  store i8 %3399, i8* %33, align 1
  %3400 = lshr i32 %3382, 31
  %3401 = xor i32 %3398, %3400
  %3402 = add nuw nsw i32 %3401, %3398
  %3403 = icmp eq i32 %3402, 2
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %39, align 1
  %3405 = sext i32 %3383 to i64
  store i64 %3405, i64* %RDX.i1791, align 8
  %3406 = shl nsw i64 %3405, 3
  %3407 = add i64 %3378, %3406
  %3408 = add i64 %3354, 42
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to double*
  store double %3374, double* %3409, align 8
  %3410 = load i64, i64* %RBP.i, align 8
  %3411 = add i64 %3410, -80
  %3412 = load i64, i64* %3, align 8
  %3413 = add i64 %3412, 5
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3411 to i64*
  %3415 = load i64, i64* %3414, align 8
  store i64 %3415, i64* %68, align 1
  store double 0.000000e+00, double* %70, align 1
  %3416 = add i64 %3410, -104
  %3417 = add i64 %3412, 10
  store i64 %3417, i64* %3, align 8
  %3418 = bitcast i64 %3415 to double
  %3419 = inttoptr i64 %3416 to double*
  %3420 = load double, double* %3419, align 8
  %3421 = fmul double %3418, %3420
  store double %3421, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3422 = add i64 %3410, -88
  %3423 = add i64 %3412, 15
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i64*
  %3425 = load i64, i64* %3424, align 8
  store i64 %3425, i64* %679, align 1
  store double 0.000000e+00, double* %681, align 1
  %3426 = add i64 %3410, -96
  %3427 = add i64 %3412, 20
  store i64 %3427, i64* %3, align 8
  %3428 = bitcast i64 %3425 to double
  %3429 = inttoptr i64 %3426 to double*
  %3430 = load double, double* %3429, align 8
  %3431 = fmul double %3428, %3430
  store double %3431, double* %678, align 1
  store i64 0, i64* %680, align 1
  %3432 = fadd double %3421, %3431
  store double %3432, double* %67, align 1
  store i64 0, i64* %69, align 1
  %3433 = add i64 %3410, -16
  %3434 = add i64 %3412, 28
  store i64 %3434, i64* %3, align 8
  %3435 = inttoptr i64 %3433 to i64*
  %3436 = load i64, i64* %3435, align 8
  store i64 %3436, i64* %RAX.i1283, align 8
  %3437 = add i64 %3410, -28
  %3438 = add i64 %3412, 31
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3437 to i32*
  %3440 = load i32, i32* %3439, align 4
  %3441 = add i32 %3440, 15
  %3442 = zext i32 %3441 to i64
  store i64 %3442, i64* %RCX.i1272, align 8
  %3443 = icmp ugt i32 %3440, -16
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %14, align 1
  %3445 = and i32 %3441, 255
  %3446 = tail call i32 @llvm.ctpop.i32(i32 %3445)
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  %3449 = xor i8 %3448, 1
  store i8 %3449, i8* %21, align 1
  %3450 = xor i32 %3441, %3440
  %3451 = lshr i32 %3450, 4
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  store i8 %3453, i8* %27, align 1
  %3454 = icmp eq i32 %3441, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %30, align 1
  %3456 = lshr i32 %3441, 31
  %3457 = trunc i32 %3456 to i8
  store i8 %3457, i8* %33, align 1
  %3458 = lshr i32 %3440, 31
  %3459 = xor i32 %3456, %3458
  %3460 = add nuw nsw i32 %3459, %3456
  %3461 = icmp eq i32 %3460, 2
  %3462 = zext i1 %3461 to i8
  store i8 %3462, i8* %39, align 1
  %3463 = sext i32 %3441 to i64
  store i64 %3463, i64* %RDX.i1791, align 8
  %3464 = shl nsw i64 %3463, 3
  %3465 = add i64 %3436, %3464
  %3466 = add i64 %3412, 42
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to double*
  store double %3432, double* %3467, align 8
  %3468 = load i64, i64* %RBP.i, align 8
  %3469 = add i64 %3468, -28
  %3470 = load i64, i64* %3, align 8
  %3471 = add i64 %3470, 3
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3469 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = add i32 %3473, 16
  %3475 = zext i32 %3474 to i64
  store i64 %3475, i64* %RAX.i1283, align 8
  %3476 = icmp ugt i32 %3473, -17
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %14, align 1
  %3478 = and i32 %3474, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %21, align 1
  %3483 = xor i32 %3473, 16
  %3484 = xor i32 %3483, %3474
  %3485 = lshr i32 %3484, 4
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  store i8 %3487, i8* %27, align 1
  %3488 = icmp eq i32 %3474, 0
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %30, align 1
  %3490 = lshr i32 %3474, 31
  %3491 = trunc i32 %3490 to i8
  store i8 %3491, i8* %33, align 1
  %3492 = lshr i32 %3473, 31
  %3493 = xor i32 %3490, %3492
  %3494 = add nuw nsw i32 %3493, %3490
  %3495 = icmp eq i32 %3494, 2
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %39, align 1
  %3497 = add i64 %3470, 9
  store i64 %3497, i64* %3, align 8
  store i32 %3474, i32* %3472, align 4
  %3498 = load i64, i64* %3, align 8
  %3499 = add i64 %3498, -1815
  store i64 %3499, i64* %3, align 8
  br label %block_.L_402c02

block_.L_40331e:                                  ; preds = %block_.L_402c02
  %3500 = load i64, i64* %6, align 8
  %3501 = add i64 %3500, 24
  store i64 %3501, i64* %6, align 8
  %3502 = icmp ugt i64 %3500, -25
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %14, align 1
  %3504 = trunc i64 %3501 to i32
  %3505 = and i32 %3504, 255
  %3506 = tail call i32 @llvm.ctpop.i32(i32 %3505)
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = xor i8 %3508, 1
  store i8 %3509, i8* %21, align 1
  %3510 = xor i64 %3500, 16
  %3511 = xor i64 %3510, %3501
  %3512 = lshr i64 %3511, 4
  %3513 = trunc i64 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %27, align 1
  %3515 = icmp eq i64 %3501, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %30, align 1
  %3517 = lshr i64 %3501, 63
  %3518 = trunc i64 %3517 to i8
  store i8 %3518, i8* %33, align 1
  %3519 = lshr i64 %3500, 63
  %3520 = xor i64 %3517, %3519
  %3521 = add nuw nsw i64 %3520, %3517
  %3522 = icmp eq i64 %3521, 2
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %39, align 1
  %3524 = add i64 %869, 5
  store i64 %3524, i64* %3, align 8
  %3525 = add i64 %3500, 32
  %3526 = inttoptr i64 %3501 to i64*
  %3527 = load i64, i64* %3526, align 8
  store i64 %3527, i64* %RBP.i, align 8
  store i64 %3525, i64* %6, align 8
  %3528 = add i64 %869, 6
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3525 to i64*
  %3530 = load i64, i64* %3529, align 8
  store i64 %3530, i64* %3, align 8
  %3531 = add i64 %3500, 40
  store i64 %3531, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_subq__0x18___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -24
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 24
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd_0x8__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addsd_0x18__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x18__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x30__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd_0x28__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_addsd_0x38__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_subsd_0x30__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x38__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x20__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x28__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x30__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x38__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x50__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x48__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_addsd_0x58__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x50__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x58__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x70__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x68__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_addsd_0x78__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x70__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x78__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x40__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movsd__xmm0__0x48__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x60__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movsd__xmm0__0x68__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x50__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x58__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x70__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 112
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
define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x78__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 16, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jge_.L_40331e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x14d0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5336
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -7
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -6
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
define %struct.Memory* @routine_addl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -9
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
define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xa___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -11
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
define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x9___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 9
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -10
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
define %struct.Memory* @routine_addl__0xb___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -12
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
define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -13
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
define %struct.Memory* @routine_addl__0xe___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 14
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -15
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
define %struct.Memory* @routine_addl__0xd___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -14
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
define %struct.Memory* @routine_addl__0xf___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -16
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
define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RDX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_jmpq_.L_402c02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -25
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
