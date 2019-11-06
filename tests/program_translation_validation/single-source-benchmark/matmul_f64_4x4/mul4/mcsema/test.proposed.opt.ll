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
define %struct.Memory* @mul4(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %63 = inttoptr i64 %60 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = bitcast [32 x %union.VectorReg]* %61 to double*
  %66 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %64, i64* %66, align 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %68 = bitcast i64* %67 to double*
  store double 0.000000e+00, double* %68, align 1
  %69 = add i64 %55, -24
  %70 = add i64 %57, 12
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RDX.i995, align 8
  %73 = add i64 %57, 16
  store i64 %73, i64* %3, align 8
  %74 = bitcast i64 %64 to double
  %75 = inttoptr i64 %72 to double*
  %76 = load double, double* %75, align 8
  %77 = fmul double %74, %76
  store double %77, double* %65, align 1
  store i64 0, i64* %67, align 1
  %78 = add i64 %57, 20
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %59, align 8
  store i64 %79, i64* %RDX.i995, align 8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %81 = add i64 %79, 8
  %82 = add i64 %57, 25
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = bitcast %union.VectorReg* %80 to double*
  %86 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %80, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %84, i64* %86, align 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %88 = bitcast i64* %87 to double*
  store double 0.000000e+00, double* %88, align 1
  %89 = add i64 %57, 29
  store i64 %89, i64* %3, align 8
  %90 = load i64, i64* %71, align 8
  store i64 %90, i64* %RDX.i995, align 8
  %91 = add i64 %90, 32
  %92 = add i64 %57, 34
  store i64 %92, i64* %3, align 8
  %93 = bitcast i64 %84 to double
  %94 = inttoptr i64 %91 to double*
  %95 = load double, double* %94, align 8
  %96 = fmul double %93, %95
  store double %96, double* %85, align 1
  store i64 0, i64* %87, align 1
  %97 = fadd double %77, %96
  store double %97, double* %65, align 1
  store i64 0, i64* %67, align 1
  %98 = add i64 %57, 42
  store i64 %98, i64* %3, align 8
  %99 = load i64, i64* %59, align 8
  store i64 %99, i64* %RDX.i995, align 8
  %100 = add i64 %99, 16
  %101 = add i64 %57, 47
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %104 = add i64 %57, 51
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %71, align 8
  store i64 %105, i64* %RDX.i995, align 8
  %106 = add i64 %105, 64
  %107 = add i64 %57, 56
  store i64 %107, i64* %3, align 8
  %108 = bitcast i64 %103 to double
  %109 = inttoptr i64 %106 to double*
  %110 = load double, double* %109, align 8
  %111 = fmul double %108, %110
  store double %111, double* %85, align 1
  store i64 0, i64* %87, align 1
  %112 = fadd double %97, %111
  store double %112, double* %65, align 1
  store i64 0, i64* %67, align 1
  %113 = add i64 %57, 64
  store i64 %113, i64* %3, align 8
  %114 = load i64, i64* %59, align 8
  store i64 %114, i64* %RDX.i995, align 8
  %115 = add i64 %114, 24
  %116 = add i64 %57, 69
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -24
  %121 = add i64 %57, 73
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RDX.i995, align 8
  %124 = add i64 %123, 96
  %125 = add i64 %57, 78
  store i64 %125, i64* %3, align 8
  %126 = bitcast i64 %118 to double
  %127 = inttoptr i64 %124 to double*
  %128 = load double, double* %127, align 8
  %129 = fmul double %126, %128
  store double %129, double* %85, align 1
  store i64 0, i64* %87, align 1
  %130 = fadd double %112, %129
  store double %130, double* %65, align 1
  store i64 0, i64* %67, align 1
  %131 = add i64 %119, -160
  %132 = add i64 %57, 90
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to double*
  store double %130, double* %133, align 8
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -16
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RDX.i995, align 8
  %140 = add i64 %136, 8
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %143 = add i64 %134, -24
  %144 = add i64 %136, 12
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RDX.i995, align 8
  %147 = add i64 %146, 8
  %148 = add i64 %136, 17
  store i64 %148, i64* %3, align 8
  %149 = bitcast i64 %142 to double
  %150 = inttoptr i64 %147 to double*
  %151 = load double, double* %150, align 8
  %152 = fmul double %149, %151
  store double %152, double* %65, align 1
  store i64 0, i64* %67, align 1
  %153 = add i64 %136, 21
  store i64 %153, i64* %3, align 8
  %154 = load i64, i64* %138, align 8
  store i64 %154, i64* %RDX.i995, align 8
  %155 = add i64 %154, 8
  %156 = add i64 %136, 26
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %159 = add i64 %136, 30
  store i64 %159, i64* %3, align 8
  %160 = load i64, i64* %145, align 8
  store i64 %160, i64* %RDX.i995, align 8
  %161 = add i64 %160, 40
  %162 = add i64 %136, 35
  store i64 %162, i64* %3, align 8
  %163 = bitcast i64 %158 to double
  %164 = inttoptr i64 %161 to double*
  %165 = load double, double* %164, align 8
  %166 = fmul double %163, %165
  store double %166, double* %85, align 1
  store i64 0, i64* %87, align 1
  %167 = fadd double %152, %166
  store double %167, double* %65, align 1
  store i64 0, i64* %67, align 1
  %168 = add i64 %136, 43
  store i64 %168, i64* %3, align 8
  %169 = load i64, i64* %138, align 8
  store i64 %169, i64* %RDX.i995, align 8
  %170 = add i64 %169, 16
  %171 = add i64 %136, 48
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %174 = add i64 %136, 52
  store i64 %174, i64* %3, align 8
  %175 = load i64, i64* %145, align 8
  store i64 %175, i64* %RDX.i995, align 8
  %176 = add i64 %175, 72
  %177 = add i64 %136, 57
  store i64 %177, i64* %3, align 8
  %178 = bitcast i64 %173 to double
  %179 = inttoptr i64 %176 to double*
  %180 = load double, double* %179, align 8
  %181 = fmul double %178, %180
  store double %181, double* %85, align 1
  store i64 0, i64* %87, align 1
  %182 = fadd double %167, %181
  store double %182, double* %65, align 1
  store i64 0, i64* %67, align 1
  %183 = add i64 %136, 65
  store i64 %183, i64* %3, align 8
  %184 = load i64, i64* %138, align 8
  store i64 %184, i64* %RDX.i995, align 8
  %185 = add i64 %184, 24
  %186 = add i64 %136, 70
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %189 = add i64 %136, 74
  store i64 %189, i64* %3, align 8
  %190 = load i64, i64* %145, align 8
  store i64 %190, i64* %RDX.i995, align 8
  %191 = add i64 %190, 104
  %192 = add i64 %136, 79
  store i64 %192, i64* %3, align 8
  %193 = bitcast i64 %188 to double
  %194 = inttoptr i64 %191 to double*
  %195 = load double, double* %194, align 8
  %196 = fmul double %193, %195
  store double %196, double* %85, align 1
  store i64 0, i64* %87, align 1
  %197 = fadd double %182, %196
  store double %197, double* %65, align 1
  store i64 0, i64* %67, align 1
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -152
  %200 = add i64 %136, 91
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %199 to double*
  store double %197, double* %201, align 8
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -16
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 4
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %203 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RDX.i995, align 8
  %208 = add i64 %204, 8
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %211 = add i64 %202, -24
  %212 = add i64 %204, 12
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RDX.i995, align 8
  %215 = add i64 %214, 16
  %216 = add i64 %204, 17
  store i64 %216, i64* %3, align 8
  %217 = bitcast i64 %210 to double
  %218 = inttoptr i64 %215 to double*
  %219 = load double, double* %218, align 8
  %220 = fmul double %217, %219
  store double %220, double* %65, align 1
  store i64 0, i64* %67, align 1
  %221 = add i64 %204, 21
  store i64 %221, i64* %3, align 8
  %222 = load i64, i64* %206, align 8
  store i64 %222, i64* %RDX.i995, align 8
  %223 = add i64 %222, 8
  %224 = add i64 %204, 26
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %227 = add i64 %204, 30
  store i64 %227, i64* %3, align 8
  %228 = load i64, i64* %213, align 8
  store i64 %228, i64* %RDX.i995, align 8
  %229 = add i64 %228, 48
  %230 = add i64 %204, 35
  store i64 %230, i64* %3, align 8
  %231 = bitcast i64 %226 to double
  %232 = inttoptr i64 %229 to double*
  %233 = load double, double* %232, align 8
  %234 = fmul double %231, %233
  store double %234, double* %85, align 1
  store i64 0, i64* %87, align 1
  %235 = fadd double %220, %234
  store double %235, double* %65, align 1
  store i64 0, i64* %67, align 1
  %236 = add i64 %204, 43
  store i64 %236, i64* %3, align 8
  %237 = load i64, i64* %206, align 8
  store i64 %237, i64* %RDX.i995, align 8
  %238 = add i64 %237, 16
  %239 = add i64 %204, 48
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %242 = add i64 %204, 52
  store i64 %242, i64* %3, align 8
  %243 = load i64, i64* %213, align 8
  store i64 %243, i64* %RDX.i995, align 8
  %244 = add i64 %243, 80
  %245 = add i64 %204, 57
  store i64 %245, i64* %3, align 8
  %246 = bitcast i64 %241 to double
  %247 = inttoptr i64 %244 to double*
  %248 = load double, double* %247, align 8
  %249 = fmul double %246, %248
  store double %249, double* %85, align 1
  store i64 0, i64* %87, align 1
  %250 = fadd double %235, %249
  store double %250, double* %65, align 1
  store i64 0, i64* %67, align 1
  %251 = add i64 %204, 65
  store i64 %251, i64* %3, align 8
  %252 = load i64, i64* %206, align 8
  store i64 %252, i64* %RDX.i995, align 8
  %253 = add i64 %252, 24
  %254 = add i64 %204, 70
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %257 = add i64 %204, 74
  store i64 %257, i64* %3, align 8
  %258 = load i64, i64* %213, align 8
  store i64 %258, i64* %RDX.i995, align 8
  %259 = add i64 %258, 112
  %260 = add i64 %204, 79
  store i64 %260, i64* %3, align 8
  %261 = bitcast i64 %256 to double
  %262 = inttoptr i64 %259 to double*
  %263 = load double, double* %262, align 8
  %264 = fmul double %261, %263
  store double %264, double* %85, align 1
  store i64 0, i64* %87, align 1
  %265 = fadd double %250, %264
  store double %265, double* %65, align 1
  store i64 0, i64* %67, align 1
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -144
  %268 = add i64 %204, 91
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to double*
  store double %265, double* %269, align 8
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -16
  %272 = load i64, i64* %3, align 8
  %273 = add i64 %272, 4
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %271 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RDX.i995, align 8
  %276 = add i64 %272, 8
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %279 = add i64 %270, -24
  %280 = add i64 %272, 12
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RDX.i995, align 8
  %283 = add i64 %282, 24
  %284 = add i64 %272, 17
  store i64 %284, i64* %3, align 8
  %285 = bitcast i64 %278 to double
  %286 = inttoptr i64 %283 to double*
  %287 = load double, double* %286, align 8
  %288 = fmul double %285, %287
  store double %288, double* %65, align 1
  store i64 0, i64* %67, align 1
  %289 = add i64 %272, 21
  store i64 %289, i64* %3, align 8
  %290 = load i64, i64* %274, align 8
  store i64 %290, i64* %RDX.i995, align 8
  %291 = add i64 %290, 8
  %292 = add i64 %272, 26
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %295 = add i64 %272, 30
  store i64 %295, i64* %3, align 8
  %296 = load i64, i64* %281, align 8
  store i64 %296, i64* %RDX.i995, align 8
  %297 = add i64 %296, 56
  %298 = add i64 %272, 35
  store i64 %298, i64* %3, align 8
  %299 = bitcast i64 %294 to double
  %300 = inttoptr i64 %297 to double*
  %301 = load double, double* %300, align 8
  %302 = fmul double %299, %301
  store double %302, double* %85, align 1
  store i64 0, i64* %87, align 1
  %303 = fadd double %288, %302
  store double %303, double* %65, align 1
  store i64 0, i64* %67, align 1
  %304 = add i64 %272, 43
  store i64 %304, i64* %3, align 8
  %305 = load i64, i64* %274, align 8
  store i64 %305, i64* %RDX.i995, align 8
  %306 = add i64 %305, 16
  %307 = add i64 %272, 48
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %310 = add i64 %272, 52
  store i64 %310, i64* %3, align 8
  %311 = load i64, i64* %281, align 8
  store i64 %311, i64* %RDX.i995, align 8
  %312 = add i64 %311, 88
  %313 = add i64 %272, 57
  store i64 %313, i64* %3, align 8
  %314 = bitcast i64 %309 to double
  %315 = inttoptr i64 %312 to double*
  %316 = load double, double* %315, align 8
  %317 = fmul double %314, %316
  store double %317, double* %85, align 1
  store i64 0, i64* %87, align 1
  %318 = fadd double %303, %317
  store double %318, double* %65, align 1
  store i64 0, i64* %67, align 1
  %319 = add i64 %272, 65
  store i64 %319, i64* %3, align 8
  %320 = load i64, i64* %274, align 8
  store i64 %320, i64* %RDX.i995, align 8
  %321 = add i64 %320, 24
  %322 = add i64 %272, 70
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %325 = add i64 %272, 74
  store i64 %325, i64* %3, align 8
  %326 = load i64, i64* %281, align 8
  store i64 %326, i64* %RDX.i995, align 8
  %327 = add i64 %326, 120
  %328 = add i64 %272, 79
  store i64 %328, i64* %3, align 8
  %329 = bitcast i64 %324 to double
  %330 = inttoptr i64 %327 to double*
  %331 = load double, double* %330, align 8
  %332 = fmul double %329, %331
  store double %332, double* %85, align 1
  store i64 0, i64* %87, align 1
  %333 = fadd double %318, %332
  store double %333, double* %65, align 1
  store i64 0, i64* %67, align 1
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -136
  %336 = add i64 %272, 91
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to double*
  store double %333, double* %337, align 8
  %338 = load i64, i64* %RBP.i, align 8
  %339 = add i64 %338, -16
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, 4
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %339 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RDX.i995, align 8
  %344 = add i64 %343, 32
  %345 = add i64 %340, 9
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %348 = add i64 %338, -24
  %349 = add i64 %340, 13
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RDX.i995, align 8
  %352 = add i64 %340, 17
  store i64 %352, i64* %3, align 8
  %353 = bitcast i64 %347 to double
  %354 = inttoptr i64 %351 to double*
  %355 = load double, double* %354, align 8
  %356 = fmul double %353, %355
  store double %356, double* %65, align 1
  store i64 0, i64* %67, align 1
  %357 = add i64 %340, 21
  store i64 %357, i64* %3, align 8
  %358 = load i64, i64* %342, align 8
  store i64 %358, i64* %RDX.i995, align 8
  %359 = add i64 %358, 40
  %360 = add i64 %340, 26
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %363 = add i64 %340, 30
  store i64 %363, i64* %3, align 8
  %364 = load i64, i64* %350, align 8
  store i64 %364, i64* %RDX.i995, align 8
  %365 = add i64 %364, 32
  %366 = add i64 %340, 35
  store i64 %366, i64* %3, align 8
  %367 = bitcast i64 %362 to double
  %368 = inttoptr i64 %365 to double*
  %369 = load double, double* %368, align 8
  %370 = fmul double %367, %369
  store double %370, double* %85, align 1
  store i64 0, i64* %87, align 1
  %371 = fadd double %356, %370
  store double %371, double* %65, align 1
  store i64 0, i64* %67, align 1
  %372 = add i64 %340, 43
  store i64 %372, i64* %3, align 8
  %373 = load i64, i64* %342, align 8
  store i64 %373, i64* %RDX.i995, align 8
  %374 = add i64 %373, 48
  %375 = add i64 %340, 48
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %378 = add i64 %340, 52
  store i64 %378, i64* %3, align 8
  %379 = load i64, i64* %350, align 8
  store i64 %379, i64* %RDX.i995, align 8
  %380 = add i64 %379, 64
  %381 = add i64 %340, 57
  store i64 %381, i64* %3, align 8
  %382 = bitcast i64 %377 to double
  %383 = inttoptr i64 %380 to double*
  %384 = load double, double* %383, align 8
  %385 = fmul double %382, %384
  store double %385, double* %85, align 1
  store i64 0, i64* %87, align 1
  %386 = fadd double %371, %385
  store double %386, double* %65, align 1
  store i64 0, i64* %67, align 1
  %387 = add i64 %340, 65
  store i64 %387, i64* %3, align 8
  %388 = load i64, i64* %342, align 8
  store i64 %388, i64* %RDX.i995, align 8
  %389 = add i64 %388, 56
  %390 = add i64 %340, 70
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %393 = add i64 %340, 74
  store i64 %393, i64* %3, align 8
  %394 = load i64, i64* %350, align 8
  store i64 %394, i64* %RDX.i995, align 8
  %395 = add i64 %394, 96
  %396 = add i64 %340, 79
  store i64 %396, i64* %3, align 8
  %397 = bitcast i64 %392 to double
  %398 = inttoptr i64 %395 to double*
  %399 = load double, double* %398, align 8
  %400 = fmul double %397, %399
  store double %400, double* %85, align 1
  store i64 0, i64* %87, align 1
  %401 = fadd double %386, %400
  store double %401, double* %65, align 1
  store i64 0, i64* %67, align 1
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -128
  %404 = add i64 %340, 88
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to double*
  store double %401, double* %405, align 8
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -16
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 4
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %407 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RDX.i995, align 8
  %412 = add i64 %411, 32
  %413 = add i64 %408, 9
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %416 = add i64 %406, -24
  %417 = add i64 %408, 13
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RDX.i995, align 8
  %420 = add i64 %419, 8
  %421 = add i64 %408, 18
  store i64 %421, i64* %3, align 8
  %422 = bitcast i64 %415 to double
  %423 = inttoptr i64 %420 to double*
  %424 = load double, double* %423, align 8
  %425 = fmul double %422, %424
  store double %425, double* %65, align 1
  store i64 0, i64* %67, align 1
  %426 = add i64 %408, 22
  store i64 %426, i64* %3, align 8
  %427 = load i64, i64* %410, align 8
  store i64 %427, i64* %RDX.i995, align 8
  %428 = add i64 %427, 40
  %429 = add i64 %408, 27
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %432 = add i64 %408, 31
  store i64 %432, i64* %3, align 8
  %433 = load i64, i64* %418, align 8
  store i64 %433, i64* %RDX.i995, align 8
  %434 = add i64 %433, 40
  %435 = add i64 %408, 36
  store i64 %435, i64* %3, align 8
  %436 = bitcast i64 %431 to double
  %437 = inttoptr i64 %434 to double*
  %438 = load double, double* %437, align 8
  %439 = fmul double %436, %438
  store double %439, double* %85, align 1
  store i64 0, i64* %87, align 1
  %440 = fadd double %425, %439
  store double %440, double* %65, align 1
  store i64 0, i64* %67, align 1
  %441 = add i64 %408, 44
  store i64 %441, i64* %3, align 8
  %442 = load i64, i64* %410, align 8
  store i64 %442, i64* %RDX.i995, align 8
  %443 = add i64 %442, 48
  %444 = add i64 %408, 49
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i64*
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %447 = add i64 %408, 53
  store i64 %447, i64* %3, align 8
  %448 = load i64, i64* %418, align 8
  store i64 %448, i64* %RDX.i995, align 8
  %449 = add i64 %448, 72
  %450 = add i64 %408, 58
  store i64 %450, i64* %3, align 8
  %451 = bitcast i64 %446 to double
  %452 = inttoptr i64 %449 to double*
  %453 = load double, double* %452, align 8
  %454 = fmul double %451, %453
  store double %454, double* %85, align 1
  store i64 0, i64* %87, align 1
  %455 = fadd double %440, %454
  store double %455, double* %65, align 1
  store i64 0, i64* %67, align 1
  %456 = add i64 %408, 66
  store i64 %456, i64* %3, align 8
  %457 = load i64, i64* %410, align 8
  store i64 %457, i64* %RDX.i995, align 8
  %458 = add i64 %457, 56
  %459 = add i64 %408, 71
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %462 = add i64 %408, 75
  store i64 %462, i64* %3, align 8
  %463 = load i64, i64* %418, align 8
  store i64 %463, i64* %RDX.i995, align 8
  %464 = add i64 %463, 104
  %465 = add i64 %408, 80
  store i64 %465, i64* %3, align 8
  %466 = bitcast i64 %461 to double
  %467 = inttoptr i64 %464 to double*
  %468 = load double, double* %467, align 8
  %469 = fmul double %466, %468
  store double %469, double* %85, align 1
  store i64 0, i64* %87, align 1
  %470 = fadd double %455, %469
  store double %470, double* %65, align 1
  store i64 0, i64* %67, align 1
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -120
  %473 = add i64 %408, 89
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to double*
  store double %470, double* %474, align 8
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -16
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 4
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RDX.i995, align 8
  %481 = add i64 %480, 32
  %482 = add i64 %477, 9
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %485 = add i64 %475, -24
  %486 = add i64 %477, 13
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RDX.i995, align 8
  %489 = add i64 %488, 16
  %490 = add i64 %477, 18
  store i64 %490, i64* %3, align 8
  %491 = bitcast i64 %484 to double
  %492 = inttoptr i64 %489 to double*
  %493 = load double, double* %492, align 8
  %494 = fmul double %491, %493
  store double %494, double* %65, align 1
  store i64 0, i64* %67, align 1
  %495 = add i64 %477, 22
  store i64 %495, i64* %3, align 8
  %496 = load i64, i64* %479, align 8
  store i64 %496, i64* %RDX.i995, align 8
  %497 = add i64 %496, 40
  %498 = add i64 %477, 27
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %501 = add i64 %477, 31
  store i64 %501, i64* %3, align 8
  %502 = load i64, i64* %487, align 8
  store i64 %502, i64* %RDX.i995, align 8
  %503 = add i64 %502, 48
  %504 = add i64 %477, 36
  store i64 %504, i64* %3, align 8
  %505 = bitcast i64 %500 to double
  %506 = inttoptr i64 %503 to double*
  %507 = load double, double* %506, align 8
  %508 = fmul double %505, %507
  store double %508, double* %85, align 1
  store i64 0, i64* %87, align 1
  %509 = fadd double %494, %508
  store double %509, double* %65, align 1
  store i64 0, i64* %67, align 1
  %510 = add i64 %477, 44
  store i64 %510, i64* %3, align 8
  %511 = load i64, i64* %479, align 8
  store i64 %511, i64* %RDX.i995, align 8
  %512 = add i64 %511, 48
  %513 = add i64 %477, 49
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %516 = add i64 %477, 53
  store i64 %516, i64* %3, align 8
  %517 = load i64, i64* %487, align 8
  store i64 %517, i64* %RDX.i995, align 8
  %518 = add i64 %517, 80
  %519 = add i64 %477, 58
  store i64 %519, i64* %3, align 8
  %520 = bitcast i64 %515 to double
  %521 = inttoptr i64 %518 to double*
  %522 = load double, double* %521, align 8
  %523 = fmul double %520, %522
  store double %523, double* %85, align 1
  store i64 0, i64* %87, align 1
  %524 = fadd double %509, %523
  store double %524, double* %65, align 1
  store i64 0, i64* %67, align 1
  %525 = add i64 %477, 66
  store i64 %525, i64* %3, align 8
  %526 = load i64, i64* %479, align 8
  store i64 %526, i64* %RDX.i995, align 8
  %527 = add i64 %526, 56
  %528 = add i64 %477, 71
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i64*
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %531 = add i64 %477, 75
  store i64 %531, i64* %3, align 8
  %532 = load i64, i64* %487, align 8
  store i64 %532, i64* %RDX.i995, align 8
  %533 = add i64 %532, 112
  %534 = add i64 %477, 80
  store i64 %534, i64* %3, align 8
  %535 = bitcast i64 %530 to double
  %536 = inttoptr i64 %533 to double*
  %537 = load double, double* %536, align 8
  %538 = fmul double %535, %537
  store double %538, double* %85, align 1
  store i64 0, i64* %87, align 1
  %539 = fadd double %524, %538
  store double %539, double* %65, align 1
  store i64 0, i64* %67, align 1
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -112
  %542 = add i64 %477, 89
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to double*
  store double %539, double* %543, align 8
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -16
  %546 = load i64, i64* %3, align 8
  %547 = add i64 %546, 4
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %545 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RDX.i995, align 8
  %550 = add i64 %549, 32
  %551 = add i64 %546, 9
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %554 = add i64 %544, -24
  %555 = add i64 %546, 13
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RDX.i995, align 8
  %558 = add i64 %557, 24
  %559 = add i64 %546, 18
  store i64 %559, i64* %3, align 8
  %560 = bitcast i64 %553 to double
  %561 = inttoptr i64 %558 to double*
  %562 = load double, double* %561, align 8
  %563 = fmul double %560, %562
  store double %563, double* %65, align 1
  store i64 0, i64* %67, align 1
  %564 = add i64 %546, 22
  store i64 %564, i64* %3, align 8
  %565 = load i64, i64* %548, align 8
  store i64 %565, i64* %RDX.i995, align 8
  %566 = add i64 %565, 40
  %567 = add i64 %546, 27
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %570 = add i64 %546, 31
  store i64 %570, i64* %3, align 8
  %571 = load i64, i64* %556, align 8
  store i64 %571, i64* %RDX.i995, align 8
  %572 = add i64 %571, 56
  %573 = add i64 %546, 36
  store i64 %573, i64* %3, align 8
  %574 = bitcast i64 %569 to double
  %575 = inttoptr i64 %572 to double*
  %576 = load double, double* %575, align 8
  %577 = fmul double %574, %576
  store double %577, double* %85, align 1
  store i64 0, i64* %87, align 1
  %578 = fadd double %563, %577
  store double %578, double* %65, align 1
  store i64 0, i64* %67, align 1
  %579 = add i64 %546, 44
  store i64 %579, i64* %3, align 8
  %580 = load i64, i64* %548, align 8
  store i64 %580, i64* %RDX.i995, align 8
  %581 = add i64 %580, 48
  %582 = add i64 %546, 49
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %585 = add i64 %546, 53
  store i64 %585, i64* %3, align 8
  %586 = load i64, i64* %556, align 8
  store i64 %586, i64* %RDX.i995, align 8
  %587 = add i64 %586, 88
  %588 = add i64 %546, 58
  store i64 %588, i64* %3, align 8
  %589 = bitcast i64 %584 to double
  %590 = inttoptr i64 %587 to double*
  %591 = load double, double* %590, align 8
  %592 = fmul double %589, %591
  store double %592, double* %85, align 1
  store i64 0, i64* %87, align 1
  %593 = fadd double %578, %592
  store double %593, double* %65, align 1
  store i64 0, i64* %67, align 1
  %594 = add i64 %546, 66
  store i64 %594, i64* %3, align 8
  %595 = load i64, i64* %548, align 8
  store i64 %595, i64* %RDX.i995, align 8
  %596 = add i64 %595, 56
  %597 = add i64 %546, 71
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %600 = add i64 %546, 75
  store i64 %600, i64* %3, align 8
  %601 = load i64, i64* %556, align 8
  store i64 %601, i64* %RDX.i995, align 8
  %602 = add i64 %601, 120
  %603 = add i64 %546, 80
  store i64 %603, i64* %3, align 8
  %604 = bitcast i64 %599 to double
  %605 = inttoptr i64 %602 to double*
  %606 = load double, double* %605, align 8
  %607 = fmul double %604, %606
  store double %607, double* %85, align 1
  store i64 0, i64* %87, align 1
  %608 = fadd double %593, %607
  store double %608, double* %65, align 1
  store i64 0, i64* %67, align 1
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -104
  %611 = add i64 %546, 89
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to double*
  store double %608, double* %612, align 8
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -16
  %615 = load i64, i64* %3, align 8
  %616 = add i64 %615, 4
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617, align 8
  store i64 %618, i64* %RDX.i995, align 8
  %619 = add i64 %618, 64
  %620 = add i64 %615, 9
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %623 = add i64 %613, -24
  %624 = add i64 %615, 13
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RDX.i995, align 8
  %627 = add i64 %615, 17
  store i64 %627, i64* %3, align 8
  %628 = bitcast i64 %622 to double
  %629 = inttoptr i64 %626 to double*
  %630 = load double, double* %629, align 8
  %631 = fmul double %628, %630
  store double %631, double* %65, align 1
  store i64 0, i64* %67, align 1
  %632 = add i64 %615, 21
  store i64 %632, i64* %3, align 8
  %633 = load i64, i64* %617, align 8
  store i64 %633, i64* %RDX.i995, align 8
  %634 = add i64 %633, 72
  %635 = add i64 %615, 26
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %638 = add i64 %615, 30
  store i64 %638, i64* %3, align 8
  %639 = load i64, i64* %625, align 8
  store i64 %639, i64* %RDX.i995, align 8
  %640 = add i64 %639, 32
  %641 = add i64 %615, 35
  store i64 %641, i64* %3, align 8
  %642 = bitcast i64 %637 to double
  %643 = inttoptr i64 %640 to double*
  %644 = load double, double* %643, align 8
  %645 = fmul double %642, %644
  store double %645, double* %85, align 1
  store i64 0, i64* %87, align 1
  %646 = fadd double %631, %645
  store double %646, double* %65, align 1
  store i64 0, i64* %67, align 1
  %647 = add i64 %615, 43
  store i64 %647, i64* %3, align 8
  %648 = load i64, i64* %617, align 8
  store i64 %648, i64* %RDX.i995, align 8
  %649 = add i64 %648, 80
  %650 = add i64 %615, 48
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i64*
  %652 = load i64, i64* %651, align 8
  store i64 %652, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %653 = add i64 %615, 52
  store i64 %653, i64* %3, align 8
  %654 = load i64, i64* %625, align 8
  store i64 %654, i64* %RDX.i995, align 8
  %655 = add i64 %654, 64
  %656 = add i64 %615, 57
  store i64 %656, i64* %3, align 8
  %657 = bitcast i64 %652 to double
  %658 = inttoptr i64 %655 to double*
  %659 = load double, double* %658, align 8
  %660 = fmul double %657, %659
  store double %660, double* %85, align 1
  store i64 0, i64* %87, align 1
  %661 = fadd double %646, %660
  store double %661, double* %65, align 1
  store i64 0, i64* %67, align 1
  %662 = add i64 %615, 65
  store i64 %662, i64* %3, align 8
  %663 = load i64, i64* %617, align 8
  store i64 %663, i64* %RDX.i995, align 8
  %664 = add i64 %663, 88
  %665 = add i64 %615, 70
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %668 = add i64 %615, 74
  store i64 %668, i64* %3, align 8
  %669 = load i64, i64* %625, align 8
  store i64 %669, i64* %RDX.i995, align 8
  %670 = add i64 %669, 96
  %671 = add i64 %615, 79
  store i64 %671, i64* %3, align 8
  %672 = bitcast i64 %667 to double
  %673 = inttoptr i64 %670 to double*
  %674 = load double, double* %673, align 8
  %675 = fmul double %672, %674
  store double %675, double* %85, align 1
  store i64 0, i64* %87, align 1
  %676 = fadd double %661, %675
  store double %676, double* %65, align 1
  store i64 0, i64* %67, align 1
  %677 = load i64, i64* %RBP.i, align 8
  %678 = add i64 %677, -96
  %679 = add i64 %615, 88
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to double*
  store double %676, double* %680, align 8
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -16
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 4
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %RDX.i995, align 8
  %687 = add i64 %686, 64
  %688 = add i64 %683, 9
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %691 = add i64 %681, -24
  %692 = add i64 %683, 13
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RDX.i995, align 8
  %695 = add i64 %694, 8
  %696 = add i64 %683, 18
  store i64 %696, i64* %3, align 8
  %697 = bitcast i64 %690 to double
  %698 = inttoptr i64 %695 to double*
  %699 = load double, double* %698, align 8
  %700 = fmul double %697, %699
  store double %700, double* %65, align 1
  store i64 0, i64* %67, align 1
  %701 = add i64 %683, 22
  store i64 %701, i64* %3, align 8
  %702 = load i64, i64* %685, align 8
  store i64 %702, i64* %RDX.i995, align 8
  %703 = add i64 %702, 72
  %704 = add i64 %683, 27
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %707 = add i64 %683, 31
  store i64 %707, i64* %3, align 8
  %708 = load i64, i64* %693, align 8
  store i64 %708, i64* %RDX.i995, align 8
  %709 = add i64 %708, 40
  %710 = add i64 %683, 36
  store i64 %710, i64* %3, align 8
  %711 = bitcast i64 %706 to double
  %712 = inttoptr i64 %709 to double*
  %713 = load double, double* %712, align 8
  %714 = fmul double %711, %713
  store double %714, double* %85, align 1
  store i64 0, i64* %87, align 1
  %715 = fadd double %700, %714
  store double %715, double* %65, align 1
  store i64 0, i64* %67, align 1
  %716 = add i64 %683, 44
  store i64 %716, i64* %3, align 8
  %717 = load i64, i64* %685, align 8
  store i64 %717, i64* %RDX.i995, align 8
  %718 = add i64 %717, 80
  %719 = add i64 %683, 49
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %722 = add i64 %683, 53
  store i64 %722, i64* %3, align 8
  %723 = load i64, i64* %693, align 8
  store i64 %723, i64* %RDX.i995, align 8
  %724 = add i64 %723, 72
  %725 = add i64 %683, 58
  store i64 %725, i64* %3, align 8
  %726 = bitcast i64 %721 to double
  %727 = inttoptr i64 %724 to double*
  %728 = load double, double* %727, align 8
  %729 = fmul double %726, %728
  store double %729, double* %85, align 1
  store i64 0, i64* %87, align 1
  %730 = fadd double %715, %729
  store double %730, double* %65, align 1
  store i64 0, i64* %67, align 1
  %731 = add i64 %683, 66
  store i64 %731, i64* %3, align 8
  %732 = load i64, i64* %685, align 8
  store i64 %732, i64* %RDX.i995, align 8
  %733 = add i64 %732, 88
  %734 = add i64 %683, 71
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %737 = add i64 %683, 75
  store i64 %737, i64* %3, align 8
  %738 = load i64, i64* %693, align 8
  store i64 %738, i64* %RDX.i995, align 8
  %739 = add i64 %738, 104
  %740 = add i64 %683, 80
  store i64 %740, i64* %3, align 8
  %741 = bitcast i64 %736 to double
  %742 = inttoptr i64 %739 to double*
  %743 = load double, double* %742, align 8
  %744 = fmul double %741, %743
  store double %744, double* %85, align 1
  store i64 0, i64* %87, align 1
  %745 = fadd double %730, %744
  store double %745, double* %65, align 1
  store i64 0, i64* %67, align 1
  %746 = load i64, i64* %RBP.i, align 8
  %747 = add i64 %746, -88
  %748 = add i64 %683, 89
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to double*
  store double %745, double* %749, align 8
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -16
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, 4
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %751 to i64*
  %755 = load i64, i64* %754, align 8
  store i64 %755, i64* %RDX.i995, align 8
  %756 = add i64 %755, 64
  %757 = add i64 %752, 9
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i64*
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %760 = add i64 %750, -24
  %761 = add i64 %752, 13
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RDX.i995, align 8
  %764 = add i64 %763, 16
  %765 = add i64 %752, 18
  store i64 %765, i64* %3, align 8
  %766 = bitcast i64 %759 to double
  %767 = inttoptr i64 %764 to double*
  %768 = load double, double* %767, align 8
  %769 = fmul double %766, %768
  store double %769, double* %65, align 1
  store i64 0, i64* %67, align 1
  %770 = add i64 %752, 22
  store i64 %770, i64* %3, align 8
  %771 = load i64, i64* %754, align 8
  store i64 %771, i64* %RDX.i995, align 8
  %772 = add i64 %771, 72
  %773 = add i64 %752, 27
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %776 = add i64 %752, 31
  store i64 %776, i64* %3, align 8
  %777 = load i64, i64* %762, align 8
  store i64 %777, i64* %RDX.i995, align 8
  %778 = add i64 %777, 48
  %779 = add i64 %752, 36
  store i64 %779, i64* %3, align 8
  %780 = bitcast i64 %775 to double
  %781 = inttoptr i64 %778 to double*
  %782 = load double, double* %781, align 8
  %783 = fmul double %780, %782
  store double %783, double* %85, align 1
  store i64 0, i64* %87, align 1
  %784 = fadd double %769, %783
  store double %784, double* %65, align 1
  store i64 0, i64* %67, align 1
  %785 = add i64 %752, 44
  store i64 %785, i64* %3, align 8
  %786 = load i64, i64* %754, align 8
  store i64 %786, i64* %RDX.i995, align 8
  %787 = add i64 %786, 80
  %788 = add i64 %752, 49
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %791 = add i64 %752, 53
  store i64 %791, i64* %3, align 8
  %792 = load i64, i64* %762, align 8
  store i64 %792, i64* %RDX.i995, align 8
  %793 = add i64 %792, 80
  %794 = add i64 %752, 58
  store i64 %794, i64* %3, align 8
  %795 = bitcast i64 %790 to double
  %796 = inttoptr i64 %793 to double*
  %797 = load double, double* %796, align 8
  %798 = fmul double %795, %797
  store double %798, double* %85, align 1
  store i64 0, i64* %87, align 1
  %799 = fadd double %784, %798
  store double %799, double* %65, align 1
  store i64 0, i64* %67, align 1
  %800 = add i64 %752, 66
  store i64 %800, i64* %3, align 8
  %801 = load i64, i64* %754, align 8
  store i64 %801, i64* %RDX.i995, align 8
  %802 = add i64 %801, 88
  %803 = add i64 %752, 71
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %806 = add i64 %752, 75
  store i64 %806, i64* %3, align 8
  %807 = load i64, i64* %762, align 8
  store i64 %807, i64* %RDX.i995, align 8
  %808 = add i64 %807, 112
  %809 = add i64 %752, 80
  store i64 %809, i64* %3, align 8
  %810 = bitcast i64 %805 to double
  %811 = inttoptr i64 %808 to double*
  %812 = load double, double* %811, align 8
  %813 = fmul double %810, %812
  store double %813, double* %85, align 1
  store i64 0, i64* %87, align 1
  %814 = fadd double %799, %813
  store double %814, double* %65, align 1
  store i64 0, i64* %67, align 1
  %815 = load i64, i64* %RBP.i, align 8
  %816 = add i64 %815, -80
  %817 = add i64 %752, 89
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to double*
  store double %814, double* %818, align 8
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -16
  %821 = load i64, i64* %3, align 8
  %822 = add i64 %821, 4
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %820 to i64*
  %824 = load i64, i64* %823, align 8
  store i64 %824, i64* %RDX.i995, align 8
  %825 = add i64 %824, 64
  %826 = add i64 %821, 9
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %829 = add i64 %819, -24
  %830 = add i64 %821, 13
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i64*
  %832 = load i64, i64* %831, align 8
  store i64 %832, i64* %RDX.i995, align 8
  %833 = add i64 %832, 24
  %834 = add i64 %821, 18
  store i64 %834, i64* %3, align 8
  %835 = bitcast i64 %828 to double
  %836 = inttoptr i64 %833 to double*
  %837 = load double, double* %836, align 8
  %838 = fmul double %835, %837
  store double %838, double* %65, align 1
  store i64 0, i64* %67, align 1
  %839 = add i64 %821, 22
  store i64 %839, i64* %3, align 8
  %840 = load i64, i64* %823, align 8
  store i64 %840, i64* %RDX.i995, align 8
  %841 = add i64 %840, 72
  %842 = add i64 %821, 27
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %845 = add i64 %821, 31
  store i64 %845, i64* %3, align 8
  %846 = load i64, i64* %831, align 8
  store i64 %846, i64* %RDX.i995, align 8
  %847 = add i64 %846, 56
  %848 = add i64 %821, 36
  store i64 %848, i64* %3, align 8
  %849 = bitcast i64 %844 to double
  %850 = inttoptr i64 %847 to double*
  %851 = load double, double* %850, align 8
  %852 = fmul double %849, %851
  store double %852, double* %85, align 1
  store i64 0, i64* %87, align 1
  %853 = fadd double %838, %852
  store double %853, double* %65, align 1
  store i64 0, i64* %67, align 1
  %854 = add i64 %821, 44
  store i64 %854, i64* %3, align 8
  %855 = load i64, i64* %823, align 8
  store i64 %855, i64* %RDX.i995, align 8
  %856 = add i64 %855, 80
  %857 = add i64 %821, 49
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %860 = add i64 %821, 53
  store i64 %860, i64* %3, align 8
  %861 = load i64, i64* %831, align 8
  store i64 %861, i64* %RDX.i995, align 8
  %862 = add i64 %861, 88
  %863 = add i64 %821, 58
  store i64 %863, i64* %3, align 8
  %864 = bitcast i64 %859 to double
  %865 = inttoptr i64 %862 to double*
  %866 = load double, double* %865, align 8
  %867 = fmul double %864, %866
  store double %867, double* %85, align 1
  store i64 0, i64* %87, align 1
  %868 = fadd double %853, %867
  store double %868, double* %65, align 1
  store i64 0, i64* %67, align 1
  %869 = add i64 %821, 66
  store i64 %869, i64* %3, align 8
  %870 = load i64, i64* %823, align 8
  store i64 %870, i64* %RDX.i995, align 8
  %871 = add i64 %870, 88
  %872 = add i64 %821, 71
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %875 = add i64 %821, 75
  store i64 %875, i64* %3, align 8
  %876 = load i64, i64* %831, align 8
  store i64 %876, i64* %RDX.i995, align 8
  %877 = add i64 %876, 120
  %878 = add i64 %821, 80
  store i64 %878, i64* %3, align 8
  %879 = bitcast i64 %874 to double
  %880 = inttoptr i64 %877 to double*
  %881 = load double, double* %880, align 8
  %882 = fmul double %879, %881
  store double %882, double* %85, align 1
  store i64 0, i64* %87, align 1
  %883 = fadd double %868, %882
  store double %883, double* %65, align 1
  store i64 0, i64* %67, align 1
  %884 = load i64, i64* %RBP.i, align 8
  %885 = add i64 %884, -72
  %886 = add i64 %821, 89
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to double*
  store double %883, double* %887, align 8
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -16
  %890 = load i64, i64* %3, align 8
  %891 = add i64 %890, 4
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %889 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %RDX.i995, align 8
  %894 = add i64 %893, 96
  %895 = add i64 %890, 9
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %898 = add i64 %888, -24
  %899 = add i64 %890, 13
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RDX.i995, align 8
  %902 = add i64 %890, 17
  store i64 %902, i64* %3, align 8
  %903 = bitcast i64 %897 to double
  %904 = inttoptr i64 %901 to double*
  %905 = load double, double* %904, align 8
  %906 = fmul double %903, %905
  store double %906, double* %65, align 1
  store i64 0, i64* %67, align 1
  %907 = add i64 %890, 21
  store i64 %907, i64* %3, align 8
  %908 = load i64, i64* %892, align 8
  store i64 %908, i64* %RDX.i995, align 8
  %909 = add i64 %908, 104
  %910 = add i64 %890, 26
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %913 = add i64 %890, 30
  store i64 %913, i64* %3, align 8
  %914 = load i64, i64* %900, align 8
  store i64 %914, i64* %RDX.i995, align 8
  %915 = add i64 %914, 32
  %916 = add i64 %890, 35
  store i64 %916, i64* %3, align 8
  %917 = bitcast i64 %912 to double
  %918 = inttoptr i64 %915 to double*
  %919 = load double, double* %918, align 8
  %920 = fmul double %917, %919
  store double %920, double* %85, align 1
  store i64 0, i64* %87, align 1
  %921 = fadd double %906, %920
  store double %921, double* %65, align 1
  store i64 0, i64* %67, align 1
  %922 = add i64 %890, 43
  store i64 %922, i64* %3, align 8
  %923 = load i64, i64* %892, align 8
  store i64 %923, i64* %RDX.i995, align 8
  %924 = add i64 %923, 112
  %925 = add i64 %890, 48
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i64*
  %927 = load i64, i64* %926, align 8
  store i64 %927, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %928 = add i64 %890, 52
  store i64 %928, i64* %3, align 8
  %929 = load i64, i64* %900, align 8
  store i64 %929, i64* %RDX.i995, align 8
  %930 = add i64 %929, 64
  %931 = add i64 %890, 57
  store i64 %931, i64* %3, align 8
  %932 = bitcast i64 %927 to double
  %933 = inttoptr i64 %930 to double*
  %934 = load double, double* %933, align 8
  %935 = fmul double %932, %934
  store double %935, double* %85, align 1
  store i64 0, i64* %87, align 1
  %936 = fadd double %921, %935
  store double %936, double* %65, align 1
  store i64 0, i64* %67, align 1
  %937 = add i64 %890, 65
  store i64 %937, i64* %3, align 8
  %938 = load i64, i64* %892, align 8
  store i64 %938, i64* %RDX.i995, align 8
  %939 = add i64 %938, 120
  %940 = add i64 %890, 70
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %943 = add i64 %890, 74
  store i64 %943, i64* %3, align 8
  %944 = load i64, i64* %900, align 8
  store i64 %944, i64* %RDX.i995, align 8
  %945 = add i64 %944, 96
  %946 = add i64 %890, 79
  store i64 %946, i64* %3, align 8
  %947 = bitcast i64 %942 to double
  %948 = inttoptr i64 %945 to double*
  %949 = load double, double* %948, align 8
  %950 = fmul double %947, %949
  store double %950, double* %85, align 1
  store i64 0, i64* %87, align 1
  %951 = fadd double %936, %950
  store double %951, double* %65, align 1
  store i64 0, i64* %67, align 1
  %952 = load i64, i64* %RBP.i, align 8
  %953 = add i64 %952, -64
  %954 = add i64 %890, 88
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to double*
  store double %951, double* %955, align 8
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -16
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 4
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RDX.i995, align 8
  %962 = add i64 %961, 96
  %963 = add i64 %958, 9
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i64*
  %965 = load i64, i64* %964, align 8
  store i64 %965, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %966 = add i64 %956, -24
  %967 = add i64 %958, 13
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %RDX.i995, align 8
  %970 = add i64 %969, 8
  %971 = add i64 %958, 18
  store i64 %971, i64* %3, align 8
  %972 = bitcast i64 %965 to double
  %973 = inttoptr i64 %970 to double*
  %974 = load double, double* %973, align 8
  %975 = fmul double %972, %974
  store double %975, double* %65, align 1
  store i64 0, i64* %67, align 1
  %976 = add i64 %958, 22
  store i64 %976, i64* %3, align 8
  %977 = load i64, i64* %960, align 8
  store i64 %977, i64* %RDX.i995, align 8
  %978 = add i64 %977, 104
  %979 = add i64 %958, 27
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %982 = add i64 %958, 31
  store i64 %982, i64* %3, align 8
  %983 = load i64, i64* %968, align 8
  store i64 %983, i64* %RDX.i995, align 8
  %984 = add i64 %983, 40
  %985 = add i64 %958, 36
  store i64 %985, i64* %3, align 8
  %986 = bitcast i64 %981 to double
  %987 = inttoptr i64 %984 to double*
  %988 = load double, double* %987, align 8
  %989 = fmul double %986, %988
  store double %989, double* %85, align 1
  store i64 0, i64* %87, align 1
  %990 = fadd double %975, %989
  store double %990, double* %65, align 1
  store i64 0, i64* %67, align 1
  %991 = add i64 %958, 44
  store i64 %991, i64* %3, align 8
  %992 = load i64, i64* %960, align 8
  store i64 %992, i64* %RDX.i995, align 8
  %993 = add i64 %992, 112
  %994 = add i64 %958, 49
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %997 = add i64 %958, 53
  store i64 %997, i64* %3, align 8
  %998 = load i64, i64* %968, align 8
  store i64 %998, i64* %RDX.i995, align 8
  %999 = add i64 %998, 72
  %1000 = add i64 %958, 58
  store i64 %1000, i64* %3, align 8
  %1001 = bitcast i64 %996 to double
  %1002 = inttoptr i64 %999 to double*
  %1003 = load double, double* %1002, align 8
  %1004 = fmul double %1001, %1003
  store double %1004, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1005 = fadd double %990, %1004
  store double %1005, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1006 = add i64 %958, 66
  store i64 %1006, i64* %3, align 8
  %1007 = load i64, i64* %960, align 8
  store i64 %1007, i64* %RDX.i995, align 8
  %1008 = add i64 %1007, 120
  %1009 = add i64 %958, 71
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i64*
  %1011 = load i64, i64* %1010, align 8
  store i64 %1011, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1012 = add i64 %958, 75
  store i64 %1012, i64* %3, align 8
  %1013 = load i64, i64* %968, align 8
  store i64 %1013, i64* %RDX.i995, align 8
  %1014 = add i64 %1013, 104
  %1015 = add i64 %958, 80
  store i64 %1015, i64* %3, align 8
  %1016 = bitcast i64 %1011 to double
  %1017 = inttoptr i64 %1014 to double*
  %1018 = load double, double* %1017, align 8
  %1019 = fmul double %1016, %1018
  store double %1019, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1020 = fadd double %1005, %1019
  store double %1020, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -56
  %1023 = add i64 %958, 89
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to double*
  store double %1020, double* %1024, align 8
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -16
  %1027 = load i64, i64* %3, align 8
  %1028 = add i64 %1027, 4
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1026 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RDX.i995, align 8
  %1031 = add i64 %1030, 96
  %1032 = add i64 %1027, 9
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %1035 = add i64 %1025, -24
  %1036 = add i64 %1027, 13
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RDX.i995, align 8
  %1039 = add i64 %1038, 16
  %1040 = add i64 %1027, 18
  store i64 %1040, i64* %3, align 8
  %1041 = bitcast i64 %1034 to double
  %1042 = inttoptr i64 %1039 to double*
  %1043 = load double, double* %1042, align 8
  %1044 = fmul double %1041, %1043
  store double %1044, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1045 = add i64 %1027, 22
  store i64 %1045, i64* %3, align 8
  %1046 = load i64, i64* %1029, align 8
  store i64 %1046, i64* %RDX.i995, align 8
  %1047 = add i64 %1046, 104
  %1048 = add i64 %1027, 27
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i64*
  %1050 = load i64, i64* %1049, align 8
  store i64 %1050, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1051 = add i64 %1027, 31
  store i64 %1051, i64* %3, align 8
  %1052 = load i64, i64* %1037, align 8
  store i64 %1052, i64* %RDX.i995, align 8
  %1053 = add i64 %1052, 48
  %1054 = add i64 %1027, 36
  store i64 %1054, i64* %3, align 8
  %1055 = bitcast i64 %1050 to double
  %1056 = inttoptr i64 %1053 to double*
  %1057 = load double, double* %1056, align 8
  %1058 = fmul double %1055, %1057
  store double %1058, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1059 = fadd double %1044, %1058
  store double %1059, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1060 = add i64 %1027, 44
  store i64 %1060, i64* %3, align 8
  %1061 = load i64, i64* %1029, align 8
  store i64 %1061, i64* %RDX.i995, align 8
  %1062 = add i64 %1061, 112
  %1063 = add i64 %1027, 49
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1066 = add i64 %1027, 53
  store i64 %1066, i64* %3, align 8
  %1067 = load i64, i64* %1037, align 8
  store i64 %1067, i64* %RDX.i995, align 8
  %1068 = add i64 %1067, 80
  %1069 = add i64 %1027, 58
  store i64 %1069, i64* %3, align 8
  %1070 = bitcast i64 %1065 to double
  %1071 = inttoptr i64 %1068 to double*
  %1072 = load double, double* %1071, align 8
  %1073 = fmul double %1070, %1072
  store double %1073, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1074 = fadd double %1059, %1073
  store double %1074, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1075 = add i64 %1027, 66
  store i64 %1075, i64* %3, align 8
  %1076 = load i64, i64* %1029, align 8
  store i64 %1076, i64* %RDX.i995, align 8
  %1077 = add i64 %1076, 120
  %1078 = add i64 %1027, 71
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i64*
  %1080 = load i64, i64* %1079, align 8
  store i64 %1080, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1081 = add i64 %1027, 75
  store i64 %1081, i64* %3, align 8
  %1082 = load i64, i64* %1037, align 8
  store i64 %1082, i64* %RDX.i995, align 8
  %1083 = add i64 %1082, 112
  %1084 = add i64 %1027, 80
  store i64 %1084, i64* %3, align 8
  %1085 = bitcast i64 %1080 to double
  %1086 = inttoptr i64 %1083 to double*
  %1087 = load double, double* %1086, align 8
  %1088 = fmul double %1085, %1087
  store double %1088, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1089 = fadd double %1074, %1088
  store double %1089, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -48
  %1092 = add i64 %1027, 89
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to double*
  store double %1089, double* %1093, align 8
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -16
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1095 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %RDX.i995, align 8
  %1100 = add i64 %1099, 96
  %1101 = add i64 %1096, 9
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %1104 = add i64 %1094, -24
  %1105 = add i64 %1096, 13
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RDX.i995, align 8
  %1108 = add i64 %1107, 24
  %1109 = add i64 %1096, 18
  store i64 %1109, i64* %3, align 8
  %1110 = bitcast i64 %1103 to double
  %1111 = inttoptr i64 %1108 to double*
  %1112 = load double, double* %1111, align 8
  %1113 = fmul double %1110, %1112
  store double %1113, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1114 = add i64 %1096, 22
  store i64 %1114, i64* %3, align 8
  %1115 = load i64, i64* %1098, align 8
  store i64 %1115, i64* %RDX.i995, align 8
  %1116 = add i64 %1115, 104
  %1117 = add i64 %1096, 27
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1120 = add i64 %1096, 31
  store i64 %1120, i64* %3, align 8
  %1121 = load i64, i64* %1106, align 8
  store i64 %1121, i64* %RDX.i995, align 8
  %1122 = add i64 %1121, 56
  %1123 = add i64 %1096, 36
  store i64 %1123, i64* %3, align 8
  %1124 = bitcast i64 %1119 to double
  %1125 = inttoptr i64 %1122 to double*
  %1126 = load double, double* %1125, align 8
  %1127 = fmul double %1124, %1126
  store double %1127, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1128 = fadd double %1113, %1127
  store double %1128, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1129 = add i64 %1096, 44
  store i64 %1129, i64* %3, align 8
  %1130 = load i64, i64* %1098, align 8
  store i64 %1130, i64* %RDX.i995, align 8
  %1131 = add i64 %1130, 112
  %1132 = add i64 %1096, 49
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1135 = add i64 %1096, 53
  store i64 %1135, i64* %3, align 8
  %1136 = load i64, i64* %1106, align 8
  store i64 %1136, i64* %RDX.i995, align 8
  %1137 = add i64 %1136, 88
  %1138 = add i64 %1096, 58
  store i64 %1138, i64* %3, align 8
  %1139 = bitcast i64 %1134 to double
  %1140 = inttoptr i64 %1137 to double*
  %1141 = load double, double* %1140, align 8
  %1142 = fmul double %1139, %1141
  store double %1142, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1143 = fadd double %1128, %1142
  store double %1143, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1144 = add i64 %1096, 66
  store i64 %1144, i64* %3, align 8
  %1145 = load i64, i64* %1098, align 8
  store i64 %1145, i64* %RDX.i995, align 8
  %1146 = add i64 %1145, 120
  %1147 = add i64 %1096, 71
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  %1149 = load i64, i64* %1148, align 8
  store i64 %1149, i64* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1150 = add i64 %1096, 75
  store i64 %1150, i64* %3, align 8
  %1151 = load i64, i64* %1106, align 8
  store i64 %1151, i64* %RDX.i995, align 8
  %1152 = add i64 %1151, 120
  %1153 = add i64 %1096, 80
  store i64 %1153, i64* %3, align 8
  %1154 = bitcast i64 %1149 to double
  %1155 = inttoptr i64 %1152 to double*
  %1156 = load double, double* %1155, align 8
  %1157 = fmul double %1154, %1156
  store double %1157, double* %85, align 1
  store i64 0, i64* %87, align 1
  %1158 = fadd double %1143, %1157
  store double %1158, double* %65, align 1
  store i64 0, i64* %67, align 1
  %1159 = load i64, i64* %RBP.i, align 8
  %1160 = add i64 %1159, -40
  %1161 = add i64 %1096, 89
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to double*
  store double %1158, double* %1162, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -28
  %1165 = load i64, i64* %3, align 8
  %1166 = add i64 %1165, 7
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i32*
  store i32 0, i32* %1167, align 4
  %RAX.i29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400b3f

block_.L_400b3f:                                  ; preds = %block_400b49, %entry
  %1168 = phi i64 [ %1248, %block_400b49 ], [ %.pre, %entry ]
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -28
  %1171 = add i64 %1168, 4
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, -16
  %1175 = icmp ult i32 %1173, 16
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %14, align 1
  %1177 = and i32 %1174, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %21, align 1
  %1182 = xor i32 %1173, 16
  %1183 = xor i32 %1182, %1174
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %26, align 1
  %1187 = icmp eq i32 %1174, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %29, align 1
  %1189 = lshr i32 %1174, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %32, align 1
  %1191 = lshr i32 %1173, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1191
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %38, align 1
  %.v = select i1 %1175, i64 10, i64 52
  %1196 = add i64 %1168, %.v
  store i64 %1196, i64* %3, align 8
  br i1 %1175, label %block_400b49, label %block_.L_400b73

block_400b49:                                     ; preds = %block_.L_400b3f
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %3, align 8
  %1198 = load i32, i32* %1172, align 4
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RAX.i29, align 8
  store i64 %1199, i64* %RCX.i27, align 8
  %1200 = shl nuw nsw i64 %1199, 3
  %1201 = add nsw i64 %1200, -160
  %1202 = add i64 %1201, %1169
  %1203 = add i64 %1196, 14
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i64*
  %1205 = load i64, i64* %1204, align 8
  store i64 %1205, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %1206 = add i64 %1169, -8
  %1207 = add i64 %1196, 18
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %RCX.i27, align 8
  %1210 = add i64 %1196, 21
  store i64 %1210, i64* %3, align 8
  %1211 = load i32, i32* %1172, align 4
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX.i29, align 8
  store i64 %1212, i64* %RDX.i995, align 8
  %1213 = shl nuw nsw i64 %1212, 3
  %1214 = add i64 %1209, %1213
  %1215 = add i64 %1196, 28
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i64*
  store i64 %1205, i64* %1216, align 8
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -28
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, 1
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RAX.i29, align 8
  %1225 = icmp eq i32 %1222, -1
  %1226 = icmp eq i32 %1223, 0
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %14, align 1
  %1229 = and i32 %1223, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %21, align 1
  %1234 = xor i32 %1223, %1222
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  store i8 %1237, i8* %26, align 1
  %1238 = zext i1 %1226 to i8
  store i8 %1238, i8* %29, align 1
  %1239 = lshr i32 %1223, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %32, align 1
  %1241 = lshr i32 %1222, 31
  %1242 = xor i32 %1239, %1241
  %1243 = add nuw nsw i32 %1242, %1239
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %38, align 1
  %1246 = add i64 %1219, 9
  store i64 %1246, i64* %3, align 8
  store i32 %1223, i32* %1221, align 4
  %1247 = load i64, i64* %3, align 8
  %1248 = add i64 %1247, -47
  store i64 %1248, i64* %3, align 8
  br label %block_.L_400b3f

block_.L_400b73:                                  ; preds = %block_.L_400b3f
  %1249 = load i64, i64* %6, align 8
  %1250 = add i64 %1249, 32
  store i64 %1250, i64* %6, align 8
  %1251 = icmp ugt i64 %1249, -33
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %14, align 1
  %1253 = trunc i64 %1250 to i32
  %1254 = and i32 %1253, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %21, align 1
  %1259 = xor i64 %1250, %1249
  %1260 = lshr i64 %1259, 4
  %1261 = trunc i64 %1260 to i8
  %1262 = and i8 %1261, 1
  store i8 %1262, i8* %26, align 1
  %1263 = icmp eq i64 %1250, 0
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %29, align 1
  %1265 = lshr i64 %1250, 63
  %1266 = trunc i64 %1265 to i8
  store i8 %1266, i8* %32, align 1
  %1267 = lshr i64 %1249, 63
  %1268 = xor i64 %1265, %1267
  %1269 = add nuw nsw i64 %1268, %1265
  %1270 = icmp eq i64 %1269, 2
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %38, align 1
  %1272 = add i64 %1196, 5
  store i64 %1272, i64* %3, align 8
  %1273 = add i64 %1249, 40
  %1274 = inttoptr i64 %1250 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RBP.i, align 8
  store i64 %1273, i64* %6, align 8
  %1276 = add i64 %1196, 6
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1273 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %3, align 8
  %1279 = add i64 %1249, 48
  store i64 %1279, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_400b73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_400b3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
