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
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -16
  %110 = add i64 %57, 64
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RDX.i995, align 8
  %113 = add i64 %112, 24
  %114 = add i64 %57, 69
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to double*
  %116 = load double, double* %115, align 8
  store double %116, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %117 = add i64 %108, -24
  %118 = add i64 %57, 73
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RDX.i995, align 8
  %121 = add i64 %120, 96
  %122 = add i64 %57, 78
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to double*
  %124 = load double, double* %123, align 8
  %125 = fmul double %116, %124
  store double %125, double* %83, align 1
  store i64 0, i64* %84, align 1
  %126 = fadd double %107, %125
  store double %126, double* %65, align 1
  store i64 0, i64* %66, align 1
  %127 = add i64 %108, -160
  %128 = add i64 %57, 90
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to double*
  store double %126, double* %129, align 8
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -16
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RDX.i995, align 8
  %136 = add i64 %132, 8
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to double*
  %138 = load double, double* %137, align 8
  store double %138, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %139 = add i64 %130, -24
  %140 = add i64 %132, 12
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RDX.i995, align 8
  %143 = add i64 %142, 8
  %144 = add i64 %132, 17
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to double*
  %146 = load double, double* %145, align 8
  %147 = fmul double %138, %146
  store double %147, double* %65, align 1
  store i64 0, i64* %66, align 1
  %148 = add i64 %132, 21
  store i64 %148, i64* %3, align 8
  %149 = load i64, i64* %134, align 8
  store i64 %149, i64* %RDX.i995, align 8
  %150 = add i64 %149, 8
  %151 = add i64 %132, 26
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to double*
  %153 = load double, double* %152, align 8
  store double %153, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %154 = add i64 %132, 30
  store i64 %154, i64* %3, align 8
  %155 = load i64, i64* %141, align 8
  store i64 %155, i64* %RDX.i995, align 8
  %156 = add i64 %155, 40
  %157 = add i64 %132, 35
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to double*
  %159 = load double, double* %158, align 8
  %160 = fmul double %153, %159
  store double %160, double* %83, align 1
  store i64 0, i64* %84, align 1
  %161 = fadd double %147, %160
  store double %161, double* %65, align 1
  store i64 0, i64* %66, align 1
  %162 = add i64 %132, 43
  store i64 %162, i64* %3, align 8
  %163 = load i64, i64* %134, align 8
  store i64 %163, i64* %RDX.i995, align 8
  %164 = add i64 %163, 16
  %165 = add i64 %132, 48
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to double*
  %167 = load double, double* %166, align 8
  store double %167, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %168 = add i64 %132, 52
  store i64 %168, i64* %3, align 8
  %169 = load i64, i64* %141, align 8
  store i64 %169, i64* %RDX.i995, align 8
  %170 = add i64 %169, 72
  %171 = add i64 %132, 57
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to double*
  %173 = load double, double* %172, align 8
  %174 = fmul double %167, %173
  store double %174, double* %83, align 1
  store i64 0, i64* %84, align 1
  %175 = fadd double %161, %174
  store double %175, double* %65, align 1
  store i64 0, i64* %66, align 1
  %176 = add i64 %132, 65
  store i64 %176, i64* %3, align 8
  %177 = load i64, i64* %134, align 8
  store i64 %177, i64* %RDX.i995, align 8
  %178 = add i64 %177, 24
  %179 = add i64 %132, 70
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to double*
  %181 = load double, double* %180, align 8
  store double %181, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %182 = add i64 %132, 74
  store i64 %182, i64* %3, align 8
  %183 = load i64, i64* %141, align 8
  store i64 %183, i64* %RDX.i995, align 8
  %184 = add i64 %183, 104
  %185 = add i64 %132, 79
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to double*
  %187 = load double, double* %186, align 8
  %188 = fmul double %181, %187
  store double %188, double* %83, align 1
  store i64 0, i64* %84, align 1
  %189 = fadd double %175, %188
  store double %189, double* %65, align 1
  store i64 0, i64* %66, align 1
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -152
  %192 = add i64 %132, 91
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to double*
  store double %189, double* %193, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -16
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 4
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RDX.i995, align 8
  %200 = add i64 %196, 8
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %199 to double*
  %202 = load double, double* %201, align 8
  store double %202, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %203 = add i64 %194, -24
  %204 = add i64 %196, 12
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RDX.i995, align 8
  %207 = add i64 %206, 16
  %208 = add i64 %196, 17
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to double*
  %210 = load double, double* %209, align 8
  %211 = fmul double %202, %210
  store double %211, double* %65, align 1
  store i64 0, i64* %66, align 1
  %212 = add i64 %196, 21
  store i64 %212, i64* %3, align 8
  %213 = load i64, i64* %198, align 8
  store i64 %213, i64* %RDX.i995, align 8
  %214 = add i64 %213, 8
  %215 = add i64 %196, 26
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to double*
  %217 = load double, double* %216, align 8
  store double %217, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %218 = add i64 %196, 30
  store i64 %218, i64* %3, align 8
  %219 = load i64, i64* %205, align 8
  store i64 %219, i64* %RDX.i995, align 8
  %220 = add i64 %219, 48
  %221 = add i64 %196, 35
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to double*
  %223 = load double, double* %222, align 8
  %224 = fmul double %217, %223
  store double %224, double* %83, align 1
  store i64 0, i64* %84, align 1
  %225 = fadd double %211, %224
  store double %225, double* %65, align 1
  store i64 0, i64* %66, align 1
  %226 = add i64 %196, 43
  store i64 %226, i64* %3, align 8
  %227 = load i64, i64* %198, align 8
  store i64 %227, i64* %RDX.i995, align 8
  %228 = add i64 %227, 16
  %229 = add i64 %196, 48
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to double*
  %231 = load double, double* %230, align 8
  store double %231, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %232 = add i64 %196, 52
  store i64 %232, i64* %3, align 8
  %233 = load i64, i64* %205, align 8
  store i64 %233, i64* %RDX.i995, align 8
  %234 = add i64 %233, 80
  %235 = add i64 %196, 57
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to double*
  %237 = load double, double* %236, align 8
  %238 = fmul double %231, %237
  store double %238, double* %83, align 1
  store i64 0, i64* %84, align 1
  %239 = fadd double %225, %238
  store double %239, double* %65, align 1
  store i64 0, i64* %66, align 1
  %240 = add i64 %196, 65
  store i64 %240, i64* %3, align 8
  %241 = load i64, i64* %198, align 8
  store i64 %241, i64* %RDX.i995, align 8
  %242 = add i64 %241, 24
  %243 = add i64 %196, 70
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to double*
  %245 = load double, double* %244, align 8
  store double %245, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %246 = add i64 %196, 74
  store i64 %246, i64* %3, align 8
  %247 = load i64, i64* %205, align 8
  store i64 %247, i64* %RDX.i995, align 8
  %248 = add i64 %247, 112
  %249 = add i64 %196, 79
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to double*
  %251 = load double, double* %250, align 8
  %252 = fmul double %245, %251
  store double %252, double* %83, align 1
  store i64 0, i64* %84, align 1
  %253 = fadd double %239, %252
  store double %253, double* %65, align 1
  store i64 0, i64* %66, align 1
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -144
  %256 = add i64 %196, 91
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to double*
  store double %253, double* %257, align 8
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -16
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 4
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %RDX.i995, align 8
  %264 = add i64 %260, 8
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to double*
  %266 = load double, double* %265, align 8
  store double %266, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %267 = add i64 %258, -24
  %268 = add i64 %260, 12
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RDX.i995, align 8
  %271 = add i64 %270, 24
  %272 = add i64 %260, 17
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to double*
  %274 = load double, double* %273, align 8
  %275 = fmul double %266, %274
  store double %275, double* %65, align 1
  store i64 0, i64* %66, align 1
  %276 = add i64 %260, 21
  store i64 %276, i64* %3, align 8
  %277 = load i64, i64* %262, align 8
  store i64 %277, i64* %RDX.i995, align 8
  %278 = add i64 %277, 8
  %279 = add i64 %260, 26
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to double*
  %281 = load double, double* %280, align 8
  store double %281, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %282 = add i64 %260, 30
  store i64 %282, i64* %3, align 8
  %283 = load i64, i64* %269, align 8
  store i64 %283, i64* %RDX.i995, align 8
  %284 = add i64 %283, 56
  %285 = add i64 %260, 35
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to double*
  %287 = load double, double* %286, align 8
  %288 = fmul double %281, %287
  store double %288, double* %83, align 1
  store i64 0, i64* %84, align 1
  %289 = fadd double %275, %288
  store double %289, double* %65, align 1
  store i64 0, i64* %66, align 1
  %290 = add i64 %260, 43
  store i64 %290, i64* %3, align 8
  %291 = load i64, i64* %262, align 8
  store i64 %291, i64* %RDX.i995, align 8
  %292 = add i64 %291, 16
  %293 = add i64 %260, 48
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to double*
  %295 = load double, double* %294, align 8
  store double %295, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %296 = add i64 %260, 52
  store i64 %296, i64* %3, align 8
  %297 = load i64, i64* %269, align 8
  store i64 %297, i64* %RDX.i995, align 8
  %298 = add i64 %297, 88
  %299 = add i64 %260, 57
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to double*
  %301 = load double, double* %300, align 8
  %302 = fmul double %295, %301
  store double %302, double* %83, align 1
  store i64 0, i64* %84, align 1
  %303 = fadd double %289, %302
  store double %303, double* %65, align 1
  store i64 0, i64* %66, align 1
  %304 = add i64 %260, 65
  store i64 %304, i64* %3, align 8
  %305 = load i64, i64* %262, align 8
  store i64 %305, i64* %RDX.i995, align 8
  %306 = add i64 %305, 24
  %307 = add i64 %260, 70
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to double*
  %309 = load double, double* %308, align 8
  store double %309, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %310 = add i64 %260, 74
  store i64 %310, i64* %3, align 8
  %311 = load i64, i64* %269, align 8
  store i64 %311, i64* %RDX.i995, align 8
  %312 = add i64 %311, 120
  %313 = add i64 %260, 79
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to double*
  %315 = load double, double* %314, align 8
  %316 = fmul double %309, %315
  store double %316, double* %83, align 1
  store i64 0, i64* %84, align 1
  %317 = fadd double %303, %316
  store double %317, double* %65, align 1
  store i64 0, i64* %66, align 1
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -136
  %320 = add i64 %260, 91
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to double*
  store double %317, double* %321, align 8
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -16
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 4
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %323 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RDX.i995, align 8
  %328 = add i64 %327, 32
  %329 = add i64 %324, 9
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %332 = add i64 %322, -24
  %333 = add i64 %324, 13
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %RDX.i995, align 8
  %336 = add i64 %324, 17
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to double*
  %338 = load double, double* %337, align 8
  %339 = fmul double %331, %338
  store double %339, double* %65, align 1
  store i64 0, i64* %66, align 1
  %340 = add i64 %324, 21
  store i64 %340, i64* %3, align 8
  %341 = load i64, i64* %326, align 8
  store i64 %341, i64* %RDX.i995, align 8
  %342 = add i64 %341, 40
  %343 = add i64 %324, 26
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to double*
  %345 = load double, double* %344, align 8
  store double %345, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %346 = add i64 %324, 30
  store i64 %346, i64* %3, align 8
  %347 = load i64, i64* %334, align 8
  store i64 %347, i64* %RDX.i995, align 8
  %348 = add i64 %347, 32
  %349 = add i64 %324, 35
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to double*
  %351 = load double, double* %350, align 8
  %352 = fmul double %345, %351
  store double %352, double* %83, align 1
  store i64 0, i64* %84, align 1
  %353 = fadd double %339, %352
  store double %353, double* %65, align 1
  store i64 0, i64* %66, align 1
  %354 = add i64 %324, 43
  store i64 %354, i64* %3, align 8
  %355 = load i64, i64* %326, align 8
  store i64 %355, i64* %RDX.i995, align 8
  %356 = add i64 %355, 48
  %357 = add i64 %324, 48
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to double*
  %359 = load double, double* %358, align 8
  store double %359, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %360 = add i64 %324, 52
  store i64 %360, i64* %3, align 8
  %361 = load i64, i64* %334, align 8
  store i64 %361, i64* %RDX.i995, align 8
  %362 = add i64 %361, 64
  %363 = add i64 %324, 57
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to double*
  %365 = load double, double* %364, align 8
  %366 = fmul double %359, %365
  store double %366, double* %83, align 1
  store i64 0, i64* %84, align 1
  %367 = fadd double %353, %366
  store double %367, double* %65, align 1
  store i64 0, i64* %66, align 1
  %368 = add i64 %324, 65
  store i64 %368, i64* %3, align 8
  %369 = load i64, i64* %326, align 8
  store i64 %369, i64* %RDX.i995, align 8
  %370 = add i64 %369, 56
  %371 = add i64 %324, 70
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to double*
  %373 = load double, double* %372, align 8
  store double %373, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %374 = add i64 %324, 74
  store i64 %374, i64* %3, align 8
  %375 = load i64, i64* %334, align 8
  store i64 %375, i64* %RDX.i995, align 8
  %376 = add i64 %375, 96
  %377 = add i64 %324, 79
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to double*
  %379 = load double, double* %378, align 8
  %380 = fmul double %373, %379
  store double %380, double* %83, align 1
  store i64 0, i64* %84, align 1
  %381 = fadd double %367, %380
  store double %381, double* %65, align 1
  store i64 0, i64* %66, align 1
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -128
  %384 = add i64 %324, 88
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to double*
  store double %381, double* %385, align 8
  %386 = load i64, i64* %RBP.i, align 8
  %387 = add i64 %386, -16
  %388 = load i64, i64* %3, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RDX.i995, align 8
  %392 = add i64 %391, 32
  %393 = add i64 %388, 9
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to double*
  %395 = load double, double* %394, align 8
  store double %395, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %396 = add i64 %386, -24
  %397 = add i64 %388, 13
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RDX.i995, align 8
  %400 = add i64 %399, 8
  %401 = add i64 %388, 18
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to double*
  %403 = load double, double* %402, align 8
  %404 = fmul double %395, %403
  store double %404, double* %65, align 1
  store i64 0, i64* %66, align 1
  %405 = add i64 %388, 22
  store i64 %405, i64* %3, align 8
  %406 = load i64, i64* %390, align 8
  store i64 %406, i64* %RDX.i995, align 8
  %407 = add i64 %406, 40
  %408 = add i64 %388, 27
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to double*
  %410 = load double, double* %409, align 8
  store double %410, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %411 = add i64 %388, 31
  store i64 %411, i64* %3, align 8
  %412 = load i64, i64* %398, align 8
  store i64 %412, i64* %RDX.i995, align 8
  %413 = add i64 %412, 40
  %414 = add i64 %388, 36
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to double*
  %416 = load double, double* %415, align 8
  %417 = fmul double %410, %416
  store double %417, double* %83, align 1
  store i64 0, i64* %84, align 1
  %418 = fadd double %404, %417
  store double %418, double* %65, align 1
  store i64 0, i64* %66, align 1
  %419 = add i64 %388, 44
  store i64 %419, i64* %3, align 8
  %420 = load i64, i64* %390, align 8
  store i64 %420, i64* %RDX.i995, align 8
  %421 = add i64 %420, 48
  %422 = add i64 %388, 49
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to double*
  %424 = load double, double* %423, align 8
  store double %424, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %425 = add i64 %388, 53
  store i64 %425, i64* %3, align 8
  %426 = load i64, i64* %398, align 8
  store i64 %426, i64* %RDX.i995, align 8
  %427 = add i64 %426, 72
  %428 = add i64 %388, 58
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to double*
  %430 = load double, double* %429, align 8
  %431 = fmul double %424, %430
  store double %431, double* %83, align 1
  store i64 0, i64* %84, align 1
  %432 = fadd double %418, %431
  store double %432, double* %65, align 1
  store i64 0, i64* %66, align 1
  %433 = add i64 %388, 66
  store i64 %433, i64* %3, align 8
  %434 = load i64, i64* %390, align 8
  store i64 %434, i64* %RDX.i995, align 8
  %435 = add i64 %434, 56
  %436 = add i64 %388, 71
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to double*
  %438 = load double, double* %437, align 8
  store double %438, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %439 = add i64 %388, 75
  store i64 %439, i64* %3, align 8
  %440 = load i64, i64* %398, align 8
  store i64 %440, i64* %RDX.i995, align 8
  %441 = add i64 %440, 104
  %442 = add i64 %388, 80
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to double*
  %444 = load double, double* %443, align 8
  %445 = fmul double %438, %444
  store double %445, double* %83, align 1
  store i64 0, i64* %84, align 1
  %446 = fadd double %432, %445
  store double %446, double* %65, align 1
  store i64 0, i64* %66, align 1
  %447 = load i64, i64* %RBP.i, align 8
  %448 = add i64 %447, -120
  %449 = add i64 %388, 89
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to double*
  store double %446, double* %450, align 8
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -16
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 4
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %RDX.i995, align 8
  %457 = add i64 %456, 32
  %458 = add i64 %453, 9
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to double*
  %460 = load double, double* %459, align 8
  store double %460, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %461 = add i64 %451, -24
  %462 = add i64 %453, 13
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RDX.i995, align 8
  %465 = add i64 %464, 16
  %466 = add i64 %453, 18
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to double*
  %468 = load double, double* %467, align 8
  %469 = fmul double %460, %468
  store double %469, double* %65, align 1
  store i64 0, i64* %66, align 1
  %470 = add i64 %453, 22
  store i64 %470, i64* %3, align 8
  %471 = load i64, i64* %455, align 8
  store i64 %471, i64* %RDX.i995, align 8
  %472 = add i64 %471, 40
  %473 = add i64 %453, 27
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to double*
  %475 = load double, double* %474, align 8
  store double %475, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %476 = add i64 %453, 31
  store i64 %476, i64* %3, align 8
  %477 = load i64, i64* %463, align 8
  store i64 %477, i64* %RDX.i995, align 8
  %478 = add i64 %477, 48
  %479 = add i64 %453, 36
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to double*
  %481 = load double, double* %480, align 8
  %482 = fmul double %475, %481
  store double %482, double* %83, align 1
  store i64 0, i64* %84, align 1
  %483 = fadd double %469, %482
  store double %483, double* %65, align 1
  store i64 0, i64* %66, align 1
  %484 = add i64 %453, 44
  store i64 %484, i64* %3, align 8
  %485 = load i64, i64* %455, align 8
  store i64 %485, i64* %RDX.i995, align 8
  %486 = add i64 %485, 48
  %487 = add i64 %453, 49
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to double*
  %489 = load double, double* %488, align 8
  store double %489, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %490 = add i64 %453, 53
  store i64 %490, i64* %3, align 8
  %491 = load i64, i64* %463, align 8
  store i64 %491, i64* %RDX.i995, align 8
  %492 = add i64 %491, 80
  %493 = add i64 %453, 58
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to double*
  %495 = load double, double* %494, align 8
  %496 = fmul double %489, %495
  store double %496, double* %83, align 1
  store i64 0, i64* %84, align 1
  %497 = fadd double %483, %496
  store double %497, double* %65, align 1
  store i64 0, i64* %66, align 1
  %498 = add i64 %453, 66
  store i64 %498, i64* %3, align 8
  %499 = load i64, i64* %455, align 8
  store i64 %499, i64* %RDX.i995, align 8
  %500 = add i64 %499, 56
  %501 = add i64 %453, 71
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to double*
  %503 = load double, double* %502, align 8
  store double %503, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %504 = add i64 %453, 75
  store i64 %504, i64* %3, align 8
  %505 = load i64, i64* %463, align 8
  store i64 %505, i64* %RDX.i995, align 8
  %506 = add i64 %505, 112
  %507 = add i64 %453, 80
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to double*
  %509 = load double, double* %508, align 8
  %510 = fmul double %503, %509
  store double %510, double* %83, align 1
  store i64 0, i64* %84, align 1
  %511 = fadd double %497, %510
  store double %511, double* %65, align 1
  store i64 0, i64* %66, align 1
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -112
  %514 = add i64 %453, 89
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to double*
  store double %511, double* %515, align 8
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -16
  %518 = load i64, i64* %3, align 8
  %519 = add i64 %518, 4
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %517 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RDX.i995, align 8
  %522 = add i64 %521, 32
  %523 = add i64 %518, 9
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to double*
  %525 = load double, double* %524, align 8
  store double %525, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %526 = add i64 %516, -24
  %527 = add i64 %518, 13
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RDX.i995, align 8
  %530 = add i64 %529, 24
  %531 = add i64 %518, 18
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to double*
  %533 = load double, double* %532, align 8
  %534 = fmul double %525, %533
  store double %534, double* %65, align 1
  store i64 0, i64* %66, align 1
  %535 = add i64 %518, 22
  store i64 %535, i64* %3, align 8
  %536 = load i64, i64* %520, align 8
  store i64 %536, i64* %RDX.i995, align 8
  %537 = add i64 %536, 40
  %538 = add i64 %518, 27
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to double*
  %540 = load double, double* %539, align 8
  store double %540, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %541 = add i64 %518, 31
  store i64 %541, i64* %3, align 8
  %542 = load i64, i64* %528, align 8
  store i64 %542, i64* %RDX.i995, align 8
  %543 = add i64 %542, 56
  %544 = add i64 %518, 36
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to double*
  %546 = load double, double* %545, align 8
  %547 = fmul double %540, %546
  store double %547, double* %83, align 1
  store i64 0, i64* %84, align 1
  %548 = fadd double %534, %547
  store double %548, double* %65, align 1
  store i64 0, i64* %66, align 1
  %549 = add i64 %518, 44
  store i64 %549, i64* %3, align 8
  %550 = load i64, i64* %520, align 8
  store i64 %550, i64* %RDX.i995, align 8
  %551 = add i64 %550, 48
  %552 = add i64 %518, 49
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to double*
  %554 = load double, double* %553, align 8
  store double %554, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %555 = add i64 %518, 53
  store i64 %555, i64* %3, align 8
  %556 = load i64, i64* %528, align 8
  store i64 %556, i64* %RDX.i995, align 8
  %557 = add i64 %556, 88
  %558 = add i64 %518, 58
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to double*
  %560 = load double, double* %559, align 8
  %561 = fmul double %554, %560
  store double %561, double* %83, align 1
  store i64 0, i64* %84, align 1
  %562 = fadd double %548, %561
  store double %562, double* %65, align 1
  store i64 0, i64* %66, align 1
  %563 = add i64 %518, 66
  store i64 %563, i64* %3, align 8
  %564 = load i64, i64* %520, align 8
  store i64 %564, i64* %RDX.i995, align 8
  %565 = add i64 %564, 56
  %566 = add i64 %518, 71
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to double*
  %568 = load double, double* %567, align 8
  store double %568, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %569 = add i64 %518, 75
  store i64 %569, i64* %3, align 8
  %570 = load i64, i64* %528, align 8
  store i64 %570, i64* %RDX.i995, align 8
  %571 = add i64 %570, 120
  %572 = add i64 %518, 80
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to double*
  %574 = load double, double* %573, align 8
  %575 = fmul double %568, %574
  store double %575, double* %83, align 1
  store i64 0, i64* %84, align 1
  %576 = fadd double %562, %575
  store double %576, double* %65, align 1
  store i64 0, i64* %66, align 1
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -104
  %579 = add i64 %518, 89
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to double*
  store double %576, double* %580, align 8
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -16
  %583 = load i64, i64* %3, align 8
  %584 = add i64 %583, 4
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %582 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RDX.i995, align 8
  %587 = add i64 %586, 64
  %588 = add i64 %583, 9
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to double*
  %590 = load double, double* %589, align 8
  store double %590, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %591 = add i64 %581, -24
  %592 = add i64 %583, 13
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %RDX.i995, align 8
  %595 = add i64 %583, 17
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to double*
  %597 = load double, double* %596, align 8
  %598 = fmul double %590, %597
  store double %598, double* %65, align 1
  store i64 0, i64* %66, align 1
  %599 = add i64 %583, 21
  store i64 %599, i64* %3, align 8
  %600 = load i64, i64* %585, align 8
  store i64 %600, i64* %RDX.i995, align 8
  %601 = add i64 %600, 72
  %602 = add i64 %583, 26
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to double*
  %604 = load double, double* %603, align 8
  store double %604, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %605 = add i64 %583, 30
  store i64 %605, i64* %3, align 8
  %606 = load i64, i64* %593, align 8
  store i64 %606, i64* %RDX.i995, align 8
  %607 = add i64 %606, 32
  %608 = add i64 %583, 35
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to double*
  %610 = load double, double* %609, align 8
  %611 = fmul double %604, %610
  store double %611, double* %83, align 1
  store i64 0, i64* %84, align 1
  %612 = fadd double %598, %611
  store double %612, double* %65, align 1
  store i64 0, i64* %66, align 1
  %613 = add i64 %583, 43
  store i64 %613, i64* %3, align 8
  %614 = load i64, i64* %585, align 8
  store i64 %614, i64* %RDX.i995, align 8
  %615 = add i64 %614, 80
  %616 = add i64 %583, 48
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to double*
  %618 = load double, double* %617, align 8
  store double %618, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %619 = add i64 %583, 52
  store i64 %619, i64* %3, align 8
  %620 = load i64, i64* %593, align 8
  store i64 %620, i64* %RDX.i995, align 8
  %621 = add i64 %620, 64
  %622 = add i64 %583, 57
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to double*
  %624 = load double, double* %623, align 8
  %625 = fmul double %618, %624
  store double %625, double* %83, align 1
  store i64 0, i64* %84, align 1
  %626 = fadd double %612, %625
  store double %626, double* %65, align 1
  store i64 0, i64* %66, align 1
  %627 = add i64 %583, 65
  store i64 %627, i64* %3, align 8
  %628 = load i64, i64* %585, align 8
  store i64 %628, i64* %RDX.i995, align 8
  %629 = add i64 %628, 88
  %630 = add i64 %583, 70
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to double*
  %632 = load double, double* %631, align 8
  store double %632, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %633 = add i64 %583, 74
  store i64 %633, i64* %3, align 8
  %634 = load i64, i64* %593, align 8
  store i64 %634, i64* %RDX.i995, align 8
  %635 = add i64 %634, 96
  %636 = add i64 %583, 79
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to double*
  %638 = load double, double* %637, align 8
  %639 = fmul double %632, %638
  store double %639, double* %83, align 1
  store i64 0, i64* %84, align 1
  %640 = fadd double %626, %639
  store double %640, double* %65, align 1
  store i64 0, i64* %66, align 1
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -96
  %643 = add i64 %583, 88
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to double*
  store double %640, double* %644, align 8
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -16
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %646 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RDX.i995, align 8
  %651 = add i64 %650, 64
  %652 = add i64 %647, 9
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to double*
  %654 = load double, double* %653, align 8
  store double %654, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %655 = add i64 %645, -24
  %656 = add i64 %647, 13
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %RDX.i995, align 8
  %659 = add i64 %658, 8
  %660 = add i64 %647, 18
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to double*
  %662 = load double, double* %661, align 8
  %663 = fmul double %654, %662
  store double %663, double* %65, align 1
  store i64 0, i64* %66, align 1
  %664 = add i64 %647, 22
  store i64 %664, i64* %3, align 8
  %665 = load i64, i64* %649, align 8
  store i64 %665, i64* %RDX.i995, align 8
  %666 = add i64 %665, 72
  %667 = add i64 %647, 27
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to double*
  %669 = load double, double* %668, align 8
  store double %669, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %670 = add i64 %647, 31
  store i64 %670, i64* %3, align 8
  %671 = load i64, i64* %657, align 8
  store i64 %671, i64* %RDX.i995, align 8
  %672 = add i64 %671, 40
  %673 = add i64 %647, 36
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to double*
  %675 = load double, double* %674, align 8
  %676 = fmul double %669, %675
  store double %676, double* %83, align 1
  store i64 0, i64* %84, align 1
  %677 = fadd double %663, %676
  store double %677, double* %65, align 1
  store i64 0, i64* %66, align 1
  %678 = add i64 %647, 44
  store i64 %678, i64* %3, align 8
  %679 = load i64, i64* %649, align 8
  store i64 %679, i64* %RDX.i995, align 8
  %680 = add i64 %679, 80
  %681 = add i64 %647, 49
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to double*
  %683 = load double, double* %682, align 8
  store double %683, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %684 = add i64 %647, 53
  store i64 %684, i64* %3, align 8
  %685 = load i64, i64* %657, align 8
  store i64 %685, i64* %RDX.i995, align 8
  %686 = add i64 %685, 72
  %687 = add i64 %647, 58
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to double*
  %689 = load double, double* %688, align 8
  %690 = fmul double %683, %689
  store double %690, double* %83, align 1
  store i64 0, i64* %84, align 1
  %691 = fadd double %677, %690
  store double %691, double* %65, align 1
  store i64 0, i64* %66, align 1
  %692 = add i64 %647, 66
  store i64 %692, i64* %3, align 8
  %693 = load i64, i64* %649, align 8
  store i64 %693, i64* %RDX.i995, align 8
  %694 = add i64 %693, 88
  %695 = add i64 %647, 71
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to double*
  %697 = load double, double* %696, align 8
  store double %697, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %698 = add i64 %647, 75
  store i64 %698, i64* %3, align 8
  %699 = load i64, i64* %657, align 8
  store i64 %699, i64* %RDX.i995, align 8
  %700 = add i64 %699, 104
  %701 = add i64 %647, 80
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to double*
  %703 = load double, double* %702, align 8
  %704 = fmul double %697, %703
  store double %704, double* %83, align 1
  store i64 0, i64* %84, align 1
  %705 = fadd double %691, %704
  store double %705, double* %65, align 1
  store i64 0, i64* %66, align 1
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -88
  %708 = add i64 %647, 89
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to double*
  store double %705, double* %709, align 8
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -16
  %712 = load i64, i64* %3, align 8
  %713 = add i64 %712, 4
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %711 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %RDX.i995, align 8
  %716 = add i64 %715, 64
  %717 = add i64 %712, 9
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to double*
  %719 = load double, double* %718, align 8
  store double %719, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %720 = add i64 %710, -24
  %721 = add i64 %712, 13
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %RDX.i995, align 8
  %724 = add i64 %723, 16
  %725 = add i64 %712, 18
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to double*
  %727 = load double, double* %726, align 8
  %728 = fmul double %719, %727
  store double %728, double* %65, align 1
  store i64 0, i64* %66, align 1
  %729 = add i64 %712, 22
  store i64 %729, i64* %3, align 8
  %730 = load i64, i64* %714, align 8
  store i64 %730, i64* %RDX.i995, align 8
  %731 = add i64 %730, 72
  %732 = add i64 %712, 27
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to double*
  %734 = load double, double* %733, align 8
  store double %734, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %735 = add i64 %712, 31
  store i64 %735, i64* %3, align 8
  %736 = load i64, i64* %722, align 8
  store i64 %736, i64* %RDX.i995, align 8
  %737 = add i64 %736, 48
  %738 = add i64 %712, 36
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to double*
  %740 = load double, double* %739, align 8
  %741 = fmul double %734, %740
  store double %741, double* %83, align 1
  store i64 0, i64* %84, align 1
  %742 = fadd double %728, %741
  store double %742, double* %65, align 1
  store i64 0, i64* %66, align 1
  %743 = add i64 %712, 44
  store i64 %743, i64* %3, align 8
  %744 = load i64, i64* %714, align 8
  store i64 %744, i64* %RDX.i995, align 8
  %745 = add i64 %744, 80
  %746 = add i64 %712, 49
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to double*
  %748 = load double, double* %747, align 8
  store double %748, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %749 = add i64 %712, 53
  store i64 %749, i64* %3, align 8
  %750 = load i64, i64* %722, align 8
  store i64 %750, i64* %RDX.i995, align 8
  %751 = add i64 %750, 80
  %752 = add i64 %712, 58
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to double*
  %754 = load double, double* %753, align 8
  %755 = fmul double %748, %754
  store double %755, double* %83, align 1
  store i64 0, i64* %84, align 1
  %756 = fadd double %742, %755
  store double %756, double* %65, align 1
  store i64 0, i64* %66, align 1
  %757 = add i64 %712, 66
  store i64 %757, i64* %3, align 8
  %758 = load i64, i64* %714, align 8
  store i64 %758, i64* %RDX.i995, align 8
  %759 = add i64 %758, 88
  %760 = add i64 %712, 71
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to double*
  %762 = load double, double* %761, align 8
  store double %762, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %763 = add i64 %712, 75
  store i64 %763, i64* %3, align 8
  %764 = load i64, i64* %722, align 8
  store i64 %764, i64* %RDX.i995, align 8
  %765 = add i64 %764, 112
  %766 = add i64 %712, 80
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to double*
  %768 = load double, double* %767, align 8
  %769 = fmul double %762, %768
  store double %769, double* %83, align 1
  store i64 0, i64* %84, align 1
  %770 = fadd double %756, %769
  store double %770, double* %65, align 1
  store i64 0, i64* %66, align 1
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -80
  %773 = add i64 %712, 89
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to double*
  store double %770, double* %774, align 8
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -16
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, 4
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %776 to i64*
  %780 = load i64, i64* %779, align 8
  store i64 %780, i64* %RDX.i995, align 8
  %781 = add i64 %780, 64
  %782 = add i64 %777, 9
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to double*
  %784 = load double, double* %783, align 8
  store double %784, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %785 = add i64 %775, -24
  %786 = add i64 %777, 13
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RDX.i995, align 8
  %789 = add i64 %788, 24
  %790 = add i64 %777, 18
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to double*
  %792 = load double, double* %791, align 8
  %793 = fmul double %784, %792
  store double %793, double* %65, align 1
  store i64 0, i64* %66, align 1
  %794 = add i64 %777, 22
  store i64 %794, i64* %3, align 8
  %795 = load i64, i64* %779, align 8
  store i64 %795, i64* %RDX.i995, align 8
  %796 = add i64 %795, 72
  %797 = add i64 %777, 27
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to double*
  %799 = load double, double* %798, align 8
  store double %799, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %800 = add i64 %777, 31
  store i64 %800, i64* %3, align 8
  %801 = load i64, i64* %787, align 8
  store i64 %801, i64* %RDX.i995, align 8
  %802 = add i64 %801, 56
  %803 = add i64 %777, 36
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to double*
  %805 = load double, double* %804, align 8
  %806 = fmul double %799, %805
  store double %806, double* %83, align 1
  store i64 0, i64* %84, align 1
  %807 = fadd double %793, %806
  store double %807, double* %65, align 1
  store i64 0, i64* %66, align 1
  %808 = add i64 %777, 44
  store i64 %808, i64* %3, align 8
  %809 = load i64, i64* %779, align 8
  store i64 %809, i64* %RDX.i995, align 8
  %810 = add i64 %809, 80
  %811 = add i64 %777, 49
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to double*
  %813 = load double, double* %812, align 8
  store double %813, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %814 = add i64 %777, 53
  store i64 %814, i64* %3, align 8
  %815 = load i64, i64* %787, align 8
  store i64 %815, i64* %RDX.i995, align 8
  %816 = add i64 %815, 88
  %817 = add i64 %777, 58
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to double*
  %819 = load double, double* %818, align 8
  %820 = fmul double %813, %819
  store double %820, double* %83, align 1
  store i64 0, i64* %84, align 1
  %821 = fadd double %807, %820
  store double %821, double* %65, align 1
  store i64 0, i64* %66, align 1
  %822 = add i64 %777, 66
  store i64 %822, i64* %3, align 8
  %823 = load i64, i64* %779, align 8
  store i64 %823, i64* %RDX.i995, align 8
  %824 = add i64 %823, 88
  %825 = add i64 %777, 71
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to double*
  %827 = load double, double* %826, align 8
  store double %827, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %828 = add i64 %777, 75
  store i64 %828, i64* %3, align 8
  %829 = load i64, i64* %787, align 8
  store i64 %829, i64* %RDX.i995, align 8
  %830 = add i64 %829, 120
  %831 = add i64 %777, 80
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to double*
  %833 = load double, double* %832, align 8
  %834 = fmul double %827, %833
  store double %834, double* %83, align 1
  store i64 0, i64* %84, align 1
  %835 = fadd double %821, %834
  store double %835, double* %65, align 1
  store i64 0, i64* %66, align 1
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -72
  %838 = add i64 %777, 89
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to double*
  store double %835, double* %839, align 8
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -16
  %842 = load i64, i64* %3, align 8
  %843 = add i64 %842, 4
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %841 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RDX.i995, align 8
  %846 = add i64 %845, 96
  %847 = add i64 %842, 9
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to double*
  %849 = load double, double* %848, align 8
  store double %849, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %850 = add i64 %840, -24
  %851 = add i64 %842, 13
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RDX.i995, align 8
  %854 = add i64 %842, 17
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to double*
  %856 = load double, double* %855, align 8
  %857 = fmul double %849, %856
  store double %857, double* %65, align 1
  store i64 0, i64* %66, align 1
  %858 = add i64 %842, 21
  store i64 %858, i64* %3, align 8
  %859 = load i64, i64* %844, align 8
  store i64 %859, i64* %RDX.i995, align 8
  %860 = add i64 %859, 104
  %861 = add i64 %842, 26
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to double*
  %863 = load double, double* %862, align 8
  store double %863, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %864 = add i64 %842, 30
  store i64 %864, i64* %3, align 8
  %865 = load i64, i64* %852, align 8
  store i64 %865, i64* %RDX.i995, align 8
  %866 = add i64 %865, 32
  %867 = add i64 %842, 35
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to double*
  %869 = load double, double* %868, align 8
  %870 = fmul double %863, %869
  store double %870, double* %83, align 1
  store i64 0, i64* %84, align 1
  %871 = fadd double %857, %870
  store double %871, double* %65, align 1
  store i64 0, i64* %66, align 1
  %872 = add i64 %842, 43
  store i64 %872, i64* %3, align 8
  %873 = load i64, i64* %844, align 8
  store i64 %873, i64* %RDX.i995, align 8
  %874 = add i64 %873, 112
  %875 = add i64 %842, 48
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to double*
  %877 = load double, double* %876, align 8
  store double %877, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %878 = add i64 %842, 52
  store i64 %878, i64* %3, align 8
  %879 = load i64, i64* %852, align 8
  store i64 %879, i64* %RDX.i995, align 8
  %880 = add i64 %879, 64
  %881 = add i64 %842, 57
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to double*
  %883 = load double, double* %882, align 8
  %884 = fmul double %877, %883
  store double %884, double* %83, align 1
  store i64 0, i64* %84, align 1
  %885 = fadd double %871, %884
  store double %885, double* %65, align 1
  store i64 0, i64* %66, align 1
  %886 = add i64 %842, 65
  store i64 %886, i64* %3, align 8
  %887 = load i64, i64* %844, align 8
  store i64 %887, i64* %RDX.i995, align 8
  %888 = add i64 %887, 120
  %889 = add i64 %842, 70
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to double*
  %891 = load double, double* %890, align 8
  store double %891, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %892 = add i64 %842, 74
  store i64 %892, i64* %3, align 8
  %893 = load i64, i64* %852, align 8
  store i64 %893, i64* %RDX.i995, align 8
  %894 = add i64 %893, 96
  %895 = add i64 %842, 79
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to double*
  %897 = load double, double* %896, align 8
  %898 = fmul double %891, %897
  store double %898, double* %83, align 1
  store i64 0, i64* %84, align 1
  %899 = fadd double %885, %898
  store double %899, double* %65, align 1
  store i64 0, i64* %66, align 1
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -64
  %902 = add i64 %842, 88
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to double*
  store double %899, double* %903, align 8
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -16
  %906 = load i64, i64* %3, align 8
  %907 = add i64 %906, 4
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %905 to i64*
  %909 = load i64, i64* %908, align 8
  store i64 %909, i64* %RDX.i995, align 8
  %910 = add i64 %909, 96
  %911 = add i64 %906, 9
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to double*
  %913 = load double, double* %912, align 8
  store double %913, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %914 = add i64 %904, -24
  %915 = add i64 %906, 13
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %RDX.i995, align 8
  %918 = add i64 %917, 8
  %919 = add i64 %906, 18
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to double*
  %921 = load double, double* %920, align 8
  %922 = fmul double %913, %921
  store double %922, double* %65, align 1
  store i64 0, i64* %66, align 1
  %923 = add i64 %906, 22
  store i64 %923, i64* %3, align 8
  %924 = load i64, i64* %908, align 8
  store i64 %924, i64* %RDX.i995, align 8
  %925 = add i64 %924, 104
  %926 = add i64 %906, 27
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to double*
  %928 = load double, double* %927, align 8
  store double %928, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %929 = add i64 %906, 31
  store i64 %929, i64* %3, align 8
  %930 = load i64, i64* %916, align 8
  store i64 %930, i64* %RDX.i995, align 8
  %931 = add i64 %930, 40
  %932 = add i64 %906, 36
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to double*
  %934 = load double, double* %933, align 8
  %935 = fmul double %928, %934
  store double %935, double* %83, align 1
  store i64 0, i64* %84, align 1
  %936 = fadd double %922, %935
  store double %936, double* %65, align 1
  store i64 0, i64* %66, align 1
  %937 = add i64 %906, 44
  store i64 %937, i64* %3, align 8
  %938 = load i64, i64* %908, align 8
  store i64 %938, i64* %RDX.i995, align 8
  %939 = add i64 %938, 112
  %940 = add i64 %906, 49
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to double*
  %942 = load double, double* %941, align 8
  store double %942, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %943 = add i64 %906, 53
  store i64 %943, i64* %3, align 8
  %944 = load i64, i64* %916, align 8
  store i64 %944, i64* %RDX.i995, align 8
  %945 = add i64 %944, 72
  %946 = add i64 %906, 58
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to double*
  %948 = load double, double* %947, align 8
  %949 = fmul double %942, %948
  store double %949, double* %83, align 1
  store i64 0, i64* %84, align 1
  %950 = fadd double %936, %949
  store double %950, double* %65, align 1
  store i64 0, i64* %66, align 1
  %951 = add i64 %906, 66
  store i64 %951, i64* %3, align 8
  %952 = load i64, i64* %908, align 8
  store i64 %952, i64* %RDX.i995, align 8
  %953 = add i64 %952, 120
  %954 = add i64 %906, 71
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to double*
  %956 = load double, double* %955, align 8
  store double %956, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %957 = add i64 %906, 75
  store i64 %957, i64* %3, align 8
  %958 = load i64, i64* %916, align 8
  store i64 %958, i64* %RDX.i995, align 8
  %959 = add i64 %958, 104
  %960 = add i64 %906, 80
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to double*
  %962 = load double, double* %961, align 8
  %963 = fmul double %956, %962
  store double %963, double* %83, align 1
  store i64 0, i64* %84, align 1
  %964 = fadd double %950, %963
  store double %964, double* %65, align 1
  store i64 0, i64* %66, align 1
  %965 = load i64, i64* %RBP.i, align 8
  %966 = add i64 %965, -56
  %967 = add i64 %906, 89
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to double*
  store double %964, double* %968, align 8
  %969 = load i64, i64* %RBP.i, align 8
  %970 = add i64 %969, -16
  %971 = load i64, i64* %3, align 8
  %972 = add i64 %971, 4
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RDX.i995, align 8
  %975 = add i64 %974, 96
  %976 = add i64 %971, 9
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to double*
  %978 = load double, double* %977, align 8
  store double %978, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %979 = add i64 %969, -24
  %980 = add i64 %971, 13
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RDX.i995, align 8
  %983 = add i64 %982, 16
  %984 = add i64 %971, 18
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to double*
  %986 = load double, double* %985, align 8
  %987 = fmul double %978, %986
  store double %987, double* %65, align 1
  store i64 0, i64* %66, align 1
  %988 = add i64 %971, 22
  store i64 %988, i64* %3, align 8
  %989 = load i64, i64* %973, align 8
  store i64 %989, i64* %RDX.i995, align 8
  %990 = add i64 %989, 104
  %991 = add i64 %971, 27
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to double*
  %993 = load double, double* %992, align 8
  store double %993, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %994 = add i64 %971, 31
  store i64 %994, i64* %3, align 8
  %995 = load i64, i64* %981, align 8
  store i64 %995, i64* %RDX.i995, align 8
  %996 = add i64 %995, 48
  %997 = add i64 %971, 36
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to double*
  %999 = load double, double* %998, align 8
  %1000 = fmul double %993, %999
  store double %1000, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1001 = fadd double %987, %1000
  store double %1001, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1002 = add i64 %971, 44
  store i64 %1002, i64* %3, align 8
  %1003 = load i64, i64* %973, align 8
  store i64 %1003, i64* %RDX.i995, align 8
  %1004 = add i64 %1003, 112
  %1005 = add i64 %971, 49
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to double*
  %1007 = load double, double* %1006, align 8
  store double %1007, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1008 = add i64 %971, 53
  store i64 %1008, i64* %3, align 8
  %1009 = load i64, i64* %981, align 8
  store i64 %1009, i64* %RDX.i995, align 8
  %1010 = add i64 %1009, 80
  %1011 = add i64 %971, 58
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to double*
  %1013 = load double, double* %1012, align 8
  %1014 = fmul double %1007, %1013
  store double %1014, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1015 = fadd double %1001, %1014
  store double %1015, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1016 = add i64 %971, 66
  store i64 %1016, i64* %3, align 8
  %1017 = load i64, i64* %973, align 8
  store i64 %1017, i64* %RDX.i995, align 8
  %1018 = add i64 %1017, 120
  %1019 = add i64 %971, 71
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to double*
  %1021 = load double, double* %1020, align 8
  store double %1021, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1022 = add i64 %971, 75
  store i64 %1022, i64* %3, align 8
  %1023 = load i64, i64* %981, align 8
  store i64 %1023, i64* %RDX.i995, align 8
  %1024 = add i64 %1023, 112
  %1025 = add i64 %971, 80
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to double*
  %1027 = load double, double* %1026, align 8
  %1028 = fmul double %1021, %1027
  store double %1028, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1029 = fadd double %1015, %1028
  store double %1029, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -48
  %1032 = add i64 %971, 89
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to double*
  store double %1029, double* %1033, align 8
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -16
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 4
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1035 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %RDX.i995, align 8
  %1040 = add i64 %1039, 96
  %1041 = add i64 %1036, 9
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to double*
  %1043 = load double, double* %1042, align 8
  store double %1043, double* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %1044 = add i64 %1034, -24
  %1045 = add i64 %1036, 13
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046, align 8
  store i64 %1047, i64* %RDX.i995, align 8
  %1048 = add i64 %1047, 24
  %1049 = add i64 %1036, 18
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to double*
  %1051 = load double, double* %1050, align 8
  %1052 = fmul double %1043, %1051
  store double %1052, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1053 = add i64 %1036, 22
  store i64 %1053, i64* %3, align 8
  %1054 = load i64, i64* %1038, align 8
  store i64 %1054, i64* %RDX.i995, align 8
  %1055 = add i64 %1054, 104
  %1056 = add i64 %1036, 27
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to double*
  %1058 = load double, double* %1057, align 8
  store double %1058, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1059 = add i64 %1036, 31
  store i64 %1059, i64* %3, align 8
  %1060 = load i64, i64* %1046, align 8
  store i64 %1060, i64* %RDX.i995, align 8
  %1061 = add i64 %1060, 56
  %1062 = add i64 %1036, 36
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to double*
  %1064 = load double, double* %1063, align 8
  %1065 = fmul double %1058, %1064
  store double %1065, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1066 = fadd double %1052, %1065
  store double %1066, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1067 = add i64 %1036, 44
  store i64 %1067, i64* %3, align 8
  %1068 = load i64, i64* %1038, align 8
  store i64 %1068, i64* %RDX.i995, align 8
  %1069 = add i64 %1068, 112
  %1070 = add i64 %1036, 49
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to double*
  %1072 = load double, double* %1071, align 8
  store double %1072, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1073 = add i64 %1036, 53
  store i64 %1073, i64* %3, align 8
  %1074 = load i64, i64* %1046, align 8
  store i64 %1074, i64* %RDX.i995, align 8
  %1075 = add i64 %1074, 88
  %1076 = add i64 %1036, 58
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to double*
  %1078 = load double, double* %1077, align 8
  %1079 = fmul double %1072, %1078
  store double %1079, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1080 = fadd double %1066, %1079
  store double %1080, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1081 = add i64 %1036, 66
  store i64 %1081, i64* %3, align 8
  %1082 = load i64, i64* %1038, align 8
  store i64 %1082, i64* %RDX.i995, align 8
  %1083 = add i64 %1082, 120
  %1084 = add i64 %1036, 71
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to double*
  %1086 = load double, double* %1085, align 8
  store double %1086, double* %83, align 1
  store double 0.000000e+00, double* %85, align 1
  %1087 = add i64 %1036, 75
  store i64 %1087, i64* %3, align 8
  %1088 = load i64, i64* %1046, align 8
  store i64 %1088, i64* %RDX.i995, align 8
  %1089 = add i64 %1088, 120
  %1090 = add i64 %1036, 80
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to double*
  %1092 = load double, double* %1091, align 8
  %1093 = fmul double %1086, %1092
  store double %1093, double* %83, align 1
  store i64 0, i64* %84, align 1
  %1094 = fadd double %1080, %1093
  store double %1094, double* %65, align 1
  store i64 0, i64* %66, align 1
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -40
  %1097 = add i64 %1036, 89
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to double*
  store double %1094, double* %1098, align 8
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -28
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, 7
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1100 to i32*
  store i32 0, i32* %1103, align 4
  %RAX.i29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400b0f

block_.L_400b0f:                                  ; preds = %block_400b19, %entry
  %1104 = phi i64 [ %1185, %block_400b19 ], [ %.pre, %entry ]
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -28
  %1107 = add i64 %1104, 4
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = add i32 %1109, -16
  %1111 = icmp ult i32 %1109, 16
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = and i32 %1110, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %21, align 1
  %1118 = xor i32 %1109, 16
  %1119 = xor i32 %1118, %1110
  %1120 = lshr i32 %1119, 4
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  store i8 %1122, i8* %26, align 1
  %1123 = icmp eq i32 %1110, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %29, align 1
  %1125 = lshr i32 %1110, 31
  %1126 = trunc i32 %1125 to i8
  store i8 %1126, i8* %32, align 1
  %1127 = lshr i32 %1109, 31
  %1128 = xor i32 %1125, %1127
  %1129 = add nuw nsw i32 %1128, %1127
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %38, align 1
  %.v = select i1 %1111, i64 10, i64 52
  %1132 = add i64 %1104, %.v
  store i64 %1132, i64* %3, align 8
  br i1 %1111, label %block_400b19, label %block_.L_400b43

block_400b19:                                     ; preds = %block_.L_400b0f
  %1133 = add i64 %1132, 3
  store i64 %1133, i64* %3, align 8
  %1134 = load i32, i32* %1108, align 4
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RAX.i29, align 8
  store i64 %1135, i64* %RCX.i27, align 8
  %1136 = shl nuw nsw i64 %1135, 3
  %1137 = add i64 %1105, -160
  %1138 = add i64 %1137, %1136
  %1139 = add i64 %1132, 14
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i64*
  %1141 = load i64, i64* %1140, align 8
  %1142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1141, i64* %1142, align 1
  store double 0.000000e+00, double* %67, align 1
  %1143 = add i64 %1105, -8
  %1144 = add i64 %1132, 18
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i64*
  %1146 = load i64, i64* %1145, align 8
  store i64 %1146, i64* %RCX.i27, align 8
  %1147 = add i64 %1132, 21
  store i64 %1147, i64* %3, align 8
  %1148 = load i32, i32* %1108, align 4
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i29, align 8
  store i64 %1149, i64* %RDX.i995, align 8
  %1150 = shl nuw nsw i64 %1149, 3
  %1151 = add i64 %1150, %1146
  %1152 = add i64 %1132, 28
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i64*
  store i64 %1141, i64* %1153, align 8
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -28
  %1156 = load i64, i64* %3, align 8
  %1157 = add i64 %1156, 3
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1155 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = add i32 %1159, 1
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RAX.i29, align 8
  %1162 = icmp eq i32 %1159, -1
  %1163 = icmp eq i32 %1160, 0
  %1164 = or i1 %1162, %1163
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %14, align 1
  %1166 = and i32 %1160, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %21, align 1
  %1171 = xor i32 %1159, %1160
  %1172 = lshr i32 %1171, 4
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  store i8 %1174, i8* %26, align 1
  %1175 = zext i1 %1163 to i8
  store i8 %1175, i8* %29, align 1
  %1176 = lshr i32 %1160, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %32, align 1
  %1178 = lshr i32 %1159, 31
  %1179 = xor i32 %1176, %1178
  %1180 = add nuw nsw i32 %1179, %1176
  %1181 = icmp eq i32 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %38, align 1
  %1183 = add i64 %1156, 9
  store i64 %1183, i64* %3, align 8
  store i32 %1160, i32* %1158, align 4
  %1184 = load i64, i64* %3, align 8
  %1185 = add i64 %1184, -47
  store i64 %1185, i64* %3, align 8
  br label %block_.L_400b0f

block_.L_400b43:                                  ; preds = %block_.L_400b0f
  %1186 = load i64, i64* %6, align 8
  %1187 = add i64 %1186, 32
  store i64 %1187, i64* %6, align 8
  %1188 = icmp ugt i64 %1186, -33
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %14, align 1
  %1190 = trunc i64 %1187 to i32
  %1191 = and i32 %1190, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  %1196 = xor i64 %1186, %1187
  %1197 = lshr i64 %1196, 4
  %1198 = trunc i64 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %26, align 1
  %1200 = icmp eq i64 %1187, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %29, align 1
  %1202 = lshr i64 %1187, 63
  %1203 = trunc i64 %1202 to i8
  store i8 %1203, i8* %32, align 1
  %1204 = lshr i64 %1186, 63
  %1205 = xor i64 %1202, %1204
  %1206 = add nuw nsw i64 %1205, %1202
  %1207 = icmp eq i64 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %38, align 1
  %1209 = add i64 %1132, 5
  store i64 %1209, i64* %3, align 8
  %1210 = add i64 %1186, 40
  %1211 = inttoptr i64 %1187 to i64*
  %1212 = load i64, i64* %1211, align 8
  store i64 %1212, i64* %RBP.i, align 8
  store i64 %1210, i64* %6, align 8
  %1213 = add i64 %1132, 6
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1210 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %3, align 8
  %1216 = add i64 %1186, 48
  store i64 %1216, i64* %6, align 8
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
