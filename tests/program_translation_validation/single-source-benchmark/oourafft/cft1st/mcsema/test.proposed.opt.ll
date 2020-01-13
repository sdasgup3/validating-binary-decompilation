; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x14d0__rip__4205552__type = type <{ [16 x i8] }>
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
@G_0x14d0__rip__4205552_ = local_unnamed_addr global %G_0x14d0__rip__4205552__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @cft1st(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %65 = inttoptr i64 %62 to double*
  %66 = load double, double* %65, align 8
  %67 = bitcast [32 x %union.VectorReg]* %63 to double*
  store double %66, double* %67, align 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %69 = bitcast i64* %68 to double*
  store double 0.000000e+00, double* %69, align 1
  %70 = add i64 %59, 12
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %61, align 8
  store i64 %71, i64* %RDX.i1791, align 8
  %72 = add i64 %71, 16
  %73 = add i64 %59, 17
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to double*
  %75 = load double, double* %74, align 8
  %76 = fadd double %66, %75
  store double %76, double* %67, align 1
  store i64 0, i64* %68, align 1
  %77 = add i64 %57, -96
  %78 = add i64 %59, 22
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to double*
  store double %76, double* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -16
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RDX.i1791, align 8
  %86 = add i64 %85, 8
  %87 = add i64 %82, 9
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to double*
  %89 = load double, double* %88, align 8
  store double %89, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %90 = add i64 %82, 13
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %84, align 8
  store i64 %91, i64* %RDX.i1791, align 8
  %92 = add i64 %91, 24
  %93 = add i64 %82, 18
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to double*
  %95 = load double, double* %94, align 8
  %96 = fadd double %89, %95
  store double %96, double* %67, align 1
  store i64 0, i64* %68, align 1
  %97 = add i64 %80, -104
  %98 = add i64 %82, 23
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to double*
  store double %96, double* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -16
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RDX.i1791, align 8
  %106 = add i64 %102, 8
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to double*
  %108 = load double, double* %107, align 8
  store double %108, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %109 = add i64 %102, 12
  store i64 %109, i64* %3, align 8
  %110 = load i64, i64* %104, align 8
  store i64 %110, i64* %RDX.i1791, align 8
  %111 = add i64 %110, 16
  %112 = add i64 %102, 17
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to double*
  %114 = load double, double* %113, align 8
  %115 = fsub double %108, %114
  store double %115, double* %67, align 1
  store i64 0, i64* %68, align 1
  %116 = add i64 %100, -112
  %117 = add i64 %102, 22
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to double*
  store double %115, double* %118, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -16
  %121 = load i64, i64* %3, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RDX.i1791, align 8
  %125 = add i64 %124, 8
  %126 = add i64 %121, 9
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to double*
  %128 = load double, double* %127, align 8
  store double %128, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %129 = add i64 %121, 13
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %123, align 8
  store i64 %130, i64* %RDX.i1791, align 8
  %131 = add i64 %130, 24
  %132 = add i64 %121, 18
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to double*
  %134 = load double, double* %133, align 8
  %135 = fsub double %128, %134
  store double %135, double* %67, align 1
  store i64 0, i64* %68, align 1
  %136 = add i64 %119, -120
  %137 = add i64 %121, 23
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to double*
  store double %135, double* %138, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -16
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RDX.i1791, align 8
  %145 = add i64 %144, 32
  %146 = add i64 %141, 9
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to double*
  %148 = load double, double* %147, align 8
  store double %148, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %149 = add i64 %141, 13
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %143, align 8
  store i64 %150, i64* %RDX.i1791, align 8
  %151 = add i64 %150, 48
  %152 = add i64 %141, 18
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to double*
  %154 = load double, double* %153, align 8
  %155 = fadd double %148, %154
  store double %155, double* %67, align 1
  store i64 0, i64* %68, align 1
  %156 = add i64 %139, -128
  %157 = add i64 %141, 23
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to double*
  store double %155, double* %158, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -16
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 4
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RDX.i1791, align 8
  %165 = add i64 %164, 40
  %166 = add i64 %161, 9
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to double*
  %168 = load double, double* %167, align 8
  store double %168, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %169 = add i64 %161, 13
  store i64 %169, i64* %3, align 8
  %170 = load i64, i64* %163, align 8
  store i64 %170, i64* %RDX.i1791, align 8
  %171 = add i64 %170, 56
  %172 = add i64 %161, 18
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to double*
  %174 = load double, double* %173, align 8
  %175 = fadd double %168, %174
  store double %175, double* %67, align 1
  store i64 0, i64* %68, align 1
  %176 = add i64 %159, -136
  %177 = add i64 %161, 26
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to double*
  store double %175, double* %178, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -16
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 4
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %180 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %RDX.i1791, align 8
  %185 = add i64 %184, 32
  %186 = add i64 %181, 9
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to double*
  %188 = load double, double* %187, align 8
  store double %188, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %189 = add i64 %181, 13
  store i64 %189, i64* %3, align 8
  %190 = load i64, i64* %183, align 8
  store i64 %190, i64* %RDX.i1791, align 8
  %191 = add i64 %190, 48
  %192 = add i64 %181, 18
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to double*
  %194 = load double, double* %193, align 8
  %195 = fsub double %188, %194
  store double %195, double* %67, align 1
  store i64 0, i64* %68, align 1
  %196 = add i64 %179, -144
  %197 = add i64 %181, 26
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to double*
  store double %195, double* %198, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -16
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 4
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %200 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RDX.i1791, align 8
  %205 = add i64 %204, 40
  %206 = add i64 %201, 9
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to double*
  %208 = load double, double* %207, align 8
  store double %208, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %209 = add i64 %201, 13
  store i64 %209, i64* %3, align 8
  %210 = load i64, i64* %203, align 8
  store i64 %210, i64* %RDX.i1791, align 8
  %211 = add i64 %210, 56
  %212 = add i64 %201, 18
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to double*
  %214 = load double, double* %213, align 8
  %215 = fsub double %208, %214
  store double %215, double* %67, align 1
  store i64 0, i64* %68, align 1
  %216 = add i64 %199, -152
  %217 = add i64 %201, 26
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to double*
  store double %215, double* %218, align 8
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -96
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 5
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %220 to double*
  %224 = load double, double* %223, align 8
  store double %224, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %225 = add i64 %219, -128
  %226 = add i64 %221, 10
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to double*
  %228 = load double, double* %227, align 8
  %229 = fadd double %224, %228
  store double %229, double* %67, align 1
  store i64 0, i64* %68, align 1
  %230 = add i64 %219, -16
  %231 = add i64 %221, 14
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RDX.i1791, align 8
  %234 = add i64 %221, 18
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to double*
  store double %229, double* %235, align 8
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -104
  %238 = load i64, i64* %3, align 8
  %239 = add i64 %238, 5
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %237 to double*
  %241 = load double, double* %240, align 8
  store double %241, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %242 = add i64 %236, -136
  %243 = add i64 %238, 13
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to double*
  %245 = load double, double* %244, align 8
  %246 = fadd double %241, %245
  store double %246, double* %67, align 1
  store i64 0, i64* %68, align 1
  %247 = add i64 %236, -16
  %248 = add i64 %238, 17
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RDX.i1791, align 8
  %251 = add i64 %250, 8
  %252 = add i64 %238, 22
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to double*
  store double %246, double* %253, align 8
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -96
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 5
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to double*
  %259 = load double, double* %258, align 8
  store double %259, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %260 = add i64 %254, -128
  %261 = add i64 %256, 10
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to double*
  %263 = load double, double* %262, align 8
  %264 = fsub double %259, %263
  store double %264, double* %67, align 1
  store i64 0, i64* %68, align 1
  %265 = add i64 %254, -16
  %266 = add i64 %256, 14
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RDX.i1791, align 8
  %269 = add i64 %268, 32
  %270 = add i64 %256, 19
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to double*
  store double %264, double* %271, align 8
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -104
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 5
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to double*
  %277 = load double, double* %276, align 8
  store double %277, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %278 = add i64 %272, -136
  %279 = add i64 %274, 13
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to double*
  %281 = load double, double* %280, align 8
  %282 = fsub double %277, %281
  store double %282, double* %67, align 1
  store i64 0, i64* %68, align 1
  %283 = add i64 %272, -16
  %284 = add i64 %274, 17
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDX.i1791, align 8
  %287 = add i64 %286, 40
  %288 = add i64 %274, 22
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to double*
  store double %282, double* %289, align 8
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -112
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, 5
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %291 to double*
  %295 = load double, double* %294, align 8
  store double %295, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %296 = add i64 %290, -152
  %297 = add i64 %292, 13
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to double*
  %299 = load double, double* %298, align 8
  %300 = fsub double %295, %299
  store double %300, double* %67, align 1
  store i64 0, i64* %68, align 1
  %301 = add i64 %290, -16
  %302 = add i64 %292, 17
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RDX.i1791, align 8
  %305 = add i64 %304, 16
  %306 = add i64 %292, 22
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to double*
  store double %300, double* %307, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -120
  %310 = load i64, i64* %3, align 8
  %311 = add i64 %310, 5
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %309 to double*
  %313 = load double, double* %312, align 8
  store double %313, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %314 = add i64 %308, -144
  %315 = add i64 %310, 13
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to double*
  %317 = load double, double* %316, align 8
  %318 = fadd double %313, %317
  store double %318, double* %67, align 1
  store i64 0, i64* %68, align 1
  %319 = add i64 %308, -16
  %320 = add i64 %310, 17
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDX.i1791, align 8
  %323 = add i64 %322, 24
  %324 = add i64 %310, 22
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to double*
  store double %318, double* %325, align 8
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -112
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 5
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %332 = add i64 %326, -152
  %333 = add i64 %328, 13
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to double*
  %335 = load double, double* %334, align 8
  %336 = fadd double %331, %335
  store double %336, double* %67, align 1
  store i64 0, i64* %68, align 1
  %337 = add i64 %326, -16
  %338 = add i64 %328, 17
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RDX.i1791, align 8
  %341 = add i64 %340, 48
  %342 = add i64 %328, 22
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to double*
  store double %336, double* %343, align 8
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -120
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 5
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %345 to double*
  %349 = load double, double* %348, align 8
  store double %349, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %350 = add i64 %344, -144
  %351 = add i64 %346, 13
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to double*
  %353 = load double, double* %352, align 8
  %354 = fsub double %349, %353
  store double %354, double* %67, align 1
  store i64 0, i64* %68, align 1
  %355 = add i64 %344, -16
  %356 = add i64 %346, 17
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RDX.i1791, align 8
  %359 = add i64 %358, 56
  %360 = add i64 %346, 22
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to double*
  store double %354, double* %361, align 8
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -24
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RDX.i1791, align 8
  %368 = add i64 %367, 16
  %369 = add i64 %364, 9
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i64*
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %371, i64* %372, align 1
  store double 0.000000e+00, double* %69, align 1
  %373 = add i64 %362, -48
  %374 = add i64 %364, 14
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %375, align 8
  %376 = load i64, i64* %RBP.i, align 8
  %377 = add i64 %376, -16
  %378 = load i64, i64* %3, align 8
  %379 = add i64 %378, 4
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %377 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RDX.i1791, align 8
  %382 = add i64 %381, 64
  %383 = add i64 %378, 9
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to double*
  %385 = load double, double* %384, align 8
  store double %385, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %386 = add i64 %378, 13
  store i64 %386, i64* %3, align 8
  %387 = load i64, i64* %380, align 8
  store i64 %387, i64* %RDX.i1791, align 8
  %388 = add i64 %387, 80
  %389 = add i64 %378, 18
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to double*
  %391 = load double, double* %390, align 8
  %392 = fadd double %385, %391
  store double %392, double* %67, align 1
  store i64 0, i64* %68, align 1
  %393 = add i64 %376, -96
  %394 = add i64 %378, 23
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to double*
  store double %392, double* %395, align 8
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -16
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 4
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %397 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %RDX.i1791, align 8
  %402 = add i64 %401, 72
  %403 = add i64 %398, 9
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to double*
  %405 = load double, double* %404, align 8
  store double %405, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %406 = add i64 %398, 13
  store i64 %406, i64* %3, align 8
  %407 = load i64, i64* %400, align 8
  store i64 %407, i64* %RDX.i1791, align 8
  %408 = add i64 %407, 88
  %409 = add i64 %398, 18
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to double*
  %411 = load double, double* %410, align 8
  %412 = fadd double %405, %411
  store double %412, double* %67, align 1
  store i64 0, i64* %68, align 1
  %413 = add i64 %396, -104
  %414 = add i64 %398, 23
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to double*
  store double %412, double* %415, align 8
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -16
  %418 = load i64, i64* %3, align 8
  %419 = add i64 %418, 4
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RDX.i1791, align 8
  %422 = add i64 %421, 64
  %423 = add i64 %418, 9
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to double*
  %425 = load double, double* %424, align 8
  store double %425, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %426 = add i64 %418, 13
  store i64 %426, i64* %3, align 8
  %427 = load i64, i64* %420, align 8
  store i64 %427, i64* %RDX.i1791, align 8
  %428 = add i64 %427, 80
  %429 = add i64 %418, 18
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to double*
  %431 = load double, double* %430, align 8
  %432 = fsub double %425, %431
  store double %432, double* %67, align 1
  store i64 0, i64* %68, align 1
  %433 = add i64 %416, -112
  %434 = add i64 %418, 23
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to double*
  store double %432, double* %435, align 8
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -16
  %438 = load i64, i64* %3, align 8
  %439 = add i64 %438, 4
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RDX.i1791, align 8
  %442 = add i64 %441, 72
  %443 = add i64 %438, 9
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to double*
  %445 = load double, double* %444, align 8
  store double %445, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %446 = add i64 %438, 13
  store i64 %446, i64* %3, align 8
  %447 = load i64, i64* %440, align 8
  store i64 %447, i64* %RDX.i1791, align 8
  %448 = add i64 %447, 88
  %449 = add i64 %438, 18
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to double*
  %451 = load double, double* %450, align 8
  %452 = fsub double %445, %451
  store double %452, double* %67, align 1
  store i64 0, i64* %68, align 1
  %453 = add i64 %436, -120
  %454 = add i64 %438, 23
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to double*
  store double %452, double* %455, align 8
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -16
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 4
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %457 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RDX.i1791, align 8
  %462 = add i64 %461, 96
  %463 = add i64 %458, 9
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to double*
  %465 = load double, double* %464, align 8
  store double %465, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %466 = add i64 %458, 13
  store i64 %466, i64* %3, align 8
  %467 = load i64, i64* %460, align 8
  store i64 %467, i64* %RDX.i1791, align 8
  %468 = add i64 %467, 112
  %469 = add i64 %458, 18
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to double*
  %471 = load double, double* %470, align 8
  %472 = fadd double %465, %471
  store double %472, double* %67, align 1
  store i64 0, i64* %68, align 1
  %473 = add i64 %456, -128
  %474 = add i64 %458, 23
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
  %482 = add i64 %481, 104
  %483 = add i64 %478, 9
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to double*
  %485 = load double, double* %484, align 8
  store double %485, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %486 = add i64 %478, 13
  store i64 %486, i64* %3, align 8
  %487 = load i64, i64* %480, align 8
  store i64 %487, i64* %RDX.i1791, align 8
  %488 = add i64 %487, 120
  %489 = add i64 %478, 18
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to double*
  %491 = load double, double* %490, align 8
  %492 = fadd double %485, %491
  store double %492, double* %67, align 1
  store i64 0, i64* %68, align 1
  %493 = add i64 %476, -136
  %494 = add i64 %478, 26
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to double*
  store double %492, double* %495, align 8
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -16
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 4
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RDX.i1791, align 8
  %502 = add i64 %501, 96
  %503 = add i64 %498, 9
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to double*
  %505 = load double, double* %504, align 8
  store double %505, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %506 = add i64 %498, 13
  store i64 %506, i64* %3, align 8
  %507 = load i64, i64* %500, align 8
  store i64 %507, i64* %RDX.i1791, align 8
  %508 = add i64 %507, 112
  %509 = add i64 %498, 18
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to double*
  %511 = load double, double* %510, align 8
  %512 = fsub double %505, %511
  store double %512, double* %67, align 1
  store i64 0, i64* %68, align 1
  %513 = add i64 %496, -144
  %514 = add i64 %498, 26
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to double*
  store double %512, double* %515, align 8
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -16
  %518 = load i64, i64* %3, align 8
  %519 = add i64 %518, 4
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %517 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RDX.i1791, align 8
  %522 = add i64 %521, 104
  %523 = add i64 %518, 9
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to double*
  %525 = load double, double* %524, align 8
  store double %525, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %526 = add i64 %518, 13
  store i64 %526, i64* %3, align 8
  %527 = load i64, i64* %520, align 8
  store i64 %527, i64* %RDX.i1791, align 8
  %528 = add i64 %527, 120
  %529 = add i64 %518, 18
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to double*
  %531 = load double, double* %530, align 8
  %532 = fsub double %525, %531
  store double %532, double* %67, align 1
  store i64 0, i64* %68, align 1
  %533 = add i64 %516, -152
  %534 = add i64 %518, 26
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to double*
  store double %532, double* %535, align 8
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -96
  %538 = load i64, i64* %3, align 8
  %539 = add i64 %538, 5
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %537 to double*
  %541 = load double, double* %540, align 8
  store double %541, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %542 = add i64 %536, -128
  %543 = add i64 %538, 10
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to double*
  %545 = load double, double* %544, align 8
  %546 = fadd double %541, %545
  store double %546, double* %67, align 1
  store i64 0, i64* %68, align 1
  %547 = add i64 %536, -16
  %548 = add i64 %538, 14
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RDX.i1791, align 8
  %551 = add i64 %550, 64
  %552 = add i64 %538, 19
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to double*
  store double %546, double* %553, align 8
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -104
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 5
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %555 to double*
  %559 = load double, double* %558, align 8
  store double %559, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %560 = add i64 %554, -136
  %561 = add i64 %556, 13
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  %564 = fadd double %559, %563
  store double %564, double* %67, align 1
  store i64 0, i64* %68, align 1
  %565 = add i64 %554, -16
  %566 = add i64 %556, 17
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RDX.i1791, align 8
  %569 = add i64 %568, 72
  %570 = add i64 %556, 22
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to double*
  store double %564, double* %571, align 8
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -136
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, 8
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %573 to double*
  %577 = load double, double* %576, align 8
  store double %577, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %578 = add i64 %572, -104
  %579 = add i64 %574, 13
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to double*
  %581 = load double, double* %580, align 8
  %582 = fsub double %577, %581
  store double %582, double* %67, align 1
  store i64 0, i64* %68, align 1
  %583 = add i64 %572, -16
  %584 = add i64 %574, 17
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RDX.i1791, align 8
  %587 = add i64 %586, 96
  %588 = add i64 %574, 22
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to double*
  store double %582, double* %589, align 8
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -96
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 5
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to double*
  %595 = load double, double* %594, align 8
  store double %595, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %596 = add i64 %590, -128
  %597 = add i64 %592, 10
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to double*
  %599 = load double, double* %598, align 8
  %600 = fsub double %595, %599
  store double %600, double* %67, align 1
  store i64 0, i64* %68, align 1
  %601 = add i64 %590, -16
  %602 = add i64 %592, 14
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RDX.i1791, align 8
  %605 = add i64 %604, 104
  %606 = add i64 %592, 19
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to double*
  store double %600, double* %607, align 8
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -112
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 5
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %609 to double*
  %613 = load double, double* %612, align 8
  store double %613, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %614 = add i64 %608, -152
  %615 = add i64 %610, 13
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to double*
  %617 = load double, double* %616, align 8
  %618 = fsub double %613, %617
  store double %618, double* %67, align 1
  store i64 0, i64* %68, align 1
  %619 = add i64 %608, -96
  %620 = add i64 %610, 18
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to double*
  store double %618, double* %621, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -120
  %624 = load i64, i64* %3, align 8
  %625 = add i64 %624, 5
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %623 to double*
  %627 = load double, double* %626, align 8
  store double %627, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %628 = add i64 %622, -144
  %629 = add i64 %624, 13
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to double*
  %631 = load double, double* %630, align 8
  %632 = fadd double %627, %631
  store double %632, double* %67, align 1
  store i64 0, i64* %68, align 1
  %633 = add i64 %622, -104
  %634 = add i64 %624, 18
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to double*
  store double %632, double* %635, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -48
  %638 = load i64, i64* %3, align 8
  %639 = add i64 %638, 5
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %637 to double*
  %641 = load double, double* %640, align 8
  store double %641, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %643 = bitcast %union.VectorReg* %642 to i8*
  %644 = add i64 %636, -96
  %645 = add i64 %638, 10
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to double*
  %647 = load double, double* %646, align 8
  %648 = bitcast %union.VectorReg* %642 to double*
  store double %647, double* %648, align 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %650 = bitcast i64* %649 to double*
  store double 0.000000e+00, double* %650, align 1
  %651 = add i64 %636, -104
  %652 = add i64 %638, 15
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to double*
  %654 = load double, double* %653, align 8
  %655 = fsub double %647, %654
  store double %655, double* %648, align 1
  store i64 0, i64* %649, align 1
  %656 = fmul double %641, %655
  store double %656, double* %67, align 1
  store i64 0, i64* %68, align 1
  %657 = add i64 %636, -16
  %658 = add i64 %638, 23
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RDX.i1791, align 8
  %661 = add i64 %660, 80
  %662 = add i64 %638, 28
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to double*
  store double %656, double* %663, align 8
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -48
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, 5
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to double*
  %669 = load double, double* %668, align 8
  store double %669, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %670 = add i64 %664, -96
  %671 = add i64 %666, 10
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to double*
  %673 = load double, double* %672, align 8
  store double %673, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %674 = add i64 %664, -104
  %675 = add i64 %666, 15
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to double*
  %677 = load double, double* %676, align 8
  %678 = fadd double %673, %677
  store double %678, double* %648, align 1
  store i64 0, i64* %649, align 1
  %679 = fmul double %669, %678
  store double %679, double* %67, align 1
  store i64 0, i64* %68, align 1
  %680 = add i64 %664, -16
  %681 = add i64 %666, 23
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RDX.i1791, align 8
  %684 = add i64 %683, 88
  %685 = add i64 %666, 28
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to double*
  store double %679, double* %686, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -152
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, 8
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %688 to double*
  %692 = load double, double* %691, align 8
  store double %692, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %693 = add i64 %687, -112
  %694 = add i64 %689, 13
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to double*
  %696 = load double, double* %695, align 8
  %697 = fadd double %692, %696
  store double %697, double* %67, align 1
  store i64 0, i64* %68, align 1
  %698 = add i64 %687, -96
  %699 = add i64 %689, 18
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to double*
  store double %697, double* %700, align 8
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -144
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 8
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to double*
  %706 = load double, double* %705, align 8
  store double %706, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %707 = add i64 %701, -120
  %708 = add i64 %703, 13
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to double*
  %710 = load double, double* %709, align 8
  %711 = fsub double %706, %710
  store double %711, double* %67, align 1
  store i64 0, i64* %68, align 1
  %712 = add i64 %701, -104
  %713 = add i64 %703, 18
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to double*
  store double %711, double* %714, align 8
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -48
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, 5
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %716 to double*
  %720 = load double, double* %719, align 8
  store double %720, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %721 = add i64 %715, -104
  %722 = add i64 %717, 10
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to double*
  %724 = load double, double* %723, align 8
  store double %724, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %725 = add i64 %715, -96
  %726 = add i64 %717, 15
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to double*
  %728 = load double, double* %727, align 8
  %729 = fsub double %724, %728
  store double %729, double* %648, align 1
  store i64 0, i64* %649, align 1
  %730 = fmul double %720, %729
  store double %730, double* %67, align 1
  store i64 0, i64* %68, align 1
  %731 = add i64 %715, -16
  %732 = add i64 %717, 23
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RDX.i1791, align 8
  %735 = add i64 %734, 112
  %736 = add i64 %717, 28
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to double*
  store double %730, double* %737, align 8
  %738 = load i64, i64* %RBP.i, align 8
  %739 = add i64 %738, -48
  %740 = load i64, i64* %3, align 8
  %741 = add i64 %740, 5
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %739 to double*
  %743 = load double, double* %742, align 8
  store double %743, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %744 = add i64 %738, -104
  %745 = add i64 %740, 10
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to double*
  %747 = load double, double* %746, align 8
  store double %747, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %748 = add i64 %738, -96
  %749 = add i64 %740, 15
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to double*
  %751 = load double, double* %750, align 8
  %752 = fadd double %747, %751
  store double %752, double* %648, align 1
  store i64 0, i64* %649, align 1
  %753 = fmul double %743, %752
  store double %753, double* %67, align 1
  store i64 0, i64* %68, align 1
  %754 = add i64 %738, -16
  %755 = add i64 %740, 23
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RDX.i1791, align 8
  %758 = add i64 %757, 120
  %759 = add i64 %740, 28
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to double*
  store double %753, double* %760, align 8
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -32
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, 7
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %762 to i32*
  store i32 0, i32* %765, align 4
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -28
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 7
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %767 to i32*
  store i32 16, i32* %770, align 4
  %RAX.i1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %772 = bitcast %union.VectorReg* %771 to i8*
  %773 = bitcast [32 x %union.VectorReg]* %63 to <2 x i32>*
  %774 = bitcast i64* %68 to <2 x i32>*
  %775 = bitcast %union.VectorReg* %771 to i32*
  %776 = getelementptr inbounds i8, i8* %772, i64 4
  %777 = bitcast i8* %776 to i32*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %779 = bitcast i64* %778 to i32*
  %780 = getelementptr inbounds i8, i8* %772, i64 12
  %781 = bitcast i8* %780 to i32*
  %782 = bitcast %union.VectorReg* %771 to double*
  %783 = bitcast %union.VectorReg* %642 to i32*
  %784 = getelementptr inbounds i8, i8* %643, i64 4
  %785 = bitcast i8* %784 to i32*
  %786 = bitcast i64* %649 to i32*
  %787 = getelementptr inbounds i8, i8* %643, i64 12
  %788 = bitcast i8* %787 to i32*
  %789 = bitcast i64* %778 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402bd2

block_.L_402bd2:                                  ; preds = %block_402bde, %entry
  %790 = phi i64 [ %3397, %block_402bde ], [ %.pre, %entry ]
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -28
  %793 = add i64 %790, 3
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX.i1283, align 8
  %797 = add i64 %791, -4
  %798 = add i64 %790, 6
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = sub i32 %795, %800
  %802 = icmp ult i32 %795, %800
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %14, align 1
  %804 = and i32 %801, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  %809 = xor i32 %800, %795
  %810 = xor i32 %809, %801
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %27, align 1
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %30, align 1
  %816 = lshr i32 %801, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %33, align 1
  %818 = lshr i32 %795, 31
  %819 = lshr i32 %800, 31
  %820 = xor i32 %819, %818
  %821 = xor i32 %816, %818
  %822 = add nuw nsw i32 %821, %820
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %39, align 1
  %825 = icmp ne i8 %817, 0
  %826 = xor i1 %825, %823
  %.v = select i1 %826, i64 12, i64 1820
  %827 = add i64 %790, %.v
  store i64 %827, i64* %3, align 8
  br i1 %826, label %block_402bde, label %block_.L_4032ee

block_402bde:                                     ; preds = %block_.L_402bd2
  store i64 -9223372036854775808, i64* %RAX.i1283, align 8
  %828 = load i64, i64* bitcast (%G_0x14d0__rip__4205552__type* @G_0x14d0__rip__4205552_ to i64*), align 8
  store i64 %828, i64* %372, align 1
  store double 0.000000e+00, double* %69, align 1
  %829 = add i64 %791, -32
  %830 = add i64 %827, 21
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = add i32 %832, 2
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RCX.i1272, align 8
  %835 = icmp ugt i32 %832, -3
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %14, align 1
  %837 = and i32 %833, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %21, align 1
  %842 = xor i32 %832, %833
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %27, align 1
  %846 = icmp eq i32 %833, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %30, align 1
  %848 = lshr i32 %833, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %33, align 1
  %850 = lshr i32 %832, 31
  %851 = xor i32 %848, %850
  %852 = add nuw nsw i32 %851, %848
  %853 = icmp eq i32 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %39, align 1
  %855 = add i64 %827, 27
  store i64 %855, i64* %3, align 8
  store i32 %833, i32* %831, align 4
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -32
  %858 = load i64, i64* %3, align 8
  %859 = add i64 %858, 3
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %857 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = shl i32 %861, 1
  %863 = icmp slt i32 %861, 0
  %864 = icmp slt i32 %862, 0
  %865 = xor i1 %863, %864
  %866 = zext i32 %862 to i64
  store i64 %866, i64* %RCX.i1272, align 8
  %.lobit = lshr i32 %861, 31
  %867 = trunc i32 %.lobit to i8
  store i8 %867, i8* %14, align 1
  %868 = and i32 %862, 254
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %873 = icmp eq i32 %862, 0
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %30, align 1
  %875 = lshr i32 %861, 30
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %33, align 1
  %878 = zext i1 %865 to i8
  store i8 %878, i8* %39, align 1
  %879 = add i64 %856, -36
  %880 = add i64 %858, 9
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  store i32 %862, i32* %881, align 4
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -24
  %884 = load i64, i64* %3, align 8
  %885 = add i64 %884, 4
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %883 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %RDX.i1791, align 8
  %888 = add i64 %882, -32
  %889 = add i64 %884, 8
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %RSI.i1794, align 8
  %893 = shl nsw i64 %892, 3
  %894 = add i64 %893, %887
  %895 = add i64 %884, 13
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  %898 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %897, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %899 = add i64 %882, -64
  %900 = add i64 %884, 18
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  store i64 %897, i64* %901, align 8
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -24
  %904 = load i64, i64* %3, align 8
  %905 = add i64 %904, 4
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %903 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RDX.i1791, align 8
  %908 = add i64 %902, -32
  %909 = add i64 %904, 7
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = add i32 %911, 1
  %913 = zext i32 %912 to i64
  store i64 %913, i64* %RCX.i1272, align 8
  %914 = icmp eq i32 %911, -1
  %915 = icmp eq i32 %912, 0
  %916 = or i1 %914, %915
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %14, align 1
  %918 = and i32 %912, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  %923 = xor i32 %911, %912
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  store i8 %926, i8* %27, align 1
  %927 = zext i1 %915 to i8
  store i8 %927, i8* %30, align 1
  %928 = lshr i32 %912, 31
  %929 = trunc i32 %928 to i8
  store i8 %929, i8* %33, align 1
  %930 = lshr i32 %911, 31
  %931 = xor i32 %928, %930
  %932 = add nuw nsw i32 %931, %928
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %39, align 1
  %935 = sext i32 %912 to i64
  store i64 %935, i64* %RSI.i1794, align 8
  %936 = shl nsw i64 %935, 3
  %937 = add i64 %936, %907
  %938 = add i64 %904, 18
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i64*
  %940 = load i64, i64* %939, align 8
  store i64 %940, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %941 = add i64 %902, -72
  %942 = add i64 %904, 23
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i64*
  store i64 %940, i64* %943, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -24
  %946 = load i64, i64* %3, align 8
  %947 = add i64 %946, 4
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %945 to i64*
  %949 = load i64, i64* %948, align 8
  store i64 %949, i64* %RDX.i1791, align 8
  %950 = add i64 %944, -36
  %951 = add i64 %946, 8
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = sext i32 %953 to i64
  store i64 %954, i64* %RSI.i1794, align 8
  %955 = shl nsw i64 %954, 3
  %956 = add i64 %955, %949
  %957 = add i64 %946, 13
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i64*
  %959 = load i64, i64* %958, align 8
  store i64 %959, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %960 = add i64 %944, -48
  %961 = add i64 %946, 18
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i64*
  store i64 %959, i64* %962, align 8
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -24
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 4
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RDX.i1791, align 8
  %969 = add i64 %963, -36
  %970 = add i64 %965, 7
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = add i32 %972, 1
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RCX.i1272, align 8
  %975 = icmp eq i32 %972, -1
  %976 = icmp eq i32 %973, 0
  %977 = or i1 %975, %976
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %14, align 1
  %979 = and i32 %973, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %21, align 1
  %984 = xor i32 %972, %973
  %985 = lshr i32 %984, 4
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %27, align 1
  %988 = zext i1 %976 to i8
  store i8 %988, i8* %30, align 1
  %989 = lshr i32 %973, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %33, align 1
  %991 = lshr i32 %972, 31
  %992 = xor i32 %989, %991
  %993 = add nuw nsw i32 %992, %989
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %39, align 1
  %996 = sext i32 %973 to i64
  store i64 %996, i64* %RSI.i1794, align 8
  %997 = shl nsw i64 %996, 3
  %998 = add i64 %997, %968
  %999 = add i64 %965, 18
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %1002 = add i64 %963, -56
  %1003 = add i64 %965, 23
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i64*
  store i64 %1001, i64* %1004, align 8
  %1005 = load i64, i64* %RBP.i, align 8
  %1006 = add i64 %1005, -48
  %1007 = load i64, i64* %3, align 8
  %1008 = add i64 %1007, 5
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1006 to double*
  %1010 = load double, double* %1009, align 8
  store double %1010, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1011 = load <2 x i32>, <2 x i32>* %773, align 1
  %1012 = load <2 x i32>, <2 x i32>* %774, align 1
  %1013 = extractelement <2 x i32> %1011, i32 0
  store i32 %1013, i32* %775, align 1
  %1014 = extractelement <2 x i32> %1011, i32 1
  store i32 %1014, i32* %777, align 1
  %1015 = extractelement <2 x i32> %1012, i32 0
  store i32 %1015, i32* %779, align 1
  %1016 = extractelement <2 x i32> %1012, i32 1
  store i32 %1016, i32* %781, align 1
  %1017 = add i64 %1005, -72
  %1018 = add i64 %1007, 13
  store i64 %1018, i64* %3, align 8
  %1019 = load double, double* %782, align 1
  %1020 = inttoptr i64 %1017 to double*
  %1021 = load double, double* %1020, align 8
  %1022 = fmul double %1019, %1021
  store double %1022, double* %782, align 1
  %1023 = add i64 %1005, -56
  %1024 = add i64 %1007, 18
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to double*
  %1026 = load double, double* %1025, align 8
  %1027 = fmul double %1022, %1026
  store double %1027, double* %782, align 1
  %1028 = fsub double %1010, %1027
  %1029 = add i64 %1005, -80
  %1030 = add i64 %1007, 27
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to double*
  store double %1028, double* %1031, align 8
  %1032 = load i64, i64* %3, align 8
  %1033 = load <2 x i32>, <2 x i32>* %773, align 1
  %1034 = load <2 x i32>, <2 x i32>* %774, align 1
  %1035 = extractelement <2 x i32> %1033, i32 0
  store i32 %1035, i32* %783, align 1
  %1036 = extractelement <2 x i32> %1033, i32 1
  store i32 %1036, i32* %785, align 1
  %1037 = extractelement <2 x i32> %1034, i32 0
  store i32 %1037, i32* %786, align 1
  %1038 = extractelement <2 x i32> %1034, i32 1
  store i32 %1038, i32* %788, align 1
  %1039 = load i64, i64* %RBP.i, align 8
  %1040 = add i64 %1039, -72
  %1041 = add i64 %1032, 8
  store i64 %1041, i64* %3, align 8
  %1042 = load double, double* %648, align 1
  %1043 = inttoptr i64 %1040 to double*
  %1044 = load double, double* %1043, align 8
  %1045 = fmul double %1042, %1044
  store double %1045, double* %648, align 1
  %1046 = add i64 %1039, -48
  %1047 = add i64 %1032, 13
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to double*
  %1049 = load double, double* %1048, align 8
  %1050 = fmul double %1045, %1049
  store double %1050, double* %648, align 1
  %1051 = add i64 %1039, -56
  %1052 = add i64 %1032, 18
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to double*
  %1054 = load double, double* %1053, align 8
  %1055 = fsub double %1050, %1054
  store double %1055, double* %648, align 1
  %1056 = add i64 %1039, -88
  %1057 = add i64 %1032, 23
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to double*
  store double %1055, double* %1058, align 8
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -16
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, 4
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i64*
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %RDX.i1791, align 8
  %1065 = add i64 %1059, -28
  %1066 = add i64 %1061, 8
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = sext i32 %1068 to i64
  store i64 %1069, i64* %RSI.i1794, align 8
  %1070 = shl nsw i64 %1069, 3
  %1071 = add i64 %1070, %1064
  %1072 = add i64 %1061, 13
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to double*
  %1074 = load double, double* %1073, align 8
  store double %1074, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1075 = add i64 %1061, 17
  store i64 %1075, i64* %3, align 8
  %1076 = load i64, i64* %1063, align 8
  store i64 %1076, i64* %RDX.i1791, align 8
  %1077 = add i64 %1061, 20
  store i64 %1077, i64* %3, align 8
  %1078 = load i32, i32* %1067, align 4
  %1079 = add i32 %1078, 2
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RCX.i1272, align 8
  %1081 = icmp ugt i32 %1078, -3
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %14, align 1
  %1083 = and i32 %1079, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %21, align 1
  %1088 = xor i32 %1078, %1079
  %1089 = lshr i32 %1088, 4
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  store i8 %1091, i8* %27, align 1
  %1092 = icmp eq i32 %1079, 0
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %30, align 1
  %1094 = lshr i32 %1079, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %33, align 1
  %1096 = lshr i32 %1078, 31
  %1097 = xor i32 %1094, %1096
  %1098 = add nuw nsw i32 %1097, %1094
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %39, align 1
  %1101 = sext i32 %1079 to i64
  store i64 %1101, i64* %RSI.i1794, align 8
  %1102 = shl nsw i64 %1101, 3
  %1103 = add i64 %1102, %1076
  %1104 = add i64 %1061, 31
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to double*
  %1106 = load double, double* %1105, align 8
  %1107 = fadd double %1074, %1106
  store double %1107, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1108 = add i64 %1059, -96
  %1109 = add i64 %1061, 36
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to double*
  store double %1107, double* %1110, align 8
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -16
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, 4
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1112 to i64*
  %1116 = load i64, i64* %1115, align 8
  store i64 %1116, i64* %RDX.i1791, align 8
  %1117 = add i64 %1111, -28
  %1118 = add i64 %1113, 7
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = add i32 %1120, 1
  %1122 = zext i32 %1121 to i64
  store i64 %1122, i64* %RCX.i1272, align 8
  %1123 = icmp eq i32 %1120, -1
  %1124 = icmp eq i32 %1121, 0
  %1125 = or i1 %1123, %1124
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %14, align 1
  %1127 = and i32 %1121, 255
  %1128 = tail call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  store i8 %1131, i8* %21, align 1
  %1132 = xor i32 %1120, %1121
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %27, align 1
  %1136 = zext i1 %1124 to i8
  store i8 %1136, i8* %30, align 1
  %1137 = lshr i32 %1121, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %33, align 1
  %1139 = lshr i32 %1120, 31
  %1140 = xor i32 %1137, %1139
  %1141 = add nuw nsw i32 %1140, %1137
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %39, align 1
  %1144 = sext i32 %1121 to i64
  store i64 %1144, i64* %RSI.i1794, align 8
  %1145 = shl nsw i64 %1144, 3
  %1146 = add i64 %1145, %1116
  %1147 = add i64 %1113, 18
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to double*
  %1149 = load double, double* %1148, align 8
  store double %1149, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1150 = add i64 %1113, 22
  store i64 %1150, i64* %3, align 8
  %1151 = load i64, i64* %1115, align 8
  store i64 %1151, i64* %RDX.i1791, align 8
  %1152 = add i64 %1113, 25
  store i64 %1152, i64* %3, align 8
  %1153 = load i32, i32* %1119, align 4
  %1154 = add i32 %1153, 3
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RCX.i1272, align 8
  %1156 = icmp ugt i32 %1153, -4
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %14, align 1
  %1158 = and i32 %1154, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %21, align 1
  %1163 = xor i32 %1153, %1154
  %1164 = lshr i32 %1163, 4
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %27, align 1
  %1167 = icmp eq i32 %1154, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %30, align 1
  %1169 = lshr i32 %1154, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %33, align 1
  %1171 = lshr i32 %1153, 31
  %1172 = xor i32 %1169, %1171
  %1173 = add nuw nsw i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %39, align 1
  %1176 = sext i32 %1154 to i64
  store i64 %1176, i64* %RSI.i1794, align 8
  %1177 = shl nsw i64 %1176, 3
  %1178 = add i64 %1177, %1151
  %1179 = add i64 %1113, 36
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to double*
  %1181 = load double, double* %1180, align 8
  %1182 = fadd double %1149, %1181
  store double %1182, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1183 = load i64, i64* %RBP.i, align 8
  %1184 = add i64 %1183, -104
  %1185 = add i64 %1113, 41
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to double*
  store double %1182, double* %1186, align 8
  %1187 = load i64, i64* %RBP.i, align 8
  %1188 = add i64 %1187, -16
  %1189 = load i64, i64* %3, align 8
  %1190 = add i64 %1189, 4
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1188 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RDX.i1791, align 8
  %1193 = add i64 %1187, -28
  %1194 = add i64 %1189, 8
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = sext i32 %1196 to i64
  store i64 %1197, i64* %RSI.i1794, align 8
  %1198 = shl nsw i64 %1197, 3
  %1199 = add i64 %1198, %1192
  %1200 = add i64 %1189, 13
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to double*
  %1202 = load double, double* %1201, align 8
  store double %1202, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1203 = add i64 %1189, 17
  store i64 %1203, i64* %3, align 8
  %1204 = load i64, i64* %1191, align 8
  store i64 %1204, i64* %RDX.i1791, align 8
  %1205 = add i64 %1189, 20
  store i64 %1205, i64* %3, align 8
  %1206 = load i32, i32* %1195, align 4
  %1207 = add i32 %1206, 2
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RCX.i1272, align 8
  %1209 = icmp ugt i32 %1206, -3
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %14, align 1
  %1211 = and i32 %1207, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %21, align 1
  %1216 = xor i32 %1206, %1207
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %27, align 1
  %1220 = icmp eq i32 %1207, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %30, align 1
  %1222 = lshr i32 %1207, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %33, align 1
  %1224 = lshr i32 %1206, 31
  %1225 = xor i32 %1222, %1224
  %1226 = add nuw nsw i32 %1225, %1222
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %39, align 1
  %1229 = sext i32 %1207 to i64
  store i64 %1229, i64* %RSI.i1794, align 8
  %1230 = shl nsw i64 %1229, 3
  %1231 = add i64 %1230, %1204
  %1232 = add i64 %1189, 31
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to double*
  %1234 = load double, double* %1233, align 8
  %1235 = fsub double %1202, %1234
  store double %1235, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1236 = add i64 %1187, -112
  %1237 = add i64 %1189, 36
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to double*
  store double %1235, double* %1238, align 8
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -16
  %1241 = load i64, i64* %3, align 8
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1240 to i64*
  %1244 = load i64, i64* %1243, align 8
  store i64 %1244, i64* %RDX.i1791, align 8
  %1245 = add i64 %1239, -28
  %1246 = add i64 %1241, 7
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = add i32 %1248, 1
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RCX.i1272, align 8
  %1251 = icmp eq i32 %1248, -1
  %1252 = icmp eq i32 %1249, 0
  %1253 = or i1 %1251, %1252
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %14, align 1
  %1255 = and i32 %1249, 255
  %1256 = tail call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  store i8 %1259, i8* %21, align 1
  %1260 = xor i32 %1248, %1249
  %1261 = lshr i32 %1260, 4
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  store i8 %1263, i8* %27, align 1
  %1264 = zext i1 %1252 to i8
  store i8 %1264, i8* %30, align 1
  %1265 = lshr i32 %1249, 31
  %1266 = trunc i32 %1265 to i8
  store i8 %1266, i8* %33, align 1
  %1267 = lshr i32 %1248, 31
  %1268 = xor i32 %1265, %1267
  %1269 = add nuw nsw i32 %1268, %1265
  %1270 = icmp eq i32 %1269, 2
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %39, align 1
  %1272 = sext i32 %1249 to i64
  store i64 %1272, i64* %RSI.i1794, align 8
  %1273 = shl nsw i64 %1272, 3
  %1274 = add i64 %1273, %1244
  %1275 = add i64 %1241, 18
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to double*
  %1277 = load double, double* %1276, align 8
  store double %1277, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1278 = add i64 %1241, 22
  store i64 %1278, i64* %3, align 8
  %1279 = load i64, i64* %1243, align 8
  store i64 %1279, i64* %RDX.i1791, align 8
  %1280 = add i64 %1241, 25
  store i64 %1280, i64* %3, align 8
  %1281 = load i32, i32* %1247, align 4
  %1282 = add i32 %1281, 3
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RCX.i1272, align 8
  %1284 = icmp ugt i32 %1281, -4
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %14, align 1
  %1286 = and i32 %1282, 255
  %1287 = tail call i32 @llvm.ctpop.i32(i32 %1286)
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  %1290 = xor i8 %1289, 1
  store i8 %1290, i8* %21, align 1
  %1291 = xor i32 %1281, %1282
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %27, align 1
  %1295 = icmp eq i32 %1282, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %30, align 1
  %1297 = lshr i32 %1282, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %33, align 1
  %1299 = lshr i32 %1281, 31
  %1300 = xor i32 %1297, %1299
  %1301 = add nuw nsw i32 %1300, %1297
  %1302 = icmp eq i32 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %39, align 1
  %1304 = sext i32 %1282 to i64
  store i64 %1304, i64* %RSI.i1794, align 8
  %1305 = shl nsw i64 %1304, 3
  %1306 = add i64 %1305, %1279
  %1307 = add i64 %1241, 36
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to double*
  %1309 = load double, double* %1308, align 8
  %1310 = fsub double %1277, %1309
  store double %1310, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1311 = load i64, i64* %RBP.i, align 8
  %1312 = add i64 %1311, -120
  %1313 = add i64 %1241, 41
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to double*
  store double %1310, double* %1314, align 8
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -16
  %1317 = load i64, i64* %3, align 8
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1316 to i64*
  %1320 = load i64, i64* %1319, align 8
  store i64 %1320, i64* %RDX.i1791, align 8
  %1321 = add i64 %1315, -28
  %1322 = add i64 %1317, 7
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = add i32 %1324, 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RCX.i1272, align 8
  %1327 = icmp ugt i32 %1324, -5
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %14, align 1
  %1329 = and i32 %1325, 255
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %21, align 1
  %1334 = xor i32 %1324, %1325
  %1335 = lshr i32 %1334, 4
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  store i8 %1337, i8* %27, align 1
  %1338 = icmp eq i32 %1325, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %30, align 1
  %1340 = lshr i32 %1325, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %33, align 1
  %1342 = lshr i32 %1324, 31
  %1343 = xor i32 %1340, %1342
  %1344 = add nuw nsw i32 %1343, %1340
  %1345 = icmp eq i32 %1344, 2
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %39, align 1
  %1347 = sext i32 %1325 to i64
  store i64 %1347, i64* %RSI.i1794, align 8
  %1348 = shl nsw i64 %1347, 3
  %1349 = add i64 %1348, %1320
  %1350 = add i64 %1317, 18
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to double*
  %1352 = load double, double* %1351, align 8
  store double %1352, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1353 = add i64 %1317, 22
  store i64 %1353, i64* %3, align 8
  %1354 = load i64, i64* %1319, align 8
  store i64 %1354, i64* %RDX.i1791, align 8
  %1355 = add i64 %1317, 25
  store i64 %1355, i64* %3, align 8
  %1356 = load i32, i32* %1323, align 4
  %1357 = add i32 %1356, 6
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RCX.i1272, align 8
  %1359 = icmp ugt i32 %1356, -7
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %14, align 1
  %1361 = and i32 %1357, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %21, align 1
  %1366 = xor i32 %1356, %1357
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %27, align 1
  %1370 = icmp eq i32 %1357, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %30, align 1
  %1372 = lshr i32 %1357, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %33, align 1
  %1374 = lshr i32 %1356, 31
  %1375 = xor i32 %1372, %1374
  %1376 = add nuw nsw i32 %1375, %1372
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %39, align 1
  %1379 = sext i32 %1357 to i64
  store i64 %1379, i64* %RSI.i1794, align 8
  %1380 = shl nsw i64 %1379, 3
  %1381 = add i64 %1380, %1354
  %1382 = add i64 %1317, 36
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to double*
  %1384 = load double, double* %1383, align 8
  %1385 = fadd double %1352, %1384
  store double %1385, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -128
  %1388 = add i64 %1317, 41
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to double*
  store double %1385, double* %1389, align 8
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -16
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 4
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1391 to i64*
  %1395 = load i64, i64* %1394, align 8
  store i64 %1395, i64* %RDX.i1791, align 8
  %1396 = add i64 %1390, -28
  %1397 = add i64 %1392, 7
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = add i32 %1399, 5
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RCX.i1272, align 8
  %1402 = icmp ugt i32 %1399, -6
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %14, align 1
  %1404 = and i32 %1400, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %21, align 1
  %1409 = xor i32 %1399, %1400
  %1410 = lshr i32 %1409, 4
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %27, align 1
  %1413 = icmp eq i32 %1400, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %30, align 1
  %1415 = lshr i32 %1400, 31
  %1416 = trunc i32 %1415 to i8
  store i8 %1416, i8* %33, align 1
  %1417 = lshr i32 %1399, 31
  %1418 = xor i32 %1415, %1417
  %1419 = add nuw nsw i32 %1418, %1415
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %39, align 1
  %1422 = sext i32 %1400 to i64
  store i64 %1422, i64* %RSI.i1794, align 8
  %1423 = shl nsw i64 %1422, 3
  %1424 = add i64 %1423, %1395
  %1425 = add i64 %1392, 18
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to double*
  %1427 = load double, double* %1426, align 8
  store double %1427, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1428 = add i64 %1392, 22
  store i64 %1428, i64* %3, align 8
  %1429 = load i64, i64* %1394, align 8
  store i64 %1429, i64* %RDX.i1791, align 8
  %1430 = add i64 %1392, 25
  store i64 %1430, i64* %3, align 8
  %1431 = load i32, i32* %1398, align 4
  %1432 = add i32 %1431, 7
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RCX.i1272, align 8
  %1434 = icmp ugt i32 %1431, -8
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %14, align 1
  %1436 = and i32 %1432, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %21, align 1
  %1441 = xor i32 %1431, %1432
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %27, align 1
  %1445 = icmp eq i32 %1432, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %30, align 1
  %1447 = lshr i32 %1432, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %33, align 1
  %1449 = lshr i32 %1431, 31
  %1450 = xor i32 %1447, %1449
  %1451 = add nuw nsw i32 %1450, %1447
  %1452 = icmp eq i32 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %39, align 1
  %1454 = sext i32 %1432 to i64
  store i64 %1454, i64* %RSI.i1794, align 8
  %1455 = shl nsw i64 %1454, 3
  %1456 = add i64 %1455, %1429
  %1457 = add i64 %1392, 36
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to double*
  %1459 = load double, double* %1458, align 8
  %1460 = fadd double %1427, %1459
  store double %1460, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1461 = load i64, i64* %RBP.i, align 8
  %1462 = add i64 %1461, -136
  %1463 = add i64 %1392, 44
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to double*
  store double %1460, double* %1464, align 8
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -16
  %1467 = load i64, i64* %3, align 8
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1466 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RDX.i1791, align 8
  %1471 = add i64 %1465, -28
  %1472 = add i64 %1467, 7
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = add i32 %1474, 4
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RCX.i1272, align 8
  %1477 = icmp ugt i32 %1474, -5
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %14, align 1
  %1479 = and i32 %1475, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %21, align 1
  %1484 = xor i32 %1474, %1475
  %1485 = lshr i32 %1484, 4
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %27, align 1
  %1488 = icmp eq i32 %1475, 0
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %30, align 1
  %1490 = lshr i32 %1475, 31
  %1491 = trunc i32 %1490 to i8
  store i8 %1491, i8* %33, align 1
  %1492 = lshr i32 %1474, 31
  %1493 = xor i32 %1490, %1492
  %1494 = add nuw nsw i32 %1493, %1490
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %39, align 1
  %1497 = sext i32 %1475 to i64
  store i64 %1497, i64* %RSI.i1794, align 8
  %1498 = shl nsw i64 %1497, 3
  %1499 = add i64 %1498, %1470
  %1500 = add i64 %1467, 18
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to double*
  %1502 = load double, double* %1501, align 8
  store double %1502, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1503 = add i64 %1467, 22
  store i64 %1503, i64* %3, align 8
  %1504 = load i64, i64* %1469, align 8
  store i64 %1504, i64* %RDX.i1791, align 8
  %1505 = add i64 %1467, 25
  store i64 %1505, i64* %3, align 8
  %1506 = load i32, i32* %1473, align 4
  %1507 = add i32 %1506, 6
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RCX.i1272, align 8
  %1509 = icmp ugt i32 %1506, -7
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %14, align 1
  %1511 = and i32 %1507, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %21, align 1
  %1516 = xor i32 %1506, %1507
  %1517 = lshr i32 %1516, 4
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  store i8 %1519, i8* %27, align 1
  %1520 = icmp eq i32 %1507, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %30, align 1
  %1522 = lshr i32 %1507, 31
  %1523 = trunc i32 %1522 to i8
  store i8 %1523, i8* %33, align 1
  %1524 = lshr i32 %1506, 31
  %1525 = xor i32 %1522, %1524
  %1526 = add nuw nsw i32 %1525, %1522
  %1527 = icmp eq i32 %1526, 2
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %39, align 1
  %1529 = sext i32 %1507 to i64
  store i64 %1529, i64* %RSI.i1794, align 8
  %1530 = shl nsw i64 %1529, 3
  %1531 = add i64 %1530, %1504
  %1532 = add i64 %1467, 36
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to double*
  %1534 = load double, double* %1533, align 8
  %1535 = fsub double %1502, %1534
  store double %1535, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -144
  %1538 = add i64 %1467, 44
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to double*
  store double %1535, double* %1539, align 8
  %1540 = load i64, i64* %RBP.i, align 8
  %1541 = add i64 %1540, -16
  %1542 = load i64, i64* %3, align 8
  %1543 = add i64 %1542, 4
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1541 to i64*
  %1545 = load i64, i64* %1544, align 8
  store i64 %1545, i64* %RDX.i1791, align 8
  %1546 = add i64 %1540, -28
  %1547 = add i64 %1542, 7
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = add i32 %1549, 5
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RCX.i1272, align 8
  %1552 = icmp ugt i32 %1549, -6
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %14, align 1
  %1554 = and i32 %1550, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %21, align 1
  %1559 = xor i32 %1549, %1550
  %1560 = lshr i32 %1559, 4
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  store i8 %1562, i8* %27, align 1
  %1563 = icmp eq i32 %1550, 0
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %30, align 1
  %1565 = lshr i32 %1550, 31
  %1566 = trunc i32 %1565 to i8
  store i8 %1566, i8* %33, align 1
  %1567 = lshr i32 %1549, 31
  %1568 = xor i32 %1565, %1567
  %1569 = add nuw nsw i32 %1568, %1565
  %1570 = icmp eq i32 %1569, 2
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %39, align 1
  %1572 = sext i32 %1550 to i64
  store i64 %1572, i64* %RSI.i1794, align 8
  %1573 = shl nsw i64 %1572, 3
  %1574 = add i64 %1573, %1545
  %1575 = add i64 %1542, 18
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to double*
  %1577 = load double, double* %1576, align 8
  store double %1577, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1578 = add i64 %1542, 22
  store i64 %1578, i64* %3, align 8
  %1579 = load i64, i64* %1544, align 8
  store i64 %1579, i64* %RDX.i1791, align 8
  %1580 = add i64 %1542, 25
  store i64 %1580, i64* %3, align 8
  %1581 = load i32, i32* %1548, align 4
  %1582 = add i32 %1581, 7
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RCX.i1272, align 8
  %1584 = icmp ugt i32 %1581, -8
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %14, align 1
  %1586 = and i32 %1582, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %21, align 1
  %1591 = xor i32 %1581, %1582
  %1592 = lshr i32 %1591, 4
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  store i8 %1594, i8* %27, align 1
  %1595 = icmp eq i32 %1582, 0
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %30, align 1
  %1597 = lshr i32 %1582, 31
  %1598 = trunc i32 %1597 to i8
  store i8 %1598, i8* %33, align 1
  %1599 = lshr i32 %1581, 31
  %1600 = xor i32 %1597, %1599
  %1601 = add nuw nsw i32 %1600, %1597
  %1602 = icmp eq i32 %1601, 2
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %39, align 1
  %1604 = sext i32 %1582 to i64
  store i64 %1604, i64* %RSI.i1794, align 8
  %1605 = shl nsw i64 %1604, 3
  %1606 = add i64 %1605, %1579
  %1607 = add i64 %1542, 36
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to double*
  %1609 = load double, double* %1608, align 8
  %1610 = fsub double %1577, %1609
  store double %1610, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -152
  %1613 = add i64 %1542, 44
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to double*
  store double %1610, double* %1614, align 8
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -96
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, 5
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1616 to double*
  %1620 = load double, double* %1619, align 8
  store double %1620, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1621 = add i64 %1615, -128
  %1622 = add i64 %1617, 10
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to double*
  %1624 = load double, double* %1623, align 8
  %1625 = fadd double %1620, %1624
  store double %1625, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1626 = add i64 %1615, -16
  %1627 = add i64 %1617, 14
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %RDX.i1791, align 8
  %1630 = add i64 %1615, -28
  %1631 = add i64 %1617, 18
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = sext i32 %1633 to i64
  store i64 %1634, i64* %RSI.i1794, align 8
  %1635 = shl nsw i64 %1634, 3
  %1636 = add i64 %1635, %1629
  %1637 = add i64 %1617, 23
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to double*
  store double %1625, double* %1638, align 8
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -104
  %1641 = load i64, i64* %3, align 8
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1640 to double*
  %1644 = load double, double* %1643, align 8
  store double %1644, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1645 = add i64 %1639, -136
  %1646 = add i64 %1641, 13
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to double*
  %1648 = load double, double* %1647, align 8
  %1649 = fadd double %1644, %1648
  store double %1649, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1650 = add i64 %1639, -16
  %1651 = add i64 %1641, 17
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i64 %1653, i64* %RDX.i1791, align 8
  %1654 = add i64 %1639, -28
  %1655 = add i64 %1641, 20
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = add i32 %1657, 1
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RCX.i1272, align 8
  %1660 = icmp eq i32 %1657, -1
  %1661 = icmp eq i32 %1658, 0
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %14, align 1
  %1664 = and i32 %1658, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664)
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %21, align 1
  %1669 = xor i32 %1657, %1658
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  store i8 %1672, i8* %27, align 1
  %1673 = zext i1 %1661 to i8
  store i8 %1673, i8* %30, align 1
  %1674 = lshr i32 %1658, 31
  %1675 = trunc i32 %1674 to i8
  store i8 %1675, i8* %33, align 1
  %1676 = lshr i32 %1657, 31
  %1677 = xor i32 %1674, %1676
  %1678 = add nuw nsw i32 %1677, %1674
  %1679 = icmp eq i32 %1678, 2
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %39, align 1
  %1681 = sext i32 %1658 to i64
  store i64 %1681, i64* %RSI.i1794, align 8
  %1682 = shl nsw i64 %1681, 3
  %1683 = add i64 %1682, %1653
  %1684 = add i64 %1641, 31
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to double*
  store double %1649, double* %1685, align 8
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -128
  %1688 = load i64, i64* %3, align 8
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1687 to double*
  %1691 = load double, double* %1690, align 8
  store double %1691, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1692 = add i64 %1686, -96
  %1693 = add i64 %1688, 10
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to double*
  %1695 = load double, double* %1694, align 8
  %1696 = fsub double %1695, %1691
  store double %1696, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1697 = add i64 %1688, 19
  store i64 %1697, i64* %3, align 8
  store double %1696, double* %1694, align 8
  %1698 = load i64, i64* %RBP.i, align 8
  %1699 = add i64 %1698, -136
  %1700 = load i64, i64* %3, align 8
  %1701 = add i64 %1700, 8
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1699 to double*
  %1703 = load double, double* %1702, align 8
  store double %1703, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1704 = add i64 %1698, -104
  %1705 = add i64 %1700, 13
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to double*
  %1707 = load double, double* %1706, align 8
  %1708 = fsub double %1707, %1703
  store double %1708, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1709 = add i64 %1700, 22
  store i64 %1709, i64* %3, align 8
  store double %1708, double* %1706, align 8
  %1710 = load i64, i64* %RBP.i, align 8
  %1711 = add i64 %1710, -64
  %1712 = load i64, i64* %3, align 8
  %1713 = add i64 %1712, 5
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1711 to double*
  %1715 = load double, double* %1714, align 8
  store double %1715, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1716 = add i64 %1710, -96
  %1717 = add i64 %1712, 10
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to double*
  %1719 = load double, double* %1718, align 8
  %1720 = fmul double %1715, %1719
  store double %1720, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1721 = add i64 %1710, -72
  %1722 = add i64 %1712, 15
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to double*
  %1724 = load double, double* %1723, align 8
  store double %1724, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1725 = add i64 %1710, -104
  %1726 = add i64 %1712, 20
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to double*
  %1728 = load double, double* %1727, align 8
  %1729 = fmul double %1724, %1728
  store double %1729, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1730 = fsub double %1720, %1729
  store double %1730, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1731 = add i64 %1710, -16
  %1732 = add i64 %1712, 28
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RDX.i1791, align 8
  %1735 = add i64 %1710, -28
  %1736 = add i64 %1712, 31
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = add i32 %1738, 4
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RCX.i1272, align 8
  %1741 = icmp ugt i32 %1738, -5
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %14, align 1
  %1743 = and i32 %1739, 255
  %1744 = tail call i32 @llvm.ctpop.i32(i32 %1743)
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = xor i8 %1746, 1
  store i8 %1747, i8* %21, align 1
  %1748 = xor i32 %1738, %1739
  %1749 = lshr i32 %1748, 4
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  store i8 %1751, i8* %27, align 1
  %1752 = icmp eq i32 %1739, 0
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %30, align 1
  %1754 = lshr i32 %1739, 31
  %1755 = trunc i32 %1754 to i8
  store i8 %1755, i8* %33, align 1
  %1756 = lshr i32 %1738, 31
  %1757 = xor i32 %1754, %1756
  %1758 = add nuw nsw i32 %1757, %1754
  %1759 = icmp eq i32 %1758, 2
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %39, align 1
  %1761 = sext i32 %1739 to i64
  store i64 %1761, i64* %RSI.i1794, align 8
  %1762 = shl nsw i64 %1761, 3
  %1763 = add i64 %1762, %1734
  %1764 = add i64 %1712, 42
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to double*
  store double %1730, double* %1765, align 8
  %1766 = load i64, i64* %RBP.i, align 8
  %1767 = add i64 %1766, -64
  %1768 = load i64, i64* %3, align 8
  %1769 = add i64 %1768, 5
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1767 to double*
  %1771 = load double, double* %1770, align 8
  store double %1771, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1772 = add i64 %1766, -104
  %1773 = add i64 %1768, 10
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to double*
  %1775 = load double, double* %1774, align 8
  %1776 = fmul double %1771, %1775
  store double %1776, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1777 = add i64 %1766, -72
  %1778 = add i64 %1768, 15
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to double*
  %1780 = load double, double* %1779, align 8
  store double %1780, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1781 = add i64 %1766, -96
  %1782 = add i64 %1768, 20
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to double*
  %1784 = load double, double* %1783, align 8
  %1785 = fmul double %1780, %1784
  store double %1785, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1786 = fadd double %1776, %1785
  store double %1786, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1787 = add i64 %1766, -16
  %1788 = add i64 %1768, 28
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %RDX.i1791, align 8
  %1791 = add i64 %1766, -28
  %1792 = add i64 %1768, 31
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i32*
  %1794 = load i32, i32* %1793, align 4
  %1795 = add i32 %1794, 5
  %1796 = zext i32 %1795 to i64
  store i64 %1796, i64* %RCX.i1272, align 8
  %1797 = icmp ugt i32 %1794, -6
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %14, align 1
  %1799 = and i32 %1795, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %21, align 1
  %1804 = xor i32 %1794, %1795
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %27, align 1
  %1808 = icmp eq i32 %1795, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %30, align 1
  %1810 = lshr i32 %1795, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %33, align 1
  %1812 = lshr i32 %1794, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %39, align 1
  %1817 = sext i32 %1795 to i64
  store i64 %1817, i64* %RSI.i1794, align 8
  %1818 = shl nsw i64 %1817, 3
  %1819 = add i64 %1818, %1790
  %1820 = add i64 %1768, 42
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to double*
  store double %1786, double* %1821, align 8
  %1822 = load i64, i64* %RBP.i, align 8
  %1823 = add i64 %1822, -112
  %1824 = load i64, i64* %3, align 8
  %1825 = add i64 %1824, 5
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1823 to double*
  %1827 = load double, double* %1826, align 8
  store double %1827, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1828 = add i64 %1822, -152
  %1829 = add i64 %1824, 13
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to double*
  %1831 = load double, double* %1830, align 8
  %1832 = fsub double %1827, %1831
  store double %1832, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1833 = add i64 %1822, -96
  %1834 = add i64 %1824, 18
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to double*
  store double %1832, double* %1835, align 8
  %1836 = load i64, i64* %RBP.i, align 8
  %1837 = add i64 %1836, -120
  %1838 = load i64, i64* %3, align 8
  %1839 = add i64 %1838, 5
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1837 to double*
  %1841 = load double, double* %1840, align 8
  store double %1841, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1842 = add i64 %1836, -144
  %1843 = add i64 %1838, 13
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to double*
  %1845 = load double, double* %1844, align 8
  %1846 = fadd double %1841, %1845
  store double %1846, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1847 = add i64 %1836, -104
  %1848 = add i64 %1838, 18
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to double*
  store double %1846, double* %1849, align 8
  %1850 = load i64, i64* %RBP.i, align 8
  %1851 = add i64 %1850, -48
  %1852 = load i64, i64* %3, align 8
  %1853 = add i64 %1852, 5
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1851 to double*
  %1855 = load double, double* %1854, align 8
  store double %1855, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1856 = add i64 %1850, -96
  %1857 = add i64 %1852, 10
  store i64 %1857, i64* %3, align 8
  %1858 = inttoptr i64 %1856 to double*
  %1859 = load double, double* %1858, align 8
  %1860 = fmul double %1855, %1859
  store double %1860, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1861 = add i64 %1850, -56
  %1862 = add i64 %1852, 15
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to double*
  %1864 = load double, double* %1863, align 8
  store double %1864, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1865 = add i64 %1850, -104
  %1866 = add i64 %1852, 20
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to double*
  %1868 = load double, double* %1867, align 8
  %1869 = fmul double %1864, %1868
  store double %1869, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1870 = fsub double %1860, %1869
  store double %1870, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1871 = add i64 %1850, -16
  %1872 = add i64 %1852, 28
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i64*
  %1874 = load i64, i64* %1873, align 8
  store i64 %1874, i64* %RDX.i1791, align 8
  %1875 = add i64 %1850, -28
  %1876 = add i64 %1852, 31
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1875 to i32*
  %1878 = load i32, i32* %1877, align 4
  %1879 = add i32 %1878, 2
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RCX.i1272, align 8
  %1881 = icmp ugt i32 %1878, -3
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %14, align 1
  %1883 = and i32 %1879, 255
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %21, align 1
  %1888 = xor i32 %1878, %1879
  %1889 = lshr i32 %1888, 4
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  store i8 %1891, i8* %27, align 1
  %1892 = icmp eq i32 %1879, 0
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %30, align 1
  %1894 = lshr i32 %1879, 31
  %1895 = trunc i32 %1894 to i8
  store i8 %1895, i8* %33, align 1
  %1896 = lshr i32 %1878, 31
  %1897 = xor i32 %1894, %1896
  %1898 = add nuw nsw i32 %1897, %1894
  %1899 = icmp eq i32 %1898, 2
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %39, align 1
  %1901 = sext i32 %1879 to i64
  store i64 %1901, i64* %RSI.i1794, align 8
  %1902 = shl nsw i64 %1901, 3
  %1903 = add i64 %1902, %1874
  %1904 = add i64 %1852, 42
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to double*
  store double %1870, double* %1905, align 8
  %1906 = load i64, i64* %RBP.i, align 8
  %1907 = add i64 %1906, -48
  %1908 = load i64, i64* %3, align 8
  %1909 = add i64 %1908, 5
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1907 to double*
  %1911 = load double, double* %1910, align 8
  store double %1911, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1912 = add i64 %1906, -104
  %1913 = add i64 %1908, 10
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to double*
  %1915 = load double, double* %1914, align 8
  %1916 = fmul double %1911, %1915
  store double %1916, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1917 = add i64 %1906, -56
  %1918 = add i64 %1908, 15
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to double*
  %1920 = load double, double* %1919, align 8
  store double %1920, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1921 = add i64 %1906, -96
  %1922 = add i64 %1908, 20
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to double*
  %1924 = load double, double* %1923, align 8
  %1925 = fmul double %1920, %1924
  store double %1925, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1926 = fadd double %1916, %1925
  store double %1926, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1927 = add i64 %1906, -16
  %1928 = add i64 %1908, 28
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i64*
  %1930 = load i64, i64* %1929, align 8
  store i64 %1930, i64* %RDX.i1791, align 8
  %1931 = add i64 %1906, -28
  %1932 = add i64 %1908, 31
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = add i32 %1934, 3
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RCX.i1272, align 8
  %1937 = icmp ugt i32 %1934, -4
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %14, align 1
  %1939 = and i32 %1935, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %21, align 1
  %1944 = xor i32 %1934, %1935
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  store i8 %1947, i8* %27, align 1
  %1948 = icmp eq i32 %1935, 0
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %30, align 1
  %1950 = lshr i32 %1935, 31
  %1951 = trunc i32 %1950 to i8
  store i8 %1951, i8* %33, align 1
  %1952 = lshr i32 %1934, 31
  %1953 = xor i32 %1950, %1952
  %1954 = add nuw nsw i32 %1953, %1950
  %1955 = icmp eq i32 %1954, 2
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %39, align 1
  %1957 = sext i32 %1935 to i64
  store i64 %1957, i64* %RSI.i1794, align 8
  %1958 = shl nsw i64 %1957, 3
  %1959 = add i64 %1958, %1930
  %1960 = add i64 %1908, 42
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to double*
  store double %1926, double* %1961, align 8
  %1962 = load i64, i64* %RBP.i, align 8
  %1963 = add i64 %1962, -112
  %1964 = load i64, i64* %3, align 8
  %1965 = add i64 %1964, 5
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1963 to double*
  %1967 = load double, double* %1966, align 8
  store double %1967, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1968 = add i64 %1962, -152
  %1969 = add i64 %1964, 13
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to double*
  %1971 = load double, double* %1970, align 8
  %1972 = fadd double %1967, %1971
  store double %1972, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1973 = add i64 %1962, -96
  %1974 = add i64 %1964, 18
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to double*
  store double %1972, double* %1975, align 8
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -120
  %1978 = load i64, i64* %3, align 8
  %1979 = add i64 %1978, 5
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1977 to double*
  %1981 = load double, double* %1980, align 8
  store double %1981, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1982 = add i64 %1976, -144
  %1983 = add i64 %1978, 13
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to double*
  %1985 = load double, double* %1984, align 8
  %1986 = fsub double %1981, %1985
  store double %1986, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1987 = add i64 %1976, -104
  %1988 = add i64 %1978, 18
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to double*
  store double %1986, double* %1989, align 8
  %1990 = load i64, i64* %RBP.i, align 8
  %1991 = add i64 %1990, -80
  %1992 = load i64, i64* %3, align 8
  %1993 = add i64 %1992, 5
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1991 to double*
  %1995 = load double, double* %1994, align 8
  store double %1995, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1996 = add i64 %1990, -96
  %1997 = add i64 %1992, 10
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to double*
  %1999 = load double, double* %1998, align 8
  %2000 = fmul double %1995, %1999
  store double %2000, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2001 = add i64 %1990, -88
  %2002 = add i64 %1992, 15
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to double*
  %2004 = load double, double* %2003, align 8
  store double %2004, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %2005 = add i64 %1990, -104
  %2006 = add i64 %1992, 20
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to double*
  %2008 = load double, double* %2007, align 8
  %2009 = fmul double %2004, %2008
  store double %2009, double* %782, align 1
  store i64 0, i64* %778, align 1
  %2010 = fsub double %2000, %2009
  store double %2010, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2011 = add i64 %1990, -16
  %2012 = add i64 %1992, 28
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RDX.i1791, align 8
  %2015 = add i64 %1990, -28
  %2016 = add i64 %1992, 31
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = add i32 %2018, 6
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RCX.i1272, align 8
  %2021 = icmp ugt i32 %2018, -7
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %14, align 1
  %2023 = and i32 %2019, 255
  %2024 = tail call i32 @llvm.ctpop.i32(i32 %2023)
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  store i8 %2027, i8* %21, align 1
  %2028 = xor i32 %2018, %2019
  %2029 = lshr i32 %2028, 4
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  store i8 %2031, i8* %27, align 1
  %2032 = icmp eq i32 %2019, 0
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %30, align 1
  %2034 = lshr i32 %2019, 31
  %2035 = trunc i32 %2034 to i8
  store i8 %2035, i8* %33, align 1
  %2036 = lshr i32 %2018, 31
  %2037 = xor i32 %2034, %2036
  %2038 = add nuw nsw i32 %2037, %2034
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %39, align 1
  %2041 = sext i32 %2019 to i64
  store i64 %2041, i64* %RSI.i1794, align 8
  %2042 = shl nsw i64 %2041, 3
  %2043 = add i64 %2042, %2014
  %2044 = add i64 %1992, 42
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to double*
  store double %2010, double* %2045, align 8
  %2046 = load i64, i64* %RBP.i, align 8
  %2047 = add i64 %2046, -80
  %2048 = load i64, i64* %3, align 8
  %2049 = add i64 %2048, 5
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2047 to double*
  %2051 = load double, double* %2050, align 8
  store double %2051, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2052 = add i64 %2046, -104
  %2053 = add i64 %2048, 10
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to double*
  %2055 = load double, double* %2054, align 8
  %2056 = fmul double %2051, %2055
  store double %2056, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2057 = add i64 %2046, -88
  %2058 = add i64 %2048, 15
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to double*
  %2060 = load double, double* %2059, align 8
  store double %2060, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %2061 = add i64 %2046, -96
  %2062 = add i64 %2048, 20
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to double*
  %2064 = load double, double* %2063, align 8
  %2065 = fmul double %2060, %2064
  store double %2065, double* %782, align 1
  store i64 0, i64* %778, align 1
  %2066 = fadd double %2056, %2065
  store double %2066, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2067 = add i64 %2046, -16
  %2068 = add i64 %2048, 28
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i64*
  %2070 = load i64, i64* %2069, align 8
  store i64 %2070, i64* %RDX.i1791, align 8
  %2071 = add i64 %2046, -28
  %2072 = add i64 %2048, 31
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = add i32 %2074, 7
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RCX.i1272, align 8
  %2077 = icmp ugt i32 %2074, -8
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %14, align 1
  %2079 = and i32 %2075, 255
  %2080 = tail call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  store i8 %2083, i8* %21, align 1
  %2084 = xor i32 %2074, %2075
  %2085 = lshr i32 %2084, 4
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  store i8 %2087, i8* %27, align 1
  %2088 = icmp eq i32 %2075, 0
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %30, align 1
  %2090 = lshr i32 %2075, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %33, align 1
  %2092 = lshr i32 %2074, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2090
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %39, align 1
  %2097 = sext i32 %2075 to i64
  store i64 %2097, i64* %RSI.i1794, align 8
  %2098 = shl nsw i64 %2097, 3
  %2099 = add i64 %2098, %2070
  %2100 = add i64 %2048, 42
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to double*
  store double %2066, double* %2101, align 8
  %2102 = load i64, i64* %RBP.i, align 8
  %2103 = add i64 %2102, -24
  %2104 = load i64, i64* %3, align 8
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2103 to i64*
  %2107 = load i64, i64* %2106, align 8
  store i64 %2107, i64* %RDX.i1791, align 8
  %2108 = add i64 %2102, -36
  %2109 = add i64 %2104, 7
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = add i32 %2111, 2
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RCX.i1272, align 8
  %2114 = icmp ugt i32 %2111, -3
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %14, align 1
  %2116 = and i32 %2112, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %21, align 1
  %2121 = xor i32 %2111, %2112
  %2122 = lshr i32 %2121, 4
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %27, align 1
  %2125 = icmp eq i32 %2112, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %30, align 1
  %2127 = lshr i32 %2112, 31
  %2128 = trunc i32 %2127 to i8
  store i8 %2128, i8* %33, align 1
  %2129 = lshr i32 %2111, 31
  %2130 = xor i32 %2127, %2129
  %2131 = add nuw nsw i32 %2130, %2127
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %39, align 1
  %2134 = sext i32 %2112 to i64
  store i64 %2134, i64* %RSI.i1794, align 8
  %2135 = shl nsw i64 %2134, 3
  %2136 = add i64 %2135, %2107
  %2137 = add i64 %2104, 18
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i64*
  %2139 = load i64, i64* %2138, align 8
  store i64 %2139, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %2140 = add i64 %2102, -48
  %2141 = add i64 %2104, 23
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i64*
  store i64 %2139, i64* %2142, align 8
  %2143 = load i64, i64* %RBP.i, align 8
  %2144 = add i64 %2143, -24
  %2145 = load i64, i64* %3, align 8
  %2146 = add i64 %2145, 4
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2144 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RDX.i1791, align 8
  %2149 = add i64 %2143, -36
  %2150 = add i64 %2145, 7
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  %2152 = load i32, i32* %2151, align 4
  %2153 = add i32 %2152, 3
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RCX.i1272, align 8
  %2155 = icmp ugt i32 %2152, -4
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %14, align 1
  %2157 = and i32 %2153, 255
  %2158 = tail call i32 @llvm.ctpop.i32(i32 %2157)
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  %2161 = xor i8 %2160, 1
  store i8 %2161, i8* %21, align 1
  %2162 = xor i32 %2152, %2153
  %2163 = lshr i32 %2162, 4
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  store i8 %2165, i8* %27, align 1
  %2166 = icmp eq i32 %2153, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %30, align 1
  %2168 = lshr i32 %2153, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %33, align 1
  %2170 = lshr i32 %2152, 31
  %2171 = xor i32 %2168, %2170
  %2172 = add nuw nsw i32 %2171, %2168
  %2173 = icmp eq i32 %2172, 2
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %39, align 1
  %2175 = sext i32 %2153 to i64
  store i64 %2175, i64* %RSI.i1794, align 8
  %2176 = shl nsw i64 %2175, 3
  %2177 = add i64 %2176, %2148
  %2178 = add i64 %2145, 18
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i64*
  %2180 = load i64, i64* %2179, align 8
  store i64 %2180, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %2181 = add i64 %2143, -56
  %2182 = add i64 %2145, 23
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i64*
  store i64 %2180, i64* %2183, align 8
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -48
  %2186 = load i64, i64* %3, align 8
  %2187 = add i64 %2186, 5
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2185 to double*
  %2189 = load double, double* %2188, align 8
  store double %2189, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2190 = load <2 x i32>, <2 x i32>* %773, align 1
  %2191 = load <2 x i32>, <2 x i32>* %774, align 1
  %2192 = extractelement <2 x i32> %2190, i32 0
  store i32 %2192, i32* %775, align 1
  %2193 = extractelement <2 x i32> %2190, i32 1
  store i32 %2193, i32* %777, align 1
  %2194 = extractelement <2 x i32> %2191, i32 0
  store i32 %2194, i32* %779, align 1
  %2195 = extractelement <2 x i32> %2191, i32 1
  store i32 %2195, i32* %781, align 1
  %2196 = add i64 %2184, -64
  %2197 = add i64 %2186, 13
  store i64 %2197, i64* %3, align 8
  %2198 = load double, double* %782, align 1
  %2199 = inttoptr i64 %2196 to double*
  %2200 = load double, double* %2199, align 8
  %2201 = fmul double %2198, %2200
  store double %2201, double* %782, align 1
  %2202 = add i64 %2184, -56
  %2203 = add i64 %2186, 18
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to double*
  %2205 = load double, double* %2204, align 8
  %2206 = fmul double %2201, %2205
  store double %2206, double* %782, align 1
  %2207 = fsub double %2189, %2206
  store double %2207, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2208 = add i64 %2184, -80
  %2209 = add i64 %2186, 27
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to double*
  store double %2207, double* %2210, align 8
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -64
  %2213 = load i64, i64* %3, align 8
  %2214 = add i64 %2213, 5
  store i64 %2214, i64* %3, align 8
  %2215 = load double, double* %67, align 1
  %2216 = inttoptr i64 %2212 to double*
  %2217 = load double, double* %2216, align 8
  %2218 = fmul double %2215, %2217
  store double %2218, double* %67, align 1
  %2219 = add i64 %2211, -48
  %2220 = add i64 %2213, 10
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to double*
  %2222 = load double, double* %2221, align 8
  %2223 = fmul double %2218, %2222
  store double %2223, double* %67, align 1
  %2224 = add i64 %2211, -56
  %2225 = add i64 %2213, 15
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to double*
  %2227 = load double, double* %2226, align 8
  %2228 = fsub double %2223, %2227
  store double %2228, double* %67, align 1
  %2229 = add i64 %2211, -88
  %2230 = add i64 %2213, 20
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to double*
  store double %2228, double* %2231, align 8
  %2232 = load i64, i64* %RBP.i, align 8
  %2233 = add i64 %2232, -16
  %2234 = load i64, i64* %3, align 8
  %2235 = add i64 %2234, 4
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2233 to i64*
  %2237 = load i64, i64* %2236, align 8
  store i64 %2237, i64* %RDX.i1791, align 8
  %2238 = add i64 %2232, -28
  %2239 = add i64 %2234, 7
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = add i32 %2241, 8
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RCX.i1272, align 8
  %2244 = icmp ugt i32 %2241, -9
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %14, align 1
  %2246 = and i32 %2242, 255
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %21, align 1
  %2251 = xor i32 %2241, %2242
  %2252 = lshr i32 %2251, 4
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  store i8 %2254, i8* %27, align 1
  %2255 = icmp eq i32 %2242, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %30, align 1
  %2257 = lshr i32 %2242, 31
  %2258 = trunc i32 %2257 to i8
  store i8 %2258, i8* %33, align 1
  %2259 = lshr i32 %2241, 31
  %2260 = xor i32 %2257, %2259
  %2261 = add nuw nsw i32 %2260, %2257
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %39, align 1
  %2264 = sext i32 %2242 to i64
  store i64 %2264, i64* %RSI.i1794, align 8
  %2265 = shl nsw i64 %2264, 3
  %2266 = add i64 %2265, %2237
  %2267 = add i64 %2234, 18
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to double*
  %2269 = load double, double* %2268, align 8
  store double %2269, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2270 = add i64 %2234, 22
  store i64 %2270, i64* %3, align 8
  %2271 = load i64, i64* %2236, align 8
  store i64 %2271, i64* %RDX.i1791, align 8
  %2272 = add i64 %2234, 25
  store i64 %2272, i64* %3, align 8
  %2273 = load i32, i32* %2240, align 4
  %2274 = add i32 %2273, 10
  %2275 = zext i32 %2274 to i64
  store i64 %2275, i64* %RCX.i1272, align 8
  %2276 = icmp ugt i32 %2273, -11
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %14, align 1
  %2278 = and i32 %2274, 255
  %2279 = tail call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  store i8 %2282, i8* %21, align 1
  %2283 = xor i32 %2273, %2274
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %27, align 1
  %2287 = icmp eq i32 %2274, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %30, align 1
  %2289 = lshr i32 %2274, 31
  %2290 = trunc i32 %2289 to i8
  store i8 %2290, i8* %33, align 1
  %2291 = lshr i32 %2273, 31
  %2292 = xor i32 %2289, %2291
  %2293 = add nuw nsw i32 %2292, %2289
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %39, align 1
  %2296 = sext i32 %2274 to i64
  store i64 %2296, i64* %RSI.i1794, align 8
  %2297 = shl nsw i64 %2296, 3
  %2298 = add i64 %2297, %2271
  %2299 = add i64 %2234, 36
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to double*
  %2301 = load double, double* %2300, align 8
  %2302 = fadd double %2269, %2301
  store double %2302, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -96
  %2305 = add i64 %2234, 41
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to double*
  store double %2302, double* %2306, align 8
  %2307 = load i64, i64* %RBP.i, align 8
  %2308 = add i64 %2307, -16
  %2309 = load i64, i64* %3, align 8
  %2310 = add i64 %2309, 4
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2308 to i64*
  %2312 = load i64, i64* %2311, align 8
  store i64 %2312, i64* %RDX.i1791, align 8
  %2313 = add i64 %2307, -28
  %2314 = add i64 %2309, 7
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = add i32 %2316, 9
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RCX.i1272, align 8
  %2319 = icmp ugt i32 %2316, -10
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %14, align 1
  %2321 = and i32 %2317, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  %2326 = xor i32 %2316, %2317
  %2327 = lshr i32 %2326, 4
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  store i8 %2329, i8* %27, align 1
  %2330 = icmp eq i32 %2317, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %30, align 1
  %2332 = lshr i32 %2317, 31
  %2333 = trunc i32 %2332 to i8
  store i8 %2333, i8* %33, align 1
  %2334 = lshr i32 %2316, 31
  %2335 = xor i32 %2332, %2334
  %2336 = add nuw nsw i32 %2335, %2332
  %2337 = icmp eq i32 %2336, 2
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %39, align 1
  %2339 = sext i32 %2317 to i64
  store i64 %2339, i64* %RSI.i1794, align 8
  %2340 = shl nsw i64 %2339, 3
  %2341 = add i64 %2340, %2312
  %2342 = add i64 %2309, 18
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to double*
  %2344 = load double, double* %2343, align 8
  store double %2344, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2345 = add i64 %2309, 22
  store i64 %2345, i64* %3, align 8
  %2346 = load i64, i64* %2311, align 8
  store i64 %2346, i64* %RDX.i1791, align 8
  %2347 = add i64 %2309, 25
  store i64 %2347, i64* %3, align 8
  %2348 = load i32, i32* %2315, align 4
  %2349 = add i32 %2348, 11
  %2350 = zext i32 %2349 to i64
  store i64 %2350, i64* %RCX.i1272, align 8
  %2351 = icmp ugt i32 %2348, -12
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %14, align 1
  %2353 = and i32 %2349, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  %2358 = xor i32 %2348, %2349
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %27, align 1
  %2362 = icmp eq i32 %2349, 0
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %30, align 1
  %2364 = lshr i32 %2349, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %33, align 1
  %2366 = lshr i32 %2348, 31
  %2367 = xor i32 %2364, %2366
  %2368 = add nuw nsw i32 %2367, %2364
  %2369 = icmp eq i32 %2368, 2
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %39, align 1
  %2371 = sext i32 %2349 to i64
  store i64 %2371, i64* %RSI.i1794, align 8
  %2372 = shl nsw i64 %2371, 3
  %2373 = add i64 %2372, %2346
  %2374 = add i64 %2309, 36
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to double*
  %2376 = load double, double* %2375, align 8
  %2377 = fadd double %2344, %2376
  store double %2377, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2378 = load i64, i64* %RBP.i, align 8
  %2379 = add i64 %2378, -104
  %2380 = add i64 %2309, 41
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to double*
  store double %2377, double* %2381, align 8
  %2382 = load i64, i64* %RBP.i, align 8
  %2383 = add i64 %2382, -16
  %2384 = load i64, i64* %3, align 8
  %2385 = add i64 %2384, 4
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2383 to i64*
  %2387 = load i64, i64* %2386, align 8
  store i64 %2387, i64* %RDX.i1791, align 8
  %2388 = add i64 %2382, -28
  %2389 = add i64 %2384, 7
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i32*
  %2391 = load i32, i32* %2390, align 4
  %2392 = add i32 %2391, 8
  %2393 = zext i32 %2392 to i64
  store i64 %2393, i64* %RCX.i1272, align 8
  %2394 = icmp ugt i32 %2391, -9
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %14, align 1
  %2396 = and i32 %2392, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %21, align 1
  %2401 = xor i32 %2391, %2392
  %2402 = lshr i32 %2401, 4
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %27, align 1
  %2405 = icmp eq i32 %2392, 0
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %30, align 1
  %2407 = lshr i32 %2392, 31
  %2408 = trunc i32 %2407 to i8
  store i8 %2408, i8* %33, align 1
  %2409 = lshr i32 %2391, 31
  %2410 = xor i32 %2407, %2409
  %2411 = add nuw nsw i32 %2410, %2407
  %2412 = icmp eq i32 %2411, 2
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %39, align 1
  %2414 = sext i32 %2392 to i64
  store i64 %2414, i64* %RSI.i1794, align 8
  %2415 = shl nsw i64 %2414, 3
  %2416 = add i64 %2415, %2387
  %2417 = add i64 %2384, 18
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to double*
  %2419 = load double, double* %2418, align 8
  store double %2419, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2420 = add i64 %2384, 22
  store i64 %2420, i64* %3, align 8
  %2421 = load i64, i64* %2386, align 8
  store i64 %2421, i64* %RDX.i1791, align 8
  %2422 = add i64 %2384, 25
  store i64 %2422, i64* %3, align 8
  %2423 = load i32, i32* %2390, align 4
  %2424 = add i32 %2423, 10
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RCX.i1272, align 8
  %2426 = icmp ugt i32 %2423, -11
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %14, align 1
  %2428 = and i32 %2424, 255
  %2429 = tail call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  store i8 %2432, i8* %21, align 1
  %2433 = xor i32 %2423, %2424
  %2434 = lshr i32 %2433, 4
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  store i8 %2436, i8* %27, align 1
  %2437 = icmp eq i32 %2424, 0
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %30, align 1
  %2439 = lshr i32 %2424, 31
  %2440 = trunc i32 %2439 to i8
  store i8 %2440, i8* %33, align 1
  %2441 = lshr i32 %2423, 31
  %2442 = xor i32 %2439, %2441
  %2443 = add nuw nsw i32 %2442, %2439
  %2444 = icmp eq i32 %2443, 2
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %39, align 1
  %2446 = sext i32 %2424 to i64
  store i64 %2446, i64* %RSI.i1794, align 8
  %2447 = shl nsw i64 %2446, 3
  %2448 = add i64 %2447, %2421
  %2449 = add i64 %2384, 36
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to double*
  %2451 = load double, double* %2450, align 8
  %2452 = fsub double %2419, %2451
  store double %2452, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2453 = load i64, i64* %RBP.i, align 8
  %2454 = add i64 %2453, -112
  %2455 = add i64 %2384, 41
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to double*
  store double %2452, double* %2456, align 8
  %2457 = load i64, i64* %RBP.i, align 8
  %2458 = add i64 %2457, -16
  %2459 = load i64, i64* %3, align 8
  %2460 = add i64 %2459, 4
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2458 to i64*
  %2462 = load i64, i64* %2461, align 8
  store i64 %2462, i64* %RDX.i1791, align 8
  %2463 = add i64 %2457, -28
  %2464 = add i64 %2459, 7
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i32*
  %2466 = load i32, i32* %2465, align 4
  %2467 = add i32 %2466, 9
  %2468 = zext i32 %2467 to i64
  store i64 %2468, i64* %RCX.i1272, align 8
  %2469 = icmp ugt i32 %2466, -10
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %14, align 1
  %2471 = and i32 %2467, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %21, align 1
  %2476 = xor i32 %2466, %2467
  %2477 = lshr i32 %2476, 4
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %27, align 1
  %2480 = icmp eq i32 %2467, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %30, align 1
  %2482 = lshr i32 %2467, 31
  %2483 = trunc i32 %2482 to i8
  store i8 %2483, i8* %33, align 1
  %2484 = lshr i32 %2466, 31
  %2485 = xor i32 %2482, %2484
  %2486 = add nuw nsw i32 %2485, %2482
  %2487 = icmp eq i32 %2486, 2
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %39, align 1
  %2489 = sext i32 %2467 to i64
  store i64 %2489, i64* %RSI.i1794, align 8
  %2490 = shl nsw i64 %2489, 3
  %2491 = add i64 %2490, %2462
  %2492 = add i64 %2459, 18
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to double*
  %2494 = load double, double* %2493, align 8
  store double %2494, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2495 = add i64 %2459, 22
  store i64 %2495, i64* %3, align 8
  %2496 = load i64, i64* %2461, align 8
  store i64 %2496, i64* %RDX.i1791, align 8
  %2497 = add i64 %2459, 25
  store i64 %2497, i64* %3, align 8
  %2498 = load i32, i32* %2465, align 4
  %2499 = add i32 %2498, 11
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RCX.i1272, align 8
  %2501 = icmp ugt i32 %2498, -12
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %14, align 1
  %2503 = and i32 %2499, 255
  %2504 = tail call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  store i8 %2507, i8* %21, align 1
  %2508 = xor i32 %2498, %2499
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  store i8 %2511, i8* %27, align 1
  %2512 = icmp eq i32 %2499, 0
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %30, align 1
  %2514 = lshr i32 %2499, 31
  %2515 = trunc i32 %2514 to i8
  store i8 %2515, i8* %33, align 1
  %2516 = lshr i32 %2498, 31
  %2517 = xor i32 %2514, %2516
  %2518 = add nuw nsw i32 %2517, %2514
  %2519 = icmp eq i32 %2518, 2
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %39, align 1
  %2521 = sext i32 %2499 to i64
  store i64 %2521, i64* %RSI.i1794, align 8
  %2522 = shl nsw i64 %2521, 3
  %2523 = add i64 %2522, %2496
  %2524 = add i64 %2459, 36
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to double*
  %2526 = load double, double* %2525, align 8
  %2527 = fsub double %2494, %2526
  store double %2527, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2528 = load i64, i64* %RBP.i, align 8
  %2529 = add i64 %2528, -120
  %2530 = add i64 %2459, 41
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to double*
  store double %2527, double* %2531, align 8
  %2532 = load i64, i64* %RBP.i, align 8
  %2533 = add i64 %2532, -16
  %2534 = load i64, i64* %3, align 8
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2533 to i64*
  %2537 = load i64, i64* %2536, align 8
  store i64 %2537, i64* %RDX.i1791, align 8
  %2538 = add i64 %2532, -28
  %2539 = add i64 %2534, 7
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = add i32 %2541, 12
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i1272, align 8
  %2544 = icmp ugt i32 %2541, -13
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %14, align 1
  %2546 = and i32 %2542, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %21, align 1
  %2551 = xor i32 %2541, %2542
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %27, align 1
  %2555 = icmp eq i32 %2542, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %30, align 1
  %2557 = lshr i32 %2542, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %33, align 1
  %2559 = lshr i32 %2541, 31
  %2560 = xor i32 %2557, %2559
  %2561 = add nuw nsw i32 %2560, %2557
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  %2564 = sext i32 %2542 to i64
  store i64 %2564, i64* %RSI.i1794, align 8
  %2565 = shl nsw i64 %2564, 3
  %2566 = add i64 %2565, %2537
  %2567 = add i64 %2534, 18
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to double*
  %2569 = load double, double* %2568, align 8
  store double %2569, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2570 = add i64 %2534, 22
  store i64 %2570, i64* %3, align 8
  %2571 = load i64, i64* %2536, align 8
  store i64 %2571, i64* %RDX.i1791, align 8
  %2572 = add i64 %2534, 25
  store i64 %2572, i64* %3, align 8
  %2573 = load i32, i32* %2540, align 4
  %2574 = add i32 %2573, 14
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RCX.i1272, align 8
  %2576 = icmp ugt i32 %2573, -15
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %14, align 1
  %2578 = and i32 %2574, 255
  %2579 = tail call i32 @llvm.ctpop.i32(i32 %2578)
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = xor i8 %2581, 1
  store i8 %2582, i8* %21, align 1
  %2583 = xor i32 %2573, %2574
  %2584 = lshr i32 %2583, 4
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  store i8 %2586, i8* %27, align 1
  %2587 = icmp eq i32 %2574, 0
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %30, align 1
  %2589 = lshr i32 %2574, 31
  %2590 = trunc i32 %2589 to i8
  store i8 %2590, i8* %33, align 1
  %2591 = lshr i32 %2573, 31
  %2592 = xor i32 %2589, %2591
  %2593 = add nuw nsw i32 %2592, %2589
  %2594 = icmp eq i32 %2593, 2
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %39, align 1
  %2596 = sext i32 %2574 to i64
  store i64 %2596, i64* %RSI.i1794, align 8
  %2597 = shl nsw i64 %2596, 3
  %2598 = add i64 %2597, %2571
  %2599 = add i64 %2534, 36
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2598 to double*
  %2601 = load double, double* %2600, align 8
  %2602 = fadd double %2569, %2601
  store double %2602, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -128
  %2605 = add i64 %2534, 41
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to double*
  store double %2602, double* %2606, align 8
  %2607 = load i64, i64* %RBP.i, align 8
  %2608 = add i64 %2607, -16
  %2609 = load i64, i64* %3, align 8
  %2610 = add i64 %2609, 4
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2608 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %RDX.i1791, align 8
  %2613 = add i64 %2607, -28
  %2614 = add i64 %2609, 7
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = add i32 %2616, 13
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RCX.i1272, align 8
  %2619 = icmp ugt i32 %2616, -14
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %14, align 1
  %2621 = and i32 %2617, 255
  %2622 = tail call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  store i8 %2625, i8* %21, align 1
  %2626 = xor i32 %2616, %2617
  %2627 = lshr i32 %2626, 4
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %27, align 1
  %2630 = icmp eq i32 %2617, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %30, align 1
  %2632 = lshr i32 %2617, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %33, align 1
  %2634 = lshr i32 %2616, 31
  %2635 = xor i32 %2632, %2634
  %2636 = add nuw nsw i32 %2635, %2632
  %2637 = icmp eq i32 %2636, 2
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %39, align 1
  %2639 = sext i32 %2617 to i64
  store i64 %2639, i64* %RSI.i1794, align 8
  %2640 = shl nsw i64 %2639, 3
  %2641 = add i64 %2640, %2612
  %2642 = add i64 %2609, 18
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to double*
  %2644 = load double, double* %2643, align 8
  store double %2644, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2645 = add i64 %2609, 22
  store i64 %2645, i64* %3, align 8
  %2646 = load i64, i64* %2611, align 8
  store i64 %2646, i64* %RDX.i1791, align 8
  %2647 = add i64 %2609, 25
  store i64 %2647, i64* %3, align 8
  %2648 = load i32, i32* %2615, align 4
  %2649 = add i32 %2648, 15
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RCX.i1272, align 8
  %2651 = icmp ugt i32 %2648, -16
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %14, align 1
  %2653 = and i32 %2649, 255
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %21, align 1
  %2658 = xor i32 %2648, %2649
  %2659 = lshr i32 %2658, 4
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  store i8 %2661, i8* %27, align 1
  %2662 = icmp eq i32 %2649, 0
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %30, align 1
  %2664 = lshr i32 %2649, 31
  %2665 = trunc i32 %2664 to i8
  store i8 %2665, i8* %33, align 1
  %2666 = lshr i32 %2648, 31
  %2667 = xor i32 %2664, %2666
  %2668 = add nuw nsw i32 %2667, %2664
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %39, align 1
  %2671 = sext i32 %2649 to i64
  store i64 %2671, i64* %RSI.i1794, align 8
  %2672 = shl nsw i64 %2671, 3
  %2673 = add i64 %2672, %2646
  %2674 = add i64 %2609, 36
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to double*
  %2676 = load double, double* %2675, align 8
  %2677 = fadd double %2644, %2676
  store double %2677, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2678 = load i64, i64* %RBP.i, align 8
  %2679 = add i64 %2678, -136
  %2680 = add i64 %2609, 44
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2679 to double*
  store double %2677, double* %2681, align 8
  %2682 = load i64, i64* %RBP.i, align 8
  %2683 = add i64 %2682, -16
  %2684 = load i64, i64* %3, align 8
  %2685 = add i64 %2684, 4
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2683 to i64*
  %2687 = load i64, i64* %2686, align 8
  store i64 %2687, i64* %RDX.i1791, align 8
  %2688 = add i64 %2682, -28
  %2689 = add i64 %2684, 7
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = add i32 %2691, 12
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RCX.i1272, align 8
  %2694 = icmp ugt i32 %2691, -13
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %14, align 1
  %2696 = and i32 %2692, 255
  %2697 = tail call i32 @llvm.ctpop.i32(i32 %2696)
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  store i8 %2700, i8* %21, align 1
  %2701 = xor i32 %2691, %2692
  %2702 = lshr i32 %2701, 4
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %27, align 1
  %2705 = icmp eq i32 %2692, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %30, align 1
  %2707 = lshr i32 %2692, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %33, align 1
  %2709 = lshr i32 %2691, 31
  %2710 = xor i32 %2707, %2709
  %2711 = add nuw nsw i32 %2710, %2707
  %2712 = icmp eq i32 %2711, 2
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %39, align 1
  %2714 = sext i32 %2692 to i64
  store i64 %2714, i64* %RSI.i1794, align 8
  %2715 = shl nsw i64 %2714, 3
  %2716 = add i64 %2715, %2687
  %2717 = add i64 %2684, 18
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to double*
  %2719 = load double, double* %2718, align 8
  store double %2719, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2720 = add i64 %2684, 22
  store i64 %2720, i64* %3, align 8
  %2721 = load i64, i64* %2686, align 8
  store i64 %2721, i64* %RDX.i1791, align 8
  %2722 = add i64 %2684, 25
  store i64 %2722, i64* %3, align 8
  %2723 = load i32, i32* %2690, align 4
  %2724 = add i32 %2723, 14
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RCX.i1272, align 8
  %2726 = icmp ugt i32 %2723, -15
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %14, align 1
  %2728 = and i32 %2724, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %21, align 1
  %2733 = xor i32 %2723, %2724
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %27, align 1
  %2737 = icmp eq i32 %2724, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %30, align 1
  %2739 = lshr i32 %2724, 31
  %2740 = trunc i32 %2739 to i8
  store i8 %2740, i8* %33, align 1
  %2741 = lshr i32 %2723, 31
  %2742 = xor i32 %2739, %2741
  %2743 = add nuw nsw i32 %2742, %2739
  %2744 = icmp eq i32 %2743, 2
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %39, align 1
  %2746 = sext i32 %2724 to i64
  store i64 %2746, i64* %RSI.i1794, align 8
  %2747 = shl nsw i64 %2746, 3
  %2748 = add i64 %2747, %2721
  %2749 = add i64 %2684, 36
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to double*
  %2751 = load double, double* %2750, align 8
  %2752 = fsub double %2719, %2751
  store double %2752, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2753 = load i64, i64* %RBP.i, align 8
  %2754 = add i64 %2753, -144
  %2755 = add i64 %2684, 44
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to double*
  store double %2752, double* %2756, align 8
  %2757 = load i64, i64* %RBP.i, align 8
  %2758 = add i64 %2757, -16
  %2759 = load i64, i64* %3, align 8
  %2760 = add i64 %2759, 4
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2758 to i64*
  %2762 = load i64, i64* %2761, align 8
  store i64 %2762, i64* %RDX.i1791, align 8
  %2763 = add i64 %2757, -28
  %2764 = add i64 %2759, 7
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = add i32 %2766, 13
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RCX.i1272, align 8
  %2769 = icmp ugt i32 %2766, -14
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %14, align 1
  %2771 = and i32 %2767, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %21, align 1
  %2776 = xor i32 %2766, %2767
  %2777 = lshr i32 %2776, 4
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  store i8 %2779, i8* %27, align 1
  %2780 = icmp eq i32 %2767, 0
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %30, align 1
  %2782 = lshr i32 %2767, 31
  %2783 = trunc i32 %2782 to i8
  store i8 %2783, i8* %33, align 1
  %2784 = lshr i32 %2766, 31
  %2785 = xor i32 %2782, %2784
  %2786 = add nuw nsw i32 %2785, %2782
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %39, align 1
  %2789 = sext i32 %2767 to i64
  store i64 %2789, i64* %RSI.i1794, align 8
  %2790 = shl nsw i64 %2789, 3
  %2791 = add i64 %2790, %2762
  %2792 = add i64 %2759, 18
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to double*
  %2794 = load double, double* %2793, align 8
  store double %2794, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2795 = add i64 %2759, 22
  store i64 %2795, i64* %3, align 8
  %2796 = load i64, i64* %2761, align 8
  store i64 %2796, i64* %RDX.i1791, align 8
  %2797 = add i64 %2759, 25
  store i64 %2797, i64* %3, align 8
  %2798 = load i32, i32* %2765, align 4
  %2799 = add i32 %2798, 15
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RCX.i1272, align 8
  %2801 = icmp ugt i32 %2798, -16
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %14, align 1
  %2803 = and i32 %2799, 255
  %2804 = tail call i32 @llvm.ctpop.i32(i32 %2803)
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = xor i8 %2806, 1
  store i8 %2807, i8* %21, align 1
  %2808 = xor i32 %2798, %2799
  %2809 = lshr i32 %2808, 4
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  store i8 %2811, i8* %27, align 1
  %2812 = icmp eq i32 %2799, 0
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %30, align 1
  %2814 = lshr i32 %2799, 31
  %2815 = trunc i32 %2814 to i8
  store i8 %2815, i8* %33, align 1
  %2816 = lshr i32 %2798, 31
  %2817 = xor i32 %2814, %2816
  %2818 = add nuw nsw i32 %2817, %2814
  %2819 = icmp eq i32 %2818, 2
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %39, align 1
  %2821 = sext i32 %2799 to i64
  store i64 %2821, i64* %RSI.i1794, align 8
  %2822 = shl nsw i64 %2821, 3
  %2823 = add i64 %2822, %2796
  %2824 = add i64 %2759, 36
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to double*
  %2826 = load double, double* %2825, align 8
  %2827 = fsub double %2794, %2826
  store double %2827, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2828 = load i64, i64* %RBP.i, align 8
  %2829 = add i64 %2828, -152
  %2830 = add i64 %2759, 44
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to double*
  store double %2827, double* %2831, align 8
  %2832 = load i64, i64* %RBP.i, align 8
  %2833 = add i64 %2832, -96
  %2834 = load i64, i64* %3, align 8
  %2835 = add i64 %2834, 5
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2833 to double*
  %2837 = load double, double* %2836, align 8
  store double %2837, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2838 = add i64 %2832, -128
  %2839 = add i64 %2834, 10
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to double*
  %2841 = load double, double* %2840, align 8
  %2842 = fadd double %2837, %2841
  store double %2842, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2843 = add i64 %2832, -16
  %2844 = add i64 %2834, 14
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i64*
  %2846 = load i64, i64* %2845, align 8
  store i64 %2846, i64* %RDX.i1791, align 8
  %2847 = add i64 %2832, -28
  %2848 = add i64 %2834, 17
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = add i32 %2850, 8
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RCX.i1272, align 8
  %2853 = icmp ugt i32 %2850, -9
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %14, align 1
  %2855 = and i32 %2851, 255
  %2856 = tail call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  store i8 %2859, i8* %21, align 1
  %2860 = xor i32 %2850, %2851
  %2861 = lshr i32 %2860, 4
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  store i8 %2863, i8* %27, align 1
  %2864 = icmp eq i32 %2851, 0
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %30, align 1
  %2866 = lshr i32 %2851, 31
  %2867 = trunc i32 %2866 to i8
  store i8 %2867, i8* %33, align 1
  %2868 = lshr i32 %2850, 31
  %2869 = xor i32 %2866, %2868
  %2870 = add nuw nsw i32 %2869, %2866
  %2871 = icmp eq i32 %2870, 2
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %39, align 1
  %2873 = sext i32 %2851 to i64
  store i64 %2873, i64* %RSI.i1794, align 8
  %2874 = shl nsw i64 %2873, 3
  %2875 = add i64 %2874, %2846
  %2876 = add i64 %2834, 28
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to double*
  store double %2842, double* %2877, align 8
  %2878 = load i64, i64* %RBP.i, align 8
  %2879 = add i64 %2878, -104
  %2880 = load i64, i64* %3, align 8
  %2881 = add i64 %2880, 5
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2879 to double*
  %2883 = load double, double* %2882, align 8
  store double %2883, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2884 = add i64 %2878, -136
  %2885 = add i64 %2880, 13
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to double*
  %2887 = load double, double* %2886, align 8
  %2888 = fadd double %2883, %2887
  store double %2888, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2889 = add i64 %2878, -16
  %2890 = add i64 %2880, 17
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2889 to i64*
  %2892 = load i64, i64* %2891, align 8
  store i64 %2892, i64* %RDX.i1791, align 8
  %2893 = add i64 %2878, -28
  %2894 = add i64 %2880, 20
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i32*
  %2896 = load i32, i32* %2895, align 4
  %2897 = add i32 %2896, 9
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RCX.i1272, align 8
  %2899 = icmp ugt i32 %2896, -10
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %14, align 1
  %2901 = and i32 %2897, 255
  %2902 = tail call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  store i8 %2905, i8* %21, align 1
  %2906 = xor i32 %2896, %2897
  %2907 = lshr i32 %2906, 4
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  store i8 %2909, i8* %27, align 1
  %2910 = icmp eq i32 %2897, 0
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %30, align 1
  %2912 = lshr i32 %2897, 31
  %2913 = trunc i32 %2912 to i8
  store i8 %2913, i8* %33, align 1
  %2914 = lshr i32 %2896, 31
  %2915 = xor i32 %2912, %2914
  %2916 = add nuw nsw i32 %2915, %2912
  %2917 = icmp eq i32 %2916, 2
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %39, align 1
  %2919 = sext i32 %2897 to i64
  store i64 %2919, i64* %RSI.i1794, align 8
  %2920 = shl nsw i64 %2919, 3
  %2921 = add i64 %2920, %2892
  %2922 = add i64 %2880, 31
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to double*
  store double %2888, double* %2923, align 8
  %2924 = load i64, i64* %RBP.i, align 8
  %2925 = add i64 %2924, -128
  %2926 = load i64, i64* %3, align 8
  %2927 = add i64 %2926, 5
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2925 to double*
  %2929 = load double, double* %2928, align 8
  store double %2929, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2930 = add i64 %2924, -96
  %2931 = add i64 %2926, 10
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to double*
  %2933 = load double, double* %2932, align 8
  %2934 = fsub double %2933, %2929
  store double %2934, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2935 = add i64 %2926, 19
  store i64 %2935, i64* %3, align 8
  store double %2934, double* %2932, align 8
  %2936 = load i64, i64* %RBP.i, align 8
  %2937 = add i64 %2936, -136
  %2938 = load i64, i64* %3, align 8
  %2939 = add i64 %2938, 8
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2937 to double*
  %2941 = load double, double* %2940, align 8
  store double %2941, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2942 = add i64 %2936, -104
  %2943 = add i64 %2938, 13
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to double*
  %2945 = load double, double* %2944, align 8
  %2946 = fsub double %2945, %2941
  store double %2946, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2947 = add i64 %2938, 22
  store i64 %2947, i64* %3, align 8
  store double %2946, double* %2944, align 8
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -72
  %2950 = load i64, i64* %3, align 8
  %2951 = add i64 %2950, 5
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2949 to i64*
  %2953 = load i64, i64* %2952, align 8
  %2954 = load i64, i64* %RAX.i1283, align 8
  %2955 = xor i64 %2954, %2953
  store i64 %2955, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %2956 = trunc i64 %2955 to i32
  %2957 = and i32 %2956, 255
  %2958 = tail call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  store i8 %2961, i8* %21, align 1
  %2962 = icmp eq i64 %2955, 0
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %30, align 1
  %2964 = lshr i64 %2955, 63
  %2965 = trunc i64 %2964 to i8
  store i8 %2965, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %2955, i64* %372, align 1
  store i64 0, i64* %68, align 1
  %2966 = add i64 %2948, -96
  %2967 = add i64 %2950, 23
  store i64 %2967, i64* %3, align 8
  %2968 = bitcast i64 %2955 to double
  %2969 = inttoptr i64 %2966 to double*
  %2970 = load double, double* %2969, align 8
  %2971 = fmul double %2968, %2970
  store double %2971, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2972 = add i64 %2948, -64
  %2973 = add i64 %2950, 28
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to double*
  %2975 = load double, double* %2974, align 8
  store double %2975, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2976 = add i64 %2948, -104
  %2977 = add i64 %2950, 33
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to double*
  %2979 = load double, double* %2978, align 8
  %2980 = fmul double %2975, %2979
  store double %2980, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2981 = fsub double %2971, %2980
  store double %2981, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2982 = add i64 %2948, -16
  %2983 = add i64 %2950, 41
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i64*
  %2985 = load i64, i64* %2984, align 8
  store i64 %2985, i64* %RDX.i1791, align 8
  %2986 = add i64 %2948, -28
  %2987 = add i64 %2950, 44
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = add i32 %2989, 12
  %2991 = zext i32 %2990 to i64
  store i64 %2991, i64* %RCX.i1272, align 8
  %2992 = icmp ugt i32 %2989, -13
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %14, align 1
  %2994 = and i32 %2990, 255
  %2995 = tail call i32 @llvm.ctpop.i32(i32 %2994)
  %2996 = trunc i32 %2995 to i8
  %2997 = and i8 %2996, 1
  %2998 = xor i8 %2997, 1
  store i8 %2998, i8* %21, align 1
  %2999 = xor i32 %2989, %2990
  %3000 = lshr i32 %2999, 4
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  store i8 %3002, i8* %27, align 1
  %3003 = icmp eq i32 %2990, 0
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %30, align 1
  %3005 = lshr i32 %2990, 31
  %3006 = trunc i32 %3005 to i8
  store i8 %3006, i8* %33, align 1
  %3007 = lshr i32 %2989, 31
  %3008 = xor i32 %3005, %3007
  %3009 = add nuw nsw i32 %3008, %3005
  %3010 = icmp eq i32 %3009, 2
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %39, align 1
  %3012 = sext i32 %2990 to i64
  store i64 %3012, i64* %RSI.i1794, align 8
  %3013 = shl nsw i64 %3012, 3
  %3014 = add i64 %3013, %2985
  %3015 = add i64 %2950, 55
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to double*
  store double %2981, double* %3016, align 8
  %3017 = load i64, i64* %RBP.i, align 8
  %3018 = add i64 %3017, -72
  %3019 = load i64, i64* %3, align 8
  %3020 = add i64 %3019, 5
  store i64 %3020, i64* %3, align 8
  %3021 = inttoptr i64 %3018 to i64*
  %3022 = load i64, i64* %3021, align 8
  %3023 = load i64, i64* %RAX.i1283, align 8
  %3024 = xor i64 %3023, %3022
  store i64 %3024, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %3025 = trunc i64 %3024 to i32
  %3026 = and i32 %3025, 255
  %3027 = tail call i32 @llvm.ctpop.i32(i32 %3026)
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  %3030 = xor i8 %3029, 1
  store i8 %3030, i8* %21, align 1
  %3031 = icmp eq i64 %3024, 0
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %30, align 1
  %3033 = lshr i64 %3024, 63
  %3034 = trunc i64 %3033 to i8
  store i8 %3034, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %3024, i64* %372, align 1
  store i64 0, i64* %68, align 1
  %3035 = add i64 %3017, -104
  %3036 = add i64 %3019, 23
  store i64 %3036, i64* %3, align 8
  %3037 = bitcast i64 %3024 to double
  %3038 = inttoptr i64 %3035 to double*
  %3039 = load double, double* %3038, align 8
  %3040 = fmul double %3037, %3039
  store double %3040, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3041 = add i64 %3017, -64
  %3042 = add i64 %3019, 28
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to double*
  %3044 = load double, double* %3043, align 8
  store double %3044, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3045 = add i64 %3017, -96
  %3046 = add i64 %3019, 33
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3045 to double*
  %3048 = load double, double* %3047, align 8
  %3049 = fmul double %3044, %3048
  store double %3049, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3050 = fadd double %3040, %3049
  store double %3050, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3051 = add i64 %3017, -16
  %3052 = add i64 %3019, 41
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i64*
  %3054 = load i64, i64* %3053, align 8
  store i64 %3054, i64* %RAX.i1283, align 8
  %3055 = add i64 %3017, -28
  %3056 = add i64 %3019, 44
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = add i32 %3058, 13
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RCX.i1272, align 8
  %3061 = icmp ugt i32 %3058, -14
  %3062 = zext i1 %3061 to i8
  store i8 %3062, i8* %14, align 1
  %3063 = and i32 %3059, 255
  %3064 = tail call i32 @llvm.ctpop.i32(i32 %3063)
  %3065 = trunc i32 %3064 to i8
  %3066 = and i8 %3065, 1
  %3067 = xor i8 %3066, 1
  store i8 %3067, i8* %21, align 1
  %3068 = xor i32 %3058, %3059
  %3069 = lshr i32 %3068, 4
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  store i8 %3071, i8* %27, align 1
  %3072 = icmp eq i32 %3059, 0
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %30, align 1
  %3074 = lshr i32 %3059, 31
  %3075 = trunc i32 %3074 to i8
  store i8 %3075, i8* %33, align 1
  %3076 = lshr i32 %3058, 31
  %3077 = xor i32 %3074, %3076
  %3078 = add nuw nsw i32 %3077, %3074
  %3079 = icmp eq i32 %3078, 2
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %39, align 1
  %3081 = sext i32 %3059 to i64
  store i64 %3081, i64* %RDX.i1791, align 8
  %3082 = shl nsw i64 %3081, 3
  %3083 = add i64 %3082, %3054
  %3084 = add i64 %3019, 55
  store i64 %3084, i64* %3, align 8
  %3085 = inttoptr i64 %3083 to double*
  store double %3050, double* %3085, align 8
  %3086 = load i64, i64* %RBP.i, align 8
  %3087 = add i64 %3086, -112
  %3088 = load i64, i64* %3, align 8
  %3089 = add i64 %3088, 5
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3087 to double*
  %3091 = load double, double* %3090, align 8
  store double %3091, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3092 = add i64 %3086, -152
  %3093 = add i64 %3088, 13
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to double*
  %3095 = load double, double* %3094, align 8
  %3096 = fsub double %3091, %3095
  store double %3096, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3097 = add i64 %3086, -96
  %3098 = add i64 %3088, 18
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to double*
  store double %3096, double* %3099, align 8
  %3100 = load i64, i64* %RBP.i, align 8
  %3101 = add i64 %3100, -120
  %3102 = load i64, i64* %3, align 8
  %3103 = add i64 %3102, 5
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3101 to double*
  %3105 = load double, double* %3104, align 8
  store double %3105, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3106 = add i64 %3100, -144
  %3107 = add i64 %3102, 13
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to double*
  %3109 = load double, double* %3108, align 8
  %3110 = fadd double %3105, %3109
  store double %3110, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3111 = add i64 %3100, -104
  %3112 = add i64 %3102, 18
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to double*
  store double %3110, double* %3113, align 8
  %3114 = load i64, i64* %RBP.i, align 8
  %3115 = add i64 %3114, -48
  %3116 = load i64, i64* %3, align 8
  %3117 = add i64 %3116, 5
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3115 to double*
  %3119 = load double, double* %3118, align 8
  store double %3119, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3120 = add i64 %3114, -96
  %3121 = add i64 %3116, 10
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to double*
  %3123 = load double, double* %3122, align 8
  %3124 = fmul double %3119, %3123
  store double %3124, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3125 = add i64 %3114, -56
  %3126 = add i64 %3116, 15
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3125 to double*
  %3128 = load double, double* %3127, align 8
  store double %3128, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3129 = add i64 %3114, -104
  %3130 = add i64 %3116, 20
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to double*
  %3132 = load double, double* %3131, align 8
  %3133 = fmul double %3128, %3132
  store double %3133, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3134 = fsub double %3124, %3133
  store double %3134, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3135 = add i64 %3114, -16
  %3136 = add i64 %3116, 28
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i64*
  %3138 = load i64, i64* %3137, align 8
  store i64 %3138, i64* %RAX.i1283, align 8
  %3139 = add i64 %3114, -28
  %3140 = add i64 %3116, 31
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i32*
  %3142 = load i32, i32* %3141, align 4
  %3143 = add i32 %3142, 10
  %3144 = zext i32 %3143 to i64
  store i64 %3144, i64* %RCX.i1272, align 8
  %3145 = icmp ugt i32 %3142, -11
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %14, align 1
  %3147 = and i32 %3143, 255
  %3148 = tail call i32 @llvm.ctpop.i32(i32 %3147)
  %3149 = trunc i32 %3148 to i8
  %3150 = and i8 %3149, 1
  %3151 = xor i8 %3150, 1
  store i8 %3151, i8* %21, align 1
  %3152 = xor i32 %3142, %3143
  %3153 = lshr i32 %3152, 4
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  store i8 %3155, i8* %27, align 1
  %3156 = icmp eq i32 %3143, 0
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %30, align 1
  %3158 = lshr i32 %3143, 31
  %3159 = trunc i32 %3158 to i8
  store i8 %3159, i8* %33, align 1
  %3160 = lshr i32 %3142, 31
  %3161 = xor i32 %3158, %3160
  %3162 = add nuw nsw i32 %3161, %3158
  %3163 = icmp eq i32 %3162, 2
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %39, align 1
  %3165 = sext i32 %3143 to i64
  store i64 %3165, i64* %RDX.i1791, align 8
  %3166 = shl nsw i64 %3165, 3
  %3167 = add i64 %3166, %3138
  %3168 = add i64 %3116, 42
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to double*
  store double %3134, double* %3169, align 8
  %3170 = load i64, i64* %RBP.i, align 8
  %3171 = add i64 %3170, -48
  %3172 = load i64, i64* %3, align 8
  %3173 = add i64 %3172, 5
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3171 to double*
  %3175 = load double, double* %3174, align 8
  store double %3175, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3176 = add i64 %3170, -104
  %3177 = add i64 %3172, 10
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to double*
  %3179 = load double, double* %3178, align 8
  %3180 = fmul double %3175, %3179
  store double %3180, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3181 = add i64 %3170, -56
  %3182 = add i64 %3172, 15
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to double*
  %3184 = load double, double* %3183, align 8
  store double %3184, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3185 = add i64 %3170, -96
  %3186 = add i64 %3172, 20
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to double*
  %3188 = load double, double* %3187, align 8
  %3189 = fmul double %3184, %3188
  store double %3189, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3190 = fadd double %3180, %3189
  store double %3190, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3191 = add i64 %3170, -16
  %3192 = add i64 %3172, 28
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3191 to i64*
  %3194 = load i64, i64* %3193, align 8
  store i64 %3194, i64* %RAX.i1283, align 8
  %3195 = add i64 %3170, -28
  %3196 = add i64 %3172, 31
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i32*
  %3198 = load i32, i32* %3197, align 4
  %3199 = add i32 %3198, 11
  %3200 = zext i32 %3199 to i64
  store i64 %3200, i64* %RCX.i1272, align 8
  %3201 = icmp ugt i32 %3198, -12
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %14, align 1
  %3203 = and i32 %3199, 255
  %3204 = tail call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  store i8 %3207, i8* %21, align 1
  %3208 = xor i32 %3198, %3199
  %3209 = lshr i32 %3208, 4
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  store i8 %3211, i8* %27, align 1
  %3212 = icmp eq i32 %3199, 0
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %30, align 1
  %3214 = lshr i32 %3199, 31
  %3215 = trunc i32 %3214 to i8
  store i8 %3215, i8* %33, align 1
  %3216 = lshr i32 %3198, 31
  %3217 = xor i32 %3214, %3216
  %3218 = add nuw nsw i32 %3217, %3214
  %3219 = icmp eq i32 %3218, 2
  %3220 = zext i1 %3219 to i8
  store i8 %3220, i8* %39, align 1
  %3221 = sext i32 %3199 to i64
  store i64 %3221, i64* %RDX.i1791, align 8
  %3222 = shl nsw i64 %3221, 3
  %3223 = add i64 %3222, %3194
  %3224 = add i64 %3172, 42
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to double*
  store double %3190, double* %3225, align 8
  %3226 = load i64, i64* %RBP.i, align 8
  %3227 = add i64 %3226, -112
  %3228 = load i64, i64* %3, align 8
  %3229 = add i64 %3228, 5
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3227 to double*
  %3231 = load double, double* %3230, align 8
  store double %3231, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3232 = add i64 %3226, -152
  %3233 = add i64 %3228, 13
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3232 to double*
  %3235 = load double, double* %3234, align 8
  %3236 = fadd double %3231, %3235
  store double %3236, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3237 = add i64 %3226, -96
  %3238 = add i64 %3228, 18
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to double*
  store double %3236, double* %3239, align 8
  %3240 = load i64, i64* %RBP.i, align 8
  %3241 = add i64 %3240, -120
  %3242 = load i64, i64* %3, align 8
  %3243 = add i64 %3242, 5
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3241 to double*
  %3245 = load double, double* %3244, align 8
  store double %3245, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3246 = add i64 %3240, -144
  %3247 = add i64 %3242, 13
  store i64 %3247, i64* %3, align 8
  %3248 = inttoptr i64 %3246 to double*
  %3249 = load double, double* %3248, align 8
  %3250 = fsub double %3245, %3249
  store double %3250, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3251 = add i64 %3240, -104
  %3252 = add i64 %3242, 18
  store i64 %3252, i64* %3, align 8
  %3253 = inttoptr i64 %3251 to double*
  store double %3250, double* %3253, align 8
  %3254 = load i64, i64* %RBP.i, align 8
  %3255 = add i64 %3254, -80
  %3256 = load i64, i64* %3, align 8
  %3257 = add i64 %3256, 5
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3255 to double*
  %3259 = load double, double* %3258, align 8
  store double %3259, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3260 = add i64 %3254, -96
  %3261 = add i64 %3256, 10
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to double*
  %3263 = load double, double* %3262, align 8
  %3264 = fmul double %3259, %3263
  store double %3264, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3265 = add i64 %3254, -88
  %3266 = add i64 %3256, 15
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to double*
  %3268 = load double, double* %3267, align 8
  store double %3268, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3269 = add i64 %3254, -104
  %3270 = add i64 %3256, 20
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to double*
  %3272 = load double, double* %3271, align 8
  %3273 = fmul double %3268, %3272
  store double %3273, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3274 = fsub double %3264, %3273
  store double %3274, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3275 = add i64 %3254, -16
  %3276 = add i64 %3256, 28
  store i64 %3276, i64* %3, align 8
  %3277 = inttoptr i64 %3275 to i64*
  %3278 = load i64, i64* %3277, align 8
  store i64 %3278, i64* %RAX.i1283, align 8
  %3279 = add i64 %3254, -28
  %3280 = add i64 %3256, 31
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i32*
  %3282 = load i32, i32* %3281, align 4
  %3283 = add i32 %3282, 14
  %3284 = zext i32 %3283 to i64
  store i64 %3284, i64* %RCX.i1272, align 8
  %3285 = icmp ugt i32 %3282, -15
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %14, align 1
  %3287 = and i32 %3283, 255
  %3288 = tail call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %21, align 1
  %3292 = xor i32 %3282, %3283
  %3293 = lshr i32 %3292, 4
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  store i8 %3295, i8* %27, align 1
  %3296 = icmp eq i32 %3283, 0
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %30, align 1
  %3298 = lshr i32 %3283, 31
  %3299 = trunc i32 %3298 to i8
  store i8 %3299, i8* %33, align 1
  %3300 = lshr i32 %3282, 31
  %3301 = xor i32 %3298, %3300
  %3302 = add nuw nsw i32 %3301, %3298
  %3303 = icmp eq i32 %3302, 2
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %39, align 1
  %3305 = sext i32 %3283 to i64
  store i64 %3305, i64* %RDX.i1791, align 8
  %3306 = shl nsw i64 %3305, 3
  %3307 = add i64 %3306, %3278
  %3308 = add i64 %3256, 42
  store i64 %3308, i64* %3, align 8
  %3309 = inttoptr i64 %3307 to double*
  store double %3274, double* %3309, align 8
  %3310 = load i64, i64* %RBP.i, align 8
  %3311 = add i64 %3310, -80
  %3312 = load i64, i64* %3, align 8
  %3313 = add i64 %3312, 5
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3311 to double*
  %3315 = load double, double* %3314, align 8
  store double %3315, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3316 = add i64 %3310, -104
  %3317 = add i64 %3312, 10
  store i64 %3317, i64* %3, align 8
  %3318 = inttoptr i64 %3316 to double*
  %3319 = load double, double* %3318, align 8
  %3320 = fmul double %3315, %3319
  store double %3320, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3321 = add i64 %3310, -88
  %3322 = add i64 %3312, 15
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3321 to double*
  %3324 = load double, double* %3323, align 8
  store double %3324, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3325 = add i64 %3310, -96
  %3326 = add i64 %3312, 20
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3325 to double*
  %3328 = load double, double* %3327, align 8
  %3329 = fmul double %3324, %3328
  store double %3329, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3330 = fadd double %3320, %3329
  store double %3330, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3331 = add i64 %3310, -16
  %3332 = add i64 %3312, 28
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i64*
  %3334 = load i64, i64* %3333, align 8
  store i64 %3334, i64* %RAX.i1283, align 8
  %3335 = add i64 %3310, -28
  %3336 = add i64 %3312, 31
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = add i32 %3338, 15
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RCX.i1272, align 8
  %3341 = icmp ugt i32 %3338, -16
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %14, align 1
  %3343 = and i32 %3339, 255
  %3344 = tail call i32 @llvm.ctpop.i32(i32 %3343)
  %3345 = trunc i32 %3344 to i8
  %3346 = and i8 %3345, 1
  %3347 = xor i8 %3346, 1
  store i8 %3347, i8* %21, align 1
  %3348 = xor i32 %3338, %3339
  %3349 = lshr i32 %3348, 4
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  store i8 %3351, i8* %27, align 1
  %3352 = icmp eq i32 %3339, 0
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %30, align 1
  %3354 = lshr i32 %3339, 31
  %3355 = trunc i32 %3354 to i8
  store i8 %3355, i8* %33, align 1
  %3356 = lshr i32 %3338, 31
  %3357 = xor i32 %3354, %3356
  %3358 = add nuw nsw i32 %3357, %3354
  %3359 = icmp eq i32 %3358, 2
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %39, align 1
  %3361 = sext i32 %3339 to i64
  store i64 %3361, i64* %RDX.i1791, align 8
  %3362 = shl nsw i64 %3361, 3
  %3363 = add i64 %3362, %3334
  %3364 = add i64 %3312, 42
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to double*
  store double %3330, double* %3365, align 8
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -28
  %3368 = load i64, i64* %3, align 8
  %3369 = add i64 %3368, 3
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3367 to i32*
  %3371 = load i32, i32* %3370, align 4
  %3372 = add i32 %3371, 16
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %RAX.i1283, align 8
  %3374 = icmp ugt i32 %3371, -17
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %14, align 1
  %3376 = and i32 %3372, 255
  %3377 = tail call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  store i8 %3380, i8* %21, align 1
  %3381 = xor i32 %3371, 16
  %3382 = xor i32 %3381, %3372
  %3383 = lshr i32 %3382, 4
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  store i8 %3385, i8* %27, align 1
  %3386 = icmp eq i32 %3372, 0
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %30, align 1
  %3388 = lshr i32 %3372, 31
  %3389 = trunc i32 %3388 to i8
  store i8 %3389, i8* %33, align 1
  %3390 = lshr i32 %3371, 31
  %3391 = xor i32 %3388, %3390
  %3392 = add nuw nsw i32 %3391, %3388
  %3393 = icmp eq i32 %3392, 2
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %39, align 1
  %3395 = add i64 %3368, 9
  store i64 %3395, i64* %3, align 8
  store i32 %3372, i32* %3370, align 4
  %3396 = load i64, i64* %3, align 8
  %3397 = add i64 %3396, -1815
  store i64 %3397, i64* %3, align 8
  br label %block_.L_402bd2

block_.L_4032ee:                                  ; preds = %block_.L_402bd2
  %3398 = load i64, i64* %6, align 8
  %3399 = add i64 %3398, 24
  store i64 %3399, i64* %6, align 8
  %3400 = icmp ugt i64 %3398, -25
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %14, align 1
  %3402 = trunc i64 %3399 to i32
  %3403 = and i32 %3402, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %21, align 1
  %3408 = xor i64 %3398, 16
  %3409 = xor i64 %3408, %3399
  %3410 = lshr i64 %3409, 4
  %3411 = trunc i64 %3410 to i8
  %3412 = and i8 %3411, 1
  store i8 %3412, i8* %27, align 1
  %3413 = icmp eq i64 %3399, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %30, align 1
  %3415 = lshr i64 %3399, 63
  %3416 = trunc i64 %3415 to i8
  store i8 %3416, i8* %33, align 1
  %3417 = lshr i64 %3398, 63
  %3418 = xor i64 %3415, %3417
  %3419 = add nuw nsw i64 %3418, %3415
  %3420 = icmp eq i64 %3419, 2
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %39, align 1
  %3422 = add i64 %827, 5
  store i64 %3422, i64* %3, align 8
  %3423 = add i64 %3398, 32
  %3424 = inttoptr i64 %3399 to i64*
  %3425 = load i64, i64* %3424, align 8
  store i64 %3425, i64* %RBP.i, align 8
  store i64 %3423, i64* %6, align 8
  %3426 = add i64 %827, 6
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3423 to i64*
  %3428 = load i64, i64* %3427, align 8
  store i64 %3428, i64* %3, align 8
  %3429 = add i64 %3398, 40
  store i64 %3429, i64* %6, align 8
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

define %struct.Memory* @routine_subq__0x18___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_movsd_0x8__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x18__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_subsd_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_subsd_0x18__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_addsd_0x30__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x28__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x38__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_0x30__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_0x38__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x20__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x28__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x10__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x18__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x30__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x38__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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

define %struct.Memory* @routine_addsd_0x50__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x48__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x58__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_0x50__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_0x58__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_0x70__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x68__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x78__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_0x70__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_0x78__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x40__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x48__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x60__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x68__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x50__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x58__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x70__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x78__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_4032ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x14d0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x14d0__rip__4205552__type* @G_0x14d0__rip__4205552_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x5___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addl__0x7___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x9___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addl__0xb___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0xc___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addl__0xe___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addl__0xd___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addl__0xf___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_402bd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x18___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
