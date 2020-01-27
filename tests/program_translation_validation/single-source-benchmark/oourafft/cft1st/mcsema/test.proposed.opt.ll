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
  %790 = phi i64 [ %3385, %block_402bde ], [ %.pre, %entry ]
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
  %1386 = add i64 %1315, -128
  %1387 = add i64 %1317, 41
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to double*
  store double %1385, double* %1388, align 8
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -16
  %1391 = load i64, i64* %3, align 8
  %1392 = add i64 %1391, 4
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1390 to i64*
  %1394 = load i64, i64* %1393, align 8
  store i64 %1394, i64* %RDX.i1791, align 8
  %1395 = add i64 %1389, -28
  %1396 = add i64 %1391, 7
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = add i32 %1398, 5
  %1400 = zext i32 %1399 to i64
  store i64 %1400, i64* %RCX.i1272, align 8
  %1401 = icmp ugt i32 %1398, -6
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %14, align 1
  %1403 = and i32 %1399, 255
  %1404 = tail call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  store i8 %1407, i8* %21, align 1
  %1408 = xor i32 %1398, %1399
  %1409 = lshr i32 %1408, 4
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %27, align 1
  %1412 = icmp eq i32 %1399, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %30, align 1
  %1414 = lshr i32 %1399, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %33, align 1
  %1416 = lshr i32 %1398, 31
  %1417 = xor i32 %1414, %1416
  %1418 = add nuw nsw i32 %1417, %1414
  %1419 = icmp eq i32 %1418, 2
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %39, align 1
  %1421 = sext i32 %1399 to i64
  store i64 %1421, i64* %RSI.i1794, align 8
  %1422 = shl nsw i64 %1421, 3
  %1423 = add i64 %1422, %1394
  %1424 = add i64 %1391, 18
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to double*
  %1426 = load double, double* %1425, align 8
  store double %1426, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1427 = add i64 %1391, 22
  store i64 %1427, i64* %3, align 8
  %1428 = load i64, i64* %1393, align 8
  store i64 %1428, i64* %RDX.i1791, align 8
  %1429 = add i64 %1391, 25
  store i64 %1429, i64* %3, align 8
  %1430 = load i32, i32* %1397, align 4
  %1431 = add i32 %1430, 7
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RCX.i1272, align 8
  %1433 = icmp ugt i32 %1430, -8
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %14, align 1
  %1435 = and i32 %1431, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  %1440 = xor i32 %1430, %1431
  %1441 = lshr i32 %1440, 4
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  store i8 %1443, i8* %27, align 1
  %1444 = icmp eq i32 %1431, 0
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %30, align 1
  %1446 = lshr i32 %1431, 31
  %1447 = trunc i32 %1446 to i8
  store i8 %1447, i8* %33, align 1
  %1448 = lshr i32 %1430, 31
  %1449 = xor i32 %1446, %1448
  %1450 = add nuw nsw i32 %1449, %1446
  %1451 = icmp eq i32 %1450, 2
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %39, align 1
  %1453 = sext i32 %1431 to i64
  store i64 %1453, i64* %RSI.i1794, align 8
  %1454 = shl nsw i64 %1453, 3
  %1455 = add i64 %1454, %1428
  %1456 = add i64 %1391, 36
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to double*
  %1458 = load double, double* %1457, align 8
  %1459 = fadd double %1426, %1458
  store double %1459, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1460 = add i64 %1389, -136
  %1461 = add i64 %1391, 44
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to double*
  store double %1459, double* %1462, align 8
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -16
  %1465 = load i64, i64* %3, align 8
  %1466 = add i64 %1465, 4
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1464 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RDX.i1791, align 8
  %1469 = add i64 %1463, -28
  %1470 = add i64 %1465, 7
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, 4
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RCX.i1272, align 8
  %1475 = icmp ugt i32 %1472, -5
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %14, align 1
  %1477 = and i32 %1473, 255
  %1478 = tail call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  store i8 %1481, i8* %21, align 1
  %1482 = xor i32 %1472, %1473
  %1483 = lshr i32 %1482, 4
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %27, align 1
  %1486 = icmp eq i32 %1473, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %30, align 1
  %1488 = lshr i32 %1473, 31
  %1489 = trunc i32 %1488 to i8
  store i8 %1489, i8* %33, align 1
  %1490 = lshr i32 %1472, 31
  %1491 = xor i32 %1488, %1490
  %1492 = add nuw nsw i32 %1491, %1488
  %1493 = icmp eq i32 %1492, 2
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %39, align 1
  %1495 = sext i32 %1473 to i64
  store i64 %1495, i64* %RSI.i1794, align 8
  %1496 = shl nsw i64 %1495, 3
  %1497 = add i64 %1496, %1468
  %1498 = add i64 %1465, 18
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to double*
  %1500 = load double, double* %1499, align 8
  store double %1500, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1501 = add i64 %1465, 22
  store i64 %1501, i64* %3, align 8
  %1502 = load i64, i64* %1467, align 8
  store i64 %1502, i64* %RDX.i1791, align 8
  %1503 = add i64 %1465, 25
  store i64 %1503, i64* %3, align 8
  %1504 = load i32, i32* %1471, align 4
  %1505 = add i32 %1504, 6
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %RCX.i1272, align 8
  %1507 = icmp ugt i32 %1504, -7
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %14, align 1
  %1509 = and i32 %1505, 255
  %1510 = tail call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  store i8 %1513, i8* %21, align 1
  %1514 = xor i32 %1504, %1505
  %1515 = lshr i32 %1514, 4
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  store i8 %1517, i8* %27, align 1
  %1518 = icmp eq i32 %1505, 0
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %30, align 1
  %1520 = lshr i32 %1505, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %33, align 1
  %1522 = lshr i32 %1504, 31
  %1523 = xor i32 %1520, %1522
  %1524 = add nuw nsw i32 %1523, %1520
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %39, align 1
  %1527 = sext i32 %1505 to i64
  store i64 %1527, i64* %RSI.i1794, align 8
  %1528 = shl nsw i64 %1527, 3
  %1529 = add i64 %1528, %1502
  %1530 = add i64 %1465, 36
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to double*
  %1532 = load double, double* %1531, align 8
  %1533 = fsub double %1500, %1532
  store double %1533, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1534 = add i64 %1463, -144
  %1535 = add i64 %1465, 44
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to double*
  store double %1533, double* %1536, align 8
  %1537 = load i64, i64* %RBP.i, align 8
  %1538 = add i64 %1537, -16
  %1539 = load i64, i64* %3, align 8
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1538 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RDX.i1791, align 8
  %1543 = add i64 %1537, -28
  %1544 = add i64 %1539, 7
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = add i32 %1546, 5
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RCX.i1272, align 8
  %1549 = icmp ugt i32 %1546, -6
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %14, align 1
  %1551 = and i32 %1547, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %21, align 1
  %1556 = xor i32 %1546, %1547
  %1557 = lshr i32 %1556, 4
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  store i8 %1559, i8* %27, align 1
  %1560 = icmp eq i32 %1547, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %30, align 1
  %1562 = lshr i32 %1547, 31
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %33, align 1
  %1564 = lshr i32 %1546, 31
  %1565 = xor i32 %1562, %1564
  %1566 = add nuw nsw i32 %1565, %1562
  %1567 = icmp eq i32 %1566, 2
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %39, align 1
  %1569 = sext i32 %1547 to i64
  store i64 %1569, i64* %RSI.i1794, align 8
  %1570 = shl nsw i64 %1569, 3
  %1571 = add i64 %1570, %1542
  %1572 = add i64 %1539, 18
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to double*
  %1574 = load double, double* %1573, align 8
  store double %1574, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1575 = add i64 %1539, 22
  store i64 %1575, i64* %3, align 8
  %1576 = load i64, i64* %1541, align 8
  store i64 %1576, i64* %RDX.i1791, align 8
  %1577 = add i64 %1539, 25
  store i64 %1577, i64* %3, align 8
  %1578 = load i32, i32* %1545, align 4
  %1579 = add i32 %1578, 7
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RCX.i1272, align 8
  %1581 = icmp ugt i32 %1578, -8
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1579, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = xor i32 %1578, %1579
  %1589 = lshr i32 %1588, 4
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  store i8 %1591, i8* %27, align 1
  %1592 = icmp eq i32 %1579, 0
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %30, align 1
  %1594 = lshr i32 %1579, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %33, align 1
  %1596 = lshr i32 %1578, 31
  %1597 = xor i32 %1594, %1596
  %1598 = add nuw nsw i32 %1597, %1594
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %39, align 1
  %1601 = sext i32 %1579 to i64
  store i64 %1601, i64* %RSI.i1794, align 8
  %1602 = shl nsw i64 %1601, 3
  %1603 = add i64 %1602, %1576
  %1604 = add i64 %1539, 36
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to double*
  %1606 = load double, double* %1605, align 8
  %1607 = fsub double %1574, %1606
  store double %1607, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1608 = add i64 %1537, -152
  %1609 = add i64 %1539, 44
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to double*
  store double %1607, double* %1610, align 8
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -96
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, 5
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1612 to double*
  %1616 = load double, double* %1615, align 8
  store double %1616, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1617 = add i64 %1611, -128
  %1618 = add i64 %1613, 10
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to double*
  %1620 = load double, double* %1619, align 8
  %1621 = fadd double %1616, %1620
  store double %1621, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1622 = add i64 %1611, -16
  %1623 = add i64 %1613, 14
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %RDX.i1791, align 8
  %1626 = add i64 %1611, -28
  %1627 = add i64 %1613, 18
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = sext i32 %1629 to i64
  store i64 %1630, i64* %RSI.i1794, align 8
  %1631 = shl nsw i64 %1630, 3
  %1632 = add i64 %1631, %1625
  %1633 = add i64 %1613, 23
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to double*
  store double %1621, double* %1634, align 8
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -104
  %1637 = load i64, i64* %3, align 8
  %1638 = add i64 %1637, 5
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1636 to double*
  %1640 = load double, double* %1639, align 8
  store double %1640, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1641 = add i64 %1635, -136
  %1642 = add i64 %1637, 13
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to double*
  %1644 = load double, double* %1643, align 8
  %1645 = fadd double %1640, %1644
  store double %1645, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1646 = add i64 %1635, -16
  %1647 = add i64 %1637, 17
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i64*
  %1649 = load i64, i64* %1648, align 8
  store i64 %1649, i64* %RDX.i1791, align 8
  %1650 = add i64 %1635, -28
  %1651 = add i64 %1637, 20
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = add i32 %1653, 1
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RCX.i1272, align 8
  %1656 = icmp eq i32 %1653, -1
  %1657 = icmp eq i32 %1654, 0
  %1658 = or i1 %1656, %1657
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %14, align 1
  %1660 = and i32 %1654, 255
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %21, align 1
  %1665 = xor i32 %1653, %1654
  %1666 = lshr i32 %1665, 4
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  store i8 %1668, i8* %27, align 1
  %1669 = zext i1 %1657 to i8
  store i8 %1669, i8* %30, align 1
  %1670 = lshr i32 %1654, 31
  %1671 = trunc i32 %1670 to i8
  store i8 %1671, i8* %33, align 1
  %1672 = lshr i32 %1653, 31
  %1673 = xor i32 %1670, %1672
  %1674 = add nuw nsw i32 %1673, %1670
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %39, align 1
  %1677 = sext i32 %1654 to i64
  store i64 %1677, i64* %RSI.i1794, align 8
  %1678 = shl nsw i64 %1677, 3
  %1679 = add i64 %1678, %1649
  %1680 = add i64 %1637, 31
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to double*
  store double %1645, double* %1681, align 8
  %1682 = load i64, i64* %RBP.i, align 8
  %1683 = add i64 %1682, -128
  %1684 = load i64, i64* %3, align 8
  %1685 = add i64 %1684, 5
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1683 to double*
  %1687 = load double, double* %1686, align 8
  store double %1687, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1688 = add i64 %1682, -96
  %1689 = add i64 %1684, 10
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to double*
  %1691 = load double, double* %1690, align 8
  %1692 = fsub double %1691, %1687
  store double %1692, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1693 = add i64 %1684, 19
  store i64 %1693, i64* %3, align 8
  store double %1692, double* %1690, align 8
  %1694 = load i64, i64* %RBP.i, align 8
  %1695 = add i64 %1694, -136
  %1696 = load i64, i64* %3, align 8
  %1697 = add i64 %1696, 8
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1695 to double*
  %1699 = load double, double* %1698, align 8
  store double %1699, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1700 = add i64 %1694, -104
  %1701 = add i64 %1696, 13
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to double*
  %1703 = load double, double* %1702, align 8
  %1704 = fsub double %1703, %1699
  store double %1704, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1705 = add i64 %1696, 22
  store i64 %1705, i64* %3, align 8
  store double %1704, double* %1702, align 8
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -64
  %1708 = load i64, i64* %3, align 8
  %1709 = add i64 %1708, 5
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1707 to double*
  %1711 = load double, double* %1710, align 8
  store double %1711, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1712 = add i64 %1706, -96
  %1713 = add i64 %1708, 10
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to double*
  %1715 = load double, double* %1714, align 8
  %1716 = fmul double %1711, %1715
  store double %1716, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1717 = add i64 %1706, -72
  %1718 = add i64 %1708, 15
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to double*
  %1720 = load double, double* %1719, align 8
  store double %1720, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1721 = add i64 %1706, -104
  %1722 = add i64 %1708, 20
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to double*
  %1724 = load double, double* %1723, align 8
  %1725 = fmul double %1720, %1724
  store double %1725, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1726 = fsub double %1716, %1725
  store double %1726, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1727 = add i64 %1706, -16
  %1728 = add i64 %1708, 28
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i64*
  %1730 = load i64, i64* %1729, align 8
  store i64 %1730, i64* %RDX.i1791, align 8
  %1731 = add i64 %1706, -28
  %1732 = add i64 %1708, 31
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = add i32 %1734, 4
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RCX.i1272, align 8
  %1737 = icmp ugt i32 %1734, -5
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %14, align 1
  %1739 = and i32 %1735, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739)
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %21, align 1
  %1744 = xor i32 %1734, %1735
  %1745 = lshr i32 %1744, 4
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  store i8 %1747, i8* %27, align 1
  %1748 = icmp eq i32 %1735, 0
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %30, align 1
  %1750 = lshr i32 %1735, 31
  %1751 = trunc i32 %1750 to i8
  store i8 %1751, i8* %33, align 1
  %1752 = lshr i32 %1734, 31
  %1753 = xor i32 %1750, %1752
  %1754 = add nuw nsw i32 %1753, %1750
  %1755 = icmp eq i32 %1754, 2
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %39, align 1
  %1757 = sext i32 %1735 to i64
  store i64 %1757, i64* %RSI.i1794, align 8
  %1758 = shl nsw i64 %1757, 3
  %1759 = add i64 %1758, %1730
  %1760 = add i64 %1708, 42
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to double*
  store double %1726, double* %1761, align 8
  %1762 = load i64, i64* %RBP.i, align 8
  %1763 = add i64 %1762, -64
  %1764 = load i64, i64* %3, align 8
  %1765 = add i64 %1764, 5
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1763 to double*
  %1767 = load double, double* %1766, align 8
  store double %1767, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1768 = add i64 %1762, -104
  %1769 = add i64 %1764, 10
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to double*
  %1771 = load double, double* %1770, align 8
  %1772 = fmul double %1767, %1771
  store double %1772, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1773 = add i64 %1762, -72
  %1774 = add i64 %1764, 15
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to double*
  %1776 = load double, double* %1775, align 8
  store double %1776, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1777 = add i64 %1762, -96
  %1778 = add i64 %1764, 20
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to double*
  %1780 = load double, double* %1779, align 8
  %1781 = fmul double %1776, %1780
  store double %1781, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1782 = fadd double %1772, %1781
  store double %1782, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1783 = add i64 %1762, -16
  %1784 = add i64 %1764, 28
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i64*
  %1786 = load i64, i64* %1785, align 8
  store i64 %1786, i64* %RDX.i1791, align 8
  %1787 = add i64 %1762, -28
  %1788 = add i64 %1764, 31
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = add i32 %1790, 5
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RCX.i1272, align 8
  %1793 = icmp ugt i32 %1790, -6
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %14, align 1
  %1795 = and i32 %1791, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  %1800 = xor i32 %1790, %1791
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %27, align 1
  %1804 = icmp eq i32 %1791, 0
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %30, align 1
  %1806 = lshr i32 %1791, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %33, align 1
  %1808 = lshr i32 %1790, 31
  %1809 = xor i32 %1806, %1808
  %1810 = add nuw nsw i32 %1809, %1806
  %1811 = icmp eq i32 %1810, 2
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %39, align 1
  %1813 = sext i32 %1791 to i64
  store i64 %1813, i64* %RSI.i1794, align 8
  %1814 = shl nsw i64 %1813, 3
  %1815 = add i64 %1814, %1786
  %1816 = add i64 %1764, 42
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to double*
  store double %1782, double* %1817, align 8
  %1818 = load i64, i64* %RBP.i, align 8
  %1819 = add i64 %1818, -112
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 5
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1819 to double*
  %1823 = load double, double* %1822, align 8
  store double %1823, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1824 = add i64 %1818, -152
  %1825 = add i64 %1820, 13
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to double*
  %1827 = load double, double* %1826, align 8
  %1828 = fsub double %1823, %1827
  store double %1828, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1829 = add i64 %1818, -96
  %1830 = add i64 %1820, 18
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to double*
  store double %1828, double* %1831, align 8
  %1832 = load i64, i64* %RBP.i, align 8
  %1833 = add i64 %1832, -120
  %1834 = load i64, i64* %3, align 8
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1833 to double*
  %1837 = load double, double* %1836, align 8
  store double %1837, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1838 = add i64 %1832, -144
  %1839 = add i64 %1834, 13
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to double*
  %1841 = load double, double* %1840, align 8
  %1842 = fadd double %1837, %1841
  store double %1842, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1843 = add i64 %1832, -104
  %1844 = add i64 %1834, 18
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to double*
  store double %1842, double* %1845, align 8
  %1846 = load i64, i64* %RBP.i, align 8
  %1847 = add i64 %1846, -48
  %1848 = load i64, i64* %3, align 8
  %1849 = add i64 %1848, 5
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1847 to double*
  %1851 = load double, double* %1850, align 8
  store double %1851, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1852 = add i64 %1846, -96
  %1853 = add i64 %1848, 10
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to double*
  %1855 = load double, double* %1854, align 8
  %1856 = fmul double %1851, %1855
  store double %1856, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1857 = add i64 %1846, -56
  %1858 = add i64 %1848, 15
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to double*
  %1860 = load double, double* %1859, align 8
  store double %1860, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1861 = add i64 %1846, -104
  %1862 = add i64 %1848, 20
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to double*
  %1864 = load double, double* %1863, align 8
  %1865 = fmul double %1860, %1864
  store double %1865, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1866 = fsub double %1856, %1865
  store double %1866, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1867 = add i64 %1846, -16
  %1868 = add i64 %1848, 28
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RDX.i1791, align 8
  %1871 = add i64 %1846, -28
  %1872 = add i64 %1848, 31
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i32*
  %1874 = load i32, i32* %1873, align 4
  %1875 = add i32 %1874, 2
  %1876 = zext i32 %1875 to i64
  store i64 %1876, i64* %RCX.i1272, align 8
  %1877 = icmp ugt i32 %1874, -3
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %14, align 1
  %1879 = and i32 %1875, 255
  %1880 = tail call i32 @llvm.ctpop.i32(i32 %1879)
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  store i8 %1883, i8* %21, align 1
  %1884 = xor i32 %1874, %1875
  %1885 = lshr i32 %1884, 4
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %27, align 1
  %1888 = icmp eq i32 %1875, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %30, align 1
  %1890 = lshr i32 %1875, 31
  %1891 = trunc i32 %1890 to i8
  store i8 %1891, i8* %33, align 1
  %1892 = lshr i32 %1874, 31
  %1893 = xor i32 %1890, %1892
  %1894 = add nuw nsw i32 %1893, %1890
  %1895 = icmp eq i32 %1894, 2
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %39, align 1
  %1897 = sext i32 %1875 to i64
  store i64 %1897, i64* %RSI.i1794, align 8
  %1898 = shl nsw i64 %1897, 3
  %1899 = add i64 %1898, %1870
  %1900 = add i64 %1848, 42
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to double*
  store double %1866, double* %1901, align 8
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -48
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 5
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to double*
  %1907 = load double, double* %1906, align 8
  store double %1907, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1908 = add i64 %1902, -104
  %1909 = add i64 %1904, 10
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to double*
  %1911 = load double, double* %1910, align 8
  %1912 = fmul double %1907, %1911
  store double %1912, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1913 = add i64 %1902, -56
  %1914 = add i64 %1904, 15
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to double*
  %1916 = load double, double* %1915, align 8
  store double %1916, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %1917 = add i64 %1902, -96
  %1918 = add i64 %1904, 20
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to double*
  %1920 = load double, double* %1919, align 8
  %1921 = fmul double %1916, %1920
  store double %1921, double* %782, align 1
  store i64 0, i64* %778, align 1
  %1922 = fadd double %1912, %1921
  store double %1922, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1923 = add i64 %1902, -16
  %1924 = add i64 %1904, 28
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i64*
  %1926 = load i64, i64* %1925, align 8
  store i64 %1926, i64* %RDX.i1791, align 8
  %1927 = add i64 %1902, -28
  %1928 = add i64 %1904, 31
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  %1930 = load i32, i32* %1929, align 4
  %1931 = add i32 %1930, 3
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i1272, align 8
  %1933 = icmp ugt i32 %1930, -4
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %14, align 1
  %1935 = and i32 %1931, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %21, align 1
  %1940 = xor i32 %1930, %1931
  %1941 = lshr i32 %1940, 4
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  store i8 %1943, i8* %27, align 1
  %1944 = icmp eq i32 %1931, 0
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %30, align 1
  %1946 = lshr i32 %1931, 31
  %1947 = trunc i32 %1946 to i8
  store i8 %1947, i8* %33, align 1
  %1948 = lshr i32 %1930, 31
  %1949 = xor i32 %1946, %1948
  %1950 = add nuw nsw i32 %1949, %1946
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %39, align 1
  %1953 = sext i32 %1931 to i64
  store i64 %1953, i64* %RSI.i1794, align 8
  %1954 = shl nsw i64 %1953, 3
  %1955 = add i64 %1954, %1926
  %1956 = add i64 %1904, 42
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to double*
  store double %1922, double* %1957, align 8
  %1958 = load i64, i64* %RBP.i, align 8
  %1959 = add i64 %1958, -112
  %1960 = load i64, i64* %3, align 8
  %1961 = add i64 %1960, 5
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1959 to double*
  %1963 = load double, double* %1962, align 8
  store double %1963, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1964 = add i64 %1958, -152
  %1965 = add i64 %1960, 13
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to double*
  %1967 = load double, double* %1966, align 8
  %1968 = fadd double %1963, %1967
  store double %1968, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1969 = add i64 %1958, -96
  %1970 = add i64 %1960, 18
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to double*
  store double %1968, double* %1971, align 8
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -120
  %1974 = load i64, i64* %3, align 8
  %1975 = add i64 %1974, 5
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1973 to double*
  %1977 = load double, double* %1976, align 8
  store double %1977, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1978 = add i64 %1972, -144
  %1979 = add i64 %1974, 13
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1978 to double*
  %1981 = load double, double* %1980, align 8
  %1982 = fsub double %1977, %1981
  store double %1982, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1983 = add i64 %1972, -104
  %1984 = add i64 %1974, 18
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to double*
  store double %1982, double* %1985, align 8
  %1986 = load i64, i64* %RBP.i, align 8
  %1987 = add i64 %1986, -80
  %1988 = load i64, i64* %3, align 8
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1987 to double*
  %1991 = load double, double* %1990, align 8
  store double %1991, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1992 = add i64 %1986, -96
  %1993 = add i64 %1988, 10
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to double*
  %1995 = load double, double* %1994, align 8
  %1996 = fmul double %1991, %1995
  store double %1996, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1997 = add i64 %1986, -88
  %1998 = add i64 %1988, 15
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to double*
  %2000 = load double, double* %1999, align 8
  store double %2000, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %2001 = add i64 %1986, -104
  %2002 = add i64 %1988, 20
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to double*
  %2004 = load double, double* %2003, align 8
  %2005 = fmul double %2000, %2004
  store double %2005, double* %782, align 1
  store i64 0, i64* %778, align 1
  %2006 = fsub double %1996, %2005
  store double %2006, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2007 = add i64 %1986, -16
  %2008 = add i64 %1988, 28
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %RDX.i1791, align 8
  %2011 = add i64 %1986, -28
  %2012 = add i64 %1988, 31
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = add i32 %2014, 6
  %2016 = zext i32 %2015 to i64
  store i64 %2016, i64* %RCX.i1272, align 8
  %2017 = icmp ugt i32 %2014, -7
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %14, align 1
  %2019 = and i32 %2015, 255
  %2020 = tail call i32 @llvm.ctpop.i32(i32 %2019)
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = xor i8 %2022, 1
  store i8 %2023, i8* %21, align 1
  %2024 = xor i32 %2014, %2015
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %27, align 1
  %2028 = icmp eq i32 %2015, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %30, align 1
  %2030 = lshr i32 %2015, 31
  %2031 = trunc i32 %2030 to i8
  store i8 %2031, i8* %33, align 1
  %2032 = lshr i32 %2014, 31
  %2033 = xor i32 %2030, %2032
  %2034 = add nuw nsw i32 %2033, %2030
  %2035 = icmp eq i32 %2034, 2
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %39, align 1
  %2037 = sext i32 %2015 to i64
  store i64 %2037, i64* %RSI.i1794, align 8
  %2038 = shl nsw i64 %2037, 3
  %2039 = add i64 %2038, %2010
  %2040 = add i64 %1988, 42
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to double*
  store double %2006, double* %2041, align 8
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -80
  %2044 = load i64, i64* %3, align 8
  %2045 = add i64 %2044, 5
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2043 to double*
  %2047 = load double, double* %2046, align 8
  store double %2047, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2048 = add i64 %2042, -104
  %2049 = add i64 %2044, 10
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to double*
  %2051 = load double, double* %2050, align 8
  %2052 = fmul double %2047, %2051
  store double %2052, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2053 = add i64 %2042, -88
  %2054 = add i64 %2044, 15
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to double*
  %2056 = load double, double* %2055, align 8
  store double %2056, double* %782, align 1
  store double 0.000000e+00, double* %789, align 1
  %2057 = add i64 %2042, -96
  %2058 = add i64 %2044, 20
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to double*
  %2060 = load double, double* %2059, align 8
  %2061 = fmul double %2056, %2060
  store double %2061, double* %782, align 1
  store i64 0, i64* %778, align 1
  %2062 = fadd double %2052, %2061
  store double %2062, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2063 = add i64 %2042, -16
  %2064 = add i64 %2044, 28
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i64*
  %2066 = load i64, i64* %2065, align 8
  store i64 %2066, i64* %RDX.i1791, align 8
  %2067 = add i64 %2042, -28
  %2068 = add i64 %2044, 31
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = add i32 %2070, 7
  %2072 = zext i32 %2071 to i64
  store i64 %2072, i64* %RCX.i1272, align 8
  %2073 = icmp ugt i32 %2070, -8
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %14, align 1
  %2075 = and i32 %2071, 255
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  %2080 = xor i32 %2070, %2071
  %2081 = lshr i32 %2080, 4
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  store i8 %2083, i8* %27, align 1
  %2084 = icmp eq i32 %2071, 0
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %30, align 1
  %2086 = lshr i32 %2071, 31
  %2087 = trunc i32 %2086 to i8
  store i8 %2087, i8* %33, align 1
  %2088 = lshr i32 %2070, 31
  %2089 = xor i32 %2086, %2088
  %2090 = add nuw nsw i32 %2089, %2086
  %2091 = icmp eq i32 %2090, 2
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %39, align 1
  %2093 = sext i32 %2071 to i64
  store i64 %2093, i64* %RSI.i1794, align 8
  %2094 = shl nsw i64 %2093, 3
  %2095 = add i64 %2094, %2066
  %2096 = add i64 %2044, 42
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to double*
  store double %2062, double* %2097, align 8
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -24
  %2100 = load i64, i64* %3, align 8
  %2101 = add i64 %2100, 4
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2099 to i64*
  %2103 = load i64, i64* %2102, align 8
  store i64 %2103, i64* %RDX.i1791, align 8
  %2104 = add i64 %2098, -36
  %2105 = add i64 %2100, 7
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = add i32 %2107, 2
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RCX.i1272, align 8
  %2110 = icmp ugt i32 %2107, -3
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %14, align 1
  %2112 = and i32 %2108, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i32 %2107, %2108
  %2118 = lshr i32 %2117, 4
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  store i8 %2120, i8* %27, align 1
  %2121 = icmp eq i32 %2108, 0
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %30, align 1
  %2123 = lshr i32 %2108, 31
  %2124 = trunc i32 %2123 to i8
  store i8 %2124, i8* %33, align 1
  %2125 = lshr i32 %2107, 31
  %2126 = xor i32 %2123, %2125
  %2127 = add nuw nsw i32 %2126, %2123
  %2128 = icmp eq i32 %2127, 2
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %39, align 1
  %2130 = sext i32 %2108 to i64
  store i64 %2130, i64* %RSI.i1794, align 8
  %2131 = shl nsw i64 %2130, 3
  %2132 = add i64 %2131, %2103
  %2133 = add i64 %2100, 18
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  store i64 %2135, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %2136 = add i64 %2098, -48
  %2137 = add i64 %2100, 23
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i64*
  store i64 %2135, i64* %2138, align 8
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -24
  %2141 = load i64, i64* %3, align 8
  %2142 = add i64 %2141, 4
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2140 to i64*
  %2144 = load i64, i64* %2143, align 8
  store i64 %2144, i64* %RDX.i1791, align 8
  %2145 = add i64 %2139, -36
  %2146 = add i64 %2141, 7
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = add i32 %2148, 3
  %2150 = zext i32 %2149 to i64
  store i64 %2150, i64* %RCX.i1272, align 8
  %2151 = icmp ugt i32 %2148, -4
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %14, align 1
  %2153 = and i32 %2149, 255
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %21, align 1
  %2158 = xor i32 %2148, %2149
  %2159 = lshr i32 %2158, 4
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  store i8 %2161, i8* %27, align 1
  %2162 = icmp eq i32 %2149, 0
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %30, align 1
  %2164 = lshr i32 %2149, 31
  %2165 = trunc i32 %2164 to i8
  store i8 %2165, i8* %33, align 1
  %2166 = lshr i32 %2148, 31
  %2167 = xor i32 %2164, %2166
  %2168 = add nuw nsw i32 %2167, %2164
  %2169 = icmp eq i32 %2168, 2
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %39, align 1
  %2171 = sext i32 %2149 to i64
  store i64 %2171, i64* %RSI.i1794, align 8
  %2172 = shl nsw i64 %2171, 3
  %2173 = add i64 %2172, %2144
  %2174 = add i64 %2141, 18
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i64*
  %2176 = load i64, i64* %2175, align 8
  store i64 %2176, i64* %898, align 1
  store double 0.000000e+00, double* %650, align 1
  %2177 = add i64 %2139, -56
  %2178 = add i64 %2141, 23
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i64*
  store i64 %2176, i64* %2179, align 8
  %2180 = load i64, i64* %RBP.i, align 8
  %2181 = add i64 %2180, -48
  %2182 = load i64, i64* %3, align 8
  %2183 = add i64 %2182, 5
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2181 to double*
  %2185 = load double, double* %2184, align 8
  store double %2185, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2186 = load <2 x i32>, <2 x i32>* %773, align 1
  %2187 = load <2 x i32>, <2 x i32>* %774, align 1
  %2188 = extractelement <2 x i32> %2186, i32 0
  store i32 %2188, i32* %775, align 1
  %2189 = extractelement <2 x i32> %2186, i32 1
  store i32 %2189, i32* %777, align 1
  %2190 = extractelement <2 x i32> %2187, i32 0
  store i32 %2190, i32* %779, align 1
  %2191 = extractelement <2 x i32> %2187, i32 1
  store i32 %2191, i32* %781, align 1
  %2192 = add i64 %2180, -64
  %2193 = add i64 %2182, 13
  store i64 %2193, i64* %3, align 8
  %2194 = load double, double* %782, align 1
  %2195 = inttoptr i64 %2192 to double*
  %2196 = load double, double* %2195, align 8
  %2197 = fmul double %2194, %2196
  store double %2197, double* %782, align 1
  %2198 = add i64 %2180, -56
  %2199 = add i64 %2182, 18
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to double*
  %2201 = load double, double* %2200, align 8
  %2202 = fmul double %2197, %2201
  store double %2202, double* %782, align 1
  %2203 = fsub double %2185, %2202
  store double %2203, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2204 = add i64 %2180, -80
  %2205 = add i64 %2182, 27
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to double*
  store double %2203, double* %2206, align 8
  %2207 = load i64, i64* %RBP.i, align 8
  %2208 = add i64 %2207, -64
  %2209 = load i64, i64* %3, align 8
  %2210 = add i64 %2209, 5
  store i64 %2210, i64* %3, align 8
  %2211 = load double, double* %67, align 1
  %2212 = inttoptr i64 %2208 to double*
  %2213 = load double, double* %2212, align 8
  %2214 = fmul double %2211, %2213
  store double %2214, double* %67, align 1
  %2215 = add i64 %2207, -48
  %2216 = add i64 %2209, 10
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to double*
  %2218 = load double, double* %2217, align 8
  %2219 = fmul double %2214, %2218
  store double %2219, double* %67, align 1
  %2220 = add i64 %2207, -56
  %2221 = add i64 %2209, 15
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to double*
  %2223 = load double, double* %2222, align 8
  %2224 = fsub double %2219, %2223
  store double %2224, double* %67, align 1
  %2225 = add i64 %2207, -88
  %2226 = add i64 %2209, 20
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to double*
  store double %2224, double* %2227, align 8
  %2228 = load i64, i64* %RBP.i, align 8
  %2229 = add i64 %2228, -16
  %2230 = load i64, i64* %3, align 8
  %2231 = add i64 %2230, 4
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2229 to i64*
  %2233 = load i64, i64* %2232, align 8
  store i64 %2233, i64* %RDX.i1791, align 8
  %2234 = add i64 %2228, -28
  %2235 = add i64 %2230, 7
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = add i32 %2237, 8
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %RCX.i1272, align 8
  %2240 = icmp ugt i32 %2237, -9
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %14, align 1
  %2242 = and i32 %2238, 255
  %2243 = tail call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  store i8 %2246, i8* %21, align 1
  %2247 = xor i32 %2237, %2238
  %2248 = lshr i32 %2247, 4
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  store i8 %2250, i8* %27, align 1
  %2251 = icmp eq i32 %2238, 0
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %30, align 1
  %2253 = lshr i32 %2238, 31
  %2254 = trunc i32 %2253 to i8
  store i8 %2254, i8* %33, align 1
  %2255 = lshr i32 %2237, 31
  %2256 = xor i32 %2253, %2255
  %2257 = add nuw nsw i32 %2256, %2253
  %2258 = icmp eq i32 %2257, 2
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %39, align 1
  %2260 = sext i32 %2238 to i64
  store i64 %2260, i64* %RSI.i1794, align 8
  %2261 = shl nsw i64 %2260, 3
  %2262 = add i64 %2261, %2233
  %2263 = add i64 %2230, 18
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2262 to double*
  %2265 = load double, double* %2264, align 8
  store double %2265, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2266 = add i64 %2230, 22
  store i64 %2266, i64* %3, align 8
  %2267 = load i64, i64* %2232, align 8
  store i64 %2267, i64* %RDX.i1791, align 8
  %2268 = add i64 %2230, 25
  store i64 %2268, i64* %3, align 8
  %2269 = load i32, i32* %2236, align 4
  %2270 = add i32 %2269, 10
  %2271 = zext i32 %2270 to i64
  store i64 %2271, i64* %RCX.i1272, align 8
  %2272 = icmp ugt i32 %2269, -11
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %14, align 1
  %2274 = and i32 %2270, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %21, align 1
  %2279 = xor i32 %2269, %2270
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %27, align 1
  %2283 = icmp eq i32 %2270, 0
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %30, align 1
  %2285 = lshr i32 %2270, 31
  %2286 = trunc i32 %2285 to i8
  store i8 %2286, i8* %33, align 1
  %2287 = lshr i32 %2269, 31
  %2288 = xor i32 %2285, %2287
  %2289 = add nuw nsw i32 %2288, %2285
  %2290 = icmp eq i32 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %39, align 1
  %2292 = sext i32 %2270 to i64
  store i64 %2292, i64* %RSI.i1794, align 8
  %2293 = shl nsw i64 %2292, 3
  %2294 = add i64 %2293, %2267
  %2295 = add i64 %2230, 36
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to double*
  %2297 = load double, double* %2296, align 8
  %2298 = fadd double %2265, %2297
  store double %2298, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2299 = add i64 %2228, -96
  %2300 = add i64 %2230, 41
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to double*
  store double %2298, double* %2301, align 8
  %2302 = load i64, i64* %RBP.i, align 8
  %2303 = add i64 %2302, -16
  %2304 = load i64, i64* %3, align 8
  %2305 = add i64 %2304, 4
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2303 to i64*
  %2307 = load i64, i64* %2306, align 8
  store i64 %2307, i64* %RDX.i1791, align 8
  %2308 = add i64 %2302, -28
  %2309 = add i64 %2304, 7
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i32*
  %2311 = load i32, i32* %2310, align 4
  %2312 = add i32 %2311, 9
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RCX.i1272, align 8
  %2314 = icmp ugt i32 %2311, -10
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %14, align 1
  %2316 = and i32 %2312, 255
  %2317 = tail call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  store i8 %2320, i8* %21, align 1
  %2321 = xor i32 %2311, %2312
  %2322 = lshr i32 %2321, 4
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  store i8 %2324, i8* %27, align 1
  %2325 = icmp eq i32 %2312, 0
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %30, align 1
  %2327 = lshr i32 %2312, 31
  %2328 = trunc i32 %2327 to i8
  store i8 %2328, i8* %33, align 1
  %2329 = lshr i32 %2311, 31
  %2330 = xor i32 %2327, %2329
  %2331 = add nuw nsw i32 %2330, %2327
  %2332 = icmp eq i32 %2331, 2
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %39, align 1
  %2334 = sext i32 %2312 to i64
  store i64 %2334, i64* %RSI.i1794, align 8
  %2335 = shl nsw i64 %2334, 3
  %2336 = add i64 %2335, %2307
  %2337 = add i64 %2304, 18
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to double*
  %2339 = load double, double* %2338, align 8
  store double %2339, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2340 = add i64 %2304, 22
  store i64 %2340, i64* %3, align 8
  %2341 = load i64, i64* %2306, align 8
  store i64 %2341, i64* %RDX.i1791, align 8
  %2342 = add i64 %2304, 25
  store i64 %2342, i64* %3, align 8
  %2343 = load i32, i32* %2310, align 4
  %2344 = add i32 %2343, 11
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RCX.i1272, align 8
  %2346 = icmp ugt i32 %2343, -12
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %14, align 1
  %2348 = and i32 %2344, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %21, align 1
  %2353 = xor i32 %2343, %2344
  %2354 = lshr i32 %2353, 4
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  store i8 %2356, i8* %27, align 1
  %2357 = icmp eq i32 %2344, 0
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %30, align 1
  %2359 = lshr i32 %2344, 31
  %2360 = trunc i32 %2359 to i8
  store i8 %2360, i8* %33, align 1
  %2361 = lshr i32 %2343, 31
  %2362 = xor i32 %2359, %2361
  %2363 = add nuw nsw i32 %2362, %2359
  %2364 = icmp eq i32 %2363, 2
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %39, align 1
  %2366 = sext i32 %2344 to i64
  store i64 %2366, i64* %RSI.i1794, align 8
  %2367 = shl nsw i64 %2366, 3
  %2368 = add i64 %2367, %2341
  %2369 = add i64 %2304, 36
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to double*
  %2371 = load double, double* %2370, align 8
  %2372 = fadd double %2339, %2371
  store double %2372, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2373 = add i64 %2302, -104
  %2374 = add i64 %2304, 41
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to double*
  store double %2372, double* %2375, align 8
  %2376 = load i64, i64* %RBP.i, align 8
  %2377 = add i64 %2376, -16
  %2378 = load i64, i64* %3, align 8
  %2379 = add i64 %2378, 4
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2377 to i64*
  %2381 = load i64, i64* %2380, align 8
  store i64 %2381, i64* %RDX.i1791, align 8
  %2382 = add i64 %2376, -28
  %2383 = add i64 %2378, 7
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = add i32 %2385, 8
  %2387 = zext i32 %2386 to i64
  store i64 %2387, i64* %RCX.i1272, align 8
  %2388 = icmp ugt i32 %2385, -9
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %14, align 1
  %2390 = and i32 %2386, 255
  %2391 = tail call i32 @llvm.ctpop.i32(i32 %2390)
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  %2394 = xor i8 %2393, 1
  store i8 %2394, i8* %21, align 1
  %2395 = xor i32 %2385, %2386
  %2396 = lshr i32 %2395, 4
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  store i8 %2398, i8* %27, align 1
  %2399 = icmp eq i32 %2386, 0
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %30, align 1
  %2401 = lshr i32 %2386, 31
  %2402 = trunc i32 %2401 to i8
  store i8 %2402, i8* %33, align 1
  %2403 = lshr i32 %2385, 31
  %2404 = xor i32 %2401, %2403
  %2405 = add nuw nsw i32 %2404, %2401
  %2406 = icmp eq i32 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %39, align 1
  %2408 = sext i32 %2386 to i64
  store i64 %2408, i64* %RSI.i1794, align 8
  %2409 = shl nsw i64 %2408, 3
  %2410 = add i64 %2409, %2381
  %2411 = add i64 %2378, 18
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to double*
  %2413 = load double, double* %2412, align 8
  store double %2413, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2414 = add i64 %2378, 22
  store i64 %2414, i64* %3, align 8
  %2415 = load i64, i64* %2380, align 8
  store i64 %2415, i64* %RDX.i1791, align 8
  %2416 = add i64 %2378, 25
  store i64 %2416, i64* %3, align 8
  %2417 = load i32, i32* %2384, align 4
  %2418 = add i32 %2417, 10
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RCX.i1272, align 8
  %2420 = icmp ugt i32 %2417, -11
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %14, align 1
  %2422 = and i32 %2418, 255
  %2423 = tail call i32 @llvm.ctpop.i32(i32 %2422)
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  %2426 = xor i8 %2425, 1
  store i8 %2426, i8* %21, align 1
  %2427 = xor i32 %2417, %2418
  %2428 = lshr i32 %2427, 4
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  store i8 %2430, i8* %27, align 1
  %2431 = icmp eq i32 %2418, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %30, align 1
  %2433 = lshr i32 %2418, 31
  %2434 = trunc i32 %2433 to i8
  store i8 %2434, i8* %33, align 1
  %2435 = lshr i32 %2417, 31
  %2436 = xor i32 %2433, %2435
  %2437 = add nuw nsw i32 %2436, %2433
  %2438 = icmp eq i32 %2437, 2
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %39, align 1
  %2440 = sext i32 %2418 to i64
  store i64 %2440, i64* %RSI.i1794, align 8
  %2441 = shl nsw i64 %2440, 3
  %2442 = add i64 %2441, %2415
  %2443 = add i64 %2378, 36
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to double*
  %2445 = load double, double* %2444, align 8
  %2446 = fsub double %2413, %2445
  store double %2446, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2447 = add i64 %2376, -112
  %2448 = add i64 %2378, 41
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to double*
  store double %2446, double* %2449, align 8
  %2450 = load i64, i64* %RBP.i, align 8
  %2451 = add i64 %2450, -16
  %2452 = load i64, i64* %3, align 8
  %2453 = add i64 %2452, 4
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2451 to i64*
  %2455 = load i64, i64* %2454, align 8
  store i64 %2455, i64* %RDX.i1791, align 8
  %2456 = add i64 %2450, -28
  %2457 = add i64 %2452, 7
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = add i32 %2459, 9
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RCX.i1272, align 8
  %2462 = icmp ugt i32 %2459, -10
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %14, align 1
  %2464 = and i32 %2460, 255
  %2465 = tail call i32 @llvm.ctpop.i32(i32 %2464)
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %21, align 1
  %2469 = xor i32 %2459, %2460
  %2470 = lshr i32 %2469, 4
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  store i8 %2472, i8* %27, align 1
  %2473 = icmp eq i32 %2460, 0
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %30, align 1
  %2475 = lshr i32 %2460, 31
  %2476 = trunc i32 %2475 to i8
  store i8 %2476, i8* %33, align 1
  %2477 = lshr i32 %2459, 31
  %2478 = xor i32 %2475, %2477
  %2479 = add nuw nsw i32 %2478, %2475
  %2480 = icmp eq i32 %2479, 2
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %39, align 1
  %2482 = sext i32 %2460 to i64
  store i64 %2482, i64* %RSI.i1794, align 8
  %2483 = shl nsw i64 %2482, 3
  %2484 = add i64 %2483, %2455
  %2485 = add i64 %2452, 18
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to double*
  %2487 = load double, double* %2486, align 8
  store double %2487, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2488 = add i64 %2452, 22
  store i64 %2488, i64* %3, align 8
  %2489 = load i64, i64* %2454, align 8
  store i64 %2489, i64* %RDX.i1791, align 8
  %2490 = add i64 %2452, 25
  store i64 %2490, i64* %3, align 8
  %2491 = load i32, i32* %2458, align 4
  %2492 = add i32 %2491, 11
  %2493 = zext i32 %2492 to i64
  store i64 %2493, i64* %RCX.i1272, align 8
  %2494 = icmp ugt i32 %2491, -12
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %14, align 1
  %2496 = and i32 %2492, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %21, align 1
  %2501 = xor i32 %2491, %2492
  %2502 = lshr i32 %2501, 4
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %27, align 1
  %2505 = icmp eq i32 %2492, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %30, align 1
  %2507 = lshr i32 %2492, 31
  %2508 = trunc i32 %2507 to i8
  store i8 %2508, i8* %33, align 1
  %2509 = lshr i32 %2491, 31
  %2510 = xor i32 %2507, %2509
  %2511 = add nuw nsw i32 %2510, %2507
  %2512 = icmp eq i32 %2511, 2
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %39, align 1
  %2514 = sext i32 %2492 to i64
  store i64 %2514, i64* %RSI.i1794, align 8
  %2515 = shl nsw i64 %2514, 3
  %2516 = add i64 %2515, %2489
  %2517 = add i64 %2452, 36
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to double*
  %2519 = load double, double* %2518, align 8
  %2520 = fsub double %2487, %2519
  store double %2520, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2521 = add i64 %2450, -120
  %2522 = add i64 %2452, 41
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to double*
  store double %2520, double* %2523, align 8
  %2524 = load i64, i64* %RBP.i, align 8
  %2525 = add i64 %2524, -16
  %2526 = load i64, i64* %3, align 8
  %2527 = add i64 %2526, 4
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2525 to i64*
  %2529 = load i64, i64* %2528, align 8
  store i64 %2529, i64* %RDX.i1791, align 8
  %2530 = add i64 %2524, -28
  %2531 = add i64 %2526, 7
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = add i32 %2533, 12
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RCX.i1272, align 8
  %2536 = icmp ugt i32 %2533, -13
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %14, align 1
  %2538 = and i32 %2534, 255
  %2539 = tail call i32 @llvm.ctpop.i32(i32 %2538)
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  %2542 = xor i8 %2541, 1
  store i8 %2542, i8* %21, align 1
  %2543 = xor i32 %2533, %2534
  %2544 = lshr i32 %2543, 4
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  store i8 %2546, i8* %27, align 1
  %2547 = icmp eq i32 %2534, 0
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %30, align 1
  %2549 = lshr i32 %2534, 31
  %2550 = trunc i32 %2549 to i8
  store i8 %2550, i8* %33, align 1
  %2551 = lshr i32 %2533, 31
  %2552 = xor i32 %2549, %2551
  %2553 = add nuw nsw i32 %2552, %2549
  %2554 = icmp eq i32 %2553, 2
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %39, align 1
  %2556 = sext i32 %2534 to i64
  store i64 %2556, i64* %RSI.i1794, align 8
  %2557 = shl nsw i64 %2556, 3
  %2558 = add i64 %2557, %2529
  %2559 = add i64 %2526, 18
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to double*
  %2561 = load double, double* %2560, align 8
  store double %2561, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2562 = add i64 %2526, 22
  store i64 %2562, i64* %3, align 8
  %2563 = load i64, i64* %2528, align 8
  store i64 %2563, i64* %RDX.i1791, align 8
  %2564 = add i64 %2526, 25
  store i64 %2564, i64* %3, align 8
  %2565 = load i32, i32* %2532, align 4
  %2566 = add i32 %2565, 14
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RCX.i1272, align 8
  %2568 = icmp ugt i32 %2565, -15
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %14, align 1
  %2570 = and i32 %2566, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  %2575 = xor i32 %2565, %2566
  %2576 = lshr i32 %2575, 4
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  store i8 %2578, i8* %27, align 1
  %2579 = icmp eq i32 %2566, 0
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %30, align 1
  %2581 = lshr i32 %2566, 31
  %2582 = trunc i32 %2581 to i8
  store i8 %2582, i8* %33, align 1
  %2583 = lshr i32 %2565, 31
  %2584 = xor i32 %2581, %2583
  %2585 = add nuw nsw i32 %2584, %2581
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %39, align 1
  %2588 = sext i32 %2566 to i64
  store i64 %2588, i64* %RSI.i1794, align 8
  %2589 = shl nsw i64 %2588, 3
  %2590 = add i64 %2589, %2563
  %2591 = add i64 %2526, 36
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to double*
  %2593 = load double, double* %2592, align 8
  %2594 = fadd double %2561, %2593
  store double %2594, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2595 = add i64 %2524, -128
  %2596 = add i64 %2526, 41
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to double*
  store double %2594, double* %2597, align 8
  %2598 = load i64, i64* %RBP.i, align 8
  %2599 = add i64 %2598, -16
  %2600 = load i64, i64* %3, align 8
  %2601 = add i64 %2600, 4
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2599 to i64*
  %2603 = load i64, i64* %2602, align 8
  store i64 %2603, i64* %RDX.i1791, align 8
  %2604 = add i64 %2598, -28
  %2605 = add i64 %2600, 7
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = add i32 %2607, 13
  %2609 = zext i32 %2608 to i64
  store i64 %2609, i64* %RCX.i1272, align 8
  %2610 = icmp ugt i32 %2607, -14
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %14, align 1
  %2612 = and i32 %2608, 255
  %2613 = tail call i32 @llvm.ctpop.i32(i32 %2612)
  %2614 = trunc i32 %2613 to i8
  %2615 = and i8 %2614, 1
  %2616 = xor i8 %2615, 1
  store i8 %2616, i8* %21, align 1
  %2617 = xor i32 %2607, %2608
  %2618 = lshr i32 %2617, 4
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  store i8 %2620, i8* %27, align 1
  %2621 = icmp eq i32 %2608, 0
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %30, align 1
  %2623 = lshr i32 %2608, 31
  %2624 = trunc i32 %2623 to i8
  store i8 %2624, i8* %33, align 1
  %2625 = lshr i32 %2607, 31
  %2626 = xor i32 %2623, %2625
  %2627 = add nuw nsw i32 %2626, %2623
  %2628 = icmp eq i32 %2627, 2
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %39, align 1
  %2630 = sext i32 %2608 to i64
  store i64 %2630, i64* %RSI.i1794, align 8
  %2631 = shl nsw i64 %2630, 3
  %2632 = add i64 %2631, %2603
  %2633 = add i64 %2600, 18
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to double*
  %2635 = load double, double* %2634, align 8
  store double %2635, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2636 = add i64 %2600, 22
  store i64 %2636, i64* %3, align 8
  %2637 = load i64, i64* %2602, align 8
  store i64 %2637, i64* %RDX.i1791, align 8
  %2638 = add i64 %2600, 25
  store i64 %2638, i64* %3, align 8
  %2639 = load i32, i32* %2606, align 4
  %2640 = add i32 %2639, 15
  %2641 = zext i32 %2640 to i64
  store i64 %2641, i64* %RCX.i1272, align 8
  %2642 = icmp ugt i32 %2639, -16
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %14, align 1
  %2644 = and i32 %2640, 255
  %2645 = tail call i32 @llvm.ctpop.i32(i32 %2644)
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = xor i8 %2647, 1
  store i8 %2648, i8* %21, align 1
  %2649 = xor i32 %2639, %2640
  %2650 = lshr i32 %2649, 4
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  store i8 %2652, i8* %27, align 1
  %2653 = icmp eq i32 %2640, 0
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %30, align 1
  %2655 = lshr i32 %2640, 31
  %2656 = trunc i32 %2655 to i8
  store i8 %2656, i8* %33, align 1
  %2657 = lshr i32 %2639, 31
  %2658 = xor i32 %2655, %2657
  %2659 = add nuw nsw i32 %2658, %2655
  %2660 = icmp eq i32 %2659, 2
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %39, align 1
  %2662 = sext i32 %2640 to i64
  store i64 %2662, i64* %RSI.i1794, align 8
  %2663 = shl nsw i64 %2662, 3
  %2664 = add i64 %2663, %2637
  %2665 = add i64 %2600, 36
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to double*
  %2667 = load double, double* %2666, align 8
  %2668 = fadd double %2635, %2667
  store double %2668, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2669 = add i64 %2598, -136
  %2670 = add i64 %2600, 44
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to double*
  store double %2668, double* %2671, align 8
  %2672 = load i64, i64* %RBP.i, align 8
  %2673 = add i64 %2672, -16
  %2674 = load i64, i64* %3, align 8
  %2675 = add i64 %2674, 4
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2673 to i64*
  %2677 = load i64, i64* %2676, align 8
  store i64 %2677, i64* %RDX.i1791, align 8
  %2678 = add i64 %2672, -28
  %2679 = add i64 %2674, 7
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = add i32 %2681, 12
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RCX.i1272, align 8
  %2684 = icmp ugt i32 %2681, -13
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %14, align 1
  %2686 = and i32 %2682, 255
  %2687 = tail call i32 @llvm.ctpop.i32(i32 %2686)
  %2688 = trunc i32 %2687 to i8
  %2689 = and i8 %2688, 1
  %2690 = xor i8 %2689, 1
  store i8 %2690, i8* %21, align 1
  %2691 = xor i32 %2681, %2682
  %2692 = lshr i32 %2691, 4
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  store i8 %2694, i8* %27, align 1
  %2695 = icmp eq i32 %2682, 0
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %30, align 1
  %2697 = lshr i32 %2682, 31
  %2698 = trunc i32 %2697 to i8
  store i8 %2698, i8* %33, align 1
  %2699 = lshr i32 %2681, 31
  %2700 = xor i32 %2697, %2699
  %2701 = add nuw nsw i32 %2700, %2697
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %39, align 1
  %2704 = sext i32 %2682 to i64
  store i64 %2704, i64* %RSI.i1794, align 8
  %2705 = shl nsw i64 %2704, 3
  %2706 = add i64 %2705, %2677
  %2707 = add i64 %2674, 18
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to double*
  %2709 = load double, double* %2708, align 8
  store double %2709, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2710 = add i64 %2674, 22
  store i64 %2710, i64* %3, align 8
  %2711 = load i64, i64* %2676, align 8
  store i64 %2711, i64* %RDX.i1791, align 8
  %2712 = add i64 %2674, 25
  store i64 %2712, i64* %3, align 8
  %2713 = load i32, i32* %2680, align 4
  %2714 = add i32 %2713, 14
  %2715 = zext i32 %2714 to i64
  store i64 %2715, i64* %RCX.i1272, align 8
  %2716 = icmp ugt i32 %2713, -15
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %14, align 1
  %2718 = and i32 %2714, 255
  %2719 = tail call i32 @llvm.ctpop.i32(i32 %2718)
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %21, align 1
  %2723 = xor i32 %2713, %2714
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %27, align 1
  %2727 = icmp eq i32 %2714, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %30, align 1
  %2729 = lshr i32 %2714, 31
  %2730 = trunc i32 %2729 to i8
  store i8 %2730, i8* %33, align 1
  %2731 = lshr i32 %2713, 31
  %2732 = xor i32 %2729, %2731
  %2733 = add nuw nsw i32 %2732, %2729
  %2734 = icmp eq i32 %2733, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %39, align 1
  %2736 = sext i32 %2714 to i64
  store i64 %2736, i64* %RSI.i1794, align 8
  %2737 = shl nsw i64 %2736, 3
  %2738 = add i64 %2737, %2711
  %2739 = add i64 %2674, 36
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to double*
  %2741 = load double, double* %2740, align 8
  %2742 = fsub double %2709, %2741
  store double %2742, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2743 = add i64 %2672, -144
  %2744 = add i64 %2674, 44
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to double*
  store double %2742, double* %2745, align 8
  %2746 = load i64, i64* %RBP.i, align 8
  %2747 = add i64 %2746, -16
  %2748 = load i64, i64* %3, align 8
  %2749 = add i64 %2748, 4
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2747 to i64*
  %2751 = load i64, i64* %2750, align 8
  store i64 %2751, i64* %RDX.i1791, align 8
  %2752 = add i64 %2746, -28
  %2753 = add i64 %2748, 7
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = add i32 %2755, 13
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %RCX.i1272, align 8
  %2758 = icmp ugt i32 %2755, -14
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %14, align 1
  %2760 = and i32 %2756, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i32 %2755, %2756
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %27, align 1
  %2769 = icmp eq i32 %2756, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %30, align 1
  %2771 = lshr i32 %2756, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %33, align 1
  %2773 = lshr i32 %2755, 31
  %2774 = xor i32 %2771, %2773
  %2775 = add nuw nsw i32 %2774, %2771
  %2776 = icmp eq i32 %2775, 2
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %39, align 1
  %2778 = sext i32 %2756 to i64
  store i64 %2778, i64* %RSI.i1794, align 8
  %2779 = shl nsw i64 %2778, 3
  %2780 = add i64 %2779, %2751
  %2781 = add i64 %2748, 18
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to double*
  %2783 = load double, double* %2782, align 8
  store double %2783, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2784 = add i64 %2748, 22
  store i64 %2784, i64* %3, align 8
  %2785 = load i64, i64* %2750, align 8
  store i64 %2785, i64* %RDX.i1791, align 8
  %2786 = add i64 %2748, 25
  store i64 %2786, i64* %3, align 8
  %2787 = load i32, i32* %2754, align 4
  %2788 = add i32 %2787, 15
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RCX.i1272, align 8
  %2790 = icmp ugt i32 %2787, -16
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %14, align 1
  %2792 = and i32 %2788, 255
  %2793 = tail call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  store i8 %2796, i8* %21, align 1
  %2797 = xor i32 %2787, %2788
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  store i8 %2800, i8* %27, align 1
  %2801 = icmp eq i32 %2788, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %30, align 1
  %2803 = lshr i32 %2788, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %33, align 1
  %2805 = lshr i32 %2787, 31
  %2806 = xor i32 %2803, %2805
  %2807 = add nuw nsw i32 %2806, %2803
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %39, align 1
  %2810 = sext i32 %2788 to i64
  store i64 %2810, i64* %RSI.i1794, align 8
  %2811 = shl nsw i64 %2810, 3
  %2812 = add i64 %2811, %2785
  %2813 = add i64 %2748, 36
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to double*
  %2815 = load double, double* %2814, align 8
  %2816 = fsub double %2783, %2815
  store double %2816, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2817 = add i64 %2746, -152
  %2818 = add i64 %2748, 44
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to double*
  store double %2816, double* %2819, align 8
  %2820 = load i64, i64* %RBP.i, align 8
  %2821 = add i64 %2820, -96
  %2822 = load i64, i64* %3, align 8
  %2823 = add i64 %2822, 5
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2821 to double*
  %2825 = load double, double* %2824, align 8
  store double %2825, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2826 = add i64 %2820, -128
  %2827 = add i64 %2822, 10
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to double*
  %2829 = load double, double* %2828, align 8
  %2830 = fadd double %2825, %2829
  store double %2830, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2831 = add i64 %2820, -16
  %2832 = add i64 %2822, 14
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i64*
  %2834 = load i64, i64* %2833, align 8
  store i64 %2834, i64* %RDX.i1791, align 8
  %2835 = add i64 %2820, -28
  %2836 = add i64 %2822, 17
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i32*
  %2838 = load i32, i32* %2837, align 4
  %2839 = add i32 %2838, 8
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RCX.i1272, align 8
  %2841 = icmp ugt i32 %2838, -9
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %14, align 1
  %2843 = and i32 %2839, 255
  %2844 = tail call i32 @llvm.ctpop.i32(i32 %2843)
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = xor i8 %2846, 1
  store i8 %2847, i8* %21, align 1
  %2848 = xor i32 %2838, %2839
  %2849 = lshr i32 %2848, 4
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  store i8 %2851, i8* %27, align 1
  %2852 = icmp eq i32 %2839, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %30, align 1
  %2854 = lshr i32 %2839, 31
  %2855 = trunc i32 %2854 to i8
  store i8 %2855, i8* %33, align 1
  %2856 = lshr i32 %2838, 31
  %2857 = xor i32 %2854, %2856
  %2858 = add nuw nsw i32 %2857, %2854
  %2859 = icmp eq i32 %2858, 2
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %39, align 1
  %2861 = sext i32 %2839 to i64
  store i64 %2861, i64* %RSI.i1794, align 8
  %2862 = shl nsw i64 %2861, 3
  %2863 = add i64 %2862, %2834
  %2864 = add i64 %2822, 28
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to double*
  store double %2830, double* %2865, align 8
  %2866 = load i64, i64* %RBP.i, align 8
  %2867 = add i64 %2866, -104
  %2868 = load i64, i64* %3, align 8
  %2869 = add i64 %2868, 5
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2867 to double*
  %2871 = load double, double* %2870, align 8
  store double %2871, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2872 = add i64 %2866, -136
  %2873 = add i64 %2868, 13
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to double*
  %2875 = load double, double* %2874, align 8
  %2876 = fadd double %2871, %2875
  store double %2876, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2877 = add i64 %2866, -16
  %2878 = add i64 %2868, 17
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i64*
  %2880 = load i64, i64* %2879, align 8
  store i64 %2880, i64* %RDX.i1791, align 8
  %2881 = add i64 %2866, -28
  %2882 = add i64 %2868, 20
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2881 to i32*
  %2884 = load i32, i32* %2883, align 4
  %2885 = add i32 %2884, 9
  %2886 = zext i32 %2885 to i64
  store i64 %2886, i64* %RCX.i1272, align 8
  %2887 = icmp ugt i32 %2884, -10
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %14, align 1
  %2889 = and i32 %2885, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %21, align 1
  %2894 = xor i32 %2884, %2885
  %2895 = lshr i32 %2894, 4
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  store i8 %2897, i8* %27, align 1
  %2898 = icmp eq i32 %2885, 0
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %30, align 1
  %2900 = lshr i32 %2885, 31
  %2901 = trunc i32 %2900 to i8
  store i8 %2901, i8* %33, align 1
  %2902 = lshr i32 %2884, 31
  %2903 = xor i32 %2900, %2902
  %2904 = add nuw nsw i32 %2903, %2900
  %2905 = icmp eq i32 %2904, 2
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %39, align 1
  %2907 = sext i32 %2885 to i64
  store i64 %2907, i64* %RSI.i1794, align 8
  %2908 = shl nsw i64 %2907, 3
  %2909 = add i64 %2908, %2880
  %2910 = add i64 %2868, 31
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to double*
  store double %2876, double* %2911, align 8
  %2912 = load i64, i64* %RBP.i, align 8
  %2913 = add i64 %2912, -128
  %2914 = load i64, i64* %3, align 8
  %2915 = add i64 %2914, 5
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2913 to double*
  %2917 = load double, double* %2916, align 8
  store double %2917, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2918 = add i64 %2912, -96
  %2919 = add i64 %2914, 10
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to double*
  %2921 = load double, double* %2920, align 8
  %2922 = fsub double %2921, %2917
  store double %2922, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2923 = add i64 %2914, 19
  store i64 %2923, i64* %3, align 8
  store double %2922, double* %2920, align 8
  %2924 = load i64, i64* %RBP.i, align 8
  %2925 = add i64 %2924, -136
  %2926 = load i64, i64* %3, align 8
  %2927 = add i64 %2926, 8
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2925 to double*
  %2929 = load double, double* %2928, align 8
  store double %2929, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2930 = add i64 %2924, -104
  %2931 = add i64 %2926, 13
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to double*
  %2933 = load double, double* %2932, align 8
  %2934 = fsub double %2933, %2929
  store double %2934, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2935 = add i64 %2926, 22
  store i64 %2935, i64* %3, align 8
  store double %2934, double* %2932, align 8
  %2936 = load i64, i64* %RBP.i, align 8
  %2937 = add i64 %2936, -72
  %2938 = load i64, i64* %3, align 8
  %2939 = add i64 %2938, 5
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2937 to i64*
  %2941 = load i64, i64* %2940, align 8
  %2942 = load i64, i64* %RAX.i1283, align 8
  %2943 = xor i64 %2942, %2941
  store i64 %2943, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %2944 = trunc i64 %2943 to i32
  %2945 = and i32 %2944, 255
  %2946 = tail call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  store i8 %2949, i8* %21, align 1
  %2950 = icmp eq i64 %2943, 0
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %30, align 1
  %2952 = lshr i64 %2943, 63
  %2953 = trunc i64 %2952 to i8
  store i8 %2953, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %2943, i64* %372, align 1
  store i64 0, i64* %68, align 1
  %2954 = add i64 %2936, -96
  %2955 = add i64 %2938, 23
  store i64 %2955, i64* %3, align 8
  %2956 = bitcast i64 %2943 to double
  %2957 = inttoptr i64 %2954 to double*
  %2958 = load double, double* %2957, align 8
  %2959 = fmul double %2956, %2958
  store double %2959, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2960 = add i64 %2936, -64
  %2961 = add i64 %2938, 28
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to double*
  %2963 = load double, double* %2962, align 8
  store double %2963, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2964 = add i64 %2936, -104
  %2965 = add i64 %2938, 33
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to double*
  %2967 = load double, double* %2966, align 8
  %2968 = fmul double %2963, %2967
  store double %2968, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2969 = fsub double %2959, %2968
  store double %2969, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2970 = add i64 %2936, -16
  %2971 = add i64 %2938, 41
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i64*
  %2973 = load i64, i64* %2972, align 8
  store i64 %2973, i64* %RDX.i1791, align 8
  %2974 = add i64 %2936, -28
  %2975 = add i64 %2938, 44
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  %2977 = load i32, i32* %2976, align 4
  %2978 = add i32 %2977, 12
  %2979 = zext i32 %2978 to i64
  store i64 %2979, i64* %RCX.i1272, align 8
  %2980 = icmp ugt i32 %2977, -13
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %14, align 1
  %2982 = and i32 %2978, 255
  %2983 = tail call i32 @llvm.ctpop.i32(i32 %2982)
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = xor i8 %2985, 1
  store i8 %2986, i8* %21, align 1
  %2987 = xor i32 %2977, %2978
  %2988 = lshr i32 %2987, 4
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  store i8 %2990, i8* %27, align 1
  %2991 = icmp eq i32 %2978, 0
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %30, align 1
  %2993 = lshr i32 %2978, 31
  %2994 = trunc i32 %2993 to i8
  store i8 %2994, i8* %33, align 1
  %2995 = lshr i32 %2977, 31
  %2996 = xor i32 %2993, %2995
  %2997 = add nuw nsw i32 %2996, %2993
  %2998 = icmp eq i32 %2997, 2
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %39, align 1
  %3000 = sext i32 %2978 to i64
  store i64 %3000, i64* %RSI.i1794, align 8
  %3001 = shl nsw i64 %3000, 3
  %3002 = add i64 %3001, %2973
  %3003 = add i64 %2938, 55
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to double*
  store double %2969, double* %3004, align 8
  %3005 = load i64, i64* %RBP.i, align 8
  %3006 = add i64 %3005, -72
  %3007 = load i64, i64* %3, align 8
  %3008 = add i64 %3007, 5
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3006 to i64*
  %3010 = load i64, i64* %3009, align 8
  %3011 = load i64, i64* %RAX.i1283, align 8
  %3012 = xor i64 %3011, %3010
  store i64 %3012, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %3013 = trunc i64 %3012 to i32
  %3014 = and i32 %3013, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %21, align 1
  %3019 = icmp eq i64 %3012, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %30, align 1
  %3021 = lshr i64 %3012, 63
  %3022 = trunc i64 %3021 to i8
  store i8 %3022, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %3012, i64* %372, align 1
  store i64 0, i64* %68, align 1
  %3023 = add i64 %3005, -104
  %3024 = add i64 %3007, 23
  store i64 %3024, i64* %3, align 8
  %3025 = bitcast i64 %3012 to double
  %3026 = inttoptr i64 %3023 to double*
  %3027 = load double, double* %3026, align 8
  %3028 = fmul double %3025, %3027
  store double %3028, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3029 = add i64 %3005, -64
  %3030 = add i64 %3007, 28
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to double*
  %3032 = load double, double* %3031, align 8
  store double %3032, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3033 = add i64 %3005, -96
  %3034 = add i64 %3007, 33
  store i64 %3034, i64* %3, align 8
  %3035 = inttoptr i64 %3033 to double*
  %3036 = load double, double* %3035, align 8
  %3037 = fmul double %3032, %3036
  store double %3037, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3038 = fadd double %3028, %3037
  store double %3038, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3039 = add i64 %3005, -16
  %3040 = add i64 %3007, 41
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i64*
  %3042 = load i64, i64* %3041, align 8
  store i64 %3042, i64* %RAX.i1283, align 8
  %3043 = add i64 %3005, -28
  %3044 = add i64 %3007, 44
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = add i32 %3046, 13
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RCX.i1272, align 8
  %3049 = icmp ugt i32 %3046, -14
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %14, align 1
  %3051 = and i32 %3047, 255
  %3052 = tail call i32 @llvm.ctpop.i32(i32 %3051)
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  store i8 %3055, i8* %21, align 1
  %3056 = xor i32 %3046, %3047
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %27, align 1
  %3060 = icmp eq i32 %3047, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %30, align 1
  %3062 = lshr i32 %3047, 31
  %3063 = trunc i32 %3062 to i8
  store i8 %3063, i8* %33, align 1
  %3064 = lshr i32 %3046, 31
  %3065 = xor i32 %3062, %3064
  %3066 = add nuw nsw i32 %3065, %3062
  %3067 = icmp eq i32 %3066, 2
  %3068 = zext i1 %3067 to i8
  store i8 %3068, i8* %39, align 1
  %3069 = sext i32 %3047 to i64
  store i64 %3069, i64* %RDX.i1791, align 8
  %3070 = shl nsw i64 %3069, 3
  %3071 = add i64 %3070, %3042
  %3072 = add i64 %3007, 55
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3071 to double*
  store double %3038, double* %3073, align 8
  %3074 = load i64, i64* %RBP.i, align 8
  %3075 = add i64 %3074, -112
  %3076 = load i64, i64* %3, align 8
  %3077 = add i64 %3076, 5
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3075 to double*
  %3079 = load double, double* %3078, align 8
  store double %3079, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3080 = add i64 %3074, -152
  %3081 = add i64 %3076, 13
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to double*
  %3083 = load double, double* %3082, align 8
  %3084 = fsub double %3079, %3083
  store double %3084, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3085 = add i64 %3074, -96
  %3086 = add i64 %3076, 18
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to double*
  store double %3084, double* %3087, align 8
  %3088 = load i64, i64* %RBP.i, align 8
  %3089 = add i64 %3088, -120
  %3090 = load i64, i64* %3, align 8
  %3091 = add i64 %3090, 5
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3089 to double*
  %3093 = load double, double* %3092, align 8
  store double %3093, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3094 = add i64 %3088, -144
  %3095 = add i64 %3090, 13
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to double*
  %3097 = load double, double* %3096, align 8
  %3098 = fadd double %3093, %3097
  store double %3098, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3099 = add i64 %3088, -104
  %3100 = add i64 %3090, 18
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to double*
  store double %3098, double* %3101, align 8
  %3102 = load i64, i64* %RBP.i, align 8
  %3103 = add i64 %3102, -48
  %3104 = load i64, i64* %3, align 8
  %3105 = add i64 %3104, 5
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3103 to double*
  %3107 = load double, double* %3106, align 8
  store double %3107, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3108 = add i64 %3102, -96
  %3109 = add i64 %3104, 10
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to double*
  %3111 = load double, double* %3110, align 8
  %3112 = fmul double %3107, %3111
  store double %3112, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3113 = add i64 %3102, -56
  %3114 = add i64 %3104, 15
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to double*
  %3116 = load double, double* %3115, align 8
  store double %3116, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3117 = add i64 %3102, -104
  %3118 = add i64 %3104, 20
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to double*
  %3120 = load double, double* %3119, align 8
  %3121 = fmul double %3116, %3120
  store double %3121, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3122 = fsub double %3112, %3121
  store double %3122, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3123 = add i64 %3102, -16
  %3124 = add i64 %3104, 28
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i64*
  %3126 = load i64, i64* %3125, align 8
  store i64 %3126, i64* %RAX.i1283, align 8
  %3127 = add i64 %3102, -28
  %3128 = add i64 %3104, 31
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = add i32 %3130, 10
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RCX.i1272, align 8
  %3133 = icmp ugt i32 %3130, -11
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %14, align 1
  %3135 = and i32 %3131, 255
  %3136 = tail call i32 @llvm.ctpop.i32(i32 %3135)
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  %3139 = xor i8 %3138, 1
  store i8 %3139, i8* %21, align 1
  %3140 = xor i32 %3130, %3131
  %3141 = lshr i32 %3140, 4
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  store i8 %3143, i8* %27, align 1
  %3144 = icmp eq i32 %3131, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %30, align 1
  %3146 = lshr i32 %3131, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %33, align 1
  %3148 = lshr i32 %3130, 31
  %3149 = xor i32 %3146, %3148
  %3150 = add nuw nsw i32 %3149, %3146
  %3151 = icmp eq i32 %3150, 2
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %39, align 1
  %3153 = sext i32 %3131 to i64
  store i64 %3153, i64* %RDX.i1791, align 8
  %3154 = shl nsw i64 %3153, 3
  %3155 = add i64 %3154, %3126
  %3156 = add i64 %3104, 42
  store i64 %3156, i64* %3, align 8
  %3157 = inttoptr i64 %3155 to double*
  store double %3122, double* %3157, align 8
  %3158 = load i64, i64* %RBP.i, align 8
  %3159 = add i64 %3158, -48
  %3160 = load i64, i64* %3, align 8
  %3161 = add i64 %3160, 5
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3159 to double*
  %3163 = load double, double* %3162, align 8
  store double %3163, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3164 = add i64 %3158, -104
  %3165 = add i64 %3160, 10
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to double*
  %3167 = load double, double* %3166, align 8
  %3168 = fmul double %3163, %3167
  store double %3168, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3169 = add i64 %3158, -56
  %3170 = add i64 %3160, 15
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to double*
  %3172 = load double, double* %3171, align 8
  store double %3172, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3173 = add i64 %3158, -96
  %3174 = add i64 %3160, 20
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to double*
  %3176 = load double, double* %3175, align 8
  %3177 = fmul double %3172, %3176
  store double %3177, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3178 = fadd double %3168, %3177
  store double %3178, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3179 = add i64 %3158, -16
  %3180 = add i64 %3160, 28
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i64*
  %3182 = load i64, i64* %3181, align 8
  store i64 %3182, i64* %RAX.i1283, align 8
  %3183 = add i64 %3158, -28
  %3184 = add i64 %3160, 31
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = add i32 %3186, 11
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RCX.i1272, align 8
  %3189 = icmp ugt i32 %3186, -12
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %14, align 1
  %3191 = and i32 %3187, 255
  %3192 = tail call i32 @llvm.ctpop.i32(i32 %3191)
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = xor i8 %3194, 1
  store i8 %3195, i8* %21, align 1
  %3196 = xor i32 %3186, %3187
  %3197 = lshr i32 %3196, 4
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  store i8 %3199, i8* %27, align 1
  %3200 = icmp eq i32 %3187, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %30, align 1
  %3202 = lshr i32 %3187, 31
  %3203 = trunc i32 %3202 to i8
  store i8 %3203, i8* %33, align 1
  %3204 = lshr i32 %3186, 31
  %3205 = xor i32 %3202, %3204
  %3206 = add nuw nsw i32 %3205, %3202
  %3207 = icmp eq i32 %3206, 2
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %39, align 1
  %3209 = sext i32 %3187 to i64
  store i64 %3209, i64* %RDX.i1791, align 8
  %3210 = shl nsw i64 %3209, 3
  %3211 = add i64 %3210, %3182
  %3212 = add i64 %3160, 42
  store i64 %3212, i64* %3, align 8
  %3213 = inttoptr i64 %3211 to double*
  store double %3178, double* %3213, align 8
  %3214 = load i64, i64* %RBP.i, align 8
  %3215 = add i64 %3214, -112
  %3216 = load i64, i64* %3, align 8
  %3217 = add i64 %3216, 5
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3215 to double*
  %3219 = load double, double* %3218, align 8
  store double %3219, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3220 = add i64 %3214, -152
  %3221 = add i64 %3216, 13
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to double*
  %3223 = load double, double* %3222, align 8
  %3224 = fadd double %3219, %3223
  store double %3224, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3225 = add i64 %3214, -96
  %3226 = add i64 %3216, 18
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to double*
  store double %3224, double* %3227, align 8
  %3228 = load i64, i64* %RBP.i, align 8
  %3229 = add i64 %3228, -120
  %3230 = load i64, i64* %3, align 8
  %3231 = add i64 %3230, 5
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3229 to double*
  %3233 = load double, double* %3232, align 8
  store double %3233, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3234 = add i64 %3228, -144
  %3235 = add i64 %3230, 13
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to double*
  %3237 = load double, double* %3236, align 8
  %3238 = fsub double %3233, %3237
  store double %3238, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3239 = add i64 %3228, -104
  %3240 = add i64 %3230, 18
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to double*
  store double %3238, double* %3241, align 8
  %3242 = load i64, i64* %RBP.i, align 8
  %3243 = add i64 %3242, -80
  %3244 = load i64, i64* %3, align 8
  %3245 = add i64 %3244, 5
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3243 to double*
  %3247 = load double, double* %3246, align 8
  store double %3247, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3248 = add i64 %3242, -96
  %3249 = add i64 %3244, 10
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to double*
  %3251 = load double, double* %3250, align 8
  %3252 = fmul double %3247, %3251
  store double %3252, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3253 = add i64 %3242, -88
  %3254 = add i64 %3244, 15
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to double*
  %3256 = load double, double* %3255, align 8
  store double %3256, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3257 = add i64 %3242, -104
  %3258 = add i64 %3244, 20
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to double*
  %3260 = load double, double* %3259, align 8
  %3261 = fmul double %3256, %3260
  store double %3261, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3262 = fsub double %3252, %3261
  store double %3262, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3263 = add i64 %3242, -16
  %3264 = add i64 %3244, 28
  store i64 %3264, i64* %3, align 8
  %3265 = inttoptr i64 %3263 to i64*
  %3266 = load i64, i64* %3265, align 8
  store i64 %3266, i64* %RAX.i1283, align 8
  %3267 = add i64 %3242, -28
  %3268 = add i64 %3244, 31
  store i64 %3268, i64* %3, align 8
  %3269 = inttoptr i64 %3267 to i32*
  %3270 = load i32, i32* %3269, align 4
  %3271 = add i32 %3270, 14
  %3272 = zext i32 %3271 to i64
  store i64 %3272, i64* %RCX.i1272, align 8
  %3273 = icmp ugt i32 %3270, -15
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %14, align 1
  %3275 = and i32 %3271, 255
  %3276 = tail call i32 @llvm.ctpop.i32(i32 %3275)
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  %3279 = xor i8 %3278, 1
  store i8 %3279, i8* %21, align 1
  %3280 = xor i32 %3270, %3271
  %3281 = lshr i32 %3280, 4
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  store i8 %3283, i8* %27, align 1
  %3284 = icmp eq i32 %3271, 0
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %30, align 1
  %3286 = lshr i32 %3271, 31
  %3287 = trunc i32 %3286 to i8
  store i8 %3287, i8* %33, align 1
  %3288 = lshr i32 %3270, 31
  %3289 = xor i32 %3286, %3288
  %3290 = add nuw nsw i32 %3289, %3286
  %3291 = icmp eq i32 %3290, 2
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %39, align 1
  %3293 = sext i32 %3271 to i64
  store i64 %3293, i64* %RDX.i1791, align 8
  %3294 = shl nsw i64 %3293, 3
  %3295 = add i64 %3294, %3266
  %3296 = add i64 %3244, 42
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to double*
  store double %3262, double* %3297, align 8
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -80
  %3300 = load i64, i64* %3, align 8
  %3301 = add i64 %3300, 5
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3299 to double*
  %3303 = load double, double* %3302, align 8
  store double %3303, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3304 = add i64 %3298, -104
  %3305 = add i64 %3300, 10
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to double*
  %3307 = load double, double* %3306, align 8
  %3308 = fmul double %3303, %3307
  store double %3308, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3309 = add i64 %3298, -88
  %3310 = add i64 %3300, 15
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3309 to double*
  %3312 = load double, double* %3311, align 8
  store double %3312, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3313 = add i64 %3298, -96
  %3314 = add i64 %3300, 20
  store i64 %3314, i64* %3, align 8
  %3315 = inttoptr i64 %3313 to double*
  %3316 = load double, double* %3315, align 8
  %3317 = fmul double %3312, %3316
  store double %3317, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3318 = fadd double %3308, %3317
  store double %3318, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3319 = add i64 %3298, -16
  %3320 = add i64 %3300, 28
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i64*
  %3322 = load i64, i64* %3321, align 8
  store i64 %3322, i64* %RAX.i1283, align 8
  %3323 = add i64 %3298, -28
  %3324 = add i64 %3300, 31
  store i64 %3324, i64* %3, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = add i32 %3326, 15
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RCX.i1272, align 8
  %3329 = icmp ugt i32 %3326, -16
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %14, align 1
  %3331 = and i32 %3327, 255
  %3332 = tail call i32 @llvm.ctpop.i32(i32 %3331)
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  %3335 = xor i8 %3334, 1
  store i8 %3335, i8* %21, align 1
  %3336 = xor i32 %3326, %3327
  %3337 = lshr i32 %3336, 4
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  store i8 %3339, i8* %27, align 1
  %3340 = icmp eq i32 %3327, 0
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %30, align 1
  %3342 = lshr i32 %3327, 31
  %3343 = trunc i32 %3342 to i8
  store i8 %3343, i8* %33, align 1
  %3344 = lshr i32 %3326, 31
  %3345 = xor i32 %3342, %3344
  %3346 = add nuw nsw i32 %3345, %3342
  %3347 = icmp eq i32 %3346, 2
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %39, align 1
  %3349 = sext i32 %3327 to i64
  store i64 %3349, i64* %RDX.i1791, align 8
  %3350 = shl nsw i64 %3349, 3
  %3351 = add i64 %3350, %3322
  %3352 = add i64 %3300, 42
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to double*
  store double %3318, double* %3353, align 8
  %3354 = load i64, i64* %RBP.i, align 8
  %3355 = add i64 %3354, -28
  %3356 = load i64, i64* %3, align 8
  %3357 = add i64 %3356, 3
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3355 to i32*
  %3359 = load i32, i32* %3358, align 4
  %3360 = add i32 %3359, 16
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RAX.i1283, align 8
  %3362 = icmp ugt i32 %3359, -17
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %14, align 1
  %3364 = and i32 %3360, 255
  %3365 = tail call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  store i8 %3368, i8* %21, align 1
  %3369 = xor i32 %3359, 16
  %3370 = xor i32 %3369, %3360
  %3371 = lshr i32 %3370, 4
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  store i8 %3373, i8* %27, align 1
  %3374 = icmp eq i32 %3360, 0
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %30, align 1
  %3376 = lshr i32 %3360, 31
  %3377 = trunc i32 %3376 to i8
  store i8 %3377, i8* %33, align 1
  %3378 = lshr i32 %3359, 31
  %3379 = xor i32 %3376, %3378
  %3380 = add nuw nsw i32 %3379, %3376
  %3381 = icmp eq i32 %3380, 2
  %3382 = zext i1 %3381 to i8
  store i8 %3382, i8* %39, align 1
  %3383 = add i64 %3356, 9
  store i64 %3383, i64* %3, align 8
  store i32 %3360, i32* %3358, align 4
  %3384 = load i64, i64* %3, align 8
  %3385 = add i64 %3384, -1815
  store i64 %3385, i64* %3, align 8
  br label %block_.L_402bd2

block_.L_4032ee:                                  ; preds = %block_.L_402bd2
  %3386 = load i64, i64* %6, align 8
  %3387 = add i64 %3386, 24
  store i64 %3387, i64* %6, align 8
  %3388 = icmp ugt i64 %3386, -25
  %3389 = zext i1 %3388 to i8
  store i8 %3389, i8* %14, align 1
  %3390 = trunc i64 %3387 to i32
  %3391 = and i32 %3390, 255
  %3392 = tail call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  store i8 %3395, i8* %21, align 1
  %3396 = xor i64 %3386, 16
  %3397 = xor i64 %3396, %3387
  %3398 = lshr i64 %3397, 4
  %3399 = trunc i64 %3398 to i8
  %3400 = and i8 %3399, 1
  store i8 %3400, i8* %27, align 1
  %3401 = icmp eq i64 %3387, 0
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %30, align 1
  %3403 = lshr i64 %3387, 63
  %3404 = trunc i64 %3403 to i8
  store i8 %3404, i8* %33, align 1
  %3405 = lshr i64 %3386, 63
  %3406 = xor i64 %3403, %3405
  %3407 = add nuw nsw i64 %3406, %3403
  %3408 = icmp eq i64 %3407, 2
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %39, align 1
  %3410 = add i64 %827, 5
  store i64 %3410, i64* %3, align 8
  %3411 = add i64 %3386, 32
  %3412 = inttoptr i64 %3387 to i64*
  %3413 = load i64, i64* %3412, align 8
  store i64 %3413, i64* %RBP.i, align 8
  store i64 %3411, i64* %6, align 8
  %3414 = add i64 %827, 6
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3411 to i64*
  %3416 = load i64, i64* %3415, align 8
  store i64 %3416, i64* %3, align 8
  %3417 = add i64 %3386, 40
  store i64 %3417, i64* %6, align 8
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
