; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x14d0__rip__type = type <{ [8 x i8] }>
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
@G_0x14d0__rip_ = local_unnamed_addr global %G_0x14d0__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @cft1st(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -32
  store i64 %11, i64* %RSP.i1801, align 8
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
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i1794, align 8
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i1791, align 8
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -16
  %59 = load i64, i64* %PC.i, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC.i, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RDX.i1791, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %64 = add i64 %59, 8
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %62 to double*
  %66 = load double, double* %65, align 8
  %67 = bitcast [32 x %union.VectorReg]* %63 to double*
  store double %66, double* %67, align 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %69 = bitcast i64* %68 to double*
  store double 0.000000e+00, double* %69, align 1
  %70 = add i64 %59, 12
  store i64 %70, i64* %PC.i, align 8
  %71 = load i64, i64* %61, align 8
  store i64 %71, i64* %RDX.i1791, align 8
  %72 = add i64 %71, 16
  %73 = add i64 %59, 17
  store i64 %73, i64* %PC.i, align 8
  %74 = inttoptr i64 %72 to double*
  %75 = load double, double* %74, align 8
  %76 = fadd double %66, %75
  store double %76, double* %67, align 1
  store i64 0, i64* %68, align 1
  %77 = add i64 %57, -96
  %78 = add i64 %59, 22
  store i64 %78, i64* %PC.i, align 8
  %79 = inttoptr i64 %77 to double*
  store double %76, double* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -16
  %82 = load i64, i64* %PC.i, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC.i, align 8
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RDX.i1791, align 8
  %86 = add i64 %85, 8
  %87 = add i64 %82, 9
  store i64 %87, i64* %PC.i, align 8
  %88 = inttoptr i64 %86 to double*
  %89 = load double, double* %88, align 8
  store double %89, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %90 = add i64 %82, 13
  store i64 %90, i64* %PC.i, align 8
  %91 = load i64, i64* %84, align 8
  store i64 %91, i64* %RDX.i1791, align 8
  %92 = add i64 %91, 24
  %93 = add i64 %82, 18
  store i64 %93, i64* %PC.i, align 8
  %94 = inttoptr i64 %92 to double*
  %95 = load double, double* %94, align 8
  %96 = fadd double %89, %95
  store double %96, double* %67, align 1
  store i64 0, i64* %68, align 1
  %97 = add i64 %80, -104
  %98 = add i64 %82, 23
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %97 to double*
  store double %96, double* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -16
  %102 = load i64, i64* %PC.i, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RDX.i1791, align 8
  %106 = add i64 %102, 8
  store i64 %106, i64* %PC.i, align 8
  %107 = inttoptr i64 %105 to double*
  %108 = load double, double* %107, align 8
  store double %108, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %109 = add i64 %102, 12
  store i64 %109, i64* %PC.i, align 8
  %110 = load i64, i64* %104, align 8
  store i64 %110, i64* %RDX.i1791, align 8
  %111 = add i64 %110, 16
  %112 = add i64 %102, 17
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %111 to double*
  %114 = load double, double* %113, align 8
  %115 = fsub double %108, %114
  store double %115, double* %67, align 1
  store i64 0, i64* %68, align 1
  %116 = add i64 %100, -112
  %117 = add i64 %102, 22
  store i64 %117, i64* %PC.i, align 8
  %118 = inttoptr i64 %116 to double*
  store double %115, double* %118, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -16
  %121 = load i64, i64* %PC.i, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC.i, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RDX.i1791, align 8
  %125 = add i64 %124, 8
  %126 = add i64 %121, 9
  store i64 %126, i64* %PC.i, align 8
  %127 = inttoptr i64 %125 to double*
  %128 = load double, double* %127, align 8
  store double %128, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %129 = add i64 %121, 13
  store i64 %129, i64* %PC.i, align 8
  %130 = load i64, i64* %123, align 8
  store i64 %130, i64* %RDX.i1791, align 8
  %131 = add i64 %130, 24
  %132 = add i64 %121, 18
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %131 to double*
  %134 = load double, double* %133, align 8
  %135 = fsub double %128, %134
  store double %135, double* %67, align 1
  store i64 0, i64* %68, align 1
  %136 = add i64 %119, -120
  %137 = add i64 %121, 23
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to double*
  store double %135, double* %138, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -16
  %141 = load i64, i64* %PC.i, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i, align 8
  %143 = inttoptr i64 %140 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RDX.i1791, align 8
  %145 = add i64 %144, 32
  %146 = add i64 %141, 9
  store i64 %146, i64* %PC.i, align 8
  %147 = inttoptr i64 %145 to double*
  %148 = load double, double* %147, align 8
  store double %148, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %149 = add i64 %141, 13
  store i64 %149, i64* %PC.i, align 8
  %150 = load i64, i64* %143, align 8
  store i64 %150, i64* %RDX.i1791, align 8
  %151 = add i64 %150, 48
  %152 = add i64 %141, 18
  store i64 %152, i64* %PC.i, align 8
  %153 = inttoptr i64 %151 to double*
  %154 = load double, double* %153, align 8
  %155 = fadd double %148, %154
  store double %155, double* %67, align 1
  store i64 0, i64* %68, align 1
  %156 = add i64 %139, -128
  %157 = add i64 %141, 23
  store i64 %157, i64* %PC.i, align 8
  %158 = inttoptr i64 %156 to double*
  store double %155, double* %158, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -16
  %161 = load i64, i64* %PC.i, align 8
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC.i, align 8
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RDX.i1791, align 8
  %165 = add i64 %164, 40
  %166 = add i64 %161, 9
  store i64 %166, i64* %PC.i, align 8
  %167 = inttoptr i64 %165 to double*
  %168 = load double, double* %167, align 8
  store double %168, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %169 = add i64 %161, 13
  store i64 %169, i64* %PC.i, align 8
  %170 = load i64, i64* %163, align 8
  store i64 %170, i64* %RDX.i1791, align 8
  %171 = add i64 %170, 56
  %172 = add i64 %161, 18
  store i64 %172, i64* %PC.i, align 8
  %173 = inttoptr i64 %171 to double*
  %174 = load double, double* %173, align 8
  %175 = fadd double %168, %174
  store double %175, double* %67, align 1
  store i64 0, i64* %68, align 1
  %176 = add i64 %159, -136
  %177 = add i64 %161, 26
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %176 to double*
  store double %175, double* %178, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -16
  %181 = load i64, i64* %PC.i, align 8
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC.i, align 8
  %183 = inttoptr i64 %180 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %RDX.i1791, align 8
  %185 = add i64 %184, 32
  %186 = add i64 %181, 9
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %185 to double*
  %188 = load double, double* %187, align 8
  store double %188, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %189 = add i64 %181, 13
  store i64 %189, i64* %PC.i, align 8
  %190 = load i64, i64* %183, align 8
  store i64 %190, i64* %RDX.i1791, align 8
  %191 = add i64 %190, 48
  %192 = add i64 %181, 18
  store i64 %192, i64* %PC.i, align 8
  %193 = inttoptr i64 %191 to double*
  %194 = load double, double* %193, align 8
  %195 = fsub double %188, %194
  store double %195, double* %67, align 1
  store i64 0, i64* %68, align 1
  %196 = add i64 %179, -144
  %197 = add i64 %181, 26
  store i64 %197, i64* %PC.i, align 8
  %198 = inttoptr i64 %196 to double*
  store double %195, double* %198, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -16
  %201 = load i64, i64* %PC.i, align 8
  %202 = add i64 %201, 4
  store i64 %202, i64* %PC.i, align 8
  %203 = inttoptr i64 %200 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RDX.i1791, align 8
  %205 = add i64 %204, 40
  %206 = add i64 %201, 9
  store i64 %206, i64* %PC.i, align 8
  %207 = inttoptr i64 %205 to double*
  %208 = load double, double* %207, align 8
  store double %208, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %209 = add i64 %201, 13
  store i64 %209, i64* %PC.i, align 8
  %210 = load i64, i64* %203, align 8
  store i64 %210, i64* %RDX.i1791, align 8
  %211 = add i64 %210, 56
  %212 = add i64 %201, 18
  store i64 %212, i64* %PC.i, align 8
  %213 = inttoptr i64 %211 to double*
  %214 = load double, double* %213, align 8
  %215 = fsub double %208, %214
  store double %215, double* %67, align 1
  store i64 0, i64* %68, align 1
  %216 = add i64 %199, -152
  %217 = add i64 %201, 26
  store i64 %217, i64* %PC.i, align 8
  %218 = inttoptr i64 %216 to double*
  store double %215, double* %218, align 8
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -96
  %221 = load i64, i64* %PC.i, align 8
  %222 = add i64 %221, 5
  store i64 %222, i64* %PC.i, align 8
  %223 = inttoptr i64 %220 to double*
  %224 = load double, double* %223, align 8
  store double %224, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %225 = add i64 %219, -128
  %226 = add i64 %221, 10
  store i64 %226, i64* %PC.i, align 8
  %227 = inttoptr i64 %225 to double*
  %228 = load double, double* %227, align 8
  %229 = fadd double %224, %228
  store double %229, double* %67, align 1
  store i64 0, i64* %68, align 1
  %230 = add i64 %219, -16
  %231 = add i64 %221, 14
  store i64 %231, i64* %PC.i, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RDX.i1791, align 8
  %234 = add i64 %221, 18
  store i64 %234, i64* %PC.i, align 8
  %235 = inttoptr i64 %233 to double*
  store double %229, double* %235, align 8
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -104
  %238 = load i64, i64* %PC.i, align 8
  %239 = add i64 %238, 5
  store i64 %239, i64* %PC.i, align 8
  %240 = inttoptr i64 %237 to double*
  %241 = load double, double* %240, align 8
  store double %241, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %242 = add i64 %236, -136
  %243 = add i64 %238, 13
  store i64 %243, i64* %PC.i, align 8
  %244 = inttoptr i64 %242 to double*
  %245 = load double, double* %244, align 8
  %246 = fadd double %241, %245
  store double %246, double* %67, align 1
  store i64 0, i64* %68, align 1
  %247 = add i64 %236, -16
  %248 = add i64 %238, 17
  store i64 %248, i64* %PC.i, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RDX.i1791, align 8
  %251 = add i64 %250, 8
  %252 = add i64 %238, 22
  store i64 %252, i64* %PC.i, align 8
  %253 = inttoptr i64 %251 to double*
  store double %246, double* %253, align 8
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -96
  %256 = load i64, i64* %PC.i, align 8
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC.i, align 8
  %258 = inttoptr i64 %255 to double*
  %259 = load double, double* %258, align 8
  store double %259, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %260 = add i64 %254, -128
  %261 = add i64 %256, 10
  store i64 %261, i64* %PC.i, align 8
  %262 = inttoptr i64 %260 to double*
  %263 = load double, double* %262, align 8
  %264 = fsub double %259, %263
  store double %264, double* %67, align 1
  store i64 0, i64* %68, align 1
  %265 = add i64 %254, -16
  %266 = add i64 %256, 14
  store i64 %266, i64* %PC.i, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RDX.i1791, align 8
  %269 = add i64 %268, 32
  %270 = add i64 %256, 19
  store i64 %270, i64* %PC.i, align 8
  %271 = inttoptr i64 %269 to double*
  store double %264, double* %271, align 8
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -104
  %274 = load i64, i64* %PC.i, align 8
  %275 = add i64 %274, 5
  store i64 %275, i64* %PC.i, align 8
  %276 = inttoptr i64 %273 to double*
  %277 = load double, double* %276, align 8
  store double %277, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %278 = add i64 %272, -136
  %279 = add i64 %274, 13
  store i64 %279, i64* %PC.i, align 8
  %280 = inttoptr i64 %278 to double*
  %281 = load double, double* %280, align 8
  %282 = fsub double %277, %281
  store double %282, double* %67, align 1
  store i64 0, i64* %68, align 1
  %283 = add i64 %272, -16
  %284 = add i64 %274, 17
  store i64 %284, i64* %PC.i, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDX.i1791, align 8
  %287 = add i64 %286, 40
  %288 = add i64 %274, 22
  store i64 %288, i64* %PC.i, align 8
  %289 = inttoptr i64 %287 to double*
  store double %282, double* %289, align 8
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -112
  %292 = load i64, i64* %PC.i, align 8
  %293 = add i64 %292, 5
  store i64 %293, i64* %PC.i, align 8
  %294 = inttoptr i64 %291 to double*
  %295 = load double, double* %294, align 8
  store double %295, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %296 = add i64 %290, -152
  %297 = add i64 %292, 13
  store i64 %297, i64* %PC.i, align 8
  %298 = inttoptr i64 %296 to double*
  %299 = load double, double* %298, align 8
  %300 = fsub double %295, %299
  store double %300, double* %67, align 1
  store i64 0, i64* %68, align 1
  %301 = add i64 %290, -16
  %302 = add i64 %292, 17
  store i64 %302, i64* %PC.i, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RDX.i1791, align 8
  %305 = add i64 %304, 16
  %306 = add i64 %292, 22
  store i64 %306, i64* %PC.i, align 8
  %307 = inttoptr i64 %305 to double*
  store double %300, double* %307, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -120
  %310 = load i64, i64* %PC.i, align 8
  %311 = add i64 %310, 5
  store i64 %311, i64* %PC.i, align 8
  %312 = inttoptr i64 %309 to double*
  %313 = load double, double* %312, align 8
  store double %313, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %314 = add i64 %308, -144
  %315 = add i64 %310, 13
  store i64 %315, i64* %PC.i, align 8
  %316 = inttoptr i64 %314 to double*
  %317 = load double, double* %316, align 8
  %318 = fadd double %313, %317
  store double %318, double* %67, align 1
  store i64 0, i64* %68, align 1
  %319 = add i64 %308, -16
  %320 = add i64 %310, 17
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDX.i1791, align 8
  %323 = add i64 %322, 24
  %324 = add i64 %310, 22
  store i64 %324, i64* %PC.i, align 8
  %325 = inttoptr i64 %323 to double*
  store double %318, double* %325, align 8
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -112
  %328 = load i64, i64* %PC.i, align 8
  %329 = add i64 %328, 5
  store i64 %329, i64* %PC.i, align 8
  %330 = inttoptr i64 %327 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %332 = add i64 %326, -152
  %333 = add i64 %328, 13
  store i64 %333, i64* %PC.i, align 8
  %334 = inttoptr i64 %332 to double*
  %335 = load double, double* %334, align 8
  %336 = fadd double %331, %335
  store double %336, double* %67, align 1
  store i64 0, i64* %68, align 1
  %337 = add i64 %326, -16
  %338 = add i64 %328, 17
  store i64 %338, i64* %PC.i, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RDX.i1791, align 8
  %341 = add i64 %340, 48
  %342 = add i64 %328, 22
  store i64 %342, i64* %PC.i, align 8
  %343 = inttoptr i64 %341 to double*
  store double %336, double* %343, align 8
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -120
  %346 = load i64, i64* %PC.i, align 8
  %347 = add i64 %346, 5
  store i64 %347, i64* %PC.i, align 8
  %348 = inttoptr i64 %345 to double*
  %349 = load double, double* %348, align 8
  store double %349, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %350 = add i64 %344, -144
  %351 = add i64 %346, 13
  store i64 %351, i64* %PC.i, align 8
  %352 = inttoptr i64 %350 to double*
  %353 = load double, double* %352, align 8
  %354 = fsub double %349, %353
  store double %354, double* %67, align 1
  store i64 0, i64* %68, align 1
  %355 = add i64 %344, -16
  %356 = add i64 %346, 17
  store i64 %356, i64* %PC.i, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RDX.i1791, align 8
  %359 = add i64 %358, 56
  %360 = add i64 %346, 22
  store i64 %360, i64* %PC.i, align 8
  %361 = inttoptr i64 %359 to double*
  store double %354, double* %361, align 8
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -24
  %364 = load i64, i64* %PC.i, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC.i, align 8
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RDX.i1791, align 8
  %368 = add i64 %367, 16
  %369 = add i64 %364, 9
  store i64 %369, i64* %PC.i, align 8
  %370 = inttoptr i64 %368 to i64*
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %371, i64* %372, align 1
  store double 0.000000e+00, double* %69, align 1
  %373 = add i64 %362, -48
  %374 = add i64 %364, 14
  store i64 %374, i64* %PC.i, align 8
  %375 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %375, align 8
  %376 = load i64, i64* %RBP.i, align 8
  %377 = add i64 %376, -16
  %378 = load i64, i64* %PC.i, align 8
  %379 = add i64 %378, 4
  store i64 %379, i64* %PC.i, align 8
  %380 = inttoptr i64 %377 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RDX.i1791, align 8
  %382 = add i64 %381, 64
  %383 = add i64 %378, 9
  store i64 %383, i64* %PC.i, align 8
  %384 = inttoptr i64 %382 to double*
  %385 = load double, double* %384, align 8
  store double %385, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %386 = add i64 %378, 13
  store i64 %386, i64* %PC.i, align 8
  %387 = load i64, i64* %380, align 8
  store i64 %387, i64* %RDX.i1791, align 8
  %388 = add i64 %387, 80
  %389 = add i64 %378, 18
  store i64 %389, i64* %PC.i, align 8
  %390 = inttoptr i64 %388 to double*
  %391 = load double, double* %390, align 8
  %392 = fadd double %385, %391
  store double %392, double* %67, align 1
  store i64 0, i64* %68, align 1
  %393 = add i64 %376, -96
  %394 = add i64 %378, 23
  store i64 %394, i64* %PC.i, align 8
  %395 = inttoptr i64 %393 to double*
  store double %392, double* %395, align 8
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -16
  %398 = load i64, i64* %PC.i, align 8
  %399 = add i64 %398, 4
  store i64 %399, i64* %PC.i, align 8
  %400 = inttoptr i64 %397 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %RDX.i1791, align 8
  %402 = add i64 %401, 72
  %403 = add i64 %398, 9
  store i64 %403, i64* %PC.i, align 8
  %404 = inttoptr i64 %402 to double*
  %405 = load double, double* %404, align 8
  store double %405, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %406 = add i64 %398, 13
  store i64 %406, i64* %PC.i, align 8
  %407 = load i64, i64* %400, align 8
  store i64 %407, i64* %RDX.i1791, align 8
  %408 = add i64 %407, 88
  %409 = add i64 %398, 18
  store i64 %409, i64* %PC.i, align 8
  %410 = inttoptr i64 %408 to double*
  %411 = load double, double* %410, align 8
  %412 = fadd double %405, %411
  store double %412, double* %67, align 1
  store i64 0, i64* %68, align 1
  %413 = add i64 %396, -104
  %414 = add i64 %398, 23
  store i64 %414, i64* %PC.i, align 8
  %415 = inttoptr i64 %413 to double*
  store double %412, double* %415, align 8
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -16
  %418 = load i64, i64* %PC.i, align 8
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC.i, align 8
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RDX.i1791, align 8
  %422 = add i64 %421, 64
  %423 = add i64 %418, 9
  store i64 %423, i64* %PC.i, align 8
  %424 = inttoptr i64 %422 to double*
  %425 = load double, double* %424, align 8
  store double %425, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %426 = add i64 %418, 13
  store i64 %426, i64* %PC.i, align 8
  %427 = load i64, i64* %420, align 8
  store i64 %427, i64* %RDX.i1791, align 8
  %428 = add i64 %427, 80
  %429 = add i64 %418, 18
  store i64 %429, i64* %PC.i, align 8
  %430 = inttoptr i64 %428 to double*
  %431 = load double, double* %430, align 8
  %432 = fsub double %425, %431
  store double %432, double* %67, align 1
  store i64 0, i64* %68, align 1
  %433 = add i64 %416, -112
  %434 = add i64 %418, 23
  store i64 %434, i64* %PC.i, align 8
  %435 = inttoptr i64 %433 to double*
  store double %432, double* %435, align 8
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -16
  %438 = load i64, i64* %PC.i, align 8
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC.i, align 8
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RDX.i1791, align 8
  %442 = add i64 %441, 72
  %443 = add i64 %438, 9
  store i64 %443, i64* %PC.i, align 8
  %444 = inttoptr i64 %442 to double*
  %445 = load double, double* %444, align 8
  store double %445, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %446 = add i64 %438, 13
  store i64 %446, i64* %PC.i, align 8
  %447 = load i64, i64* %440, align 8
  store i64 %447, i64* %RDX.i1791, align 8
  %448 = add i64 %447, 88
  %449 = add i64 %438, 18
  store i64 %449, i64* %PC.i, align 8
  %450 = inttoptr i64 %448 to double*
  %451 = load double, double* %450, align 8
  %452 = fsub double %445, %451
  store double %452, double* %67, align 1
  store i64 0, i64* %68, align 1
  %453 = add i64 %436, -120
  %454 = add i64 %438, 23
  store i64 %454, i64* %PC.i, align 8
  %455 = inttoptr i64 %453 to double*
  store double %452, double* %455, align 8
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -16
  %458 = load i64, i64* %PC.i, align 8
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC.i, align 8
  %460 = inttoptr i64 %457 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RDX.i1791, align 8
  %462 = add i64 %461, 96
  %463 = add i64 %458, 9
  store i64 %463, i64* %PC.i, align 8
  %464 = inttoptr i64 %462 to double*
  %465 = load double, double* %464, align 8
  store double %465, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %466 = add i64 %458, 13
  store i64 %466, i64* %PC.i, align 8
  %467 = load i64, i64* %460, align 8
  store i64 %467, i64* %RDX.i1791, align 8
  %468 = add i64 %467, 112
  %469 = add i64 %458, 18
  store i64 %469, i64* %PC.i, align 8
  %470 = inttoptr i64 %468 to double*
  %471 = load double, double* %470, align 8
  %472 = fadd double %465, %471
  store double %472, double* %67, align 1
  store i64 0, i64* %68, align 1
  %473 = add i64 %456, -128
  %474 = add i64 %458, 23
  store i64 %474, i64* %PC.i, align 8
  %475 = inttoptr i64 %473 to double*
  store double %472, double* %475, align 8
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -16
  %478 = load i64, i64* %PC.i, align 8
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC.i, align 8
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %RDX.i1791, align 8
  %482 = add i64 %481, 104
  %483 = add i64 %478, 9
  store i64 %483, i64* %PC.i, align 8
  %484 = inttoptr i64 %482 to double*
  %485 = load double, double* %484, align 8
  store double %485, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %486 = add i64 %478, 13
  store i64 %486, i64* %PC.i, align 8
  %487 = load i64, i64* %480, align 8
  store i64 %487, i64* %RDX.i1791, align 8
  %488 = add i64 %487, 120
  %489 = add i64 %478, 18
  store i64 %489, i64* %PC.i, align 8
  %490 = inttoptr i64 %488 to double*
  %491 = load double, double* %490, align 8
  %492 = fadd double %485, %491
  store double %492, double* %67, align 1
  store i64 0, i64* %68, align 1
  %493 = add i64 %476, -136
  %494 = add i64 %478, 26
  store i64 %494, i64* %PC.i, align 8
  %495 = inttoptr i64 %493 to double*
  store double %492, double* %495, align 8
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -16
  %498 = load i64, i64* %PC.i, align 8
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC.i, align 8
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RDX.i1791, align 8
  %502 = add i64 %501, 96
  %503 = add i64 %498, 9
  store i64 %503, i64* %PC.i, align 8
  %504 = inttoptr i64 %502 to double*
  %505 = load double, double* %504, align 8
  store double %505, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %506 = add i64 %498, 13
  store i64 %506, i64* %PC.i, align 8
  %507 = load i64, i64* %500, align 8
  store i64 %507, i64* %RDX.i1791, align 8
  %508 = add i64 %507, 112
  %509 = add i64 %498, 18
  store i64 %509, i64* %PC.i, align 8
  %510 = inttoptr i64 %508 to double*
  %511 = load double, double* %510, align 8
  %512 = fsub double %505, %511
  store double %512, double* %67, align 1
  store i64 0, i64* %68, align 1
  %513 = add i64 %496, -144
  %514 = add i64 %498, 26
  store i64 %514, i64* %PC.i, align 8
  %515 = inttoptr i64 %513 to double*
  store double %512, double* %515, align 8
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -16
  %518 = load i64, i64* %PC.i, align 8
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC.i, align 8
  %520 = inttoptr i64 %517 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RDX.i1791, align 8
  %522 = add i64 %521, 104
  %523 = add i64 %518, 9
  store i64 %523, i64* %PC.i, align 8
  %524 = inttoptr i64 %522 to double*
  %525 = load double, double* %524, align 8
  store double %525, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %526 = add i64 %518, 13
  store i64 %526, i64* %PC.i, align 8
  %527 = load i64, i64* %520, align 8
  store i64 %527, i64* %RDX.i1791, align 8
  %528 = add i64 %527, 120
  %529 = add i64 %518, 18
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %528 to double*
  %531 = load double, double* %530, align 8
  %532 = fsub double %525, %531
  store double %532, double* %67, align 1
  store i64 0, i64* %68, align 1
  %533 = add i64 %516, -152
  %534 = add i64 %518, 26
  store i64 %534, i64* %PC.i, align 8
  %535 = inttoptr i64 %533 to double*
  store double %532, double* %535, align 8
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -96
  %538 = load i64, i64* %PC.i, align 8
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC.i, align 8
  %540 = inttoptr i64 %537 to double*
  %541 = load double, double* %540, align 8
  store double %541, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %542 = add i64 %536, -128
  %543 = add i64 %538, 10
  store i64 %543, i64* %PC.i, align 8
  %544 = inttoptr i64 %542 to double*
  %545 = load double, double* %544, align 8
  %546 = fadd double %541, %545
  store double %546, double* %67, align 1
  store i64 0, i64* %68, align 1
  %547 = add i64 %536, -16
  %548 = add i64 %538, 14
  store i64 %548, i64* %PC.i, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RDX.i1791, align 8
  %551 = add i64 %550, 64
  %552 = add i64 %538, 19
  store i64 %552, i64* %PC.i, align 8
  %553 = inttoptr i64 %551 to double*
  store double %546, double* %553, align 8
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -104
  %556 = load i64, i64* %PC.i, align 8
  %557 = add i64 %556, 5
  store i64 %557, i64* %PC.i, align 8
  %558 = inttoptr i64 %555 to double*
  %559 = load double, double* %558, align 8
  store double %559, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %560 = add i64 %554, -136
  %561 = add i64 %556, 13
  store i64 %561, i64* %PC.i, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  %564 = fadd double %559, %563
  store double %564, double* %67, align 1
  store i64 0, i64* %68, align 1
  %565 = add i64 %554, -16
  %566 = add i64 %556, 17
  store i64 %566, i64* %PC.i, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RDX.i1791, align 8
  %569 = add i64 %568, 72
  %570 = add i64 %556, 22
  store i64 %570, i64* %PC.i, align 8
  %571 = inttoptr i64 %569 to double*
  store double %564, double* %571, align 8
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -136
  %574 = load i64, i64* %PC.i, align 8
  %575 = add i64 %574, 8
  store i64 %575, i64* %PC.i, align 8
  %576 = inttoptr i64 %573 to double*
  %577 = load double, double* %576, align 8
  store double %577, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %578 = add i64 %572, -104
  %579 = add i64 %574, 13
  store i64 %579, i64* %PC.i, align 8
  %580 = inttoptr i64 %578 to double*
  %581 = load double, double* %580, align 8
  %582 = fsub double %577, %581
  store double %582, double* %67, align 1
  store i64 0, i64* %68, align 1
  %583 = add i64 %572, -16
  %584 = add i64 %574, 17
  store i64 %584, i64* %PC.i, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RDX.i1791, align 8
  %587 = add i64 %586, 96
  %588 = add i64 %574, 22
  store i64 %588, i64* %PC.i, align 8
  %589 = inttoptr i64 %587 to double*
  store double %582, double* %589, align 8
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -96
  %592 = load i64, i64* %PC.i, align 8
  %593 = add i64 %592, 5
  store i64 %593, i64* %PC.i, align 8
  %594 = inttoptr i64 %591 to double*
  %595 = load double, double* %594, align 8
  store double %595, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %596 = add i64 %590, -128
  %597 = add i64 %592, 10
  store i64 %597, i64* %PC.i, align 8
  %598 = inttoptr i64 %596 to double*
  %599 = load double, double* %598, align 8
  %600 = fsub double %595, %599
  store double %600, double* %67, align 1
  store i64 0, i64* %68, align 1
  %601 = add i64 %590, -16
  %602 = add i64 %592, 14
  store i64 %602, i64* %PC.i, align 8
  %603 = inttoptr i64 %601 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RDX.i1791, align 8
  %605 = add i64 %604, 104
  %606 = add i64 %592, 19
  store i64 %606, i64* %PC.i, align 8
  %607 = inttoptr i64 %605 to double*
  store double %600, double* %607, align 8
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -112
  %610 = load i64, i64* %PC.i, align 8
  %611 = add i64 %610, 5
  store i64 %611, i64* %PC.i, align 8
  %612 = inttoptr i64 %609 to double*
  %613 = load double, double* %612, align 8
  store double %613, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %614 = add i64 %608, -152
  %615 = add i64 %610, 13
  store i64 %615, i64* %PC.i, align 8
  %616 = inttoptr i64 %614 to double*
  %617 = load double, double* %616, align 8
  %618 = fsub double %613, %617
  store double %618, double* %67, align 1
  store i64 0, i64* %68, align 1
  %619 = add i64 %608, -96
  %620 = add i64 %610, 18
  store i64 %620, i64* %PC.i, align 8
  %621 = inttoptr i64 %619 to double*
  store double %618, double* %621, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -120
  %624 = load i64, i64* %PC.i, align 8
  %625 = add i64 %624, 5
  store i64 %625, i64* %PC.i, align 8
  %626 = inttoptr i64 %623 to double*
  %627 = load double, double* %626, align 8
  store double %627, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %628 = add i64 %622, -144
  %629 = add i64 %624, 13
  store i64 %629, i64* %PC.i, align 8
  %630 = inttoptr i64 %628 to double*
  %631 = load double, double* %630, align 8
  %632 = fadd double %627, %631
  store double %632, double* %67, align 1
  store i64 0, i64* %68, align 1
  %633 = add i64 %622, -104
  %634 = add i64 %624, 18
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to double*
  store double %632, double* %635, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -48
  %638 = load i64, i64* %PC.i, align 8
  %639 = add i64 %638, 5
  store i64 %639, i64* %PC.i, align 8
  %640 = inttoptr i64 %637 to double*
  %641 = load double, double* %640, align 8
  store double %641, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %643 = bitcast %union.VectorReg* %642 to i8*
  %644 = add i64 %636, -96
  %645 = add i64 %638, 10
  store i64 %645, i64* %PC.i, align 8
  %646 = inttoptr i64 %644 to double*
  %647 = load double, double* %646, align 8
  %648 = bitcast %union.VectorReg* %642 to double*
  store double %647, double* %648, align 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %650 = bitcast i64* %649 to double*
  store double 0.000000e+00, double* %650, align 1
  %651 = add i64 %636, -104
  %652 = add i64 %638, 15
  store i64 %652, i64* %PC.i, align 8
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
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RDX.i1791, align 8
  %661 = add i64 %660, 80
  %662 = add i64 %638, 28
  store i64 %662, i64* %PC.i, align 8
  %663 = inttoptr i64 %661 to double*
  store double %656, double* %663, align 8
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -48
  %666 = load i64, i64* %PC.i, align 8
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC.i, align 8
  %668 = inttoptr i64 %665 to double*
  %669 = load double, double* %668, align 8
  store double %669, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %670 = add i64 %664, -96
  %671 = add i64 %666, 10
  store i64 %671, i64* %PC.i, align 8
  %672 = inttoptr i64 %670 to double*
  %673 = load double, double* %672, align 8
  store double %673, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %674 = add i64 %664, -104
  %675 = add i64 %666, 15
  store i64 %675, i64* %PC.i, align 8
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
  store i64 %681, i64* %PC.i, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RDX.i1791, align 8
  %684 = add i64 %683, 88
  %685 = add i64 %666, 28
  store i64 %685, i64* %PC.i, align 8
  %686 = inttoptr i64 %684 to double*
  store double %679, double* %686, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -152
  %689 = load i64, i64* %PC.i, align 8
  %690 = add i64 %689, 8
  store i64 %690, i64* %PC.i, align 8
  %691 = inttoptr i64 %688 to double*
  %692 = load double, double* %691, align 8
  store double %692, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %693 = add i64 %687, -112
  %694 = add i64 %689, 13
  store i64 %694, i64* %PC.i, align 8
  %695 = inttoptr i64 %693 to double*
  %696 = load double, double* %695, align 8
  %697 = fadd double %692, %696
  store double %697, double* %67, align 1
  store i64 0, i64* %68, align 1
  %698 = add i64 %687, -96
  %699 = add i64 %689, 18
  store i64 %699, i64* %PC.i, align 8
  %700 = inttoptr i64 %698 to double*
  store double %697, double* %700, align 8
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -144
  %703 = load i64, i64* %PC.i, align 8
  %704 = add i64 %703, 8
  store i64 %704, i64* %PC.i, align 8
  %705 = inttoptr i64 %702 to double*
  %706 = load double, double* %705, align 8
  store double %706, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %707 = add i64 %701, -120
  %708 = add i64 %703, 13
  store i64 %708, i64* %PC.i, align 8
  %709 = inttoptr i64 %707 to double*
  %710 = load double, double* %709, align 8
  %711 = fsub double %706, %710
  store double %711, double* %67, align 1
  store i64 0, i64* %68, align 1
  %712 = add i64 %701, -104
  %713 = add i64 %703, 18
  store i64 %713, i64* %PC.i, align 8
  %714 = inttoptr i64 %712 to double*
  store double %711, double* %714, align 8
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -48
  %717 = load i64, i64* %PC.i, align 8
  %718 = add i64 %717, 5
  store i64 %718, i64* %PC.i, align 8
  %719 = inttoptr i64 %716 to double*
  %720 = load double, double* %719, align 8
  store double %720, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %721 = add i64 %715, -104
  %722 = add i64 %717, 10
  store i64 %722, i64* %PC.i, align 8
  %723 = inttoptr i64 %721 to double*
  %724 = load double, double* %723, align 8
  store double %724, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %725 = add i64 %715, -96
  %726 = add i64 %717, 15
  store i64 %726, i64* %PC.i, align 8
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
  store i64 %732, i64* %PC.i, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RDX.i1791, align 8
  %735 = add i64 %734, 112
  %736 = add i64 %717, 28
  store i64 %736, i64* %PC.i, align 8
  %737 = inttoptr i64 %735 to double*
  store double %730, double* %737, align 8
  %738 = load i64, i64* %RBP.i, align 8
  %739 = add i64 %738, -48
  %740 = load i64, i64* %PC.i, align 8
  %741 = add i64 %740, 5
  store i64 %741, i64* %PC.i, align 8
  %742 = inttoptr i64 %739 to double*
  %743 = load double, double* %742, align 8
  store double %743, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %744 = add i64 %738, -104
  %745 = add i64 %740, 10
  store i64 %745, i64* %PC.i, align 8
  %746 = inttoptr i64 %744 to double*
  %747 = load double, double* %746, align 8
  store double %747, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %748 = add i64 %738, -96
  %749 = add i64 %740, 15
  store i64 %749, i64* %PC.i, align 8
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
  store i64 %755, i64* %PC.i, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RDX.i1791, align 8
  %758 = add i64 %757, 120
  %759 = add i64 %740, 28
  store i64 %759, i64* %PC.i, align 8
  %760 = inttoptr i64 %758 to double*
  store double %753, double* %760, align 8
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -32
  %763 = load i64, i64* %PC.i, align 8
  %764 = add i64 %763, 7
  store i64 %764, i64* %PC.i, align 8
  %765 = inttoptr i64 %762 to i32*
  store i32 0, i32* %765, align 4
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -28
  %768 = load i64, i64* %PC.i, align 8
  %769 = add i64 %768, 7
  store i64 %769, i64* %PC.i, align 8
  %770 = inttoptr i64 %767 to i32*
  store i32 16, i32* %770, align 4
  %RAX.i1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %772 = bitcast %union.VectorReg* %771 to i8*
  %773 = bitcast [32 x %union.VectorReg]* %63 to <2 x i32>*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %775 = bitcast i64* %774 to <2 x i32>*
  %776 = bitcast %union.VectorReg* %771 to i32*
  %777 = getelementptr inbounds i8, i8* %772, i64 4
  %778 = bitcast i8* %777 to i32*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %780 = bitcast i64* %779 to i32*
  %781 = getelementptr inbounds i8, i8* %772, i64 12
  %782 = bitcast i8* %781 to i32*
  %783 = bitcast %union.VectorReg* %771 to double*
  %784 = bitcast %union.VectorReg* %642 to i32*
  %785 = getelementptr inbounds i8, i8* %643, i64 4
  %786 = bitcast i8* %785 to i32*
  %787 = bitcast i64* %649 to i32*
  %788 = getelementptr inbounds i8, i8* %643, i64 12
  %789 = bitcast i8* %788 to i32*
  %790 = bitcast i64* %779 to double*
  %791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_402bd2

block_.L_402bd2:                                  ; preds = %block_402bde, %entry
  %792 = phi i64 [ %3410, %block_402bde ], [ %.pre, %entry ]
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -28
  %795 = add i64 %792, 3
  store i64 %795, i64* %PC.i, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RAX.i1283, align 8
  %799 = add i64 %793, -4
  %800 = add i64 %792, 6
  store i64 %800, i64* %PC.i, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sub i32 %797, %802
  %804 = icmp ult i32 %797, %802
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %14, align 1
  %806 = and i32 %803, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %21, align 1
  %811 = xor i32 %802, %797
  %812 = xor i32 %811, %803
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %27, align 1
  %816 = icmp eq i32 %803, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %30, align 1
  %818 = lshr i32 %803, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %33, align 1
  %820 = lshr i32 %797, 31
  %821 = lshr i32 %802, 31
  %822 = xor i32 %821, %820
  %823 = xor i32 %818, %820
  %824 = add nuw nsw i32 %823, %822
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %39, align 1
  %827 = icmp ne i8 %819, 0
  %828 = xor i1 %827, %825
  %.v = select i1 %828, i64 12, i64 1820
  %829 = add i64 %792, %.v
  store i64 %829, i64* %3, align 8
  br i1 %828, label %block_402bde, label %block_.L_4032ee

block_402bde:                                     ; preds = %block_.L_402bd2
  store i64 -9223372036854775808, i64* %RAX.i1283, align 8
  %830 = load i64, i64* bitcast (%G_0x14d0__rip__type* @G_0x14d0__rip_ to i64*), align 8
  %831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %830, i64* %831, align 1
  store double 0.000000e+00, double* %69, align 1
  %832 = add i64 %793, -32
  %833 = add i64 %829, 21
  store i64 %833, i64* %PC.i, align 8
  %834 = inttoptr i64 %832 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = add i32 %835, 2
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RCX.i1272, align 8
  %838 = icmp ugt i32 %835, -3
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = and i32 %836, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i32 %835, %836
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %27, align 1
  %849 = icmp eq i32 %836, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %30, align 1
  %851 = lshr i32 %836, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %33, align 1
  %853 = lshr i32 %835, 31
  %854 = xor i32 %851, %853
  %855 = add nuw nsw i32 %854, %851
  %856 = icmp eq i32 %855, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %39, align 1
  %858 = add i64 %829, 27
  store i64 %858, i64* %PC.i, align 8
  store i32 %836, i32* %834, align 4
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -32
  %861 = load i64, i64* %PC.i, align 8
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC.i, align 8
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = shl i32 %864, 1
  %866 = icmp slt i32 %864, 0
  %867 = icmp slt i32 %865, 0
  %868 = xor i1 %866, %867
  %869 = zext i32 %865 to i64
  store i64 %869, i64* %RCX.i1272, align 8
  %.lobit = lshr i32 %864, 31
  %870 = trunc i32 %.lobit to i8
  store i8 %870, i8* %14, align 1
  %871 = and i32 %865, 254
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %876 = icmp eq i32 %865, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %30, align 1
  %878 = lshr i32 %864, 30
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  store i8 %880, i8* %33, align 1
  %881 = zext i1 %868 to i8
  store i8 %881, i8* %39, align 1
  %882 = add i64 %859, -36
  %883 = add i64 %861, 8
  store i64 %883, i64* %PC.i, align 8
  %884 = inttoptr i64 %882 to i32*
  store i32 %865, i32* %884, align 4
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -24
  %887 = load i64, i64* %PC.i, align 8
  %888 = add i64 %887, 4
  store i64 %888, i64* %PC.i, align 8
  %889 = inttoptr i64 %886 to i64*
  %890 = load i64, i64* %889, align 8
  store i64 %890, i64* %RDX.i1791, align 8
  %891 = add i64 %885, -32
  %892 = add i64 %887, 8
  store i64 %892, i64* %PC.i, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = sext i32 %894 to i64
  store i64 %895, i64* %RSI.i1794, align 8
  %896 = shl nsw i64 %895, 3
  %897 = add i64 %896, %890
  %898 = add i64 %887, 13
  store i64 %898, i64* %PC.i, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  %901 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %900, i64* %901, align 1
  store double 0.000000e+00, double* %650, align 1
  %902 = add i64 %885, -64
  %903 = add i64 %887, 18
  store i64 %903, i64* %PC.i, align 8
  %904 = inttoptr i64 %902 to i64*
  store i64 %900, i64* %904, align 8
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -24
  %907 = load i64, i64* %PC.i, align 8
  %908 = add i64 %907, 4
  store i64 %908, i64* %PC.i, align 8
  %909 = inttoptr i64 %906 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RDX.i1791, align 8
  %911 = add i64 %905, -32
  %912 = add i64 %907, 7
  store i64 %912, i64* %PC.i, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, 1
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RCX.i1272, align 8
  %917 = icmp eq i32 %914, -1
  %918 = icmp eq i32 %915, 0
  %919 = or i1 %917, %918
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = and i32 %915, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  %926 = xor i32 %914, %915
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %27, align 1
  %930 = icmp eq i32 %915, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %30, align 1
  %932 = lshr i32 %915, 31
  %933 = trunc i32 %932 to i8
  store i8 %933, i8* %33, align 1
  %934 = lshr i32 %914, 31
  %935 = xor i32 %932, %934
  %936 = add nuw nsw i32 %935, %932
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %39, align 1
  %939 = sext i32 %915 to i64
  store i64 %939, i64* %RSI.i1794, align 8
  %940 = shl nsw i64 %939, 3
  %941 = add i64 %940, %910
  %942 = add i64 %907, 18
  store i64 %942, i64* %PC.i, align 8
  %943 = inttoptr i64 %941 to i64*
  %944 = load i64, i64* %943, align 8
  %945 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %944, i64* %945, align 1
  store double 0.000000e+00, double* %650, align 1
  %946 = add i64 %905, -72
  %947 = add i64 %907, 23
  store i64 %947, i64* %PC.i, align 8
  %948 = inttoptr i64 %946 to i64*
  store i64 %944, i64* %948, align 8
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -24
  %951 = load i64, i64* %PC.i, align 8
  %952 = add i64 %951, 4
  store i64 %952, i64* %PC.i, align 8
  %953 = inttoptr i64 %950 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %RDX.i1791, align 8
  %955 = add i64 %949, -36
  %956 = add i64 %951, 8
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = sext i32 %958 to i64
  store i64 %959, i64* %RSI.i1794, align 8
  %960 = shl nsw i64 %959, 3
  %961 = add i64 %960, %954
  %962 = add i64 %951, 13
  store i64 %962, i64* %PC.i, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  %965 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %964, i64* %965, align 1
  store double 0.000000e+00, double* %650, align 1
  %966 = add i64 %949, -48
  %967 = add i64 %951, 18
  store i64 %967, i64* %PC.i, align 8
  %968 = inttoptr i64 %966 to i64*
  store i64 %964, i64* %968, align 8
  %969 = load i64, i64* %RBP.i, align 8
  %970 = add i64 %969, -24
  %971 = load i64, i64* %PC.i, align 8
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i, align 8
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RDX.i1791, align 8
  %975 = add i64 %969, -36
  %976 = add i64 %971, 7
  store i64 %976, i64* %PC.i, align 8
  %977 = inttoptr i64 %975 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = add i32 %978, 1
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RCX.i1272, align 8
  %981 = icmp eq i32 %978, -1
  %982 = icmp eq i32 %979, 0
  %983 = or i1 %981, %982
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %14, align 1
  %985 = and i32 %979, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %21, align 1
  %990 = xor i32 %978, %979
  %991 = lshr i32 %990, 4
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %27, align 1
  %994 = icmp eq i32 %979, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %30, align 1
  %996 = lshr i32 %979, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %33, align 1
  %998 = lshr i32 %978, 31
  %999 = xor i32 %996, %998
  %1000 = add nuw nsw i32 %999, %996
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %39, align 1
  %1003 = sext i32 %979 to i64
  store i64 %1003, i64* %RSI.i1794, align 8
  %1004 = shl nsw i64 %1003, 3
  %1005 = add i64 %1004, %974
  %1006 = add i64 %971, 18
  store i64 %1006, i64* %PC.i, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  %1009 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1008, i64* %1009, align 1
  store double 0.000000e+00, double* %650, align 1
  %1010 = add i64 %969, -56
  %1011 = add i64 %971, 23
  store i64 %1011, i64* %PC.i, align 8
  %1012 = inttoptr i64 %1010 to i64*
  store i64 %1008, i64* %1012, align 8
  %1013 = load i64, i64* %RBP.i, align 8
  %1014 = add i64 %1013, -48
  %1015 = load i64, i64* %PC.i, align 8
  %1016 = add i64 %1015, 5
  store i64 %1016, i64* %PC.i, align 8
  %1017 = inttoptr i64 %1014 to double*
  %1018 = load double, double* %1017, align 8
  store double %1018, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1019 = load <2 x i32>, <2 x i32>* %773, align 1
  %1020 = load <2 x i32>, <2 x i32>* %775, align 1
  %1021 = extractelement <2 x i32> %1019, i32 0
  store i32 %1021, i32* %776, align 1
  %1022 = extractelement <2 x i32> %1019, i32 1
  store i32 %1022, i32* %778, align 1
  %1023 = extractelement <2 x i32> %1020, i32 0
  store i32 %1023, i32* %780, align 1
  %1024 = extractelement <2 x i32> %1020, i32 1
  store i32 %1024, i32* %782, align 1
  %1025 = add i64 %1013, -72
  %1026 = add i64 %1015, 13
  store i64 %1026, i64* %PC.i, align 8
  %1027 = load double, double* %783, align 1
  %1028 = inttoptr i64 %1025 to double*
  %1029 = load double, double* %1028, align 8
  %1030 = fmul double %1027, %1029
  store double %1030, double* %783, align 1
  %1031 = add i64 %1013, -56
  %1032 = add i64 %1015, 18
  store i64 %1032, i64* %PC.i, align 8
  %1033 = inttoptr i64 %1031 to double*
  %1034 = load double, double* %1033, align 8
  %1035 = fmul double %1030, %1034
  store double %1035, double* %783, align 1
  %1036 = fsub double %1018, %1035
  %1037 = add i64 %1013, -80
  %1038 = add i64 %1015, 27
  store i64 %1038, i64* %PC.i, align 8
  %1039 = inttoptr i64 %1037 to double*
  store double %1036, double* %1039, align 8
  %1040 = load i64, i64* %PC.i, align 8
  %1041 = load <2 x i32>, <2 x i32>* %773, align 1
  %1042 = load <2 x i32>, <2 x i32>* %775, align 1
  %1043 = extractelement <2 x i32> %1041, i32 0
  store i32 %1043, i32* %784, align 1
  %1044 = extractelement <2 x i32> %1041, i32 1
  store i32 %1044, i32* %786, align 1
  %1045 = extractelement <2 x i32> %1042, i32 0
  store i32 %1045, i32* %787, align 1
  %1046 = extractelement <2 x i32> %1042, i32 1
  store i32 %1046, i32* %789, align 1
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -72
  %1049 = add i64 %1040, 8
  store i64 %1049, i64* %PC.i, align 8
  %1050 = load double, double* %648, align 1
  %1051 = inttoptr i64 %1048 to double*
  %1052 = load double, double* %1051, align 8
  %1053 = fmul double %1050, %1052
  store double %1053, double* %648, align 1
  %1054 = add i64 %1047, -48
  %1055 = add i64 %1040, 13
  store i64 %1055, i64* %PC.i, align 8
  %1056 = inttoptr i64 %1054 to double*
  %1057 = load double, double* %1056, align 8
  %1058 = fmul double %1053, %1057
  store double %1058, double* %648, align 1
  %1059 = add i64 %1047, -56
  %1060 = add i64 %1040, 18
  store i64 %1060, i64* %PC.i, align 8
  %1061 = inttoptr i64 %1059 to double*
  %1062 = load double, double* %1061, align 8
  %1063 = fsub double %1058, %1062
  store double %1063, double* %648, align 1
  %1064 = add i64 %1047, -88
  %1065 = add i64 %1040, 23
  store i64 %1065, i64* %PC.i, align 8
  %1066 = inttoptr i64 %1064 to double*
  store double %1063, double* %1066, align 8
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -16
  %1069 = load i64, i64* %PC.i, align 8
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC.i, align 8
  %1071 = inttoptr i64 %1068 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RDX.i1791, align 8
  %1073 = add i64 %1067, -28
  %1074 = add i64 %1069, 8
  store i64 %1074, i64* %PC.i, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  store i64 %1077, i64* %RSI.i1794, align 8
  %1078 = shl nsw i64 %1077, 3
  %1079 = add i64 %1078, %1072
  %1080 = add i64 %1069, 13
  store i64 %1080, i64* %PC.i, align 8
  %1081 = inttoptr i64 %1079 to double*
  %1082 = load double, double* %1081, align 8
  store double %1082, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1083 = add i64 %1069, 17
  store i64 %1083, i64* %PC.i, align 8
  %1084 = load i64, i64* %1071, align 8
  store i64 %1084, i64* %RDX.i1791, align 8
  %1085 = add i64 %1069, 20
  store i64 %1085, i64* %PC.i, align 8
  %1086 = load i32, i32* %1075, align 4
  %1087 = add i32 %1086, 2
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RCX.i1272, align 8
  %1089 = icmp ugt i32 %1086, -3
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %14, align 1
  %1091 = and i32 %1087, 255
  %1092 = tail call i32 @llvm.ctpop.i32(i32 %1091)
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  store i8 %1095, i8* %21, align 1
  %1096 = xor i32 %1086, %1087
  %1097 = lshr i32 %1096, 4
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  store i8 %1099, i8* %27, align 1
  %1100 = icmp eq i32 %1087, 0
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %30, align 1
  %1102 = lshr i32 %1087, 31
  %1103 = trunc i32 %1102 to i8
  store i8 %1103, i8* %33, align 1
  %1104 = lshr i32 %1086, 31
  %1105 = xor i32 %1102, %1104
  %1106 = add nuw nsw i32 %1105, %1102
  %1107 = icmp eq i32 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %39, align 1
  %1109 = sext i32 %1087 to i64
  store i64 %1109, i64* %RSI.i1794, align 8
  %1110 = shl nsw i64 %1109, 3
  %1111 = add i64 %1110, %1084
  %1112 = add i64 %1069, 31
  store i64 %1112, i64* %PC.i, align 8
  %1113 = inttoptr i64 %1111 to double*
  %1114 = load double, double* %1113, align 8
  %1115 = fadd double %1082, %1114
  store double %1115, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1116 = add i64 %1067, -96
  %1117 = add i64 %1069, 36
  store i64 %1117, i64* %PC.i, align 8
  %1118 = inttoptr i64 %1116 to double*
  store double %1115, double* %1118, align 8
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -16
  %1121 = load i64, i64* %PC.i, align 8
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %PC.i, align 8
  %1123 = inttoptr i64 %1120 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RDX.i1791, align 8
  %1125 = add i64 %1119, -28
  %1126 = add i64 %1121, 7
  store i64 %1126, i64* %PC.i, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i32 %1128, 1
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RCX.i1272, align 8
  %1131 = icmp eq i32 %1128, -1
  %1132 = icmp eq i32 %1129, 0
  %1133 = or i1 %1131, %1132
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1
  %1135 = and i32 %1129, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1128, %1129
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %27, align 1
  %1144 = icmp eq i32 %1129, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %30, align 1
  %1146 = lshr i32 %1129, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %33, align 1
  %1148 = lshr i32 %1128, 31
  %1149 = xor i32 %1146, %1148
  %1150 = add nuw nsw i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %39, align 1
  %1153 = sext i32 %1129 to i64
  store i64 %1153, i64* %RSI.i1794, align 8
  %1154 = shl nsw i64 %1153, 3
  %1155 = add i64 %1154, %1124
  %1156 = add i64 %1121, 18
  store i64 %1156, i64* %PC.i, align 8
  %1157 = inttoptr i64 %1155 to double*
  %1158 = load double, double* %1157, align 8
  store double %1158, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1159 = add i64 %1121, 22
  store i64 %1159, i64* %PC.i, align 8
  %1160 = load i64, i64* %1123, align 8
  store i64 %1160, i64* %RDX.i1791, align 8
  %1161 = add i64 %1121, 25
  store i64 %1161, i64* %PC.i, align 8
  %1162 = load i32, i32* %1127, align 4
  %1163 = add i32 %1162, 3
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RCX.i1272, align 8
  %1165 = icmp ugt i32 %1162, -4
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = and i32 %1163, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  %1172 = xor i32 %1162, %1163
  %1173 = lshr i32 %1172, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %27, align 1
  %1176 = icmp eq i32 %1163, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %30, align 1
  %1178 = lshr i32 %1163, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %33, align 1
  %1180 = lshr i32 %1162, 31
  %1181 = xor i32 %1178, %1180
  %1182 = add nuw nsw i32 %1181, %1178
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %39, align 1
  %1185 = sext i32 %1163 to i64
  store i64 %1185, i64* %RSI.i1794, align 8
  %1186 = shl nsw i64 %1185, 3
  %1187 = add i64 %1186, %1160
  %1188 = add i64 %1121, 36
  store i64 %1188, i64* %PC.i, align 8
  %1189 = inttoptr i64 %1187 to double*
  %1190 = load double, double* %1189, align 8
  %1191 = fadd double %1158, %1190
  store double %1191, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -104
  %1194 = add i64 %1121, 41
  store i64 %1194, i64* %PC.i, align 8
  %1195 = inttoptr i64 %1193 to double*
  store double %1191, double* %1195, align 8
  %1196 = load i64, i64* %RBP.i, align 8
  %1197 = add i64 %1196, -16
  %1198 = load i64, i64* %PC.i, align 8
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %PC.i, align 8
  %1200 = inttoptr i64 %1197 to i64*
  %1201 = load i64, i64* %1200, align 8
  store i64 %1201, i64* %RDX.i1791, align 8
  %1202 = add i64 %1196, -28
  %1203 = add i64 %1198, 8
  store i64 %1203, i64* %PC.i, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = sext i32 %1205 to i64
  store i64 %1206, i64* %RSI.i1794, align 8
  %1207 = shl nsw i64 %1206, 3
  %1208 = add i64 %1207, %1201
  %1209 = add i64 %1198, 13
  store i64 %1209, i64* %PC.i, align 8
  %1210 = inttoptr i64 %1208 to double*
  %1211 = load double, double* %1210, align 8
  store double %1211, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1212 = add i64 %1198, 17
  store i64 %1212, i64* %PC.i, align 8
  %1213 = load i64, i64* %1200, align 8
  store i64 %1213, i64* %RDX.i1791, align 8
  %1214 = add i64 %1198, 20
  store i64 %1214, i64* %PC.i, align 8
  %1215 = load i32, i32* %1204, align 4
  %1216 = add i32 %1215, 2
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RCX.i1272, align 8
  %1218 = icmp ugt i32 %1215, -3
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %14, align 1
  %1220 = and i32 %1216, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %21, align 1
  %1225 = xor i32 %1215, %1216
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %27, align 1
  %1229 = icmp eq i32 %1216, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %30, align 1
  %1231 = lshr i32 %1216, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %33, align 1
  %1233 = lshr i32 %1215, 31
  %1234 = xor i32 %1231, %1233
  %1235 = add nuw nsw i32 %1234, %1231
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %39, align 1
  %1238 = sext i32 %1216 to i64
  store i64 %1238, i64* %RSI.i1794, align 8
  %1239 = shl nsw i64 %1238, 3
  %1240 = add i64 %1239, %1213
  %1241 = add i64 %1198, 31
  store i64 %1241, i64* %PC.i, align 8
  %1242 = inttoptr i64 %1240 to double*
  %1243 = load double, double* %1242, align 8
  %1244 = fsub double %1211, %1243
  store double %1244, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1245 = add i64 %1196, -112
  %1246 = add i64 %1198, 36
  store i64 %1246, i64* %PC.i, align 8
  %1247 = inttoptr i64 %1245 to double*
  store double %1244, double* %1247, align 8
  %1248 = load i64, i64* %RBP.i, align 8
  %1249 = add i64 %1248, -16
  %1250 = load i64, i64* %PC.i, align 8
  %1251 = add i64 %1250, 4
  store i64 %1251, i64* %PC.i, align 8
  %1252 = inttoptr i64 %1249 to i64*
  %1253 = load i64, i64* %1252, align 8
  store i64 %1253, i64* %RDX.i1791, align 8
  %1254 = add i64 %1248, -28
  %1255 = add i64 %1250, 7
  store i64 %1255, i64* %PC.i, align 8
  %1256 = inttoptr i64 %1254 to i32*
  %1257 = load i32, i32* %1256, align 4
  %1258 = add i32 %1257, 1
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RCX.i1272, align 8
  %1260 = icmp eq i32 %1257, -1
  %1261 = icmp eq i32 %1258, 0
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %14, align 1
  %1264 = and i32 %1258, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %21, align 1
  %1269 = xor i32 %1257, %1258
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %27, align 1
  %1273 = icmp eq i32 %1258, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %30, align 1
  %1275 = lshr i32 %1258, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %33, align 1
  %1277 = lshr i32 %1257, 31
  %1278 = xor i32 %1275, %1277
  %1279 = add nuw nsw i32 %1278, %1275
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %39, align 1
  %1282 = sext i32 %1258 to i64
  store i64 %1282, i64* %RSI.i1794, align 8
  %1283 = shl nsw i64 %1282, 3
  %1284 = add i64 %1283, %1253
  %1285 = add i64 %1250, 18
  store i64 %1285, i64* %PC.i, align 8
  %1286 = inttoptr i64 %1284 to double*
  %1287 = load double, double* %1286, align 8
  store double %1287, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1288 = add i64 %1250, 22
  store i64 %1288, i64* %PC.i, align 8
  %1289 = load i64, i64* %1252, align 8
  store i64 %1289, i64* %RDX.i1791, align 8
  %1290 = add i64 %1250, 25
  store i64 %1290, i64* %PC.i, align 8
  %1291 = load i32, i32* %1256, align 4
  %1292 = add i32 %1291, 3
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RCX.i1272, align 8
  %1294 = icmp ugt i32 %1291, -4
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %14, align 1
  %1296 = and i32 %1292, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %21, align 1
  %1301 = xor i32 %1291, %1292
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %27, align 1
  %1305 = icmp eq i32 %1292, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %30, align 1
  %1307 = lshr i32 %1292, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %33, align 1
  %1309 = lshr i32 %1291, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1307
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %39, align 1
  %1314 = sext i32 %1292 to i64
  store i64 %1314, i64* %RSI.i1794, align 8
  %1315 = shl nsw i64 %1314, 3
  %1316 = add i64 %1315, %1289
  %1317 = add i64 %1250, 36
  store i64 %1317, i64* %PC.i, align 8
  %1318 = inttoptr i64 %1316 to double*
  %1319 = load double, double* %1318, align 8
  %1320 = fsub double %1287, %1319
  store double %1320, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -120
  %1323 = add i64 %1250, 41
  store i64 %1323, i64* %PC.i, align 8
  %1324 = inttoptr i64 %1322 to double*
  store double %1320, double* %1324, align 8
  %1325 = load i64, i64* %RBP.i, align 8
  %1326 = add i64 %1325, -16
  %1327 = load i64, i64* %PC.i, align 8
  %1328 = add i64 %1327, 4
  store i64 %1328, i64* %PC.i, align 8
  %1329 = inttoptr i64 %1326 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RDX.i1791, align 8
  %1331 = add i64 %1325, -28
  %1332 = add i64 %1327, 7
  store i64 %1332, i64* %PC.i, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = add i32 %1334, 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RCX.i1272, align 8
  %1337 = icmp ugt i32 %1334, -5
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %14, align 1
  %1339 = and i32 %1335, 255
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %21, align 1
  %1344 = xor i32 %1334, %1335
  %1345 = lshr i32 %1344, 4
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %27, align 1
  %1348 = icmp eq i32 %1335, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %30, align 1
  %1350 = lshr i32 %1335, 31
  %1351 = trunc i32 %1350 to i8
  store i8 %1351, i8* %33, align 1
  %1352 = lshr i32 %1334, 31
  %1353 = xor i32 %1350, %1352
  %1354 = add nuw nsw i32 %1353, %1350
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %39, align 1
  %1357 = sext i32 %1335 to i64
  store i64 %1357, i64* %RSI.i1794, align 8
  %1358 = shl nsw i64 %1357, 3
  %1359 = add i64 %1358, %1330
  %1360 = add i64 %1327, 18
  store i64 %1360, i64* %PC.i, align 8
  %1361 = inttoptr i64 %1359 to double*
  %1362 = load double, double* %1361, align 8
  store double %1362, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1363 = add i64 %1327, 22
  store i64 %1363, i64* %PC.i, align 8
  %1364 = load i64, i64* %1329, align 8
  store i64 %1364, i64* %RDX.i1791, align 8
  %1365 = add i64 %1327, 25
  store i64 %1365, i64* %PC.i, align 8
  %1366 = load i32, i32* %1333, align 4
  %1367 = add i32 %1366, 6
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RCX.i1272, align 8
  %1369 = icmp ugt i32 %1366, -7
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %14, align 1
  %1371 = and i32 %1367, 255
  %1372 = tail call i32 @llvm.ctpop.i32(i32 %1371)
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %21, align 1
  %1376 = xor i32 %1366, %1367
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %27, align 1
  %1380 = icmp eq i32 %1367, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %30, align 1
  %1382 = lshr i32 %1367, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %33, align 1
  %1384 = lshr i32 %1366, 31
  %1385 = xor i32 %1382, %1384
  %1386 = add nuw nsw i32 %1385, %1382
  %1387 = icmp eq i32 %1386, 2
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %39, align 1
  %1389 = sext i32 %1367 to i64
  store i64 %1389, i64* %RSI.i1794, align 8
  %1390 = shl nsw i64 %1389, 3
  %1391 = add i64 %1390, %1364
  %1392 = add i64 %1327, 36
  store i64 %1392, i64* %PC.i, align 8
  %1393 = inttoptr i64 %1391 to double*
  %1394 = load double, double* %1393, align 8
  %1395 = fadd double %1362, %1394
  store double %1395, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1396 = load i64, i64* %RBP.i, align 8
  %1397 = add i64 %1396, -128
  %1398 = add i64 %1327, 41
  store i64 %1398, i64* %PC.i, align 8
  %1399 = inttoptr i64 %1397 to double*
  store double %1395, double* %1399, align 8
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -16
  %1402 = load i64, i64* %PC.i, align 8
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC.i, align 8
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404, align 8
  store i64 %1405, i64* %RDX.i1791, align 8
  %1406 = add i64 %1400, -28
  %1407 = add i64 %1402, 7
  store i64 %1407, i64* %PC.i, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = add i32 %1409, 5
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i1272, align 8
  %1412 = icmp ugt i32 %1409, -6
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %14, align 1
  %1414 = and i32 %1410, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %21, align 1
  %1419 = xor i32 %1409, %1410
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %27, align 1
  %1423 = icmp eq i32 %1410, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %30, align 1
  %1425 = lshr i32 %1410, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %33, align 1
  %1427 = lshr i32 %1409, 31
  %1428 = xor i32 %1425, %1427
  %1429 = add nuw nsw i32 %1428, %1425
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %39, align 1
  %1432 = sext i32 %1410 to i64
  store i64 %1432, i64* %RSI.i1794, align 8
  %1433 = shl nsw i64 %1432, 3
  %1434 = add i64 %1433, %1405
  %1435 = add i64 %1402, 18
  store i64 %1435, i64* %PC.i, align 8
  %1436 = inttoptr i64 %1434 to double*
  %1437 = load double, double* %1436, align 8
  store double %1437, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1438 = add i64 %1402, 22
  store i64 %1438, i64* %PC.i, align 8
  %1439 = load i64, i64* %1404, align 8
  store i64 %1439, i64* %RDX.i1791, align 8
  %1440 = add i64 %1402, 25
  store i64 %1440, i64* %PC.i, align 8
  %1441 = load i32, i32* %1408, align 4
  %1442 = add i32 %1441, 7
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RCX.i1272, align 8
  %1444 = icmp ugt i32 %1441, -8
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %14, align 1
  %1446 = and i32 %1442, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %21, align 1
  %1451 = xor i32 %1441, %1442
  %1452 = lshr i32 %1451, 4
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  store i8 %1454, i8* %27, align 1
  %1455 = icmp eq i32 %1442, 0
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %30, align 1
  %1457 = lshr i32 %1442, 31
  %1458 = trunc i32 %1457 to i8
  store i8 %1458, i8* %33, align 1
  %1459 = lshr i32 %1441, 31
  %1460 = xor i32 %1457, %1459
  %1461 = add nuw nsw i32 %1460, %1457
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %39, align 1
  %1464 = sext i32 %1442 to i64
  store i64 %1464, i64* %RSI.i1794, align 8
  %1465 = shl nsw i64 %1464, 3
  %1466 = add i64 %1465, %1439
  %1467 = add i64 %1402, 36
  store i64 %1467, i64* %PC.i, align 8
  %1468 = inttoptr i64 %1466 to double*
  %1469 = load double, double* %1468, align 8
  %1470 = fadd double %1437, %1469
  store double %1470, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1471 = load i64, i64* %RBP.i, align 8
  %1472 = add i64 %1471, -136
  %1473 = add i64 %1402, 44
  store i64 %1473, i64* %PC.i, align 8
  %1474 = inttoptr i64 %1472 to double*
  store double %1470, double* %1474, align 8
  %1475 = load i64, i64* %RBP.i, align 8
  %1476 = add i64 %1475, -16
  %1477 = load i64, i64* %PC.i, align 8
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i, align 8
  %1479 = inttoptr i64 %1476 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %RDX.i1791, align 8
  %1481 = add i64 %1475, -28
  %1482 = add i64 %1477, 7
  store i64 %1482, i64* %PC.i, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = add i32 %1484, 4
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RCX.i1272, align 8
  %1487 = icmp ugt i32 %1484, -5
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %14, align 1
  %1489 = and i32 %1485, 255
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %21, align 1
  %1494 = xor i32 %1484, %1485
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %27, align 1
  %1498 = icmp eq i32 %1485, 0
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %30, align 1
  %1500 = lshr i32 %1485, 31
  %1501 = trunc i32 %1500 to i8
  store i8 %1501, i8* %33, align 1
  %1502 = lshr i32 %1484, 31
  %1503 = xor i32 %1500, %1502
  %1504 = add nuw nsw i32 %1503, %1500
  %1505 = icmp eq i32 %1504, 2
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %39, align 1
  %1507 = sext i32 %1485 to i64
  store i64 %1507, i64* %RSI.i1794, align 8
  %1508 = shl nsw i64 %1507, 3
  %1509 = add i64 %1508, %1480
  %1510 = add i64 %1477, 18
  store i64 %1510, i64* %PC.i, align 8
  %1511 = inttoptr i64 %1509 to double*
  %1512 = load double, double* %1511, align 8
  store double %1512, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1513 = add i64 %1477, 22
  store i64 %1513, i64* %PC.i, align 8
  %1514 = load i64, i64* %1479, align 8
  store i64 %1514, i64* %RDX.i1791, align 8
  %1515 = add i64 %1477, 25
  store i64 %1515, i64* %PC.i, align 8
  %1516 = load i32, i32* %1483, align 4
  %1517 = add i32 %1516, 6
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RCX.i1272, align 8
  %1519 = icmp ugt i32 %1516, -7
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %14, align 1
  %1521 = and i32 %1517, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i32 %1516, %1517
  %1527 = lshr i32 %1526, 4
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  store i8 %1529, i8* %27, align 1
  %1530 = icmp eq i32 %1517, 0
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %30, align 1
  %1532 = lshr i32 %1517, 31
  %1533 = trunc i32 %1532 to i8
  store i8 %1533, i8* %33, align 1
  %1534 = lshr i32 %1516, 31
  %1535 = xor i32 %1532, %1534
  %1536 = add nuw nsw i32 %1535, %1532
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %39, align 1
  %1539 = sext i32 %1517 to i64
  store i64 %1539, i64* %RSI.i1794, align 8
  %1540 = shl nsw i64 %1539, 3
  %1541 = add i64 %1540, %1514
  %1542 = add i64 %1477, 36
  store i64 %1542, i64* %PC.i, align 8
  %1543 = inttoptr i64 %1541 to double*
  %1544 = load double, double* %1543, align 8
  %1545 = fsub double %1512, %1544
  store double %1545, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -144
  %1548 = add i64 %1477, 44
  store i64 %1548, i64* %PC.i, align 8
  %1549 = inttoptr i64 %1547 to double*
  store double %1545, double* %1549, align 8
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -16
  %1552 = load i64, i64* %PC.i, align 8
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %PC.i, align 8
  %1554 = inttoptr i64 %1551 to i64*
  %1555 = load i64, i64* %1554, align 8
  store i64 %1555, i64* %RDX.i1791, align 8
  %1556 = add i64 %1550, -28
  %1557 = add i64 %1552, 7
  store i64 %1557, i64* %PC.i, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = add i32 %1559, 5
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RCX.i1272, align 8
  %1562 = icmp ugt i32 %1559, -6
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %14, align 1
  %1564 = and i32 %1560, 255
  %1565 = tail call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  store i8 %1568, i8* %21, align 1
  %1569 = xor i32 %1559, %1560
  %1570 = lshr i32 %1569, 4
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  store i8 %1572, i8* %27, align 1
  %1573 = icmp eq i32 %1560, 0
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %30, align 1
  %1575 = lshr i32 %1560, 31
  %1576 = trunc i32 %1575 to i8
  store i8 %1576, i8* %33, align 1
  %1577 = lshr i32 %1559, 31
  %1578 = xor i32 %1575, %1577
  %1579 = add nuw nsw i32 %1578, %1575
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %39, align 1
  %1582 = sext i32 %1560 to i64
  store i64 %1582, i64* %RSI.i1794, align 8
  %1583 = shl nsw i64 %1582, 3
  %1584 = add i64 %1583, %1555
  %1585 = add i64 %1552, 18
  store i64 %1585, i64* %PC.i, align 8
  %1586 = inttoptr i64 %1584 to double*
  %1587 = load double, double* %1586, align 8
  store double %1587, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1588 = add i64 %1552, 22
  store i64 %1588, i64* %PC.i, align 8
  %1589 = load i64, i64* %1554, align 8
  store i64 %1589, i64* %RDX.i1791, align 8
  %1590 = add i64 %1552, 25
  store i64 %1590, i64* %PC.i, align 8
  %1591 = load i32, i32* %1558, align 4
  %1592 = add i32 %1591, 7
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RCX.i1272, align 8
  %1594 = icmp ugt i32 %1591, -8
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %14, align 1
  %1596 = and i32 %1592, 255
  %1597 = tail call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  store i8 %1600, i8* %21, align 1
  %1601 = xor i32 %1591, %1592
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %27, align 1
  %1605 = icmp eq i32 %1592, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %30, align 1
  %1607 = lshr i32 %1592, 31
  %1608 = trunc i32 %1607 to i8
  store i8 %1608, i8* %33, align 1
  %1609 = lshr i32 %1591, 31
  %1610 = xor i32 %1607, %1609
  %1611 = add nuw nsw i32 %1610, %1607
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %39, align 1
  %1614 = sext i32 %1592 to i64
  store i64 %1614, i64* %RSI.i1794, align 8
  %1615 = shl nsw i64 %1614, 3
  %1616 = add i64 %1615, %1589
  %1617 = add i64 %1552, 36
  store i64 %1617, i64* %PC.i, align 8
  %1618 = inttoptr i64 %1616 to double*
  %1619 = load double, double* %1618, align 8
  %1620 = fsub double %1587, %1619
  store double %1620, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -152
  %1623 = add i64 %1552, 44
  store i64 %1623, i64* %PC.i, align 8
  %1624 = inttoptr i64 %1622 to double*
  store double %1620, double* %1624, align 8
  %1625 = load i64, i64* %RBP.i, align 8
  %1626 = add i64 %1625, -96
  %1627 = load i64, i64* %PC.i, align 8
  %1628 = add i64 %1627, 5
  store i64 %1628, i64* %PC.i, align 8
  %1629 = inttoptr i64 %1626 to double*
  %1630 = load double, double* %1629, align 8
  store double %1630, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1631 = add i64 %1625, -128
  %1632 = add i64 %1627, 10
  store i64 %1632, i64* %PC.i, align 8
  %1633 = inttoptr i64 %1631 to double*
  %1634 = load double, double* %1633, align 8
  %1635 = fadd double %1630, %1634
  store double %1635, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1636 = add i64 %1625, -16
  %1637 = add i64 %1627, 14
  store i64 %1637, i64* %PC.i, align 8
  %1638 = inttoptr i64 %1636 to i64*
  %1639 = load i64, i64* %1638, align 8
  store i64 %1639, i64* %RDX.i1791, align 8
  %1640 = add i64 %1625, -28
  %1641 = add i64 %1627, 18
  store i64 %1641, i64* %PC.i, align 8
  %1642 = inttoptr i64 %1640 to i32*
  %1643 = load i32, i32* %1642, align 4
  %1644 = sext i32 %1643 to i64
  store i64 %1644, i64* %RSI.i1794, align 8
  %1645 = shl nsw i64 %1644, 3
  %1646 = add i64 %1645, %1639
  %1647 = add i64 %1627, 23
  store i64 %1647, i64* %PC.i, align 8
  %1648 = inttoptr i64 %1646 to double*
  store double %1635, double* %1648, align 8
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -104
  %1651 = load i64, i64* %PC.i, align 8
  %1652 = add i64 %1651, 5
  store i64 %1652, i64* %PC.i, align 8
  %1653 = inttoptr i64 %1650 to double*
  %1654 = load double, double* %1653, align 8
  store double %1654, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1655 = add i64 %1649, -136
  %1656 = add i64 %1651, 13
  store i64 %1656, i64* %PC.i, align 8
  %1657 = inttoptr i64 %1655 to double*
  %1658 = load double, double* %1657, align 8
  %1659 = fadd double %1654, %1658
  store double %1659, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1660 = add i64 %1649, -16
  %1661 = add i64 %1651, 17
  store i64 %1661, i64* %PC.i, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RDX.i1791, align 8
  %1664 = add i64 %1649, -28
  %1665 = add i64 %1651, 20
  store i64 %1665, i64* %PC.i, align 8
  %1666 = inttoptr i64 %1664 to i32*
  %1667 = load i32, i32* %1666, align 4
  %1668 = add i32 %1667, 1
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RCX.i1272, align 8
  %1670 = icmp eq i32 %1667, -1
  %1671 = icmp eq i32 %1668, 0
  %1672 = or i1 %1670, %1671
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %14, align 1
  %1674 = and i32 %1668, 255
  %1675 = tail call i32 @llvm.ctpop.i32(i32 %1674)
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = xor i8 %1677, 1
  store i8 %1678, i8* %21, align 1
  %1679 = xor i32 %1667, %1668
  %1680 = lshr i32 %1679, 4
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  store i8 %1682, i8* %27, align 1
  %1683 = icmp eq i32 %1668, 0
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %30, align 1
  %1685 = lshr i32 %1668, 31
  %1686 = trunc i32 %1685 to i8
  store i8 %1686, i8* %33, align 1
  %1687 = lshr i32 %1667, 31
  %1688 = xor i32 %1685, %1687
  %1689 = add nuw nsw i32 %1688, %1685
  %1690 = icmp eq i32 %1689, 2
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %39, align 1
  %1692 = sext i32 %1668 to i64
  store i64 %1692, i64* %RSI.i1794, align 8
  %1693 = shl nsw i64 %1692, 3
  %1694 = add i64 %1693, %1663
  %1695 = add i64 %1651, 31
  store i64 %1695, i64* %PC.i, align 8
  %1696 = inttoptr i64 %1694 to double*
  store double %1659, double* %1696, align 8
  %1697 = load i64, i64* %RBP.i, align 8
  %1698 = add i64 %1697, -128
  %1699 = load i64, i64* %PC.i, align 8
  %1700 = add i64 %1699, 5
  store i64 %1700, i64* %PC.i, align 8
  %1701 = inttoptr i64 %1698 to double*
  %1702 = load double, double* %1701, align 8
  store double %1702, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1703 = add i64 %1697, -96
  %1704 = add i64 %1699, 10
  store i64 %1704, i64* %PC.i, align 8
  %1705 = inttoptr i64 %1703 to double*
  %1706 = load double, double* %1705, align 8
  %1707 = fsub double %1706, %1702
  store double %1707, double* %783, align 1
  store i64 0, i64* %779, align 1
  %1708 = add i64 %1699, 19
  store i64 %1708, i64* %PC.i, align 8
  store double %1707, double* %1705, align 8
  %1709 = load i64, i64* %RBP.i, align 8
  %1710 = add i64 %1709, -136
  %1711 = load i64, i64* %PC.i, align 8
  %1712 = add i64 %1711, 8
  store i64 %1712, i64* %PC.i, align 8
  %1713 = inttoptr i64 %1710 to double*
  %1714 = load double, double* %1713, align 8
  store double %1714, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1715 = add i64 %1709, -104
  %1716 = add i64 %1711, 13
  store i64 %1716, i64* %PC.i, align 8
  %1717 = inttoptr i64 %1715 to double*
  %1718 = load double, double* %1717, align 8
  %1719 = fsub double %1718, %1714
  store double %1719, double* %783, align 1
  store i64 0, i64* %779, align 1
  %1720 = add i64 %1711, 22
  store i64 %1720, i64* %PC.i, align 8
  store double %1719, double* %1717, align 8
  %1721 = load i64, i64* %RBP.i, align 8
  %1722 = add i64 %1721, -64
  %1723 = load i64, i64* %PC.i, align 8
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC.i, align 8
  %1725 = inttoptr i64 %1722 to double*
  %1726 = load double, double* %1725, align 8
  store double %1726, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1727 = add i64 %1721, -96
  %1728 = add i64 %1723, 10
  store i64 %1728, i64* %PC.i, align 8
  %1729 = inttoptr i64 %1727 to double*
  %1730 = load double, double* %1729, align 8
  %1731 = fmul double %1726, %1730
  store double %1731, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1732 = add i64 %1721, -72
  %1733 = add i64 %1723, 15
  store i64 %1733, i64* %PC.i, align 8
  %1734 = inttoptr i64 %1732 to double*
  %1735 = load double, double* %1734, align 8
  store double %1735, double* %783, align 1
  store double 0.000000e+00, double* %790, align 1
  %1736 = add i64 %1721, -104
  %1737 = add i64 %1723, 20
  store i64 %1737, i64* %PC.i, align 8
  %1738 = inttoptr i64 %1736 to double*
  %1739 = load double, double* %1738, align 8
  %1740 = fmul double %1735, %1739
  store double %1740, double* %783, align 1
  store i64 0, i64* %779, align 1
  %1741 = fsub double %1731, %1740
  store double %1741, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1742 = add i64 %1721, -16
  %1743 = add i64 %1723, 28
  store i64 %1743, i64* %PC.i, align 8
  %1744 = inttoptr i64 %1742 to i64*
  %1745 = load i64, i64* %1744, align 8
  store i64 %1745, i64* %RDX.i1791, align 8
  %1746 = add i64 %1721, -28
  %1747 = add i64 %1723, 31
  store i64 %1747, i64* %PC.i, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = add i32 %1749, 4
  %1751 = zext i32 %1750 to i64
  store i64 %1751, i64* %RCX.i1272, align 8
  %1752 = icmp ugt i32 %1749, -5
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %14, align 1
  %1754 = and i32 %1750, 255
  %1755 = tail call i32 @llvm.ctpop.i32(i32 %1754)
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  %1758 = xor i8 %1757, 1
  store i8 %1758, i8* %21, align 1
  %1759 = xor i32 %1749, %1750
  %1760 = lshr i32 %1759, 4
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  store i8 %1762, i8* %27, align 1
  %1763 = icmp eq i32 %1750, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %30, align 1
  %1765 = lshr i32 %1750, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %33, align 1
  %1767 = lshr i32 %1749, 31
  %1768 = xor i32 %1765, %1767
  %1769 = add nuw nsw i32 %1768, %1765
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %39, align 1
  %1772 = sext i32 %1750 to i64
  store i64 %1772, i64* %RSI.i1794, align 8
  %1773 = shl nsw i64 %1772, 3
  %1774 = add i64 %1773, %1745
  %1775 = add i64 %1723, 42
  store i64 %1775, i64* %PC.i, align 8
  %1776 = inttoptr i64 %1774 to double*
  store double %1741, double* %1776, align 8
  %1777 = load i64, i64* %RBP.i, align 8
  %1778 = add i64 %1777, -64
  %1779 = load i64, i64* %PC.i, align 8
  %1780 = add i64 %1779, 5
  store i64 %1780, i64* %PC.i, align 8
  %1781 = inttoptr i64 %1778 to double*
  %1782 = load double, double* %1781, align 8
  store double %1782, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1783 = add i64 %1777, -104
  %1784 = add i64 %1779, 10
  store i64 %1784, i64* %PC.i, align 8
  %1785 = inttoptr i64 %1783 to double*
  %1786 = load double, double* %1785, align 8
  %1787 = fmul double %1782, %1786
  store double %1787, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1788 = add i64 %1777, -72
  %1789 = add i64 %1779, 15
  store i64 %1789, i64* %PC.i, align 8
  %1790 = inttoptr i64 %1788 to double*
  %1791 = load double, double* %1790, align 8
  store double %1791, double* %783, align 1
  store double 0.000000e+00, double* %790, align 1
  %1792 = add i64 %1777, -96
  %1793 = add i64 %1779, 20
  store i64 %1793, i64* %PC.i, align 8
  %1794 = inttoptr i64 %1792 to double*
  %1795 = load double, double* %1794, align 8
  %1796 = fmul double %1791, %1795
  store double %1796, double* %783, align 1
  store i64 0, i64* %779, align 1
  %1797 = fadd double %1787, %1796
  store double %1797, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1798 = add i64 %1777, -16
  %1799 = add i64 %1779, 28
  store i64 %1799, i64* %PC.i, align 8
  %1800 = inttoptr i64 %1798 to i64*
  %1801 = load i64, i64* %1800, align 8
  store i64 %1801, i64* %RDX.i1791, align 8
  %1802 = add i64 %1777, -28
  %1803 = add i64 %1779, 31
  store i64 %1803, i64* %PC.i, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = add i32 %1805, 5
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RCX.i1272, align 8
  %1808 = icmp ugt i32 %1805, -6
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %14, align 1
  %1810 = and i32 %1806, 255
  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810)
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = xor i8 %1813, 1
  store i8 %1814, i8* %21, align 1
  %1815 = xor i32 %1805, %1806
  %1816 = lshr i32 %1815, 4
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  store i8 %1818, i8* %27, align 1
  %1819 = icmp eq i32 %1806, 0
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %30, align 1
  %1821 = lshr i32 %1806, 31
  %1822 = trunc i32 %1821 to i8
  store i8 %1822, i8* %33, align 1
  %1823 = lshr i32 %1805, 31
  %1824 = xor i32 %1821, %1823
  %1825 = add nuw nsw i32 %1824, %1821
  %1826 = icmp eq i32 %1825, 2
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %39, align 1
  %1828 = sext i32 %1806 to i64
  store i64 %1828, i64* %RSI.i1794, align 8
  %1829 = shl nsw i64 %1828, 3
  %1830 = add i64 %1829, %1801
  %1831 = add i64 %1779, 42
  store i64 %1831, i64* %PC.i, align 8
  %1832 = inttoptr i64 %1830 to double*
  store double %1797, double* %1832, align 8
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -112
  %1835 = load i64, i64* %PC.i, align 8
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i, align 8
  %1837 = inttoptr i64 %1834 to double*
  %1838 = load double, double* %1837, align 8
  store double %1838, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1839 = add i64 %1833, -152
  %1840 = add i64 %1835, 13
  store i64 %1840, i64* %PC.i, align 8
  %1841 = inttoptr i64 %1839 to double*
  %1842 = load double, double* %1841, align 8
  %1843 = fsub double %1838, %1842
  store double %1843, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1844 = add i64 %1833, -96
  %1845 = add i64 %1835, 18
  store i64 %1845, i64* %PC.i, align 8
  %1846 = inttoptr i64 %1844 to double*
  store double %1843, double* %1846, align 8
  %1847 = load i64, i64* %RBP.i, align 8
  %1848 = add i64 %1847, -120
  %1849 = load i64, i64* %PC.i, align 8
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC.i, align 8
  %1851 = inttoptr i64 %1848 to double*
  %1852 = load double, double* %1851, align 8
  store double %1852, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1853 = add i64 %1847, -144
  %1854 = add i64 %1849, 13
  store i64 %1854, i64* %PC.i, align 8
  %1855 = inttoptr i64 %1853 to double*
  %1856 = load double, double* %1855, align 8
  %1857 = fadd double %1852, %1856
  store double %1857, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1858 = add i64 %1847, -104
  %1859 = add i64 %1849, 18
  store i64 %1859, i64* %PC.i, align 8
  %1860 = inttoptr i64 %1858 to double*
  store double %1857, double* %1860, align 8
  %1861 = load i64, i64* %RBP.i, align 8
  %1862 = add i64 %1861, -48
  %1863 = load i64, i64* %PC.i, align 8
  %1864 = add i64 %1863, 5
  store i64 %1864, i64* %PC.i, align 8
  %1865 = inttoptr i64 %1862 to double*
  %1866 = load double, double* %1865, align 8
  store double %1866, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1867 = add i64 %1861, -96
  %1868 = add i64 %1863, 10
  store i64 %1868, i64* %PC.i, align 8
  %1869 = inttoptr i64 %1867 to double*
  %1870 = load double, double* %1869, align 8
  %1871 = fmul double %1866, %1870
  store double %1871, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1872 = add i64 %1861, -56
  %1873 = add i64 %1863, 15
  store i64 %1873, i64* %PC.i, align 8
  %1874 = inttoptr i64 %1872 to double*
  %1875 = load double, double* %1874, align 8
  store double %1875, double* %783, align 1
  store double 0.000000e+00, double* %790, align 1
  %1876 = add i64 %1861, -104
  %1877 = add i64 %1863, 20
  store i64 %1877, i64* %PC.i, align 8
  %1878 = inttoptr i64 %1876 to double*
  %1879 = load double, double* %1878, align 8
  %1880 = fmul double %1875, %1879
  store double %1880, double* %783, align 1
  store i64 0, i64* %779, align 1
  %1881 = fsub double %1871, %1880
  store double %1881, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1882 = add i64 %1861, -16
  %1883 = add i64 %1863, 28
  store i64 %1883, i64* %PC.i, align 8
  %1884 = inttoptr i64 %1882 to i64*
  %1885 = load i64, i64* %1884, align 8
  store i64 %1885, i64* %RDX.i1791, align 8
  %1886 = add i64 %1861, -28
  %1887 = add i64 %1863, 31
  store i64 %1887, i64* %PC.i, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = add i32 %1889, 2
  %1891 = zext i32 %1890 to i64
  store i64 %1891, i64* %RCX.i1272, align 8
  %1892 = icmp ugt i32 %1889, -3
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %14, align 1
  %1894 = and i32 %1890, 255
  %1895 = tail call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  store i8 %1898, i8* %21, align 1
  %1899 = xor i32 %1889, %1890
  %1900 = lshr i32 %1899, 4
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  store i8 %1902, i8* %27, align 1
  %1903 = icmp eq i32 %1890, 0
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %30, align 1
  %1905 = lshr i32 %1890, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %33, align 1
  %1907 = lshr i32 %1889, 31
  %1908 = xor i32 %1905, %1907
  %1909 = add nuw nsw i32 %1908, %1905
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %39, align 1
  %1912 = sext i32 %1890 to i64
  store i64 %1912, i64* %RSI.i1794, align 8
  %1913 = shl nsw i64 %1912, 3
  %1914 = add i64 %1913, %1885
  %1915 = add i64 %1863, 42
  store i64 %1915, i64* %PC.i, align 8
  %1916 = inttoptr i64 %1914 to double*
  store double %1881, double* %1916, align 8
  %1917 = load i64, i64* %RBP.i, align 8
  %1918 = add i64 %1917, -48
  %1919 = load i64, i64* %PC.i, align 8
  %1920 = add i64 %1919, 5
  store i64 %1920, i64* %PC.i, align 8
  %1921 = inttoptr i64 %1918 to double*
  %1922 = load double, double* %1921, align 8
  store double %1922, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1923 = add i64 %1917, -104
  %1924 = add i64 %1919, 10
  store i64 %1924, i64* %PC.i, align 8
  %1925 = inttoptr i64 %1923 to double*
  %1926 = load double, double* %1925, align 8
  %1927 = fmul double %1922, %1926
  store double %1927, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1928 = add i64 %1917, -56
  %1929 = add i64 %1919, 15
  store i64 %1929, i64* %PC.i, align 8
  %1930 = inttoptr i64 %1928 to double*
  %1931 = load double, double* %1930, align 8
  store double %1931, double* %783, align 1
  store double 0.000000e+00, double* %790, align 1
  %1932 = add i64 %1917, -96
  %1933 = add i64 %1919, 20
  store i64 %1933, i64* %PC.i, align 8
  %1934 = inttoptr i64 %1932 to double*
  %1935 = load double, double* %1934, align 8
  %1936 = fmul double %1931, %1935
  store double %1936, double* %783, align 1
  store i64 0, i64* %779, align 1
  %1937 = fadd double %1927, %1936
  store double %1937, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1938 = add i64 %1917, -16
  %1939 = add i64 %1919, 28
  store i64 %1939, i64* %PC.i, align 8
  %1940 = inttoptr i64 %1938 to i64*
  %1941 = load i64, i64* %1940, align 8
  store i64 %1941, i64* %RDX.i1791, align 8
  %1942 = add i64 %1917, -28
  %1943 = add i64 %1919, 31
  store i64 %1943, i64* %PC.i, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = add i32 %1945, 3
  %1947 = zext i32 %1946 to i64
  store i64 %1947, i64* %RCX.i1272, align 8
  %1948 = icmp ugt i32 %1945, -4
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %14, align 1
  %1950 = and i32 %1946, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  %1955 = xor i32 %1945, %1946
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
  %1970 = add i64 %1969, %1941
  %1971 = add i64 %1919, 42
  store i64 %1971, i64* %PC.i, align 8
  %1972 = inttoptr i64 %1970 to double*
  store double %1937, double* %1972, align 8
  %1973 = load i64, i64* %RBP.i, align 8
  %1974 = add i64 %1973, -112
  %1975 = load i64, i64* %PC.i, align 8
  %1976 = add i64 %1975, 5
  store i64 %1976, i64* %PC.i, align 8
  %1977 = inttoptr i64 %1974 to double*
  %1978 = load double, double* %1977, align 8
  store double %1978, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1979 = add i64 %1973, -152
  %1980 = add i64 %1975, 13
  store i64 %1980, i64* %PC.i, align 8
  %1981 = inttoptr i64 %1979 to double*
  %1982 = load double, double* %1981, align 8
  %1983 = fadd double %1978, %1982
  store double %1983, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1984 = add i64 %1973, -96
  %1985 = add i64 %1975, 18
  store i64 %1985, i64* %PC.i, align 8
  %1986 = inttoptr i64 %1984 to double*
  store double %1983, double* %1986, align 8
  %1987 = load i64, i64* %RBP.i, align 8
  %1988 = add i64 %1987, -120
  %1989 = load i64, i64* %PC.i, align 8
  %1990 = add i64 %1989, 5
  store i64 %1990, i64* %PC.i, align 8
  %1991 = inttoptr i64 %1988 to double*
  %1992 = load double, double* %1991, align 8
  store double %1992, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %1993 = add i64 %1987, -144
  %1994 = add i64 %1989, 13
  store i64 %1994, i64* %PC.i, align 8
  %1995 = inttoptr i64 %1993 to double*
  %1996 = load double, double* %1995, align 8
  %1997 = fsub double %1992, %1996
  store double %1997, double* %648, align 1
  store i64 0, i64* %649, align 1
  %1998 = add i64 %1987, -104
  %1999 = add i64 %1989, 18
  store i64 %1999, i64* %PC.i, align 8
  %2000 = inttoptr i64 %1998 to double*
  store double %1997, double* %2000, align 8
  %2001 = load i64, i64* %RBP.i, align 8
  %2002 = add i64 %2001, -80
  %2003 = load i64, i64* %PC.i, align 8
  %2004 = add i64 %2003, 5
  store i64 %2004, i64* %PC.i, align 8
  %2005 = inttoptr i64 %2002 to double*
  %2006 = load double, double* %2005, align 8
  store double %2006, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2007 = add i64 %2001, -96
  %2008 = add i64 %2003, 10
  store i64 %2008, i64* %PC.i, align 8
  %2009 = inttoptr i64 %2007 to double*
  %2010 = load double, double* %2009, align 8
  %2011 = fmul double %2006, %2010
  store double %2011, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2012 = add i64 %2001, -88
  %2013 = add i64 %2003, 15
  store i64 %2013, i64* %PC.i, align 8
  %2014 = inttoptr i64 %2012 to double*
  %2015 = load double, double* %2014, align 8
  store double %2015, double* %783, align 1
  store double 0.000000e+00, double* %790, align 1
  %2016 = add i64 %2001, -104
  %2017 = add i64 %2003, 20
  store i64 %2017, i64* %PC.i, align 8
  %2018 = inttoptr i64 %2016 to double*
  %2019 = load double, double* %2018, align 8
  %2020 = fmul double %2015, %2019
  store double %2020, double* %783, align 1
  store i64 0, i64* %779, align 1
  %2021 = fsub double %2011, %2020
  store double %2021, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2022 = add i64 %2001, -16
  %2023 = add i64 %2003, 28
  store i64 %2023, i64* %PC.i, align 8
  %2024 = inttoptr i64 %2022 to i64*
  %2025 = load i64, i64* %2024, align 8
  store i64 %2025, i64* %RDX.i1791, align 8
  %2026 = add i64 %2001, -28
  %2027 = add i64 %2003, 31
  store i64 %2027, i64* %PC.i, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = add i32 %2029, 6
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RCX.i1272, align 8
  %2032 = icmp ugt i32 %2029, -7
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %14, align 1
  %2034 = and i32 %2030, 255
  %2035 = tail call i32 @llvm.ctpop.i32(i32 %2034)
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  %2038 = xor i8 %2037, 1
  store i8 %2038, i8* %21, align 1
  %2039 = xor i32 %2029, %2030
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %27, align 1
  %2043 = icmp eq i32 %2030, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %30, align 1
  %2045 = lshr i32 %2030, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %33, align 1
  %2047 = lshr i32 %2029, 31
  %2048 = xor i32 %2045, %2047
  %2049 = add nuw nsw i32 %2048, %2045
  %2050 = icmp eq i32 %2049, 2
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %39, align 1
  %2052 = sext i32 %2030 to i64
  store i64 %2052, i64* %RSI.i1794, align 8
  %2053 = shl nsw i64 %2052, 3
  %2054 = add i64 %2053, %2025
  %2055 = add i64 %2003, 42
  store i64 %2055, i64* %PC.i, align 8
  %2056 = inttoptr i64 %2054 to double*
  store double %2021, double* %2056, align 8
  %2057 = load i64, i64* %RBP.i, align 8
  %2058 = add i64 %2057, -80
  %2059 = load i64, i64* %PC.i, align 8
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %PC.i, align 8
  %2061 = inttoptr i64 %2058 to double*
  %2062 = load double, double* %2061, align 8
  store double %2062, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2063 = add i64 %2057, -104
  %2064 = add i64 %2059, 10
  store i64 %2064, i64* %PC.i, align 8
  %2065 = inttoptr i64 %2063 to double*
  %2066 = load double, double* %2065, align 8
  %2067 = fmul double %2062, %2066
  store double %2067, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2068 = add i64 %2057, -88
  %2069 = add i64 %2059, 15
  store i64 %2069, i64* %PC.i, align 8
  %2070 = inttoptr i64 %2068 to double*
  %2071 = load double, double* %2070, align 8
  store double %2071, double* %783, align 1
  store double 0.000000e+00, double* %790, align 1
  %2072 = add i64 %2057, -96
  %2073 = add i64 %2059, 20
  store i64 %2073, i64* %PC.i, align 8
  %2074 = inttoptr i64 %2072 to double*
  %2075 = load double, double* %2074, align 8
  %2076 = fmul double %2071, %2075
  store double %2076, double* %783, align 1
  store i64 0, i64* %779, align 1
  %2077 = fadd double %2067, %2076
  store double %2077, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2078 = add i64 %2057, -16
  %2079 = add i64 %2059, 28
  store i64 %2079, i64* %PC.i, align 8
  %2080 = inttoptr i64 %2078 to i64*
  %2081 = load i64, i64* %2080, align 8
  store i64 %2081, i64* %RDX.i1791, align 8
  %2082 = add i64 %2057, -28
  %2083 = add i64 %2059, 31
  store i64 %2083, i64* %PC.i, align 8
  %2084 = inttoptr i64 %2082 to i32*
  %2085 = load i32, i32* %2084, align 4
  %2086 = add i32 %2085, 7
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i1272, align 8
  %2088 = icmp ugt i32 %2085, -8
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %14, align 1
  %2090 = and i32 %2086, 255
  %2091 = tail call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  store i8 %2094, i8* %21, align 1
  %2095 = xor i32 %2085, %2086
  %2096 = lshr i32 %2095, 4
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  store i8 %2098, i8* %27, align 1
  %2099 = icmp eq i32 %2086, 0
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %30, align 1
  %2101 = lshr i32 %2086, 31
  %2102 = trunc i32 %2101 to i8
  store i8 %2102, i8* %33, align 1
  %2103 = lshr i32 %2085, 31
  %2104 = xor i32 %2101, %2103
  %2105 = add nuw nsw i32 %2104, %2101
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %39, align 1
  %2108 = sext i32 %2086 to i64
  store i64 %2108, i64* %RSI.i1794, align 8
  %2109 = shl nsw i64 %2108, 3
  %2110 = add i64 %2109, %2081
  %2111 = add i64 %2059, 42
  store i64 %2111, i64* %PC.i, align 8
  %2112 = inttoptr i64 %2110 to double*
  store double %2077, double* %2112, align 8
  %2113 = load i64, i64* %RBP.i, align 8
  %2114 = add i64 %2113, -24
  %2115 = load i64, i64* %PC.i, align 8
  %2116 = add i64 %2115, 4
  store i64 %2116, i64* %PC.i, align 8
  %2117 = inttoptr i64 %2114 to i64*
  %2118 = load i64, i64* %2117, align 8
  store i64 %2118, i64* %RDX.i1791, align 8
  %2119 = add i64 %2113, -36
  %2120 = add i64 %2115, 7
  store i64 %2120, i64* %PC.i, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = add i32 %2122, 2
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RCX.i1272, align 8
  %2125 = icmp ugt i32 %2122, -3
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %14, align 1
  %2127 = and i32 %2123, 255
  %2128 = tail call i32 @llvm.ctpop.i32(i32 %2127)
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  store i8 %2131, i8* %21, align 1
  %2132 = xor i32 %2122, %2123
  %2133 = lshr i32 %2132, 4
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %27, align 1
  %2136 = icmp eq i32 %2123, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %30, align 1
  %2138 = lshr i32 %2123, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %33, align 1
  %2140 = lshr i32 %2122, 31
  %2141 = xor i32 %2138, %2140
  %2142 = add nuw nsw i32 %2141, %2138
  %2143 = icmp eq i32 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %39, align 1
  %2145 = sext i32 %2123 to i64
  store i64 %2145, i64* %RSI.i1794, align 8
  %2146 = shl nsw i64 %2145, 3
  %2147 = add i64 %2146, %2118
  %2148 = add i64 %2115, 18
  store i64 %2148, i64* %PC.i, align 8
  %2149 = inttoptr i64 %2147 to i64*
  %2150 = load i64, i64* %2149, align 8
  %2151 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2150, i64* %2151, align 1
  store double 0.000000e+00, double* %650, align 1
  %2152 = add i64 %2113, -48
  %2153 = add i64 %2115, 23
  store i64 %2153, i64* %PC.i, align 8
  %2154 = inttoptr i64 %2152 to i64*
  store i64 %2150, i64* %2154, align 8
  %2155 = load i64, i64* %RBP.i, align 8
  %2156 = add i64 %2155, -24
  %2157 = load i64, i64* %PC.i, align 8
  %2158 = add i64 %2157, 4
  store i64 %2158, i64* %PC.i, align 8
  %2159 = inttoptr i64 %2156 to i64*
  %2160 = load i64, i64* %2159, align 8
  store i64 %2160, i64* %RDX.i1791, align 8
  %2161 = add i64 %2155, -36
  %2162 = add i64 %2157, 7
  store i64 %2162, i64* %PC.i, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = add i32 %2164, 3
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RCX.i1272, align 8
  %2167 = icmp ugt i32 %2164, -4
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = and i32 %2165, 255
  %2170 = tail call i32 @llvm.ctpop.i32(i32 %2169)
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  %2173 = xor i8 %2172, 1
  store i8 %2173, i8* %21, align 1
  %2174 = xor i32 %2164, %2165
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  store i8 %2177, i8* %27, align 1
  %2178 = icmp eq i32 %2165, 0
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %30, align 1
  %2180 = lshr i32 %2165, 31
  %2181 = trunc i32 %2180 to i8
  store i8 %2181, i8* %33, align 1
  %2182 = lshr i32 %2164, 31
  %2183 = xor i32 %2180, %2182
  %2184 = add nuw nsw i32 %2183, %2180
  %2185 = icmp eq i32 %2184, 2
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %39, align 1
  %2187 = sext i32 %2165 to i64
  store i64 %2187, i64* %RSI.i1794, align 8
  %2188 = shl nsw i64 %2187, 3
  %2189 = add i64 %2188, %2160
  %2190 = add i64 %2157, 18
  store i64 %2190, i64* %PC.i, align 8
  %2191 = inttoptr i64 %2189 to i64*
  %2192 = load i64, i64* %2191, align 8
  %2193 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %642, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2192, i64* %2193, align 1
  store double 0.000000e+00, double* %650, align 1
  %2194 = add i64 %2155, -56
  %2195 = add i64 %2157, 23
  store i64 %2195, i64* %PC.i, align 8
  %2196 = inttoptr i64 %2194 to i64*
  store i64 %2192, i64* %2196, align 8
  %2197 = load i64, i64* %RBP.i, align 8
  %2198 = add i64 %2197, -48
  %2199 = load i64, i64* %PC.i, align 8
  %2200 = add i64 %2199, 5
  store i64 %2200, i64* %PC.i, align 8
  %2201 = inttoptr i64 %2198 to double*
  %2202 = load double, double* %2201, align 8
  store double %2202, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2203 = load <2 x i32>, <2 x i32>* %773, align 1
  %2204 = load <2 x i32>, <2 x i32>* %775, align 1
  %2205 = extractelement <2 x i32> %2203, i32 0
  store i32 %2205, i32* %776, align 1
  %2206 = extractelement <2 x i32> %2203, i32 1
  store i32 %2206, i32* %778, align 1
  %2207 = extractelement <2 x i32> %2204, i32 0
  store i32 %2207, i32* %780, align 1
  %2208 = extractelement <2 x i32> %2204, i32 1
  store i32 %2208, i32* %782, align 1
  %2209 = add i64 %2197, -64
  %2210 = add i64 %2199, 13
  store i64 %2210, i64* %PC.i, align 8
  %2211 = load double, double* %783, align 1
  %2212 = inttoptr i64 %2209 to double*
  %2213 = load double, double* %2212, align 8
  %2214 = fmul double %2211, %2213
  store double %2214, double* %783, align 1
  %2215 = add i64 %2197, -56
  %2216 = add i64 %2199, 18
  store i64 %2216, i64* %PC.i, align 8
  %2217 = inttoptr i64 %2215 to double*
  %2218 = load double, double* %2217, align 8
  %2219 = fmul double %2214, %2218
  store double %2219, double* %783, align 1
  %2220 = fsub double %2202, %2219
  store double %2220, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2221 = add i64 %2197, -80
  %2222 = add i64 %2199, 27
  store i64 %2222, i64* %PC.i, align 8
  %2223 = inttoptr i64 %2221 to double*
  store double %2220, double* %2223, align 8
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -64
  %2226 = load i64, i64* %PC.i, align 8
  %2227 = add i64 %2226, 5
  store i64 %2227, i64* %PC.i, align 8
  %2228 = load double, double* %67, align 1
  %2229 = inttoptr i64 %2225 to double*
  %2230 = load double, double* %2229, align 8
  %2231 = fmul double %2228, %2230
  store double %2231, double* %67, align 1
  %2232 = add i64 %2224, -48
  %2233 = add i64 %2226, 10
  store i64 %2233, i64* %PC.i, align 8
  %2234 = inttoptr i64 %2232 to double*
  %2235 = load double, double* %2234, align 8
  %2236 = fmul double %2231, %2235
  store double %2236, double* %67, align 1
  %2237 = add i64 %2224, -56
  %2238 = add i64 %2226, 15
  store i64 %2238, i64* %PC.i, align 8
  %2239 = inttoptr i64 %2237 to double*
  %2240 = load double, double* %2239, align 8
  %2241 = fsub double %2236, %2240
  store double %2241, double* %67, align 1
  %2242 = add i64 %2224, -88
  %2243 = add i64 %2226, 20
  store i64 %2243, i64* %PC.i, align 8
  %2244 = inttoptr i64 %2242 to double*
  store double %2241, double* %2244, align 8
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -16
  %2247 = load i64, i64* %PC.i, align 8
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i, align 8
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249, align 8
  store i64 %2250, i64* %RDX.i1791, align 8
  %2251 = add i64 %2245, -28
  %2252 = add i64 %2247, 7
  store i64 %2252, i64* %PC.i, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = add i32 %2254, 8
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RCX.i1272, align 8
  %2257 = icmp ugt i32 %2254, -9
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %14, align 1
  %2259 = and i32 %2255, 255
  %2260 = tail call i32 @llvm.ctpop.i32(i32 %2259)
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  %2263 = xor i8 %2262, 1
  store i8 %2263, i8* %21, align 1
  %2264 = xor i32 %2254, %2255
  %2265 = lshr i32 %2264, 4
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  store i8 %2267, i8* %27, align 1
  %2268 = icmp eq i32 %2255, 0
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %30, align 1
  %2270 = lshr i32 %2255, 31
  %2271 = trunc i32 %2270 to i8
  store i8 %2271, i8* %33, align 1
  %2272 = lshr i32 %2254, 31
  %2273 = xor i32 %2270, %2272
  %2274 = add nuw nsw i32 %2273, %2270
  %2275 = icmp eq i32 %2274, 2
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %39, align 1
  %2277 = sext i32 %2255 to i64
  store i64 %2277, i64* %RSI.i1794, align 8
  %2278 = shl nsw i64 %2277, 3
  %2279 = add i64 %2278, %2250
  %2280 = add i64 %2247, 18
  store i64 %2280, i64* %PC.i, align 8
  %2281 = inttoptr i64 %2279 to double*
  %2282 = load double, double* %2281, align 8
  store double %2282, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2283 = add i64 %2247, 22
  store i64 %2283, i64* %PC.i, align 8
  %2284 = load i64, i64* %2249, align 8
  store i64 %2284, i64* %RDX.i1791, align 8
  %2285 = add i64 %2247, 25
  store i64 %2285, i64* %PC.i, align 8
  %2286 = load i32, i32* %2253, align 4
  %2287 = add i32 %2286, 10
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RCX.i1272, align 8
  %2289 = icmp ugt i32 %2286, -11
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %14, align 1
  %2291 = and i32 %2287, 255
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %21, align 1
  %2296 = xor i32 %2286, %2287
  %2297 = lshr i32 %2296, 4
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  store i8 %2299, i8* %27, align 1
  %2300 = icmp eq i32 %2287, 0
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %30, align 1
  %2302 = lshr i32 %2287, 31
  %2303 = trunc i32 %2302 to i8
  store i8 %2303, i8* %33, align 1
  %2304 = lshr i32 %2286, 31
  %2305 = xor i32 %2302, %2304
  %2306 = add nuw nsw i32 %2305, %2302
  %2307 = icmp eq i32 %2306, 2
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %39, align 1
  %2309 = sext i32 %2287 to i64
  store i64 %2309, i64* %RSI.i1794, align 8
  %2310 = shl nsw i64 %2309, 3
  %2311 = add i64 %2310, %2284
  %2312 = add i64 %2247, 36
  store i64 %2312, i64* %PC.i, align 8
  %2313 = inttoptr i64 %2311 to double*
  %2314 = load double, double* %2313, align 8
  %2315 = fadd double %2282, %2314
  store double %2315, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2316 = load i64, i64* %RBP.i, align 8
  %2317 = add i64 %2316, -96
  %2318 = add i64 %2247, 41
  store i64 %2318, i64* %PC.i, align 8
  %2319 = inttoptr i64 %2317 to double*
  store double %2315, double* %2319, align 8
  %2320 = load i64, i64* %RBP.i, align 8
  %2321 = add i64 %2320, -16
  %2322 = load i64, i64* %PC.i, align 8
  %2323 = add i64 %2322, 4
  store i64 %2323, i64* %PC.i, align 8
  %2324 = inttoptr i64 %2321 to i64*
  %2325 = load i64, i64* %2324, align 8
  store i64 %2325, i64* %RDX.i1791, align 8
  %2326 = add i64 %2320, -28
  %2327 = add i64 %2322, 7
  store i64 %2327, i64* %PC.i, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = add i32 %2329, 9
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RCX.i1272, align 8
  %2332 = icmp ugt i32 %2329, -10
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %14, align 1
  %2334 = and i32 %2330, 255
  %2335 = tail call i32 @llvm.ctpop.i32(i32 %2334)
  %2336 = trunc i32 %2335 to i8
  %2337 = and i8 %2336, 1
  %2338 = xor i8 %2337, 1
  store i8 %2338, i8* %21, align 1
  %2339 = xor i32 %2329, %2330
  %2340 = lshr i32 %2339, 4
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  store i8 %2342, i8* %27, align 1
  %2343 = icmp eq i32 %2330, 0
  %2344 = zext i1 %2343 to i8
  store i8 %2344, i8* %30, align 1
  %2345 = lshr i32 %2330, 31
  %2346 = trunc i32 %2345 to i8
  store i8 %2346, i8* %33, align 1
  %2347 = lshr i32 %2329, 31
  %2348 = xor i32 %2345, %2347
  %2349 = add nuw nsw i32 %2348, %2345
  %2350 = icmp eq i32 %2349, 2
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %39, align 1
  %2352 = sext i32 %2330 to i64
  store i64 %2352, i64* %RSI.i1794, align 8
  %2353 = shl nsw i64 %2352, 3
  %2354 = add i64 %2353, %2325
  %2355 = add i64 %2322, 18
  store i64 %2355, i64* %PC.i, align 8
  %2356 = inttoptr i64 %2354 to double*
  %2357 = load double, double* %2356, align 8
  store double %2357, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2358 = add i64 %2322, 22
  store i64 %2358, i64* %PC.i, align 8
  %2359 = load i64, i64* %2324, align 8
  store i64 %2359, i64* %RDX.i1791, align 8
  %2360 = add i64 %2322, 25
  store i64 %2360, i64* %PC.i, align 8
  %2361 = load i32, i32* %2328, align 4
  %2362 = add i32 %2361, 11
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RCX.i1272, align 8
  %2364 = icmp ugt i32 %2361, -12
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %14, align 1
  %2366 = and i32 %2362, 255
  %2367 = tail call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  store i8 %2370, i8* %21, align 1
  %2371 = xor i32 %2361, %2362
  %2372 = lshr i32 %2371, 4
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  store i8 %2374, i8* %27, align 1
  %2375 = icmp eq i32 %2362, 0
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %30, align 1
  %2377 = lshr i32 %2362, 31
  %2378 = trunc i32 %2377 to i8
  store i8 %2378, i8* %33, align 1
  %2379 = lshr i32 %2361, 31
  %2380 = xor i32 %2377, %2379
  %2381 = add nuw nsw i32 %2380, %2377
  %2382 = icmp eq i32 %2381, 2
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %39, align 1
  %2384 = sext i32 %2362 to i64
  store i64 %2384, i64* %RSI.i1794, align 8
  %2385 = shl nsw i64 %2384, 3
  %2386 = add i64 %2385, %2359
  %2387 = add i64 %2322, 36
  store i64 %2387, i64* %PC.i, align 8
  %2388 = inttoptr i64 %2386 to double*
  %2389 = load double, double* %2388, align 8
  %2390 = fadd double %2357, %2389
  store double %2390, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -104
  %2393 = add i64 %2322, 41
  store i64 %2393, i64* %PC.i, align 8
  %2394 = inttoptr i64 %2392 to double*
  store double %2390, double* %2394, align 8
  %2395 = load i64, i64* %RBP.i, align 8
  %2396 = add i64 %2395, -16
  %2397 = load i64, i64* %PC.i, align 8
  %2398 = add i64 %2397, 4
  store i64 %2398, i64* %PC.i, align 8
  %2399 = inttoptr i64 %2396 to i64*
  %2400 = load i64, i64* %2399, align 8
  store i64 %2400, i64* %RDX.i1791, align 8
  %2401 = add i64 %2395, -28
  %2402 = add i64 %2397, 7
  store i64 %2402, i64* %PC.i, align 8
  %2403 = inttoptr i64 %2401 to i32*
  %2404 = load i32, i32* %2403, align 4
  %2405 = add i32 %2404, 8
  %2406 = zext i32 %2405 to i64
  store i64 %2406, i64* %RCX.i1272, align 8
  %2407 = icmp ugt i32 %2404, -9
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %14, align 1
  %2409 = and i32 %2405, 255
  %2410 = tail call i32 @llvm.ctpop.i32(i32 %2409)
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  %2413 = xor i8 %2412, 1
  store i8 %2413, i8* %21, align 1
  %2414 = xor i32 %2404, %2405
  %2415 = lshr i32 %2414, 4
  %2416 = trunc i32 %2415 to i8
  %2417 = and i8 %2416, 1
  store i8 %2417, i8* %27, align 1
  %2418 = icmp eq i32 %2405, 0
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %30, align 1
  %2420 = lshr i32 %2405, 31
  %2421 = trunc i32 %2420 to i8
  store i8 %2421, i8* %33, align 1
  %2422 = lshr i32 %2404, 31
  %2423 = xor i32 %2420, %2422
  %2424 = add nuw nsw i32 %2423, %2420
  %2425 = icmp eq i32 %2424, 2
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %39, align 1
  %2427 = sext i32 %2405 to i64
  store i64 %2427, i64* %RSI.i1794, align 8
  %2428 = shl nsw i64 %2427, 3
  %2429 = add i64 %2428, %2400
  %2430 = add i64 %2397, 18
  store i64 %2430, i64* %PC.i, align 8
  %2431 = inttoptr i64 %2429 to double*
  %2432 = load double, double* %2431, align 8
  store double %2432, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2433 = add i64 %2397, 22
  store i64 %2433, i64* %PC.i, align 8
  %2434 = load i64, i64* %2399, align 8
  store i64 %2434, i64* %RDX.i1791, align 8
  %2435 = add i64 %2397, 25
  store i64 %2435, i64* %PC.i, align 8
  %2436 = load i32, i32* %2403, align 4
  %2437 = add i32 %2436, 10
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RCX.i1272, align 8
  %2439 = icmp ugt i32 %2436, -11
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %14, align 1
  %2441 = and i32 %2437, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %21, align 1
  %2446 = xor i32 %2436, %2437
  %2447 = lshr i32 %2446, 4
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  store i8 %2449, i8* %27, align 1
  %2450 = icmp eq i32 %2437, 0
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %30, align 1
  %2452 = lshr i32 %2437, 31
  %2453 = trunc i32 %2452 to i8
  store i8 %2453, i8* %33, align 1
  %2454 = lshr i32 %2436, 31
  %2455 = xor i32 %2452, %2454
  %2456 = add nuw nsw i32 %2455, %2452
  %2457 = icmp eq i32 %2456, 2
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %39, align 1
  %2459 = sext i32 %2437 to i64
  store i64 %2459, i64* %RSI.i1794, align 8
  %2460 = shl nsw i64 %2459, 3
  %2461 = add i64 %2460, %2434
  %2462 = add i64 %2397, 36
  store i64 %2462, i64* %PC.i, align 8
  %2463 = inttoptr i64 %2461 to double*
  %2464 = load double, double* %2463, align 8
  %2465 = fsub double %2432, %2464
  store double %2465, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2466 = load i64, i64* %RBP.i, align 8
  %2467 = add i64 %2466, -112
  %2468 = add i64 %2397, 41
  store i64 %2468, i64* %PC.i, align 8
  %2469 = inttoptr i64 %2467 to double*
  store double %2465, double* %2469, align 8
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -16
  %2472 = load i64, i64* %PC.i, align 8
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %PC.i, align 8
  %2474 = inttoptr i64 %2471 to i64*
  %2475 = load i64, i64* %2474, align 8
  store i64 %2475, i64* %RDX.i1791, align 8
  %2476 = add i64 %2470, -28
  %2477 = add i64 %2472, 7
  store i64 %2477, i64* %PC.i, align 8
  %2478 = inttoptr i64 %2476 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = add i32 %2479, 9
  %2481 = zext i32 %2480 to i64
  store i64 %2481, i64* %RCX.i1272, align 8
  %2482 = icmp ugt i32 %2479, -10
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %14, align 1
  %2484 = and i32 %2480, 255
  %2485 = tail call i32 @llvm.ctpop.i32(i32 %2484)
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  %2488 = xor i8 %2487, 1
  store i8 %2488, i8* %21, align 1
  %2489 = xor i32 %2479, %2480
  %2490 = lshr i32 %2489, 4
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  store i8 %2492, i8* %27, align 1
  %2493 = icmp eq i32 %2480, 0
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %30, align 1
  %2495 = lshr i32 %2480, 31
  %2496 = trunc i32 %2495 to i8
  store i8 %2496, i8* %33, align 1
  %2497 = lshr i32 %2479, 31
  %2498 = xor i32 %2495, %2497
  %2499 = add nuw nsw i32 %2498, %2495
  %2500 = icmp eq i32 %2499, 2
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %39, align 1
  %2502 = sext i32 %2480 to i64
  store i64 %2502, i64* %RSI.i1794, align 8
  %2503 = shl nsw i64 %2502, 3
  %2504 = add i64 %2503, %2475
  %2505 = add i64 %2472, 18
  store i64 %2505, i64* %PC.i, align 8
  %2506 = inttoptr i64 %2504 to double*
  %2507 = load double, double* %2506, align 8
  store double %2507, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2508 = add i64 %2472, 22
  store i64 %2508, i64* %PC.i, align 8
  %2509 = load i64, i64* %2474, align 8
  store i64 %2509, i64* %RDX.i1791, align 8
  %2510 = add i64 %2472, 25
  store i64 %2510, i64* %PC.i, align 8
  %2511 = load i32, i32* %2478, align 4
  %2512 = add i32 %2511, 11
  %2513 = zext i32 %2512 to i64
  store i64 %2513, i64* %RCX.i1272, align 8
  %2514 = icmp ugt i32 %2511, -12
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %14, align 1
  %2516 = and i32 %2512, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  %2521 = xor i32 %2511, %2512
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %27, align 1
  %2525 = icmp eq i32 %2512, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %30, align 1
  %2527 = lshr i32 %2512, 31
  %2528 = trunc i32 %2527 to i8
  store i8 %2528, i8* %33, align 1
  %2529 = lshr i32 %2511, 31
  %2530 = xor i32 %2527, %2529
  %2531 = add nuw nsw i32 %2530, %2527
  %2532 = icmp eq i32 %2531, 2
  %2533 = zext i1 %2532 to i8
  store i8 %2533, i8* %39, align 1
  %2534 = sext i32 %2512 to i64
  store i64 %2534, i64* %RSI.i1794, align 8
  %2535 = shl nsw i64 %2534, 3
  %2536 = add i64 %2535, %2509
  %2537 = add i64 %2472, 36
  store i64 %2537, i64* %PC.i, align 8
  %2538 = inttoptr i64 %2536 to double*
  %2539 = load double, double* %2538, align 8
  %2540 = fsub double %2507, %2539
  store double %2540, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2541 = load i64, i64* %RBP.i, align 8
  %2542 = add i64 %2541, -120
  %2543 = add i64 %2472, 41
  store i64 %2543, i64* %PC.i, align 8
  %2544 = inttoptr i64 %2542 to double*
  store double %2540, double* %2544, align 8
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -16
  %2547 = load i64, i64* %PC.i, align 8
  %2548 = add i64 %2547, 4
  store i64 %2548, i64* %PC.i, align 8
  %2549 = inttoptr i64 %2546 to i64*
  %2550 = load i64, i64* %2549, align 8
  store i64 %2550, i64* %RDX.i1791, align 8
  %2551 = add i64 %2545, -28
  %2552 = add i64 %2547, 7
  store i64 %2552, i64* %PC.i, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = add i32 %2554, 12
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RCX.i1272, align 8
  %2557 = icmp ugt i32 %2554, -13
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %14, align 1
  %2559 = and i32 %2555, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %21, align 1
  %2564 = xor i32 %2554, %2555
  %2565 = lshr i32 %2564, 4
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  store i8 %2567, i8* %27, align 1
  %2568 = icmp eq i32 %2555, 0
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %30, align 1
  %2570 = lshr i32 %2555, 31
  %2571 = trunc i32 %2570 to i8
  store i8 %2571, i8* %33, align 1
  %2572 = lshr i32 %2554, 31
  %2573 = xor i32 %2570, %2572
  %2574 = add nuw nsw i32 %2573, %2570
  %2575 = icmp eq i32 %2574, 2
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %39, align 1
  %2577 = sext i32 %2555 to i64
  store i64 %2577, i64* %RSI.i1794, align 8
  %2578 = shl nsw i64 %2577, 3
  %2579 = add i64 %2578, %2550
  %2580 = add i64 %2547, 18
  store i64 %2580, i64* %PC.i, align 8
  %2581 = inttoptr i64 %2579 to double*
  %2582 = load double, double* %2581, align 8
  store double %2582, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2583 = add i64 %2547, 22
  store i64 %2583, i64* %PC.i, align 8
  %2584 = load i64, i64* %2549, align 8
  store i64 %2584, i64* %RDX.i1791, align 8
  %2585 = add i64 %2547, 25
  store i64 %2585, i64* %PC.i, align 8
  %2586 = load i32, i32* %2553, align 4
  %2587 = add i32 %2586, 14
  %2588 = zext i32 %2587 to i64
  store i64 %2588, i64* %RCX.i1272, align 8
  %2589 = icmp ugt i32 %2586, -15
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %14, align 1
  %2591 = and i32 %2587, 255
  %2592 = tail call i32 @llvm.ctpop.i32(i32 %2591)
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  store i8 %2595, i8* %21, align 1
  %2596 = xor i32 %2586, %2587
  %2597 = lshr i32 %2596, 4
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %27, align 1
  %2600 = icmp eq i32 %2587, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %30, align 1
  %2602 = lshr i32 %2587, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %33, align 1
  %2604 = lshr i32 %2586, 31
  %2605 = xor i32 %2602, %2604
  %2606 = add nuw nsw i32 %2605, %2602
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %39, align 1
  %2609 = sext i32 %2587 to i64
  store i64 %2609, i64* %RSI.i1794, align 8
  %2610 = shl nsw i64 %2609, 3
  %2611 = add i64 %2610, %2584
  %2612 = add i64 %2547, 36
  store i64 %2612, i64* %PC.i, align 8
  %2613 = inttoptr i64 %2611 to double*
  %2614 = load double, double* %2613, align 8
  %2615 = fadd double %2582, %2614
  store double %2615, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2616 = load i64, i64* %RBP.i, align 8
  %2617 = add i64 %2616, -128
  %2618 = add i64 %2547, 41
  store i64 %2618, i64* %PC.i, align 8
  %2619 = inttoptr i64 %2617 to double*
  store double %2615, double* %2619, align 8
  %2620 = load i64, i64* %RBP.i, align 8
  %2621 = add i64 %2620, -16
  %2622 = load i64, i64* %PC.i, align 8
  %2623 = add i64 %2622, 4
  store i64 %2623, i64* %PC.i, align 8
  %2624 = inttoptr i64 %2621 to i64*
  %2625 = load i64, i64* %2624, align 8
  store i64 %2625, i64* %RDX.i1791, align 8
  %2626 = add i64 %2620, -28
  %2627 = add i64 %2622, 7
  store i64 %2627, i64* %PC.i, align 8
  %2628 = inttoptr i64 %2626 to i32*
  %2629 = load i32, i32* %2628, align 4
  %2630 = add i32 %2629, 13
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RCX.i1272, align 8
  %2632 = icmp ugt i32 %2629, -14
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %14, align 1
  %2634 = and i32 %2630, 255
  %2635 = tail call i32 @llvm.ctpop.i32(i32 %2634)
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = xor i8 %2637, 1
  store i8 %2638, i8* %21, align 1
  %2639 = xor i32 %2629, %2630
  %2640 = lshr i32 %2639, 4
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  store i8 %2642, i8* %27, align 1
  %2643 = icmp eq i32 %2630, 0
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %30, align 1
  %2645 = lshr i32 %2630, 31
  %2646 = trunc i32 %2645 to i8
  store i8 %2646, i8* %33, align 1
  %2647 = lshr i32 %2629, 31
  %2648 = xor i32 %2645, %2647
  %2649 = add nuw nsw i32 %2648, %2645
  %2650 = icmp eq i32 %2649, 2
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %39, align 1
  %2652 = sext i32 %2630 to i64
  store i64 %2652, i64* %RSI.i1794, align 8
  %2653 = shl nsw i64 %2652, 3
  %2654 = add i64 %2653, %2625
  %2655 = add i64 %2622, 18
  store i64 %2655, i64* %PC.i, align 8
  %2656 = inttoptr i64 %2654 to double*
  %2657 = load double, double* %2656, align 8
  store double %2657, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2658 = add i64 %2622, 22
  store i64 %2658, i64* %PC.i, align 8
  %2659 = load i64, i64* %2624, align 8
  store i64 %2659, i64* %RDX.i1791, align 8
  %2660 = add i64 %2622, 25
  store i64 %2660, i64* %PC.i, align 8
  %2661 = load i32, i32* %2628, align 4
  %2662 = add i32 %2661, 15
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RCX.i1272, align 8
  %2664 = icmp ugt i32 %2661, -16
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %14, align 1
  %2666 = and i32 %2662, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %21, align 1
  %2671 = xor i32 %2661, %2662
  %2672 = lshr i32 %2671, 4
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %27, align 1
  %2675 = icmp eq i32 %2662, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %30, align 1
  %2677 = lshr i32 %2662, 31
  %2678 = trunc i32 %2677 to i8
  store i8 %2678, i8* %33, align 1
  %2679 = lshr i32 %2661, 31
  %2680 = xor i32 %2677, %2679
  %2681 = add nuw nsw i32 %2680, %2677
  %2682 = icmp eq i32 %2681, 2
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %39, align 1
  %2684 = sext i32 %2662 to i64
  store i64 %2684, i64* %RSI.i1794, align 8
  %2685 = shl nsw i64 %2684, 3
  %2686 = add i64 %2685, %2659
  %2687 = add i64 %2622, 36
  store i64 %2687, i64* %PC.i, align 8
  %2688 = inttoptr i64 %2686 to double*
  %2689 = load double, double* %2688, align 8
  %2690 = fadd double %2657, %2689
  store double %2690, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2691 = load i64, i64* %RBP.i, align 8
  %2692 = add i64 %2691, -136
  %2693 = add i64 %2622, 44
  store i64 %2693, i64* %PC.i, align 8
  %2694 = inttoptr i64 %2692 to double*
  store double %2690, double* %2694, align 8
  %2695 = load i64, i64* %RBP.i, align 8
  %2696 = add i64 %2695, -16
  %2697 = load i64, i64* %PC.i, align 8
  %2698 = add i64 %2697, 4
  store i64 %2698, i64* %PC.i, align 8
  %2699 = inttoptr i64 %2696 to i64*
  %2700 = load i64, i64* %2699, align 8
  store i64 %2700, i64* %RDX.i1791, align 8
  %2701 = add i64 %2695, -28
  %2702 = add i64 %2697, 7
  store i64 %2702, i64* %PC.i, align 8
  %2703 = inttoptr i64 %2701 to i32*
  %2704 = load i32, i32* %2703, align 4
  %2705 = add i32 %2704, 12
  %2706 = zext i32 %2705 to i64
  store i64 %2706, i64* %RCX.i1272, align 8
  %2707 = icmp ugt i32 %2704, -13
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %14, align 1
  %2709 = and i32 %2705, 255
  %2710 = tail call i32 @llvm.ctpop.i32(i32 %2709)
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  store i8 %2713, i8* %21, align 1
  %2714 = xor i32 %2704, %2705
  %2715 = lshr i32 %2714, 4
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  store i8 %2717, i8* %27, align 1
  %2718 = icmp eq i32 %2705, 0
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %30, align 1
  %2720 = lshr i32 %2705, 31
  %2721 = trunc i32 %2720 to i8
  store i8 %2721, i8* %33, align 1
  %2722 = lshr i32 %2704, 31
  %2723 = xor i32 %2720, %2722
  %2724 = add nuw nsw i32 %2723, %2720
  %2725 = icmp eq i32 %2724, 2
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %39, align 1
  %2727 = sext i32 %2705 to i64
  store i64 %2727, i64* %RSI.i1794, align 8
  %2728 = shl nsw i64 %2727, 3
  %2729 = add i64 %2728, %2700
  %2730 = add i64 %2697, 18
  store i64 %2730, i64* %PC.i, align 8
  %2731 = inttoptr i64 %2729 to double*
  %2732 = load double, double* %2731, align 8
  store double %2732, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2733 = add i64 %2697, 22
  store i64 %2733, i64* %PC.i, align 8
  %2734 = load i64, i64* %2699, align 8
  store i64 %2734, i64* %RDX.i1791, align 8
  %2735 = add i64 %2697, 25
  store i64 %2735, i64* %PC.i, align 8
  %2736 = load i32, i32* %2703, align 4
  %2737 = add i32 %2736, 14
  %2738 = zext i32 %2737 to i64
  store i64 %2738, i64* %RCX.i1272, align 8
  %2739 = icmp ugt i32 %2736, -15
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %14, align 1
  %2741 = and i32 %2737, 255
  %2742 = tail call i32 @llvm.ctpop.i32(i32 %2741)
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  %2745 = xor i8 %2744, 1
  store i8 %2745, i8* %21, align 1
  %2746 = xor i32 %2736, %2737
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %27, align 1
  %2750 = icmp eq i32 %2737, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %30, align 1
  %2752 = lshr i32 %2737, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %33, align 1
  %2754 = lshr i32 %2736, 31
  %2755 = xor i32 %2752, %2754
  %2756 = add nuw nsw i32 %2755, %2752
  %2757 = icmp eq i32 %2756, 2
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %39, align 1
  %2759 = sext i32 %2737 to i64
  store i64 %2759, i64* %RSI.i1794, align 8
  %2760 = shl nsw i64 %2759, 3
  %2761 = add i64 %2760, %2734
  %2762 = add i64 %2697, 36
  store i64 %2762, i64* %PC.i, align 8
  %2763 = inttoptr i64 %2761 to double*
  %2764 = load double, double* %2763, align 8
  %2765 = fsub double %2732, %2764
  store double %2765, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2766 = load i64, i64* %RBP.i, align 8
  %2767 = add i64 %2766, -144
  %2768 = add i64 %2697, 44
  store i64 %2768, i64* %PC.i, align 8
  %2769 = inttoptr i64 %2767 to double*
  store double %2765, double* %2769, align 8
  %2770 = load i64, i64* %RBP.i, align 8
  %2771 = add i64 %2770, -16
  %2772 = load i64, i64* %PC.i, align 8
  %2773 = add i64 %2772, 4
  store i64 %2773, i64* %PC.i, align 8
  %2774 = inttoptr i64 %2771 to i64*
  %2775 = load i64, i64* %2774, align 8
  store i64 %2775, i64* %RDX.i1791, align 8
  %2776 = add i64 %2770, -28
  %2777 = add i64 %2772, 7
  store i64 %2777, i64* %PC.i, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = add i32 %2779, 13
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RCX.i1272, align 8
  %2782 = icmp ugt i32 %2779, -14
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %14, align 1
  %2784 = and i32 %2780, 255
  %2785 = tail call i32 @llvm.ctpop.i32(i32 %2784)
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  store i8 %2788, i8* %21, align 1
  %2789 = xor i32 %2779, %2780
  %2790 = lshr i32 %2789, 4
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  store i8 %2792, i8* %27, align 1
  %2793 = icmp eq i32 %2780, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %30, align 1
  %2795 = lshr i32 %2780, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %33, align 1
  %2797 = lshr i32 %2779, 31
  %2798 = xor i32 %2795, %2797
  %2799 = add nuw nsw i32 %2798, %2795
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %39, align 1
  %2802 = sext i32 %2780 to i64
  store i64 %2802, i64* %RSI.i1794, align 8
  %2803 = shl nsw i64 %2802, 3
  %2804 = add i64 %2803, %2775
  %2805 = add i64 %2772, 18
  store i64 %2805, i64* %PC.i, align 8
  %2806 = inttoptr i64 %2804 to double*
  %2807 = load double, double* %2806, align 8
  store double %2807, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2808 = add i64 %2772, 22
  store i64 %2808, i64* %PC.i, align 8
  %2809 = load i64, i64* %2774, align 8
  store i64 %2809, i64* %RDX.i1791, align 8
  %2810 = add i64 %2772, 25
  store i64 %2810, i64* %PC.i, align 8
  %2811 = load i32, i32* %2778, align 4
  %2812 = add i32 %2811, 15
  %2813 = zext i32 %2812 to i64
  store i64 %2813, i64* %RCX.i1272, align 8
  %2814 = icmp ugt i32 %2811, -16
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %14, align 1
  %2816 = and i32 %2812, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816)
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %21, align 1
  %2821 = xor i32 %2811, %2812
  %2822 = lshr i32 %2821, 4
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  store i8 %2824, i8* %27, align 1
  %2825 = icmp eq i32 %2812, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %30, align 1
  %2827 = lshr i32 %2812, 31
  %2828 = trunc i32 %2827 to i8
  store i8 %2828, i8* %33, align 1
  %2829 = lshr i32 %2811, 31
  %2830 = xor i32 %2827, %2829
  %2831 = add nuw nsw i32 %2830, %2827
  %2832 = icmp eq i32 %2831, 2
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %39, align 1
  %2834 = sext i32 %2812 to i64
  store i64 %2834, i64* %RSI.i1794, align 8
  %2835 = shl nsw i64 %2834, 3
  %2836 = add i64 %2835, %2809
  %2837 = add i64 %2772, 36
  store i64 %2837, i64* %PC.i, align 8
  %2838 = inttoptr i64 %2836 to double*
  %2839 = load double, double* %2838, align 8
  %2840 = fsub double %2807, %2839
  store double %2840, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2841 = load i64, i64* %RBP.i, align 8
  %2842 = add i64 %2841, -152
  %2843 = add i64 %2772, 44
  store i64 %2843, i64* %PC.i, align 8
  %2844 = inttoptr i64 %2842 to double*
  store double %2840, double* %2844, align 8
  %2845 = load i64, i64* %RBP.i, align 8
  %2846 = add i64 %2845, -96
  %2847 = load i64, i64* %PC.i, align 8
  %2848 = add i64 %2847, 5
  store i64 %2848, i64* %PC.i, align 8
  %2849 = inttoptr i64 %2846 to double*
  %2850 = load double, double* %2849, align 8
  store double %2850, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2851 = add i64 %2845, -128
  %2852 = add i64 %2847, 10
  store i64 %2852, i64* %PC.i, align 8
  %2853 = inttoptr i64 %2851 to double*
  %2854 = load double, double* %2853, align 8
  %2855 = fadd double %2850, %2854
  store double %2855, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2856 = add i64 %2845, -16
  %2857 = add i64 %2847, 14
  store i64 %2857, i64* %PC.i, align 8
  %2858 = inttoptr i64 %2856 to i64*
  %2859 = load i64, i64* %2858, align 8
  store i64 %2859, i64* %RDX.i1791, align 8
  %2860 = add i64 %2845, -28
  %2861 = add i64 %2847, 17
  store i64 %2861, i64* %PC.i, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = add i32 %2863, 8
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RCX.i1272, align 8
  %2866 = icmp ugt i32 %2863, -9
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %14, align 1
  %2868 = and i32 %2864, 255
  %2869 = tail call i32 @llvm.ctpop.i32(i32 %2868)
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  %2872 = xor i8 %2871, 1
  store i8 %2872, i8* %21, align 1
  %2873 = xor i32 %2863, %2864
  %2874 = lshr i32 %2873, 4
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  store i8 %2876, i8* %27, align 1
  %2877 = icmp eq i32 %2864, 0
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %30, align 1
  %2879 = lshr i32 %2864, 31
  %2880 = trunc i32 %2879 to i8
  store i8 %2880, i8* %33, align 1
  %2881 = lshr i32 %2863, 31
  %2882 = xor i32 %2879, %2881
  %2883 = add nuw nsw i32 %2882, %2879
  %2884 = icmp eq i32 %2883, 2
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %39, align 1
  %2886 = sext i32 %2864 to i64
  store i64 %2886, i64* %RSI.i1794, align 8
  %2887 = shl nsw i64 %2886, 3
  %2888 = add i64 %2887, %2859
  %2889 = add i64 %2847, 28
  store i64 %2889, i64* %PC.i, align 8
  %2890 = inttoptr i64 %2888 to double*
  store double %2855, double* %2890, align 8
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -104
  %2893 = load i64, i64* %PC.i, align 8
  %2894 = add i64 %2893, 5
  store i64 %2894, i64* %PC.i, align 8
  %2895 = inttoptr i64 %2892 to double*
  %2896 = load double, double* %2895, align 8
  store double %2896, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2897 = add i64 %2891, -136
  %2898 = add i64 %2893, 13
  store i64 %2898, i64* %PC.i, align 8
  %2899 = inttoptr i64 %2897 to double*
  %2900 = load double, double* %2899, align 8
  %2901 = fadd double %2896, %2900
  store double %2901, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2902 = add i64 %2891, -16
  %2903 = add i64 %2893, 17
  store i64 %2903, i64* %PC.i, align 8
  %2904 = inttoptr i64 %2902 to i64*
  %2905 = load i64, i64* %2904, align 8
  store i64 %2905, i64* %RDX.i1791, align 8
  %2906 = add i64 %2891, -28
  %2907 = add i64 %2893, 20
  store i64 %2907, i64* %PC.i, align 8
  %2908 = inttoptr i64 %2906 to i32*
  %2909 = load i32, i32* %2908, align 4
  %2910 = add i32 %2909, 9
  %2911 = zext i32 %2910 to i64
  store i64 %2911, i64* %RCX.i1272, align 8
  %2912 = icmp ugt i32 %2909, -10
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %14, align 1
  %2914 = and i32 %2910, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %21, align 1
  %2919 = xor i32 %2909, %2910
  %2920 = lshr i32 %2919, 4
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %27, align 1
  %2923 = icmp eq i32 %2910, 0
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %30, align 1
  %2925 = lshr i32 %2910, 31
  %2926 = trunc i32 %2925 to i8
  store i8 %2926, i8* %33, align 1
  %2927 = lshr i32 %2909, 31
  %2928 = xor i32 %2925, %2927
  %2929 = add nuw nsw i32 %2928, %2925
  %2930 = icmp eq i32 %2929, 2
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %39, align 1
  %2932 = sext i32 %2910 to i64
  store i64 %2932, i64* %RSI.i1794, align 8
  %2933 = shl nsw i64 %2932, 3
  %2934 = add i64 %2933, %2905
  %2935 = add i64 %2893, 31
  store i64 %2935, i64* %PC.i, align 8
  %2936 = inttoptr i64 %2934 to double*
  store double %2901, double* %2936, align 8
  %2937 = load i64, i64* %RBP.i, align 8
  %2938 = add i64 %2937, -128
  %2939 = load i64, i64* %PC.i, align 8
  %2940 = add i64 %2939, 5
  store i64 %2940, i64* %PC.i, align 8
  %2941 = inttoptr i64 %2938 to double*
  %2942 = load double, double* %2941, align 8
  store double %2942, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2943 = add i64 %2937, -96
  %2944 = add i64 %2939, 10
  store i64 %2944, i64* %PC.i, align 8
  %2945 = inttoptr i64 %2943 to double*
  %2946 = load double, double* %2945, align 8
  %2947 = fsub double %2946, %2942
  store double %2947, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2948 = add i64 %2939, 19
  store i64 %2948, i64* %PC.i, align 8
  store double %2947, double* %2945, align 8
  %2949 = load i64, i64* %RBP.i, align 8
  %2950 = add i64 %2949, -136
  %2951 = load i64, i64* %PC.i, align 8
  %2952 = add i64 %2951, 8
  store i64 %2952, i64* %PC.i, align 8
  %2953 = inttoptr i64 %2950 to double*
  %2954 = load double, double* %2953, align 8
  store double %2954, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %2955 = add i64 %2949, -104
  %2956 = add i64 %2951, 13
  store i64 %2956, i64* %PC.i, align 8
  %2957 = inttoptr i64 %2955 to double*
  %2958 = load double, double* %2957, align 8
  %2959 = fsub double %2958, %2954
  store double %2959, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2960 = add i64 %2951, 22
  store i64 %2960, i64* %PC.i, align 8
  store double %2959, double* %2957, align 8
  %2961 = load i64, i64* %RBP.i, align 8
  %2962 = add i64 %2961, -72
  %2963 = load i64, i64* %PC.i, align 8
  %2964 = add i64 %2963, 5
  store i64 %2964, i64* %PC.i, align 8
  %2965 = inttoptr i64 %2962 to i64*
  %2966 = load i64, i64* %2965, align 8
  %2967 = load i64, i64* %RAX.i1283, align 8
  %2968 = xor i64 %2967, %2966
  store i64 %2968, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %2969 = trunc i64 %2968 to i32
  %2970 = and i32 %2969, 255
  %2971 = tail call i32 @llvm.ctpop.i32(i32 %2970)
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  store i8 %2974, i8* %21, align 1
  %2975 = icmp eq i64 %2968, 0
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %30, align 1
  %2977 = lshr i64 %2968, 63
  %2978 = trunc i64 %2977 to i8
  store i8 %2978, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %2968, i64* %791, align 1
  store i64 0, i64* %68, align 1
  %2979 = add i64 %2961, -96
  %2980 = add i64 %2963, 23
  store i64 %2980, i64* %PC.i, align 8
  %2981 = bitcast i64 %2968 to double
  %2982 = inttoptr i64 %2979 to double*
  %2983 = load double, double* %2982, align 8
  %2984 = fmul double %2981, %2983
  store double %2984, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2985 = add i64 %2961, -64
  %2986 = add i64 %2963, 28
  store i64 %2986, i64* %PC.i, align 8
  %2987 = inttoptr i64 %2985 to double*
  %2988 = load double, double* %2987, align 8
  store double %2988, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %2989 = add i64 %2961, -104
  %2990 = add i64 %2963, 33
  store i64 %2990, i64* %PC.i, align 8
  %2991 = inttoptr i64 %2989 to double*
  %2992 = load double, double* %2991, align 8
  %2993 = fmul double %2988, %2992
  store double %2993, double* %648, align 1
  store i64 0, i64* %649, align 1
  %2994 = fsub double %2984, %2993
  store double %2994, double* %67, align 1
  store i64 0, i64* %68, align 1
  %2995 = add i64 %2961, -16
  %2996 = add i64 %2963, 41
  store i64 %2996, i64* %PC.i, align 8
  %2997 = inttoptr i64 %2995 to i64*
  %2998 = load i64, i64* %2997, align 8
  store i64 %2998, i64* %RDX.i1791, align 8
  %2999 = add i64 %2961, -28
  %3000 = add i64 %2963, 44
  store i64 %3000, i64* %PC.i, align 8
  %3001 = inttoptr i64 %2999 to i32*
  %3002 = load i32, i32* %3001, align 4
  %3003 = add i32 %3002, 12
  %3004 = zext i32 %3003 to i64
  store i64 %3004, i64* %RCX.i1272, align 8
  %3005 = icmp ugt i32 %3002, -13
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %14, align 1
  %3007 = and i32 %3003, 255
  %3008 = tail call i32 @llvm.ctpop.i32(i32 %3007)
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = xor i8 %3010, 1
  store i8 %3011, i8* %21, align 1
  %3012 = xor i32 %3002, %3003
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  store i8 %3015, i8* %27, align 1
  %3016 = icmp eq i32 %3003, 0
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %30, align 1
  %3018 = lshr i32 %3003, 31
  %3019 = trunc i32 %3018 to i8
  store i8 %3019, i8* %33, align 1
  %3020 = lshr i32 %3002, 31
  %3021 = xor i32 %3018, %3020
  %3022 = add nuw nsw i32 %3021, %3018
  %3023 = icmp eq i32 %3022, 2
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %39, align 1
  %3025 = sext i32 %3003 to i64
  store i64 %3025, i64* %RSI.i1794, align 8
  %3026 = shl nsw i64 %3025, 3
  %3027 = add i64 %3026, %2998
  %3028 = add i64 %2963, 55
  store i64 %3028, i64* %PC.i, align 8
  %3029 = inttoptr i64 %3027 to double*
  store double %2994, double* %3029, align 8
  %3030 = load i64, i64* %RBP.i, align 8
  %3031 = add i64 %3030, -72
  %3032 = load i64, i64* %PC.i, align 8
  %3033 = add i64 %3032, 5
  store i64 %3033, i64* %PC.i, align 8
  %3034 = inttoptr i64 %3031 to i64*
  %3035 = load i64, i64* %3034, align 8
  %3036 = load i64, i64* %RAX.i1283, align 8
  %3037 = xor i64 %3036, %3035
  store i64 %3037, i64* %RDX.i1791, align 8
  store i8 0, i8* %14, align 1
  %3038 = trunc i64 %3037 to i32
  %3039 = and i32 %3038, 255
  %3040 = tail call i32 @llvm.ctpop.i32(i32 %3039)
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  store i8 %3043, i8* %21, align 1
  %3044 = icmp eq i64 %3037, 0
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %30, align 1
  %3046 = lshr i64 %3037, 63
  %3047 = trunc i64 %3046 to i8
  store i8 %3047, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %3037, i64* %791, align 1
  store i64 0, i64* %68, align 1
  %3048 = add i64 %3030, -104
  %3049 = add i64 %3032, 23
  store i64 %3049, i64* %PC.i, align 8
  %3050 = bitcast i64 %3037 to double
  %3051 = inttoptr i64 %3048 to double*
  %3052 = load double, double* %3051, align 8
  %3053 = fmul double %3050, %3052
  store double %3053, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3054 = add i64 %3030, -64
  %3055 = add i64 %3032, 28
  store i64 %3055, i64* %PC.i, align 8
  %3056 = inttoptr i64 %3054 to double*
  %3057 = load double, double* %3056, align 8
  store double %3057, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3058 = add i64 %3030, -96
  %3059 = add i64 %3032, 33
  store i64 %3059, i64* %PC.i, align 8
  %3060 = inttoptr i64 %3058 to double*
  %3061 = load double, double* %3060, align 8
  %3062 = fmul double %3057, %3061
  store double %3062, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3063 = fadd double %3053, %3062
  store double %3063, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3064 = add i64 %3030, -16
  %3065 = add i64 %3032, 41
  store i64 %3065, i64* %PC.i, align 8
  %3066 = inttoptr i64 %3064 to i64*
  %3067 = load i64, i64* %3066, align 8
  store i64 %3067, i64* %RAX.i1283, align 8
  %3068 = add i64 %3030, -28
  %3069 = add i64 %3032, 44
  store i64 %3069, i64* %PC.i, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = add i32 %3071, 13
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RCX.i1272, align 8
  %3074 = icmp ugt i32 %3071, -14
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %14, align 1
  %3076 = and i32 %3072, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %21, align 1
  %3081 = xor i32 %3071, %3072
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %27, align 1
  %3085 = icmp eq i32 %3072, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %30, align 1
  %3087 = lshr i32 %3072, 31
  %3088 = trunc i32 %3087 to i8
  store i8 %3088, i8* %33, align 1
  %3089 = lshr i32 %3071, 31
  %3090 = xor i32 %3087, %3089
  %3091 = add nuw nsw i32 %3090, %3087
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %39, align 1
  %3094 = sext i32 %3072 to i64
  store i64 %3094, i64* %RDX.i1791, align 8
  %3095 = shl nsw i64 %3094, 3
  %3096 = add i64 %3095, %3067
  %3097 = add i64 %3032, 55
  store i64 %3097, i64* %PC.i, align 8
  %3098 = inttoptr i64 %3096 to double*
  store double %3063, double* %3098, align 8
  %3099 = load i64, i64* %RBP.i, align 8
  %3100 = add i64 %3099, -112
  %3101 = load i64, i64* %PC.i, align 8
  %3102 = add i64 %3101, 5
  store i64 %3102, i64* %PC.i, align 8
  %3103 = inttoptr i64 %3100 to double*
  %3104 = load double, double* %3103, align 8
  store double %3104, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3105 = add i64 %3099, -152
  %3106 = add i64 %3101, 13
  store i64 %3106, i64* %PC.i, align 8
  %3107 = inttoptr i64 %3105 to double*
  %3108 = load double, double* %3107, align 8
  %3109 = fsub double %3104, %3108
  store double %3109, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3110 = add i64 %3099, -96
  %3111 = add i64 %3101, 18
  store i64 %3111, i64* %PC.i, align 8
  %3112 = inttoptr i64 %3110 to double*
  store double %3109, double* %3112, align 8
  %3113 = load i64, i64* %RBP.i, align 8
  %3114 = add i64 %3113, -120
  %3115 = load i64, i64* %PC.i, align 8
  %3116 = add i64 %3115, 5
  store i64 %3116, i64* %PC.i, align 8
  %3117 = inttoptr i64 %3114 to double*
  %3118 = load double, double* %3117, align 8
  store double %3118, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3119 = add i64 %3113, -144
  %3120 = add i64 %3115, 13
  store i64 %3120, i64* %PC.i, align 8
  %3121 = inttoptr i64 %3119 to double*
  %3122 = load double, double* %3121, align 8
  %3123 = fadd double %3118, %3122
  store double %3123, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3124 = add i64 %3113, -104
  %3125 = add i64 %3115, 18
  store i64 %3125, i64* %PC.i, align 8
  %3126 = inttoptr i64 %3124 to double*
  store double %3123, double* %3126, align 8
  %3127 = load i64, i64* %RBP.i, align 8
  %3128 = add i64 %3127, -48
  %3129 = load i64, i64* %PC.i, align 8
  %3130 = add i64 %3129, 5
  store i64 %3130, i64* %PC.i, align 8
  %3131 = inttoptr i64 %3128 to double*
  %3132 = load double, double* %3131, align 8
  store double %3132, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3133 = add i64 %3127, -96
  %3134 = add i64 %3129, 10
  store i64 %3134, i64* %PC.i, align 8
  %3135 = inttoptr i64 %3133 to double*
  %3136 = load double, double* %3135, align 8
  %3137 = fmul double %3132, %3136
  store double %3137, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3138 = add i64 %3127, -56
  %3139 = add i64 %3129, 15
  store i64 %3139, i64* %PC.i, align 8
  %3140 = inttoptr i64 %3138 to double*
  %3141 = load double, double* %3140, align 8
  store double %3141, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3142 = add i64 %3127, -104
  %3143 = add i64 %3129, 20
  store i64 %3143, i64* %PC.i, align 8
  %3144 = inttoptr i64 %3142 to double*
  %3145 = load double, double* %3144, align 8
  %3146 = fmul double %3141, %3145
  store double %3146, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3147 = fsub double %3137, %3146
  store double %3147, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3148 = add i64 %3127, -16
  %3149 = add i64 %3129, 28
  store i64 %3149, i64* %PC.i, align 8
  %3150 = inttoptr i64 %3148 to i64*
  %3151 = load i64, i64* %3150, align 8
  store i64 %3151, i64* %RAX.i1283, align 8
  %3152 = add i64 %3127, -28
  %3153 = add i64 %3129, 31
  store i64 %3153, i64* %PC.i, align 8
  %3154 = inttoptr i64 %3152 to i32*
  %3155 = load i32, i32* %3154, align 4
  %3156 = add i32 %3155, 10
  %3157 = zext i32 %3156 to i64
  store i64 %3157, i64* %RCX.i1272, align 8
  %3158 = icmp ugt i32 %3155, -11
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %14, align 1
  %3160 = and i32 %3156, 255
  %3161 = tail call i32 @llvm.ctpop.i32(i32 %3160)
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = xor i8 %3163, 1
  store i8 %3164, i8* %21, align 1
  %3165 = xor i32 %3155, %3156
  %3166 = lshr i32 %3165, 4
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  store i8 %3168, i8* %27, align 1
  %3169 = icmp eq i32 %3156, 0
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %30, align 1
  %3171 = lshr i32 %3156, 31
  %3172 = trunc i32 %3171 to i8
  store i8 %3172, i8* %33, align 1
  %3173 = lshr i32 %3155, 31
  %3174 = xor i32 %3171, %3173
  %3175 = add nuw nsw i32 %3174, %3171
  %3176 = icmp eq i32 %3175, 2
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %39, align 1
  %3178 = sext i32 %3156 to i64
  store i64 %3178, i64* %RDX.i1791, align 8
  %3179 = shl nsw i64 %3178, 3
  %3180 = add i64 %3179, %3151
  %3181 = add i64 %3129, 42
  store i64 %3181, i64* %PC.i, align 8
  %3182 = inttoptr i64 %3180 to double*
  store double %3147, double* %3182, align 8
  %3183 = load i64, i64* %RBP.i, align 8
  %3184 = add i64 %3183, -48
  %3185 = load i64, i64* %PC.i, align 8
  %3186 = add i64 %3185, 5
  store i64 %3186, i64* %PC.i, align 8
  %3187 = inttoptr i64 %3184 to double*
  %3188 = load double, double* %3187, align 8
  store double %3188, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3189 = add i64 %3183, -104
  %3190 = add i64 %3185, 10
  store i64 %3190, i64* %PC.i, align 8
  %3191 = inttoptr i64 %3189 to double*
  %3192 = load double, double* %3191, align 8
  %3193 = fmul double %3188, %3192
  store double %3193, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3194 = add i64 %3183, -56
  %3195 = add i64 %3185, 15
  store i64 %3195, i64* %PC.i, align 8
  %3196 = inttoptr i64 %3194 to double*
  %3197 = load double, double* %3196, align 8
  store double %3197, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3198 = add i64 %3183, -96
  %3199 = add i64 %3185, 20
  store i64 %3199, i64* %PC.i, align 8
  %3200 = inttoptr i64 %3198 to double*
  %3201 = load double, double* %3200, align 8
  %3202 = fmul double %3197, %3201
  store double %3202, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3203 = fadd double %3193, %3202
  store double %3203, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3204 = add i64 %3183, -16
  %3205 = add i64 %3185, 28
  store i64 %3205, i64* %PC.i, align 8
  %3206 = inttoptr i64 %3204 to i64*
  %3207 = load i64, i64* %3206, align 8
  store i64 %3207, i64* %RAX.i1283, align 8
  %3208 = add i64 %3183, -28
  %3209 = add i64 %3185, 31
  store i64 %3209, i64* %PC.i, align 8
  %3210 = inttoptr i64 %3208 to i32*
  %3211 = load i32, i32* %3210, align 4
  %3212 = add i32 %3211, 11
  %3213 = zext i32 %3212 to i64
  store i64 %3213, i64* %RCX.i1272, align 8
  %3214 = icmp ugt i32 %3211, -12
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %14, align 1
  %3216 = and i32 %3212, 255
  %3217 = tail call i32 @llvm.ctpop.i32(i32 %3216)
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = xor i8 %3219, 1
  store i8 %3220, i8* %21, align 1
  %3221 = xor i32 %3211, %3212
  %3222 = lshr i32 %3221, 4
  %3223 = trunc i32 %3222 to i8
  %3224 = and i8 %3223, 1
  store i8 %3224, i8* %27, align 1
  %3225 = icmp eq i32 %3212, 0
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %30, align 1
  %3227 = lshr i32 %3212, 31
  %3228 = trunc i32 %3227 to i8
  store i8 %3228, i8* %33, align 1
  %3229 = lshr i32 %3211, 31
  %3230 = xor i32 %3227, %3229
  %3231 = add nuw nsw i32 %3230, %3227
  %3232 = icmp eq i32 %3231, 2
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %39, align 1
  %3234 = sext i32 %3212 to i64
  store i64 %3234, i64* %RDX.i1791, align 8
  %3235 = shl nsw i64 %3234, 3
  %3236 = add i64 %3235, %3207
  %3237 = add i64 %3185, 42
  store i64 %3237, i64* %PC.i, align 8
  %3238 = inttoptr i64 %3236 to double*
  store double %3203, double* %3238, align 8
  %3239 = load i64, i64* %RBP.i, align 8
  %3240 = add i64 %3239, -112
  %3241 = load i64, i64* %PC.i, align 8
  %3242 = add i64 %3241, 5
  store i64 %3242, i64* %PC.i, align 8
  %3243 = inttoptr i64 %3240 to double*
  %3244 = load double, double* %3243, align 8
  store double %3244, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3245 = add i64 %3239, -152
  %3246 = add i64 %3241, 13
  store i64 %3246, i64* %PC.i, align 8
  %3247 = inttoptr i64 %3245 to double*
  %3248 = load double, double* %3247, align 8
  %3249 = fadd double %3244, %3248
  store double %3249, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3250 = add i64 %3239, -96
  %3251 = add i64 %3241, 18
  store i64 %3251, i64* %PC.i, align 8
  %3252 = inttoptr i64 %3250 to double*
  store double %3249, double* %3252, align 8
  %3253 = load i64, i64* %RBP.i, align 8
  %3254 = add i64 %3253, -120
  %3255 = load i64, i64* %PC.i, align 8
  %3256 = add i64 %3255, 5
  store i64 %3256, i64* %PC.i, align 8
  %3257 = inttoptr i64 %3254 to double*
  %3258 = load double, double* %3257, align 8
  store double %3258, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3259 = add i64 %3253, -144
  %3260 = add i64 %3255, 13
  store i64 %3260, i64* %PC.i, align 8
  %3261 = inttoptr i64 %3259 to double*
  %3262 = load double, double* %3261, align 8
  %3263 = fsub double %3258, %3262
  store double %3263, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3264 = add i64 %3253, -104
  %3265 = add i64 %3255, 18
  store i64 %3265, i64* %PC.i, align 8
  %3266 = inttoptr i64 %3264 to double*
  store double %3263, double* %3266, align 8
  %3267 = load i64, i64* %RBP.i, align 8
  %3268 = add i64 %3267, -80
  %3269 = load i64, i64* %PC.i, align 8
  %3270 = add i64 %3269, 5
  store i64 %3270, i64* %PC.i, align 8
  %3271 = inttoptr i64 %3268 to double*
  %3272 = load double, double* %3271, align 8
  store double %3272, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3273 = add i64 %3267, -96
  %3274 = add i64 %3269, 10
  store i64 %3274, i64* %PC.i, align 8
  %3275 = inttoptr i64 %3273 to double*
  %3276 = load double, double* %3275, align 8
  %3277 = fmul double %3272, %3276
  store double %3277, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3278 = add i64 %3267, -88
  %3279 = add i64 %3269, 15
  store i64 %3279, i64* %PC.i, align 8
  %3280 = inttoptr i64 %3278 to double*
  %3281 = load double, double* %3280, align 8
  store double %3281, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3282 = add i64 %3267, -104
  %3283 = add i64 %3269, 20
  store i64 %3283, i64* %PC.i, align 8
  %3284 = inttoptr i64 %3282 to double*
  %3285 = load double, double* %3284, align 8
  %3286 = fmul double %3281, %3285
  store double %3286, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3287 = fsub double %3277, %3286
  store double %3287, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3288 = add i64 %3267, -16
  %3289 = add i64 %3269, 28
  store i64 %3289, i64* %PC.i, align 8
  %3290 = inttoptr i64 %3288 to i64*
  %3291 = load i64, i64* %3290, align 8
  store i64 %3291, i64* %RAX.i1283, align 8
  %3292 = add i64 %3267, -28
  %3293 = add i64 %3269, 31
  store i64 %3293, i64* %PC.i, align 8
  %3294 = inttoptr i64 %3292 to i32*
  %3295 = load i32, i32* %3294, align 4
  %3296 = add i32 %3295, 14
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RCX.i1272, align 8
  %3298 = icmp ugt i32 %3295, -15
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %14, align 1
  %3300 = and i32 %3296, 255
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %21, align 1
  %3305 = xor i32 %3295, %3296
  %3306 = lshr i32 %3305, 4
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  store i8 %3308, i8* %27, align 1
  %3309 = icmp eq i32 %3296, 0
  %3310 = zext i1 %3309 to i8
  store i8 %3310, i8* %30, align 1
  %3311 = lshr i32 %3296, 31
  %3312 = trunc i32 %3311 to i8
  store i8 %3312, i8* %33, align 1
  %3313 = lshr i32 %3295, 31
  %3314 = xor i32 %3311, %3313
  %3315 = add nuw nsw i32 %3314, %3311
  %3316 = icmp eq i32 %3315, 2
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %39, align 1
  %3318 = sext i32 %3296 to i64
  store i64 %3318, i64* %RDX.i1791, align 8
  %3319 = shl nsw i64 %3318, 3
  %3320 = add i64 %3319, %3291
  %3321 = add i64 %3269, 42
  store i64 %3321, i64* %PC.i, align 8
  %3322 = inttoptr i64 %3320 to double*
  store double %3287, double* %3322, align 8
  %3323 = load i64, i64* %RBP.i, align 8
  %3324 = add i64 %3323, -80
  %3325 = load i64, i64* %PC.i, align 8
  %3326 = add i64 %3325, 5
  store i64 %3326, i64* %PC.i, align 8
  %3327 = inttoptr i64 %3324 to double*
  %3328 = load double, double* %3327, align 8
  store double %3328, double* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %3329 = add i64 %3323, -104
  %3330 = add i64 %3325, 10
  store i64 %3330, i64* %PC.i, align 8
  %3331 = inttoptr i64 %3329 to double*
  %3332 = load double, double* %3331, align 8
  %3333 = fmul double %3328, %3332
  store double %3333, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3334 = add i64 %3323, -88
  %3335 = add i64 %3325, 15
  store i64 %3335, i64* %PC.i, align 8
  %3336 = inttoptr i64 %3334 to double*
  %3337 = load double, double* %3336, align 8
  store double %3337, double* %648, align 1
  store double 0.000000e+00, double* %650, align 1
  %3338 = add i64 %3323, -96
  %3339 = add i64 %3325, 20
  store i64 %3339, i64* %PC.i, align 8
  %3340 = inttoptr i64 %3338 to double*
  %3341 = load double, double* %3340, align 8
  %3342 = fmul double %3337, %3341
  store double %3342, double* %648, align 1
  store i64 0, i64* %649, align 1
  %3343 = fadd double %3333, %3342
  store double %3343, double* %67, align 1
  store i64 0, i64* %68, align 1
  %3344 = add i64 %3323, -16
  %3345 = add i64 %3325, 28
  store i64 %3345, i64* %PC.i, align 8
  %3346 = inttoptr i64 %3344 to i64*
  %3347 = load i64, i64* %3346, align 8
  store i64 %3347, i64* %RAX.i1283, align 8
  %3348 = add i64 %3323, -28
  %3349 = add i64 %3325, 31
  store i64 %3349, i64* %PC.i, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = add i32 %3351, 15
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RCX.i1272, align 8
  %3354 = icmp ugt i32 %3351, -16
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %14, align 1
  %3356 = and i32 %3352, 255
  %3357 = tail call i32 @llvm.ctpop.i32(i32 %3356)
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  store i8 %3360, i8* %21, align 1
  %3361 = xor i32 %3351, %3352
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  store i8 %3364, i8* %27, align 1
  %3365 = icmp eq i32 %3352, 0
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %30, align 1
  %3367 = lshr i32 %3352, 31
  %3368 = trunc i32 %3367 to i8
  store i8 %3368, i8* %33, align 1
  %3369 = lshr i32 %3351, 31
  %3370 = xor i32 %3367, %3369
  %3371 = add nuw nsw i32 %3370, %3367
  %3372 = icmp eq i32 %3371, 2
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %39, align 1
  %3374 = sext i32 %3352 to i64
  store i64 %3374, i64* %RDX.i1791, align 8
  %3375 = shl nsw i64 %3374, 3
  %3376 = add i64 %3375, %3347
  %3377 = add i64 %3325, 42
  store i64 %3377, i64* %PC.i, align 8
  %3378 = inttoptr i64 %3376 to double*
  store double %3343, double* %3378, align 8
  %3379 = load i64, i64* %RBP.i, align 8
  %3380 = add i64 %3379, -28
  %3381 = load i64, i64* %PC.i, align 8
  %3382 = add i64 %3381, 3
  store i64 %3382, i64* %PC.i, align 8
  %3383 = inttoptr i64 %3380 to i32*
  %3384 = load i32, i32* %3383, align 4
  %3385 = add i32 %3384, 16
  %3386 = zext i32 %3385 to i64
  store i64 %3386, i64* %RAX.i1283, align 8
  %3387 = icmp ugt i32 %3384, -17
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %14, align 1
  %3389 = and i32 %3385, 255
  %3390 = tail call i32 @llvm.ctpop.i32(i32 %3389)
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = xor i8 %3392, 1
  store i8 %3393, i8* %21, align 1
  %3394 = xor i32 %3384, 16
  %3395 = xor i32 %3394, %3385
  %3396 = lshr i32 %3395, 4
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  store i8 %3398, i8* %27, align 1
  %3399 = icmp eq i32 %3385, 0
  %3400 = zext i1 %3399 to i8
  store i8 %3400, i8* %30, align 1
  %3401 = lshr i32 %3385, 31
  %3402 = trunc i32 %3401 to i8
  store i8 %3402, i8* %33, align 1
  %3403 = lshr i32 %3384, 31
  %3404 = xor i32 %3401, %3403
  %3405 = add nuw nsw i32 %3404, %3401
  %3406 = icmp eq i32 %3405, 2
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %39, align 1
  %3408 = add i64 %3381, 9
  store i64 %3408, i64* %PC.i, align 8
  store i32 %3385, i32* %3383, align 4
  %3409 = load i64, i64* %PC.i, align 8
  %3410 = add i64 %3409, -1815
  store i64 %3410, i64* %3, align 8
  br label %block_.L_402bd2

block_.L_4032ee:                                  ; preds = %block_.L_402bd2
  %3411 = load i64, i64* %RSP.i1801, align 8
  %3412 = add i64 %3411, 24
  store i64 %3412, i64* %RSP.i1801, align 8
  %3413 = icmp ugt i64 %3411, -25
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %14, align 1
  %3415 = trunc i64 %3412 to i32
  %3416 = and i32 %3415, 255
  %3417 = tail call i32 @llvm.ctpop.i32(i32 %3416)
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = xor i8 %3419, 1
  store i8 %3420, i8* %21, align 1
  %3421 = xor i64 %3411, 16
  %3422 = xor i64 %3421, %3412
  %3423 = lshr i64 %3422, 4
  %3424 = trunc i64 %3423 to i8
  %3425 = and i8 %3424, 1
  store i8 %3425, i8* %27, align 1
  %3426 = icmp eq i64 %3412, 0
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %30, align 1
  %3428 = lshr i64 %3412, 63
  %3429 = trunc i64 %3428 to i8
  store i8 %3429, i8* %33, align 1
  %3430 = lshr i64 %3411, 63
  %3431 = xor i64 %3428, %3430
  %3432 = add nuw nsw i64 %3431, %3428
  %3433 = icmp eq i64 %3432, 2
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %39, align 1
  %3435 = add i64 %829, 5
  store i64 %3435, i64* %PC.i, align 8
  %3436 = add i64 %3411, 32
  %3437 = inttoptr i64 %3412 to i64*
  %3438 = load i64, i64* %3437, align 8
  store i64 %3438, i64* %RBP.i, align 8
  store i64 %3436, i64* %6, align 8
  %3439 = add i64 %829, 6
  store i64 %3439, i64* %PC.i, align 8
  %3440 = inttoptr i64 %3436 to i64*
  %3441 = load i64, i64* %3440, align 8
  store i64 %3441, i64* %3, align 8
  %3442 = add i64 %3411, 40
  store i64 %3442, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = load i64, i64* bitcast (%G_0x14d0__rip__type* @G_0x14d0__rip_ to i64*), align 8
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, 16
  %20 = xor i32 %19, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %7, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %7, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
