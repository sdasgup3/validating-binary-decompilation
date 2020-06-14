; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
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

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @update(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15.i194 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R15.i194, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %PC.i, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i192 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %R14.i192, align 8
  %18 = load i64, i64* %PC.i, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC.i, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i190 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %RBX.i190, align 8
  %24 = load i64, i64* %PC.i, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %PC.i, align 8
  %26 = add i64 %7, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %PC.i, align 8
  %29 = add i64 %7, -136
  store i64 %29, i64* %RSP.i130, align 8
  %30 = icmp ult i64 %26, 104
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = trunc i64 %29 to i32
  %34 = and i32 %33, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %38, i8* %39, align 1
  %40 = xor i64 %26, %29
  %41 = lshr i64 %40, 4
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i64 %29, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i64 %29, 63
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i64 %26, 63
  %52 = xor i64 %48, %51
  %53 = add nuw nsw i64 %52, %51
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %55, i8* %56, align 1
  %RAX.i185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, 48
  %59 = add i64 %28, 8
  store i64 %59, i64* %PC.i, align 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %RAX.i185, align 8
  %R10.i183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %62 = add i64 %57, 40
  %63 = add i64 %28, 12
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %R10.i183, align 8
  %R11.i180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %66 = add i64 %57, 24
  store i64 %66, i64* %R11.i180, align 8
  %67 = add i64 %57, 16
  %68 = add i64 %28, 19
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RBX.i190, align 8
  %72 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  store i64 12, i64* %72, align 8
  %73 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 12, i64* %73, align 8
  %RDI.i170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %74 = add i64 %57, -56
  %75 = load i64, i64* %RDI.i170, align 8
  %76 = add i64 %28, 32
  store i64 %76, i64* %PC.i, align 8
  %77 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %77, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i167 = bitcast %union.anon* %78 to i32*
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -48
  %81 = load i32, i32* %ESI.i167, align 4
  %82 = load i64, i64* %PC.i, align 8
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC.i, align 8
  %84 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %84, align 4
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -56
  %87 = load i64, i64* %PC.i, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RDI.i170, align 8
  %91 = add i64 %85, -40
  %92 = add i64 %87, 8
  store i64 %92, i64* %PC.i, align 8
  %93 = inttoptr i64 %91 to i64*
  store i64 %90, i64* %93, align 8
  %RSI.i158 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -48
  %96 = load i64, i64* %PC.i, align 8
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i, align 8
  %98 = inttoptr i64 %95 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RSI.i158, align 8
  %101 = add i64 %94, -32
  %102 = add i64 %96, 6
  store i64 %102, i64* %PC.i, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 %99, i32* %103, align 4
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -64
  %106 = load i64, i64* %RDX.i, align 8
  %107 = load i64, i64* %PC.i, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC.i, align 8
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109, align 8
  %RCX.i150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -72
  %112 = load i64, i64* %RCX.i150, align 8
  %113 = load i64, i64* %PC.i, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC.i, align 8
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115, align 8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i147 = bitcast %union.anon* %116 to i32*
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -76
  %119 = load i32, i32* %R8D.i147, align 4
  %120 = load i64, i64* %PC.i, align 8
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %122, align 4
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %123 to i32*
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -80
  %126 = load i32, i32* %R9D.i, align 4
  %127 = load i64, i64* %PC.i, align 8
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC.i, align 8
  %129 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %129, align 4
  %130 = load i64, i64* %R15.i194, align 8
  %131 = load i64, i64* %PC.i, align 8
  store i64 %130, i64* %RDI.i170, align 8
  %EBX.i = bitcast %union.anon* %22 to i32*
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -92
  %134 = load i32, i32* %EBX.i, align 4
  %135 = add i64 %131, 6
  store i64 %135, i64* %PC.i, align 8
  %136 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -104
  %139 = load i64, i64* %R11.i180, align 8
  %140 = load i64, i64* %PC.i, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i, align 8
  %142 = inttoptr i64 %138 to i64*
  store i64 %139, i64* %142, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -112
  %145 = load i64, i64* %RAX.i185, align 8
  %146 = load i64, i64* %PC.i, align 8
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC.i, align 8
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148, align 8
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -120
  %151 = load i64, i64* %R10.i183, align 8
  %152 = load i64, i64* %PC.i, align 8
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC.i, align 8
  %154 = inttoptr i64 %150 to i64*
  store i64 %151, i64* %154, align 8
  %155 = load i64, i64* %PC.i, align 8
  %156 = add i64 %155, -348
  %157 = add i64 %155, 5
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %6, align 8
  store i64 %156, i64* %3, align 8
  %161 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -88
  %164 = load i64, i64* %RAX.i185, align 8
  %165 = load i64, i64* %PC.i, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC.i, align 8
  %167 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %167, align 8
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -40
  %170 = load i64, i64* %PC.i, align 8
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RSI.i158, align 8
  %175 = add i64 %168, -64
  %176 = add i64 %170, 7
  store i64 %176, i64* %PC.i, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RAX.i185, align 8
  %179 = add i64 %170, 9
  store i64 %179, i64* %PC.i, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, %173
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RSI.i158, align 8
  %184 = icmp ult i32 %182, %173
  %185 = icmp ult i32 %182, %181
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %32, align 1
  %188 = and i32 %182, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %39, align 1
  %193 = xor i32 %181, %173
  %194 = xor i32 %193, %182
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %44, align 1
  %198 = icmp eq i32 %182, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %47, align 1
  %200 = lshr i32 %182, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %50, align 1
  %202 = lshr i32 %173, 31
  %203 = lshr i32 %181, 31
  %204 = xor i32 %200, %202
  %205 = xor i32 %200, %203
  %206 = add nuw nsw i32 %204, %205
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %56, align 1
  %209 = add i64 %168, -72
  %210 = add i64 %170, 13
  store i64 %210, i64* %PC.i, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RAX.i185, align 8
  %213 = add i64 %170, 15
  store i64 %213, i64* %PC.i, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = add i32 %215, %182
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RSI.i158, align 8
  %218 = icmp ult i32 %216, %182
  %219 = icmp ult i32 %216, %215
  %220 = or i1 %218, %219
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %32, align 1
  %222 = and i32 %216, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %39, align 1
  %227 = xor i32 %215, %182
  %228 = xor i32 %227, %216
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %44, align 1
  %232 = icmp eq i32 %216, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %47, align 1
  %234 = lshr i32 %216, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %50, align 1
  %236 = lshr i32 %215, 31
  %237 = xor i32 %234, %200
  %238 = xor i32 %234, %236
  %239 = add nuw nsw i32 %237, %238
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %56, align 1
  %242 = add i64 %168, -104
  %243 = add i64 %170, 19
  store i64 %243, i64* %PC.i, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RAX.i185, align 8
  %246 = getelementptr inbounds %union.anon, %union.anon* %116, i64 0, i32 0
  %247 = add i64 %170, 22
  store i64 %247, i64* %PC.i, align 8
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %246, align 8
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, 40
  %253 = add i64 %170, 26
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RCX.i150, align 8
  %256 = add i64 %170, 29
  store i64 %256, i64* %PC.i, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, %249
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %246, align 8
  %261 = icmp ult i32 %259, %249
  %262 = icmp ult i32 %259, %258
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %32, align 1
  %265 = and i32 %259, 255
  %266 = call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %39, align 1
  %270 = xor i32 %258, %249
  %271 = xor i32 %270, %259
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %44, align 1
  %275 = icmp eq i32 %259, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %47, align 1
  %277 = lshr i32 %259, 31
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %50, align 1
  %279 = lshr i32 %249, 31
  %280 = lshr i32 %258, 31
  %281 = xor i32 %277, %279
  %282 = xor i32 %277, %280
  %283 = add nuw nsw i32 %281, %282
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %56, align 1
  %286 = add i64 %251, 48
  %287 = add i64 %170, 33
  store i64 %287, i64* %PC.i, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RCX.i150, align 8
  %290 = add i64 %170, 36
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, %259
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %246, align 8
  %295 = lshr i32 %293, 31
  %296 = load i64, i64* %RSI.i158, align 8
  %297 = trunc i64 %296 to i32
  %298 = add i32 %293, %297
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RSI.i158, align 8
  %300 = icmp ult i32 %298, %297
  %301 = icmp ult i32 %298, %293
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %32, align 1
  %304 = and i32 %298, 255
  %305 = call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %39, align 1
  %309 = xor i64 %294, %296
  %310 = trunc i64 %309 to i32
  %311 = xor i32 %310, %298
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %44, align 1
  %315 = icmp eq i32 %298, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %47, align 1
  %317 = lshr i32 %298, 31
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %50, align 1
  %319 = lshr i32 %297, 31
  %320 = xor i32 %317, %319
  %321 = xor i32 %317, %295
  %322 = add nuw nsw i32 %320, %321
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %56, align 1
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -88
  %327 = add i64 %170, 43
  store i64 %327, i64* %PC.i, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RCX.i150, align 8
  %330 = add i64 %170, 45
  store i64 %330, i64* %PC.i, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 %298, i32* %331, align 4
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -36
  %334 = load i64, i64* %PC.i, align 8
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i, align 8
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RSI.i158, align 8
  %339 = add i64 %332, -64
  %340 = add i64 %334, 7
  store i64 %340, i64* %PC.i, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RCX.i150, align 8
  %343 = add i64 %342, 4
  %344 = add i64 %334, 10
  store i64 %344, i64* %PC.i, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = add i32 %346, %337
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RSI.i158, align 8
  %349 = icmp ult i32 %347, %337
  %350 = icmp ult i32 %347, %346
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %32, align 1
  %353 = and i32 %347, 255
  %354 = call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %39, align 1
  %358 = xor i32 %346, %337
  %359 = xor i32 %358, %347
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %44, align 1
  %363 = icmp eq i32 %347, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %47, align 1
  %365 = lshr i32 %347, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %50, align 1
  %367 = lshr i32 %337, 31
  %368 = lshr i32 %346, 31
  %369 = xor i32 %365, %367
  %370 = xor i32 %365, %368
  %371 = add nuw nsw i32 %369, %370
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %56, align 1
  %374 = add i64 %332, -72
  %375 = add i64 %334, 14
  store i64 %375, i64* %PC.i, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RCX.i150, align 8
  %378 = add i64 %377, 4
  %379 = add i64 %334, 17
  store i64 %379, i64* %PC.i, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = add i32 %381, %347
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RSI.i158, align 8
  %384 = icmp ult i32 %382, %347
  %385 = icmp ult i32 %382, %381
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %32, align 1
  %388 = and i32 %382, 255
  %389 = call i32 @llvm.ctpop.i32(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %39, align 1
  %393 = xor i32 %381, %347
  %394 = xor i32 %393, %382
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %44, align 1
  %398 = icmp eq i32 %382, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %47, align 1
  %400 = lshr i32 %382, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %50, align 1
  %402 = lshr i32 %381, 31
  %403 = xor i32 %400, %365
  %404 = xor i32 %400, %402
  %405 = add nuw nsw i32 %403, %404
  %406 = icmp eq i32 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %56, align 1
  %408 = load i64, i64* %RAX.i185, align 8
  %409 = add i64 %408, 4
  %410 = add i64 %334, 21
  store i64 %410, i64* %PC.i, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %246, align 8
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, 40
  %416 = add i64 %334, 25
  store i64 %416, i64* %PC.i, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RCX.i150, align 8
  %419 = add i64 %418, 4
  %420 = add i64 %334, 29
  store i64 %420, i64* %PC.i, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = add i32 %422, %412
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %246, align 8
  %425 = icmp ult i32 %423, %412
  %426 = icmp ult i32 %423, %422
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %32, align 1
  %429 = and i32 %423, 255
  %430 = call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %39, align 1
  %434 = xor i32 %422, %412
  %435 = xor i32 %434, %423
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %44, align 1
  %439 = icmp eq i32 %423, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %47, align 1
  %441 = lshr i32 %423, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %50, align 1
  %443 = lshr i32 %412, 31
  %444 = lshr i32 %422, 31
  %445 = xor i32 %441, %443
  %446 = xor i32 %441, %444
  %447 = add nuw nsw i32 %445, %446
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %56, align 1
  %450 = add i64 %414, 48
  %451 = add i64 %334, 33
  store i64 %451, i64* %PC.i, align 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RCX.i150, align 8
  %454 = add i64 %453, 4
  %455 = add i64 %334, 37
  store i64 %455, i64* %PC.i, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, %423
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %246, align 8
  %460 = lshr i32 %458, 31
  %461 = load i64, i64* %RSI.i158, align 8
  %462 = trunc i64 %461 to i32
  %463 = add i32 %458, %462
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RSI.i158, align 8
  %465 = icmp ult i32 %463, %462
  %466 = icmp ult i32 %463, %458
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %32, align 1
  %469 = and i32 %463, 255
  %470 = call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %39, align 1
  %474 = xor i64 %459, %461
  %475 = trunc i64 %474 to i32
  %476 = xor i32 %475, %463
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %44, align 1
  %480 = icmp eq i32 %463, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %47, align 1
  %482 = lshr i32 %463, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %50, align 1
  %484 = lshr i32 %462, 31
  %485 = xor i32 %482, %484
  %486 = xor i32 %482, %460
  %487 = add nuw nsw i32 %485, %486
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %56, align 1
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -88
  %492 = add i64 %334, 44
  store i64 %492, i64* %PC.i, align 8
  %493 = inttoptr i64 %491 to i64*
  %494 = load i64, i64* %493, align 8
  store i64 %494, i64* %RCX.i150, align 8
  %495 = add i64 %494, 4
  %496 = add i64 %334, 47
  store i64 %496, i64* %PC.i, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 %463, i32* %497, align 4
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -32
  %500 = load i64, i64* %PC.i, align 8
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC.i, align 8
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RSI.i158, align 8
  %505 = add i64 %498, -64
  %506 = add i64 %500, 7
  store i64 %506, i64* %PC.i, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RCX.i150, align 8
  %509 = add i64 %508, 8
  %510 = add i64 %500, 10
  store i64 %510, i64* %PC.i, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = add i32 %512, %503
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RSI.i158, align 8
  %515 = icmp ult i32 %513, %503
  %516 = icmp ult i32 %513, %512
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %32, align 1
  %519 = and i32 %513, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %39, align 1
  %524 = xor i32 %512, %503
  %525 = xor i32 %524, %513
  %526 = lshr i32 %525, 4
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %44, align 1
  %529 = icmp eq i32 %513, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %47, align 1
  %531 = lshr i32 %513, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %50, align 1
  %533 = lshr i32 %503, 31
  %534 = lshr i32 %512, 31
  %535 = xor i32 %531, %533
  %536 = xor i32 %531, %534
  %537 = add nuw nsw i32 %535, %536
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %56, align 1
  %540 = add i64 %498, -72
  %541 = add i64 %500, 14
  store i64 %541, i64* %PC.i, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RCX.i150, align 8
  %544 = add i64 %543, 8
  %545 = add i64 %500, 17
  store i64 %545, i64* %PC.i, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, %513
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RSI.i158, align 8
  %550 = icmp ult i32 %548, %513
  %551 = icmp ult i32 %548, %547
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %32, align 1
  %554 = and i32 %548, 255
  %555 = call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %39, align 1
  %559 = xor i32 %547, %513
  %560 = xor i32 %559, %548
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %44, align 1
  %564 = icmp eq i32 %548, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %47, align 1
  %566 = lshr i32 %548, 31
  %567 = trunc i32 %566 to i8
  store i8 %567, i8* %50, align 1
  %568 = lshr i32 %547, 31
  %569 = xor i32 %566, %531
  %570 = xor i32 %566, %568
  %571 = add nuw nsw i32 %569, %570
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %56, align 1
  %574 = load i64, i64* %RAX.i185, align 8
  %575 = add i64 %574, 8
  %576 = add i64 %500, 21
  store i64 %576, i64* %PC.i, align 8
  %577 = inttoptr i64 %575 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %246, align 8
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, 40
  %582 = add i64 %500, 25
  store i64 %582, i64* %PC.i, align 8
  %583 = inttoptr i64 %581 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %RCX.i150, align 8
  %585 = add i64 %584, 8
  %586 = add i64 %500, 29
  store i64 %586, i64* %PC.i, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = add i32 %588, %578
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %246, align 8
  %591 = icmp ult i32 %589, %578
  %592 = icmp ult i32 %589, %588
  %593 = or i1 %591, %592
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %32, align 1
  %595 = and i32 %589, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %39, align 1
  %600 = xor i32 %588, %578
  %601 = xor i32 %600, %589
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %44, align 1
  %605 = icmp eq i32 %589, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %47, align 1
  %607 = lshr i32 %589, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %50, align 1
  %609 = lshr i32 %578, 31
  %610 = lshr i32 %588, 31
  %611 = xor i32 %607, %609
  %612 = xor i32 %607, %610
  %613 = add nuw nsw i32 %611, %612
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %56, align 1
  %616 = add i64 %580, 48
  %617 = add i64 %500, 33
  store i64 %617, i64* %PC.i, align 8
  %618 = inttoptr i64 %616 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %RCX.i150, align 8
  %620 = add i64 %619, 8
  %621 = add i64 %500, 37
  store i64 %621, i64* %PC.i, align 8
  %622 = inttoptr i64 %620 to i32*
  %623 = load i32, i32* %622, align 4
  %624 = add i32 %623, %589
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %246, align 8
  %626 = lshr i32 %624, 31
  %627 = load i64, i64* %RSI.i158, align 8
  %628 = trunc i64 %627 to i32
  %629 = add i32 %624, %628
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RSI.i158, align 8
  %631 = icmp ult i32 %629, %628
  %632 = icmp ult i32 %629, %624
  %633 = or i1 %631, %632
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %32, align 1
  %635 = and i32 %629, 255
  %636 = call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %39, align 1
  %640 = xor i64 %625, %627
  %641 = trunc i64 %640 to i32
  %642 = xor i32 %641, %629
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  store i8 %645, i8* %44, align 1
  %646 = icmp eq i32 %629, 0
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %47, align 1
  %648 = lshr i32 %629, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %50, align 1
  %650 = lshr i32 %628, 31
  %651 = xor i32 %648, %650
  %652 = xor i32 %648, %626
  %653 = add nuw nsw i32 %651, %652
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %56, align 1
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -88
  %658 = add i64 %500, 44
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RCX.i150, align 8
  %661 = add i64 %660, 8
  %662 = add i64 %500, 47
  store i64 %662, i64* %PC.i, align 8
  %663 = inttoptr i64 %661 to i32*
  store i32 %629, i32* %663, align 4
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -88
  %666 = load i64, i64* %PC.i, align 8
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i, align 8
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RAX.i185, align 8
  %670 = load i64, i64* %RSP.i130, align 8
  %671 = add i64 %670, 104
  store i64 %671, i64* %RSP.i130, align 8
  %672 = icmp ugt i64 %670, -105
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %32, align 1
  %674 = trunc i64 %671 to i32
  %675 = and i32 %674, 255
  %676 = call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %39, align 1
  %680 = xor i64 %670, %671
  %681 = lshr i64 %680, 4
  %682 = trunc i64 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %44, align 1
  %684 = icmp eq i64 %671, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %47, align 1
  %686 = lshr i64 %671, 63
  %687 = trunc i64 %686 to i8
  store i8 %687, i8* %50, align 1
  %688 = lshr i64 %670, 63
  %689 = xor i64 %686, %688
  %690 = add nuw nsw i64 %689, %686
  %691 = icmp eq i64 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %56, align 1
  %693 = add i64 %666, 9
  store i64 %693, i64* %PC.i, align 8
  %694 = add i64 %670, 112
  %695 = inttoptr i64 %671 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RBX.i190, align 8
  store i64 %694, i64* %6, align 8
  %697 = add i64 %666, 11
  store i64 %697, i64* %PC.i, align 8
  %698 = add i64 %670, 120
  %699 = inttoptr i64 %694 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %R14.i192, align 8
  store i64 %698, i64* %6, align 8
  %701 = add i64 %666, 13
  store i64 %701, i64* %PC.i, align 8
  %702 = add i64 %670, 128
  %703 = inttoptr i64 %698 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %R15.i194, align 8
  store i64 %702, i64* %6, align 8
  %705 = add i64 %666, 14
  store i64 %705, i64* %PC.i, align 8
  %706 = add i64 %670, 136
  %707 = inttoptr i64 %702 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RBP.i, align 8
  store i64 %706, i64* %6, align 8
  %709 = add i64 %666, 15
  store i64 %709, i64* %PC.i, align 8
  %710 = inttoptr i64 %706 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %3, align 8
  %712 = add i64 %670, 144
  store i64 %712, i64* %6, align 8
  ret %struct.Memory* %161
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
