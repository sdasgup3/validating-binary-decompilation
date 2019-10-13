; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "no-source"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @update(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP.i
  %11 = load i64, i64* %PC.i
  %12 = add i64 %11, 1
  store i64 %12, i64* %PC.i
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %10, i64* %16
  store i64 %15, i64* %13, align 8
  store %struct.Memory* %loadMem_400510, %struct.Memory** %MEMORY
  %loadMem_400511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i221
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i221
  store i64 %26, i64* %RBP.i222, align 8
  store %struct.Memory* %loadMem_400511, %struct.Memory** %MEMORY
  %loadMem_400514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBX.i220 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBX.i220
  %36 = load i64, i64* %PC.i219
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC.i219
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_400514, %struct.Memory** %MEMORY
  %loadMem_400515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %RBP.i218
  %52 = add i64 %51, 48
  %53 = load i64, i64* %PC.i216
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC.i216
  %55 = inttoptr i64 %52 to i64*
  %56 = load i64, i64* %55
  store i64 %56, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_400515, %struct.Memory** %MEMORY
  %loadMem_400519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %58 = getelementptr inbounds %struct.GPR, %struct.GPR* %57, i32 0, i32 33
  %59 = getelementptr inbounds %struct.Reg, %struct.Reg* %58, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %59 to i64*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %R10.i215 = bitcast %union.anon* %65 to i64*
  %66 = load i64, i64* %RBP.i214
  %67 = add i64 %66, 40
  %68 = load i64, i64* %PC.i213
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC.i213
  %70 = inttoptr i64 %67 to i64*
  %71 = load i64, i64* %70
  store i64 %71, i64* %R10.i215, align 8
  store %struct.Memory* %loadMem_400519, %struct.Memory** %MEMORY
  %loadMem_40051d = load %struct.Memory*, %struct.Memory** %MEMORY
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %73 = getelementptr inbounds %struct.GPR, %struct.GPR* %72, i32 0, i32 33
  %74 = getelementptr inbounds %struct.Reg, %struct.Reg* %73, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %74 to i64*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 15
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 23
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R11.i212 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i211
  %82 = add i64 %81, 24
  %83 = load i64, i64* %PC.i210
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC.i210
  store i64 %82, i64* %R11.i212, align 8
  store %struct.Memory* %loadMem_40051d, %struct.Memory** %MEMORY
  %loadMem_400521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 33
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBX.i208 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 15
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %93 to i64*
  %94 = load i64, i64* %RBP.i209
  %95 = add i64 %94, 16
  %96 = load i64, i64* %PC.i207
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i207
  %98 = inttoptr i64 %95 to i32*
  %99 = load i32, i32* %98
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RBX.i208, align 8
  store %struct.Memory* %loadMem_400521, %struct.Memory** %MEMORY
  %loadMem_400524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RDI.i205 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i206
  %111 = sub i64 %110, 56
  %112 = load i64, i64* %RDI.i205
  %113 = load i64, i64* %PC.i204
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC.i204
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  store %struct.Memory* %loadMem_400524, %struct.Memory** %MEMORY
  %loadMem_400528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %ESI.i202 = bitcast %union.anon* %121 to i32*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RBP.i203
  %126 = sub i64 %125, 48
  %127 = load i32, i32* %ESI.i202
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC.i201
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC.i201
  %131 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %131
  store %struct.Memory* %loadMem_400528, %struct.Memory** %MEMORY
  %loadMem_40052b = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RSI.i199 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %RBP.i200
  %142 = sub i64 %141, 48
  %143 = load i64, i64* %PC.i198
  %144 = add i64 %143, 3
  store i64 %144, i64* %PC.i198
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RSI.i199, align 8
  store %struct.Memory* %loadMem_40052b, %struct.Memory** %MEMORY
  %loadMem_40052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %ESI.i196 = bitcast %union.anon* %153 to i32*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %RBP.i197
  %158 = sub i64 %157, 32
  %159 = load i32, i32* %ESI.i196
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC.i195
  %162 = add i64 %161, 3
  store i64 %162, i64* %PC.i195
  %163 = inttoptr i64 %158 to i32*
  store i32 %159, i32* %163
  store %struct.Memory* %loadMem_40052e, %struct.Memory** %MEMORY
  %loadMem_400531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 11
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RDI.i193 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RBP.i194
  %174 = sub i64 %173, 56
  %175 = load i64, i64* %PC.i192
  %176 = add i64 %175, 4
  store i64 %176, i64* %PC.i192
  %177 = inttoptr i64 %174 to i64*
  %178 = load i64, i64* %177
  store i64 %178, i64* %RDI.i193, align 8
  store %struct.Memory* %loadMem_400531, %struct.Memory** %MEMORY
  %loadMem_400535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 11
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i191
  %189 = sub i64 %188, 40
  %190 = load i64, i64* %RDI.i
  %191 = load i64, i64* %PC.i190
  %192 = add i64 %191, 4
  store i64 %192, i64* %PC.i190
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193
  store %struct.Memory* %loadMem_400535, %struct.Memory** %MEMORY
  %loadMem_400539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RBP.i189
  %204 = sub i64 %203, 64
  %205 = load i64, i64* %RDX.i188
  %206 = load i64, i64* %PC.i187
  %207 = add i64 %206, 4
  store i64 %207, i64* %PC.i187
  %208 = inttoptr i64 %204 to i64*
  store i64 %205, i64* %208
  store %struct.Memory* %loadMem_400539, %struct.Memory** %MEMORY
  %loadMem_40053d = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %RBP.i186
  %219 = sub i64 %218, 72
  %220 = load i64, i64* %RCX.i
  %221 = load i64, i64* %PC.i185
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC.i185
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223
  store %struct.Memory* %loadMem_40053d, %struct.Memory** %MEMORY
  %loadMem_400541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 17
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %R8D.i183 = bitcast %union.anon* %229 to i32*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 15
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %232 to i64*
  %233 = load i64, i64* %RBP.i184
  %234 = sub i64 %233, 76
  %235 = load i32, i32* %R8D.i183
  %236 = zext i32 %235 to i64
  %237 = load i64, i64* %PC.i182
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC.i182
  %239 = inttoptr i64 %234 to i32*
  store i32 %235, i32* %239
  store %struct.Memory* %loadMem_400541, %struct.Memory** %MEMORY
  %loadMem_400545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 19
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %R9D.i180 = bitcast %union.anon* %245 to i32*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %248 to i64*
  %249 = load i64, i64* %RBP.i181
  %250 = sub i64 %249, 80
  %251 = load i32, i32* %R9D.i180
  %252 = zext i32 %251 to i64
  %253 = load i64, i64* %PC.i179
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC.i179
  %255 = inttoptr i64 %250 to i32*
  store i32 %251, i32* %255
  store %struct.Memory* %loadMem_400545, %struct.Memory** %MEMORY
  %loadMem_400549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %261 to i32*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i178
  %266 = sub i64 %265, 84
  %267 = load i32, i32* %EBX.i
  %268 = zext i32 %267 to i64
  %269 = load i64, i64* %PC.i177
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i177
  %271 = inttoptr i64 %266 to i32*
  store i32 %267, i32* %271
  store %struct.Memory* %loadMem_400549, %struct.Memory** %MEMORY
  %loadMem_40054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 21
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %R10.i = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i176
  %282 = sub i64 %281, 96
  %283 = load i64, i64* %R10.i
  %284 = load i64, i64* %PC.i175
  %285 = add i64 %284, 4
  store i64 %285, i64* %PC.i175
  %286 = inttoptr i64 %282 to i64*
  store i64 %283, i64* %286
  store %struct.Memory* %loadMem_40054c, %struct.Memory** %MEMORY
  %loadMem_400550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 15
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RBP.i174
  %297 = sub i64 %296, 104
  %298 = load i64, i64* %RAX.i173
  %299 = load i64, i64* %PC.i172
  %300 = add i64 %299, 4
  store i64 %300, i64* %PC.i172
  %301 = inttoptr i64 %297 to i64*
  store i64 %298, i64* %301
  store %struct.Memory* %loadMem_400550, %struct.Memory** %MEMORY
  %loadMem_400554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 9
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RSI.i170 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i171
  %312 = sub i64 %311, 40
  %313 = load i64, i64* %PC.i169
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i169
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RSI.i170, align 8
  store %struct.Memory* %loadMem_400554, %struct.Memory** %MEMORY
  %loadMem_400557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 15
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %RBP.i168
  %328 = sub i64 %327, 64
  %329 = load i64, i64* %PC.i166
  %330 = add i64 %329, 4
  store i64 %330, i64* %PC.i166
  %331 = inttoptr i64 %328 to i64*
  %332 = load i64, i64* %331
  store i64 %332, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_400557, %struct.Memory** %MEMORY
  %loadMem_40055b = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 17
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %R8D.i164 = bitcast %union.anon* %338 to i32*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %341 to i64*
  %342 = bitcast i32* %R8D.i164 to i64*
  %343 = load i64, i64* %RAX.i165
  %344 = load i64, i64* %PC.i163
  %345 = add i64 %344, 3
  store i64 %345, i64* %PC.i163
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %342, align 8
  store %struct.Memory* %loadMem_40055b, %struct.Memory** %MEMORY
  %loadMem_40055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 17
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %R8D.i161 = bitcast %union.anon* %354 to i32*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 9
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RSI.i162 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %RSI.i162
  %359 = load i32, i32* %R8D.i161
  %360 = zext i32 %359 to i64
  %361 = load i64, i64* %PC.i160
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC.i160
  %363 = trunc i64 %358 to i32
  %364 = add i32 %359, %363
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RSI.i162, align 8
  %366 = icmp ult i32 %364, %363
  %367 = icmp ult i32 %364, %359
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %369, i8* %370, align 1
  %371 = and i32 %364, 255
  %372 = call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %375, i8* %376, align 1
  %377 = xor i64 %360, %358
  %378 = trunc i64 %377 to i32
  %379 = xor i32 %378, %364
  %380 = lshr i32 %379, 4
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %382, i8* %383, align 1
  %384 = icmp eq i32 %364, 0
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %385, i8* %386, align 1
  %387 = lshr i32 %364, 31
  %388 = trunc i32 %387 to i8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %388, i8* %389, align 1
  %390 = lshr i32 %363, 31
  %391 = lshr i32 %359, 31
  %392 = xor i32 %387, %390
  %393 = xor i32 %387, %391
  %394 = add i32 %392, %393
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %396, i8* %397, align 1
  store %struct.Memory* %loadMem_40055e, %struct.Memory** %MEMORY
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 15
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %406 to i64*
  %407 = load i64, i64* %RBP.i159
  %408 = sub i64 %407, 72
  %409 = load i64, i64* %PC.i157
  %410 = add i64 %409, 4
  store i64 %410, i64* %PC.i157
  %411 = inttoptr i64 %408 to i64*
  %412 = load i64, i64* %411
  store i64 %412, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_400561, %struct.Memory** %MEMORY
  %loadMem_400565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 17
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %R8D.i155 = bitcast %union.anon* %418 to i32*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %421 to i64*
  %422 = bitcast i32* %R8D.i155 to i64*
  %423 = load i64, i64* %RAX.i156
  %424 = load i64, i64* %PC.i154
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC.i154
  %426 = inttoptr i64 %423 to i32*
  %427 = load i32, i32* %426
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %422, align 8
  store %struct.Memory* %loadMem_400565, %struct.Memory** %MEMORY
  %loadMem_400568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 17
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %R8D.i152 = bitcast %union.anon* %434 to i32*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 9
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RSI.i153 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %RSI.i153
  %439 = load i32, i32* %R8D.i152
  %440 = zext i32 %439 to i64
  %441 = load i64, i64* %PC.i151
  %442 = add i64 %441, 3
  store i64 %442, i64* %PC.i151
  %443 = trunc i64 %438 to i32
  %444 = add i32 %439, %443
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RSI.i153, align 8
  %446 = icmp ult i32 %444, %443
  %447 = icmp ult i32 %444, %439
  %448 = or i1 %446, %447
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %449, i8* %450, align 1
  %451 = and i32 %444, 255
  %452 = call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %455, i8* %456, align 1
  %457 = xor i64 %440, %438
  %458 = trunc i64 %457 to i32
  %459 = xor i32 %458, %444
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %462, i8* %463, align 1
  %464 = icmp eq i32 %444, 0
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %465, i8* %466, align 1
  %467 = lshr i32 %444, 31
  %468 = trunc i32 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %468, i8* %469, align 1
  %470 = lshr i32 %443, 31
  %471 = lshr i32 %439, 31
  %472 = xor i32 %467, %470
  %473 = xor i32 %467, %471
  %474 = add i32 %472, %473
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %476, i8* %477, align 1
  store %struct.Memory* %loadMem_400568, %struct.Memory** %MEMORY
  %loadMem_40056b = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 17
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %R8D.i149 = bitcast %union.anon* %483 to i32*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 23
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %R11.i150 = bitcast %union.anon* %486 to i64*
  %487 = bitcast i32* %R8D.i149 to i64*
  %488 = load i64, i64* %R11.i150
  %489 = load i64, i64* %PC.i148
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC.i148
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %487, align 8
  store %struct.Memory* %loadMem_40056b, %struct.Memory** %MEMORY
  %loadMem_40056e = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 15
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %RBP.i147
  %504 = sub i64 %503, 96
  %505 = load i64, i64* %PC.i145
  %506 = add i64 %505, 4
  store i64 %506, i64* %PC.i145
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507
  store i64 %508, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_40056e, %struct.Memory** %MEMORY
  %loadMem_400572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 19
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %R9D.i143 = bitcast %union.anon* %514 to i32*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 1
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %517 to i64*
  %518 = bitcast i32* %R9D.i143 to i64*
  %519 = load i64, i64* %RAX.i144
  %520 = load i64, i64* %PC.i142
  %521 = add i64 %520, 3
  store i64 %521, i64* %PC.i142
  %522 = inttoptr i64 %519 to i32*
  %523 = load i32, i32* %522
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %518, align 8
  store %struct.Memory* %loadMem_400572, %struct.Memory** %MEMORY
  %loadMem_400575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 17
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %R8D.i140 = bitcast %union.anon* %530 to i32*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 19
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %R9D.i141 = bitcast %union.anon* %533 to i32*
  %534 = bitcast i32* %R8D.i140 to i64*
  %535 = load i32, i32* %R8D.i140
  %536 = zext i32 %535 to i64
  %537 = load i32, i32* %R9D.i141
  %538 = zext i32 %537 to i64
  %539 = load i64, i64* %PC.i139
  %540 = add i64 %539, 3
  store i64 %540, i64* %PC.i139
  %541 = add i32 %537, %535
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %534, align 8
  %543 = icmp ult i32 %541, %535
  %544 = icmp ult i32 %541, %537
  %545 = or i1 %543, %544
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %546, i8* %547, align 1
  %548 = and i32 %541, 255
  %549 = call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %552, i8* %553, align 1
  %554 = xor i64 %538, %536
  %555 = trunc i64 %554 to i32
  %556 = xor i32 %555, %541
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %559, i8* %560, align 1
  %561 = icmp eq i32 %541, 0
  %562 = zext i1 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %562, i8* %563, align 1
  %564 = lshr i32 %541, 31
  %565 = trunc i32 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %565, i8* %566, align 1
  %567 = lshr i32 %535, 31
  %568 = lshr i32 %537, 31
  %569 = xor i32 %564, %567
  %570 = xor i32 %564, %568
  %571 = add i32 %569, %570
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %573, i8* %574, align 1
  store %struct.Memory* %loadMem_400575, %struct.Memory** %MEMORY
  %loadMem_400578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 15
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RBP.i138
  %585 = sub i64 %584, 104
  %586 = load i64, i64* %PC.i136
  %587 = add i64 %586, 4
  store i64 %587, i64* %PC.i136
  %588 = inttoptr i64 %585 to i64*
  %589 = load i64, i64* %588
  store i64 %589, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_400578, %struct.Memory** %MEMORY
  %loadMem_40057c = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 19
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %R9D.i134 = bitcast %union.anon* %595 to i32*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %598 to i64*
  %599 = bitcast i32* %R9D.i134 to i64*
  %600 = load i64, i64* %RAX.i135
  %601 = load i64, i64* %PC.i133
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC.i133
  %603 = inttoptr i64 %600 to i32*
  %604 = load i32, i32* %603
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %599, align 8
  store %struct.Memory* %loadMem_40057c, %struct.Memory** %MEMORY
  %loadMem_40057f = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 17
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %R8D.i131 = bitcast %union.anon* %611 to i32*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 19
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %R9D.i132 = bitcast %union.anon* %614 to i32*
  %615 = bitcast i32* %R8D.i131 to i64*
  %616 = load i32, i32* %R8D.i131
  %617 = zext i32 %616 to i64
  %618 = load i32, i32* %R9D.i132
  %619 = zext i32 %618 to i64
  %620 = load i64, i64* %PC.i130
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i130
  %622 = add i32 %618, %616
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %615, align 8
  %624 = icmp ult i32 %622, %616
  %625 = icmp ult i32 %622, %618
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %627, i8* %628, align 1
  %629 = and i32 %622, 255
  %630 = call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %633, i8* %634, align 1
  %635 = xor i64 %619, %617
  %636 = trunc i64 %635 to i32
  %637 = xor i32 %636, %622
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %640, i8* %641, align 1
  %642 = icmp eq i32 %622, 0
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %643, i8* %644, align 1
  %645 = lshr i32 %622, 31
  %646 = trunc i32 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %646, i8* %647, align 1
  %648 = lshr i32 %616, 31
  %649 = lshr i32 %618, 31
  %650 = xor i32 %645, %648
  %651 = xor i32 %645, %649
  %652 = add i32 %650, %651
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %654, i8* %655, align 1
  store %struct.Memory* %loadMem_40057f, %struct.Memory** %MEMORY
  %loadMem_400582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 17
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %R8D.i128 = bitcast %union.anon* %661 to i32*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 9
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RSI.i129 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RSI.i129
  %666 = load i32, i32* %R8D.i128
  %667 = zext i32 %666 to i64
  %668 = load i64, i64* %PC.i127
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC.i127
  %670 = trunc i64 %665 to i32
  %671 = add i32 %666, %670
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RSI.i129, align 8
  %673 = icmp ult i32 %671, %670
  %674 = icmp ult i32 %671, %666
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %676, i8* %677, align 1
  %678 = and i32 %671, 255
  %679 = call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %682, i8* %683, align 1
  %684 = xor i64 %667, %665
  %685 = trunc i64 %684 to i32
  %686 = xor i32 %685, %671
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %689, i8* %690, align 1
  %691 = icmp eq i32 %671, 0
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %692, i8* %693, align 1
  %694 = lshr i32 %671, 31
  %695 = trunc i32 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %695, i8* %696, align 1
  %697 = lshr i32 %670, 31
  %698 = lshr i32 %666, 31
  %699 = xor i32 %694, %697
  %700 = xor i32 %694, %698
  %701 = add i32 %699, %700
  %702 = icmp eq i32 %701, 2
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %703, i8* %704, align 1
  store %struct.Memory* %loadMem_400582, %struct.Memory** %MEMORY
  %loadMem_400585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 9
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %ESI.i125 = bitcast %union.anon* %710 to i32*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 15
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RBP.i126
  %715 = sub i64 %714, 120
  %716 = load i32, i32* %ESI.i125
  %717 = zext i32 %716 to i64
  %718 = load i64, i64* %PC.i124
  %719 = add i64 %718, 3
  store i64 %719, i64* %PC.i124
  %720 = inttoptr i64 %715 to i32*
  store i32 %716, i32* %720
  store %struct.Memory* %loadMem_400585, %struct.Memory** %MEMORY
  %loadMem_400588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 9
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 15
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RBP.i123
  %731 = sub i64 %730, 36
  %732 = load i64, i64* %PC.i121
  %733 = add i64 %732, 3
  store i64 %733, i64* %PC.i121
  %734 = inttoptr i64 %731 to i32*
  %735 = load i32, i32* %734
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_400588, %struct.Memory** %MEMORY
  %loadMem_40058b = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 1
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 15
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RBP.i120
  %747 = sub i64 %746, 64
  %748 = load i64, i64* %PC.i118
  %749 = add i64 %748, 4
  store i64 %749, i64* %PC.i118
  %750 = inttoptr i64 %747 to i64*
  %751 = load i64, i64* %750
  store i64 %751, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_40058b, %struct.Memory** %MEMORY
  %loadMem_40058f = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 17
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %R8D.i116 = bitcast %union.anon* %757 to i32*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 1
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %760 to i64*
  %761 = bitcast i32* %R8D.i116 to i64*
  %762 = load i64, i64* %RAX.i117
  %763 = add i64 %762, 4
  %764 = load i64, i64* %PC.i115
  %765 = add i64 %764, 4
  store i64 %765, i64* %PC.i115
  %766 = inttoptr i64 %763 to i32*
  %767 = load i32, i32* %766
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %761, align 8
  store %struct.Memory* %loadMem_40058f, %struct.Memory** %MEMORY
  %loadMem_400593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 17
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %R8D.i113 = bitcast %union.anon* %774 to i32*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 9
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RSI.i114 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RSI.i114
  %779 = load i32, i32* %R8D.i113
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %PC.i112
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i112
  %783 = trunc i64 %778 to i32
  %784 = add i32 %779, %783
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RSI.i114, align 8
  %786 = icmp ult i32 %784, %783
  %787 = icmp ult i32 %784, %779
  %788 = or i1 %786, %787
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %789, i8* %790, align 1
  %791 = and i32 %784, 255
  %792 = call i32 @llvm.ctpop.i32(i32 %791)
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %795, i8* %796, align 1
  %797 = xor i64 %780, %778
  %798 = trunc i64 %797 to i32
  %799 = xor i32 %798, %784
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %802, i8* %803, align 1
  %804 = icmp eq i32 %784, 0
  %805 = zext i1 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %805, i8* %806, align 1
  %807 = lshr i32 %784, 31
  %808 = trunc i32 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %808, i8* %809, align 1
  %810 = lshr i32 %783, 31
  %811 = lshr i32 %779, 31
  %812 = xor i32 %807, %810
  %813 = xor i32 %807, %811
  %814 = add i32 %812, %813
  %815 = icmp eq i32 %814, 2
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %816, i8* %817, align 1
  store %struct.Memory* %loadMem_400593, %struct.Memory** %MEMORY
  %loadMem_400596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 15
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %826 to i64*
  %827 = load i64, i64* %RBP.i111
  %828 = sub i64 %827, 72
  %829 = load i64, i64* %PC.i109
  %830 = add i64 %829, 4
  store i64 %830, i64* %PC.i109
  %831 = inttoptr i64 %828 to i64*
  %832 = load i64, i64* %831
  store i64 %832, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_400596, %struct.Memory** %MEMORY
  %loadMem_40059a = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 17
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %R8D.i107 = bitcast %union.anon* %838 to i32*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %841 to i64*
  %842 = bitcast i32* %R8D.i107 to i64*
  %843 = load i64, i64* %RAX.i108
  %844 = add i64 %843, 4
  %845 = load i64, i64* %PC.i106
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC.i106
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %842, align 8
  store %struct.Memory* %loadMem_40059a, %struct.Memory** %MEMORY
  %loadMem_40059e = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 17
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %R8D.i104 = bitcast %union.anon* %855 to i32*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 9
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RSI.i105 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %RSI.i105
  %860 = load i32, i32* %R8D.i104
  %861 = zext i32 %860 to i64
  %862 = load i64, i64* %PC.i103
  %863 = add i64 %862, 3
  store i64 %863, i64* %PC.i103
  %864 = trunc i64 %859 to i32
  %865 = add i32 %860, %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RSI.i105, align 8
  %867 = icmp ult i32 %865, %864
  %868 = icmp ult i32 %865, %860
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %870, i8* %871, align 1
  %872 = and i32 %865, 255
  %873 = call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %876, i8* %877, align 1
  %878 = xor i64 %861, %859
  %879 = trunc i64 %878 to i32
  %880 = xor i32 %879, %865
  %881 = lshr i32 %880, 4
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %883, i8* %884, align 1
  %885 = icmp eq i32 %865, 0
  %886 = zext i1 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %886, i8* %887, align 1
  %888 = lshr i32 %865, 31
  %889 = trunc i32 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %889, i8* %890, align 1
  %891 = lshr i32 %864, 31
  %892 = lshr i32 %860, 31
  %893 = xor i32 %888, %891
  %894 = xor i32 %888, %892
  %895 = add i32 %893, %894
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %897, i8* %898, align 1
  store %struct.Memory* %loadMem_40059e, %struct.Memory** %MEMORY
  %loadMem_4005a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 17
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %R8D.i101 = bitcast %union.anon* %904 to i32*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 23
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %R11.i102 = bitcast %union.anon* %907 to i64*
  %908 = bitcast i32* %R8D.i101 to i64*
  %909 = load i64, i64* %R11.i102
  %910 = add i64 %909, 4
  %911 = load i64, i64* %PC.i100
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC.i100
  %913 = inttoptr i64 %910 to i32*
  %914 = load i32, i32* %913
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %908, align 8
  store %struct.Memory* %loadMem_4005a1, %struct.Memory** %MEMORY
  %loadMem_4005a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i99
  %926 = sub i64 %925, 96
  %927 = load i64, i64* %PC.i97
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC.i97
  %929 = inttoptr i64 %926 to i64*
  %930 = load i64, i64* %929
  store i64 %930, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_4005a5, %struct.Memory** %MEMORY
  %loadMem_4005a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 19
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %R9D.i95 = bitcast %union.anon* %936 to i32*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 1
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %939 to i64*
  %940 = bitcast i32* %R9D.i95 to i64*
  %941 = load i64, i64* %RAX.i96
  %942 = add i64 %941, 4
  %943 = load i64, i64* %PC.i94
  %944 = add i64 %943, 4
  store i64 %944, i64* %PC.i94
  %945 = inttoptr i64 %942 to i32*
  %946 = load i32, i32* %945
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %940, align 8
  store %struct.Memory* %loadMem_4005a9, %struct.Memory** %MEMORY
  %loadMem_4005ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 17
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %R8D.i92 = bitcast %union.anon* %953 to i32*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 19
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %R9D.i93 = bitcast %union.anon* %956 to i32*
  %957 = bitcast i32* %R8D.i92 to i64*
  %958 = load i32, i32* %R8D.i92
  %959 = zext i32 %958 to i64
  %960 = load i32, i32* %R9D.i93
  %961 = zext i32 %960 to i64
  %962 = load i64, i64* %PC.i91
  %963 = add i64 %962, 3
  store i64 %963, i64* %PC.i91
  %964 = add i32 %960, %958
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %957, align 8
  %966 = icmp ult i32 %964, %958
  %967 = icmp ult i32 %964, %960
  %968 = or i1 %966, %967
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %969, i8* %970, align 1
  %971 = and i32 %964, 255
  %972 = call i32 @llvm.ctpop.i32(i32 %971)
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = xor i8 %974, 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %975, i8* %976, align 1
  %977 = xor i64 %961, %959
  %978 = trunc i64 %977 to i32
  %979 = xor i32 %978, %964
  %980 = lshr i32 %979, 4
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %982, i8* %983, align 1
  %984 = icmp eq i32 %964, 0
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %985, i8* %986, align 1
  %987 = lshr i32 %964, 31
  %988 = trunc i32 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %988, i8* %989, align 1
  %990 = lshr i32 %958, 31
  %991 = lshr i32 %960, 31
  %992 = xor i32 %987, %990
  %993 = xor i32 %987, %991
  %994 = add i32 %992, %993
  %995 = icmp eq i32 %994, 2
  %996 = zext i1 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %996, i8* %997, align 1
  store %struct.Memory* %loadMem_4005ad, %struct.Memory** %MEMORY
  %loadMem_4005b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 15
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %RBP.i90
  %1008 = sub i64 %1007, 104
  %1009 = load i64, i64* %PC.i88
  %1010 = add i64 %1009, 4
  store i64 %1010, i64* %PC.i88
  %1011 = inttoptr i64 %1008 to i64*
  %1012 = load i64, i64* %1011
  store i64 %1012, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_4005b0, %struct.Memory** %MEMORY
  %loadMem_4005b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 19
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %R9D.i86 = bitcast %union.anon* %1018 to i32*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %1021 to i64*
  %1022 = bitcast i32* %R9D.i86 to i64*
  %1023 = load i64, i64* %RAX.i87
  %1024 = add i64 %1023, 4
  %1025 = load i64, i64* %PC.i85
  %1026 = add i64 %1025, 4
  store i64 %1026, i64* %PC.i85
  %1027 = inttoptr i64 %1024 to i32*
  %1028 = load i32, i32* %1027
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %1022, align 8
  store %struct.Memory* %loadMem_4005b4, %struct.Memory** %MEMORY
  %loadMem_4005b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 17
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %R8D.i83 = bitcast %union.anon* %1035 to i32*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 19
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %R9D.i84 = bitcast %union.anon* %1038 to i32*
  %1039 = bitcast i32* %R8D.i83 to i64*
  %1040 = load i32, i32* %R8D.i83
  %1041 = zext i32 %1040 to i64
  %1042 = load i32, i32* %R9D.i84
  %1043 = zext i32 %1042 to i64
  %1044 = load i64, i64* %PC.i82
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %PC.i82
  %1046 = add i32 %1042, %1040
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %1039, align 8
  %1048 = icmp ult i32 %1046, %1040
  %1049 = icmp ult i32 %1046, %1042
  %1050 = or i1 %1048, %1049
  %1051 = zext i1 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1051, i8* %1052, align 1
  %1053 = and i32 %1046, 255
  %1054 = call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1057, i8* %1058, align 1
  %1059 = xor i64 %1043, %1041
  %1060 = trunc i64 %1059 to i32
  %1061 = xor i32 %1060, %1046
  %1062 = lshr i32 %1061, 4
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1064, i8* %1065, align 1
  %1066 = icmp eq i32 %1046, 0
  %1067 = zext i1 %1066 to i8
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1067, i8* %1068, align 1
  %1069 = lshr i32 %1046, 31
  %1070 = trunc i32 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1070, i8* %1071, align 1
  %1072 = lshr i32 %1040, 31
  %1073 = lshr i32 %1042, 31
  %1074 = xor i32 %1069, %1072
  %1075 = xor i32 %1069, %1073
  %1076 = add i32 %1074, %1075
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1078, i8* %1079, align 1
  store %struct.Memory* %loadMem_4005b8, %struct.Memory** %MEMORY
  %loadMem_4005bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 33
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 17
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %R8D.i80 = bitcast %union.anon* %1085 to i32*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 9
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RSI.i81 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %RSI.i81
  %1090 = load i32, i32* %R8D.i80
  %1091 = zext i32 %1090 to i64
  %1092 = load i64, i64* %PC.i79
  %1093 = add i64 %1092, 3
  store i64 %1093, i64* %PC.i79
  %1094 = trunc i64 %1089 to i32
  %1095 = add i32 %1090, %1094
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RSI.i81, align 8
  %1097 = icmp ult i32 %1095, %1094
  %1098 = icmp ult i32 %1095, %1090
  %1099 = or i1 %1097, %1098
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1100, i8* %1101, align 1
  %1102 = and i32 %1095, 255
  %1103 = call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1106, i8* %1107, align 1
  %1108 = xor i64 %1091, %1089
  %1109 = trunc i64 %1108 to i32
  %1110 = xor i32 %1109, %1095
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1113, i8* %1114, align 1
  %1115 = icmp eq i32 %1095, 0
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1116, i8* %1117, align 1
  %1118 = lshr i32 %1095, 31
  %1119 = trunc i32 %1118 to i8
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1119, i8* %1120, align 1
  %1121 = lshr i32 %1094, 31
  %1122 = lshr i32 %1090, 31
  %1123 = xor i32 %1118, %1121
  %1124 = xor i32 %1118, %1122
  %1125 = add i32 %1123, %1124
  %1126 = icmp eq i32 %1125, 2
  %1127 = zext i1 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1127, i8* %1128, align 1
  store %struct.Memory* %loadMem_4005bb, %struct.Memory** %MEMORY
  %loadMem_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 9
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %ESI.i77 = bitcast %union.anon* %1134 to i32*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i78
  %1139 = sub i64 %1138, 116
  %1140 = load i32, i32* %ESI.i77
  %1141 = zext i32 %1140 to i64
  %1142 = load i64, i64* %PC.i76
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC.i76
  %1144 = inttoptr i64 %1139 to i32*
  store i32 %1140, i32* %1144
  store %struct.Memory* %loadMem_4005be, %struct.Memory** %MEMORY
  %loadMem_4005c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 9
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RSI.i74 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 15
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RBP.i75
  %1155 = sub i64 %1154, 32
  %1156 = load i64, i64* %PC.i73
  %1157 = add i64 %1156, 3
  store i64 %1157, i64* %PC.i73
  %1158 = inttoptr i64 %1155 to i32*
  %1159 = load i32, i32* %1158
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RSI.i74, align 8
  store %struct.Memory* %loadMem_4005c1, %struct.Memory** %MEMORY
  %loadMem_4005c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 1
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RBP.i72
  %1171 = sub i64 %1170, 64
  %1172 = load i64, i64* %PC.i70
  %1173 = add i64 %1172, 4
  store i64 %1173, i64* %PC.i70
  %1174 = inttoptr i64 %1171 to i64*
  %1175 = load i64, i64* %1174
  store i64 %1175, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_4005c4, %struct.Memory** %MEMORY
  %loadMem_4005c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 17
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %R8D.i68 = bitcast %union.anon* %1181 to i32*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %1184 to i64*
  %1185 = bitcast i32* %R8D.i68 to i64*
  %1186 = load i64, i64* %RAX.i69
  %1187 = add i64 %1186, 8
  %1188 = load i64, i64* %PC.i67
  %1189 = add i64 %1188, 4
  store i64 %1189, i64* %PC.i67
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %1185, align 8
  store %struct.Memory* %loadMem_4005c8, %struct.Memory** %MEMORY
  %loadMem_4005cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 17
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %R8D.i65 = bitcast %union.anon* %1198 to i32*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 9
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RSI.i66
  %1203 = load i32, i32* %R8D.i65
  %1204 = zext i32 %1203 to i64
  %1205 = load i64, i64* %PC.i64
  %1206 = add i64 %1205, 3
  store i64 %1206, i64* %PC.i64
  %1207 = trunc i64 %1202 to i32
  %1208 = add i32 %1203, %1207
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RSI.i66, align 8
  %1210 = icmp ult i32 %1208, %1207
  %1211 = icmp ult i32 %1208, %1203
  %1212 = or i1 %1210, %1211
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1213, i8* %1214, align 1
  %1215 = and i32 %1208, 255
  %1216 = call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1219, i8* %1220, align 1
  %1221 = xor i64 %1204, %1202
  %1222 = trunc i64 %1221 to i32
  %1223 = xor i32 %1222, %1208
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1226, i8* %1227, align 1
  %1228 = icmp eq i32 %1208, 0
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1229, i8* %1230, align 1
  %1231 = lshr i32 %1208, 31
  %1232 = trunc i32 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1232, i8* %1233, align 1
  %1234 = lshr i32 %1207, 31
  %1235 = lshr i32 %1203, 31
  %1236 = xor i32 %1231, %1234
  %1237 = xor i32 %1231, %1235
  %1238 = add i32 %1236, %1237
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1240, i8* %1241, align 1
  store %struct.Memory* %loadMem_4005cc, %struct.Memory** %MEMORY
  %loadMem_4005cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 1
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 15
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %RBP.i63
  %1252 = sub i64 %1251, 72
  %1253 = load i64, i64* %PC.i61
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC.i61
  %1255 = inttoptr i64 %1252 to i64*
  %1256 = load i64, i64* %1255
  store i64 %1256, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_4005cf, %struct.Memory** %MEMORY
  %loadMem_4005d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 17
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %R8D.i59 = bitcast %union.anon* %1262 to i32*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 1
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %1265 to i64*
  %1266 = bitcast i32* %R8D.i59 to i64*
  %1267 = load i64, i64* %RAX.i60
  %1268 = add i64 %1267, 8
  %1269 = load i64, i64* %PC.i58
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %PC.i58
  %1271 = inttoptr i64 %1268 to i32*
  %1272 = load i32, i32* %1271
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %1266, align 8
  store %struct.Memory* %loadMem_4005d3, %struct.Memory** %MEMORY
  %loadMem_4005d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 17
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %R8D.i56 = bitcast %union.anon* %1279 to i32*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 9
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RSI.i57 = bitcast %union.anon* %1282 to i64*
  %1283 = load i64, i64* %RSI.i57
  %1284 = load i32, i32* %R8D.i56
  %1285 = zext i32 %1284 to i64
  %1286 = load i64, i64* %PC.i55
  %1287 = add i64 %1286, 3
  store i64 %1287, i64* %PC.i55
  %1288 = trunc i64 %1283 to i32
  %1289 = add i32 %1284, %1288
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RSI.i57, align 8
  %1291 = icmp ult i32 %1289, %1288
  %1292 = icmp ult i32 %1289, %1284
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1294, i8* %1295, align 1
  %1296 = and i32 %1289, 255
  %1297 = call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1300, i8* %1301, align 1
  %1302 = xor i64 %1285, %1283
  %1303 = trunc i64 %1302 to i32
  %1304 = xor i32 %1303, %1289
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1307, i8* %1308, align 1
  %1309 = icmp eq i32 %1289, 0
  %1310 = zext i1 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1310, i8* %1311, align 1
  %1312 = lshr i32 %1289, 31
  %1313 = trunc i32 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1313, i8* %1314, align 1
  %1315 = lshr i32 %1288, 31
  %1316 = lshr i32 %1284, 31
  %1317 = xor i32 %1312, %1315
  %1318 = xor i32 %1312, %1316
  %1319 = add i32 %1317, %1318
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1321, i8* %1322, align 1
  store %struct.Memory* %loadMem_4005d7, %struct.Memory** %MEMORY
  %loadMem_4005da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 33
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 17
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %R8D.i54 = bitcast %union.anon* %1328 to i32*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 23
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %R11.i = bitcast %union.anon* %1331 to i64*
  %1332 = bitcast i32* %R8D.i54 to i64*
  %1333 = load i64, i64* %R11.i
  %1334 = add i64 %1333, 8
  %1335 = load i64, i64* %PC.i53
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i53
  %1337 = inttoptr i64 %1334 to i32*
  %1338 = load i32, i32* %1337
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %1332, align 8
  store %struct.Memory* %loadMem_4005da, %struct.Memory** %MEMORY
  %loadMem_4005de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 15
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %RBP.i52
  %1350 = sub i64 %1349, 96
  %1351 = load i64, i64* %PC.i50
  %1352 = add i64 %1351, 4
  store i64 %1352, i64* %PC.i50
  %1353 = inttoptr i64 %1350 to i64*
  %1354 = load i64, i64* %1353
  store i64 %1354, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_4005de, %struct.Memory** %MEMORY
  %loadMem_4005e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 19
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %R9D.i48 = bitcast %union.anon* %1360 to i32*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 1
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %1363 to i64*
  %1364 = bitcast i32* %R9D.i48 to i64*
  %1365 = load i64, i64* %RAX.i49
  %1366 = add i64 %1365, 8
  %1367 = load i64, i64* %PC.i47
  %1368 = add i64 %1367, 4
  store i64 %1368, i64* %PC.i47
  %1369 = inttoptr i64 %1366 to i32*
  %1370 = load i32, i32* %1369
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %1364, align 8
  store %struct.Memory* %loadMem_4005e2, %struct.Memory** %MEMORY
  %loadMem_4005e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 17
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %R8D.i45 = bitcast %union.anon* %1377 to i32*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 19
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %R9D.i46 = bitcast %union.anon* %1380 to i32*
  %1381 = bitcast i32* %R8D.i45 to i64*
  %1382 = load i32, i32* %R8D.i45
  %1383 = zext i32 %1382 to i64
  %1384 = load i32, i32* %R9D.i46
  %1385 = zext i32 %1384 to i64
  %1386 = load i64, i64* %PC.i44
  %1387 = add i64 %1386, 3
  store i64 %1387, i64* %PC.i44
  %1388 = add i32 %1384, %1382
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %1381, align 8
  %1390 = icmp ult i32 %1388, %1382
  %1391 = icmp ult i32 %1388, %1384
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1393, i8* %1394, align 1
  %1395 = and i32 %1388, 255
  %1396 = call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1399, i8* %1400, align 1
  %1401 = xor i64 %1385, %1383
  %1402 = trunc i64 %1401 to i32
  %1403 = xor i32 %1402, %1388
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1406, i8* %1407, align 1
  %1408 = icmp eq i32 %1388, 0
  %1409 = zext i1 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1409, i8* %1410, align 1
  %1411 = lshr i32 %1388, 31
  %1412 = trunc i32 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1412, i8* %1413, align 1
  %1414 = lshr i32 %1382, 31
  %1415 = lshr i32 %1384, 31
  %1416 = xor i32 %1411, %1414
  %1417 = xor i32 %1411, %1415
  %1418 = add i32 %1416, %1417
  %1419 = icmp eq i32 %1418, 2
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1420, i8* %1421, align 1
  store %struct.Memory* %loadMem_4005e6, %struct.Memory** %MEMORY
  %loadMem_4005e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 1
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 15
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %1430 to i64*
  %1431 = load i64, i64* %RBP.i43
  %1432 = sub i64 %1431, 104
  %1433 = load i64, i64* %PC.i41
  %1434 = add i64 %1433, 4
  store i64 %1434, i64* %PC.i41
  %1435 = inttoptr i64 %1432 to i64*
  %1436 = load i64, i64* %1435
  store i64 %1436, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_4005e9, %struct.Memory** %MEMORY
  %loadMem_4005ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 19
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %R9D.i39 = bitcast %union.anon* %1442 to i32*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 1
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %1445 to i64*
  %1446 = bitcast i32* %R9D.i39 to i64*
  %1447 = load i64, i64* %RAX.i40
  %1448 = add i64 %1447, 8
  %1449 = load i64, i64* %PC.i38
  %1450 = add i64 %1449, 4
  store i64 %1450, i64* %PC.i38
  %1451 = inttoptr i64 %1448 to i32*
  %1452 = load i32, i32* %1451
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %1446, align 8
  store %struct.Memory* %loadMem_4005ed, %struct.Memory** %MEMORY
  %loadMem_4005f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 17
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %R8D.i37 = bitcast %union.anon* %1459 to i32*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 19
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1462 to i32*
  %1463 = bitcast i32* %R8D.i37 to i64*
  %1464 = load i32, i32* %R8D.i37
  %1465 = zext i32 %1464 to i64
  %1466 = load i32, i32* %R9D.i
  %1467 = zext i32 %1466 to i64
  %1468 = load i64, i64* %PC.i36
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC.i36
  %1470 = add i32 %1466, %1464
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %1463, align 8
  %1472 = icmp ult i32 %1470, %1464
  %1473 = icmp ult i32 %1470, %1466
  %1474 = or i1 %1472, %1473
  %1475 = zext i1 %1474 to i8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1475, i8* %1476, align 1
  %1477 = and i32 %1470, 255
  %1478 = call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1481, i8* %1482, align 1
  %1483 = xor i64 %1467, %1465
  %1484 = trunc i64 %1483 to i32
  %1485 = xor i32 %1484, %1470
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1488, i8* %1489, align 1
  %1490 = icmp eq i32 %1470, 0
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1491, i8* %1492, align 1
  %1493 = lshr i32 %1470, 31
  %1494 = trunc i32 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1494, i8* %1495, align 1
  %1496 = lshr i32 %1464, 31
  %1497 = lshr i32 %1466, 31
  %1498 = xor i32 %1493, %1496
  %1499 = xor i32 %1493, %1497
  %1500 = add i32 %1498, %1499
  %1501 = icmp eq i32 %1500, 2
  %1502 = zext i1 %1501 to i8
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1502, i8* %1503, align 1
  store %struct.Memory* %loadMem_4005f1, %struct.Memory** %MEMORY
  %loadMem_4005f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 17
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1509 to i32*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 9
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RSI.i35 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RSI.i35
  %1514 = load i32, i32* %R8D.i
  %1515 = zext i32 %1514 to i64
  %1516 = load i64, i64* %PC.i34
  %1517 = add i64 %1516, 3
  store i64 %1517, i64* %PC.i34
  %1518 = trunc i64 %1513 to i32
  %1519 = add i32 %1514, %1518
  %1520 = zext i32 %1519 to i64
  store i64 %1520, i64* %RSI.i35, align 8
  %1521 = icmp ult i32 %1519, %1518
  %1522 = icmp ult i32 %1519, %1514
  %1523 = or i1 %1521, %1522
  %1524 = zext i1 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1524, i8* %1525, align 1
  %1526 = and i32 %1519, 255
  %1527 = call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1530, i8* %1531, align 1
  %1532 = xor i64 %1515, %1513
  %1533 = trunc i64 %1532 to i32
  %1534 = xor i32 %1533, %1519
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1537, i8* %1538, align 1
  %1539 = icmp eq i32 %1519, 0
  %1540 = zext i1 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1540, i8* %1541, align 1
  %1542 = lshr i32 %1519, 31
  %1543 = trunc i32 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1543, i8* %1544, align 1
  %1545 = lshr i32 %1518, 31
  %1546 = lshr i32 %1514, 31
  %1547 = xor i32 %1542, %1545
  %1548 = xor i32 %1542, %1546
  %1549 = add i32 %1547, %1548
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1551, i8* %1552, align 1
  store %struct.Memory* %loadMem_4005f4, %struct.Memory** %MEMORY
  %loadMem_4005f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 9
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %ESI.i32 = bitcast %union.anon* %1558 to i32*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 15
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RBP.i33
  %1563 = sub i64 %1562, 112
  %1564 = load i32, i32* %ESI.i32
  %1565 = zext i32 %1564 to i64
  %1566 = load i64, i64* %PC.i31
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC.i31
  %1568 = inttoptr i64 %1563 to i32*
  store i32 %1564, i32* %1568
  store %struct.Memory* %loadMem_4005f7, %struct.Memory** %MEMORY
  %loadMem_4005fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 9
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RSI.i29 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 15
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RBP.i30
  %1579 = sub i64 %1578, 112
  %1580 = load i64, i64* %PC.i28
  %1581 = add i64 %1580, 3
  store i64 %1581, i64* %PC.i28
  %1582 = inttoptr i64 %1579 to i32*
  %1583 = load i32, i32* %1582
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RSI.i29, align 8
  store %struct.Memory* %loadMem_4005fa, %struct.Memory** %MEMORY
  %loadMem_4005fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 9
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %ESI.i26 = bitcast %union.anon* %1590 to i32*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 15
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %RBP.i27
  %1595 = sub i64 %1594, 16
  %1596 = load i32, i32* %ESI.i26
  %1597 = zext i32 %1596 to i64
  %1598 = load i64, i64* %PC.i25
  %1599 = add i64 %1598, 3
  store i64 %1599, i64* %PC.i25
  %1600 = inttoptr i64 %1595 to i32*
  store i32 %1596, i32* %1600
  store %struct.Memory* %loadMem_4005fd, %struct.Memory** %MEMORY
  %loadMem_400600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 1
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 15
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %RBP.i24
  %1611 = sub i64 %1610, 120
  %1612 = load i64, i64* %PC.i22
  %1613 = add i64 %1612, 4
  store i64 %1613, i64* %PC.i22
  %1614 = inttoptr i64 %1611 to i64*
  %1615 = load i64, i64* %1614
  store i64 %1615, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_400600, %struct.Memory** %MEMORY
  %loadMem_400604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 1
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 15
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RBP.i21
  %1626 = sub i64 %1625, 24
  %1627 = load i64, i64* %RAX.i20
  %1628 = load i64, i64* %PC.i19
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC.i19
  %1630 = inttoptr i64 %1626 to i64*
  store i64 %1627, i64* %1630
  store %struct.Memory* %loadMem_400604, %struct.Memory** %MEMORY
  %loadMem_400608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 9
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 15
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RBP.i18
  %1641 = sub i64 %1640, 16
  %1642 = load i64, i64* %PC.i17
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC.i17
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400608, %struct.Memory** %MEMORY
  %loadMem_40060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 9
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1652 to i32*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 15
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %1655 to i64*
  %1656 = load i64, i64* %RBP.i16
  %1657 = sub i64 %1656, 128
  %1658 = load i32, i32* %ESI.i
  %1659 = zext i32 %1658 to i64
  %1660 = load i64, i64* %PC.i15
  %1661 = add i64 %1660, 3
  store i64 %1661, i64* %PC.i15
  %1662 = inttoptr i64 %1657 to i32*
  store i32 %1658, i32* %1662
  store %struct.Memory* %loadMem_40060b, %struct.Memory** %MEMORY
  %loadMem_40060e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 1
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 15
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RBP.i14
  %1673 = sub i64 %1672, 24
  %1674 = load i64, i64* %PC.i12
  %1675 = add i64 %1674, 4
  store i64 %1675, i64* %PC.i12
  %1676 = inttoptr i64 %1673 to i64*
  %1677 = load i64, i64* %1676
  store i64 %1677, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_40060e, %struct.Memory** %MEMORY
  %loadMem_400612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 1
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 15
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %1686 to i64*
  %1687 = load i64, i64* %RBP.i11
  %1688 = sub i64 %1687, 136
  %1689 = load i64, i64* %RAX.i10
  %1690 = load i64, i64* %PC.i9
  %1691 = add i64 %1690, 7
  store i64 %1691, i64* %PC.i9
  %1692 = inttoptr i64 %1688 to i64*
  store i64 %1689, i64* %1692
  store %struct.Memory* %loadMem_400612, %struct.Memory** %MEMORY
  %loadMem_400619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 1
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 15
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %RBP.i8
  %1703 = sub i64 %1702, 136
  %1704 = load i64, i64* %PC.i7
  %1705 = add i64 %1704, 7
  store i64 %1705, i64* %PC.i7
  %1706 = inttoptr i64 %1703 to i64*
  %1707 = load i64, i64* %1706
  store i64 %1707, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400619, %struct.Memory** %MEMORY
  %loadMem_400620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 33
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 7
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 15
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1716 to i64*
  %1717 = load i64, i64* %RBP.i6
  %1718 = sub i64 %1717, 128
  %1719 = load i64, i64* %PC.i5
  %1720 = add i64 %1719, 3
  store i64 %1720, i64* %PC.i5
  %1721 = inttoptr i64 %1718 to i32*
  %1722 = load i32, i32* %1721
  %1723 = zext i32 %1722 to i64
  store i64 %1723, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_400620, %struct.Memory** %MEMORY
  %loadMem_400623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 3
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %PC.i4
  %1731 = add i64 %1730, 1
  store i64 %1731, i64* %PC.i4
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1733 = load i64, i64* %1732, align 8
  %1734 = add i64 %1733, 8
  %1735 = inttoptr i64 %1733 to i64*
  %1736 = load i64, i64* %1735
  store i64 %1736, i64* %RBX.i, align 8
  store i64 %1734, i64* %1732, align 8
  store %struct.Memory* %loadMem_400623, %struct.Memory** %MEMORY
  %loadMem_400624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 15
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %PC.i2
  %1744 = add i64 %1743, 1
  store i64 %1744, i64* %PC.i2
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1746 = load i64, i64* %1745, align 8
  %1747 = add i64 %1746, 8
  %1748 = inttoptr i64 %1746 to i64*
  %1749 = load i64, i64* %1748
  store i64 %1749, i64* %RBP.i3, align 8
  store i64 %1747, i64* %1745, align 8
  store %struct.Memory* %loadMem_400624, %struct.Memory** %MEMORY
  %loadMem_400625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %PC.i1
  %1754 = add i64 %1753, 1
  store i64 %1754, i64* %PC.i1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1757 = load i64, i64* %1756, align 8
  %1758 = inttoptr i64 %1757 to i64*
  %1759 = load i64, i64* %1758
  store i64 %1759, i64* %1755, align 8
  %1760 = add i64 %1757, 8
  store i64 %1760, i64* %1756, align 8
  store %struct.Memory* %loadMem_400625, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400625
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RBP, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_0x18__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EBX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__r8d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r11____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %R11
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__r9d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %R9D
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = add i32 %15, %13
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %12, align 8
  %21 = icmp ult i32 %19, %13
  %22 = icmp ult i32 %19, %15
  %23 = or i1 %21, %22
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %16, %14
  %33 = trunc i64 %32 to i32
  %34 = xor i32 %33, %19
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %19, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %19, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %13, 31
  %46 = lshr i32 %15, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__r11____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %R11
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__r11____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %R11
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBP, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400468:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
