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
define %struct.Memory* @print_element(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %12 = add i64 %7, -16
  %13 = add i64 %10, 8
  store i64 %13, i64* %PC.i, align 8
  %14 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %11, i64 0, i32 0, i32 0, i32 0, i64 0
  %15 = load i64, i64* %14, align 1
  %16 = inttoptr i64 %12 to i64*
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %17 to i32*
  %18 = load i64, i64* %RBP.i, align 8
  %19 = add i64 %18, -12
  %20 = load i32, i32* %EDI.i, align 4
  %21 = load i64, i64* %PC.i, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC.i, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %RSI.i324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -24
  %26 = load i64, i64* %RSI.i324, align 8
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -8
  %32 = load i64, i64* %PC.i, align 8
  %33 = add i64 %32, 5
  store i64 %33, i64* %PC.i, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %11, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %35, i64* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %38 = bitcast i64* %37 to double*
  store double 0.000000e+00, double* %38, align 1
  %39 = add i64 %30, -32
  %40 = add i64 %32, 10
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %35, i64* %41, align 8
  %RDI.i317 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -32
  %44 = load i64, i64* %PC.i, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC.i, align 8
  %46 = inttoptr i64 %43 to i8*
  %47 = load i8, i8* %46, align 1
  %48 = and i8 %47, 15
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %55 = or i8 %48, 48
  %56 = zext i8 %55 to i32
  %57 = zext i8 %55 to i64
  store i64 %57, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %58 = tail call i32 @llvm.ctpop.i32(i32 %56)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i310 = bitcast %union.anon* %62 to i8*
  store i8 %55, i8* %AL.i310, align 1
  %63 = add i64 %42, -24
  %64 = add i64 %44, 17
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RSI.i324, align 8
  %RCX.i304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %67 = add i64 %42, -12
  %68 = add i64 %44, 21
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %RCX.i304, align 8
  %72 = add i64 %71, %66
  %73 = add i64 %44, 24
  store i64 %73, i64* %PC.i, align 8
  %74 = inttoptr i64 %72 to i8*
  store i8 %55, i8* %74, align 1
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -32
  %77 = load i64, i64* %PC.i, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC.i, align 8
  %79 = inttoptr i64 %76 to i8*
  %80 = load i8, i8* %79, align 1
  %81 = and i8 %80, 15
  %82 = or i8 %81, 48
  %83 = zext i8 %82 to i32
  %84 = zext i8 %82 to i64
  store i64 %84, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %85 = tail call i32 @llvm.ctpop.i32(i32 %83)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %82, i8* %AL.i310, align 1
  %89 = add i64 %75, -24
  %90 = add i64 %77, 17
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RCX.i304, align 8
  %93 = add i64 %75, -12
  %94 = add i64 %77, 21
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %RSI.i324, align 8
  %98 = add i64 %92, 1
  %99 = add i64 %98, %97
  %100 = add i64 %77, 25
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %99 to i8*
  store i8 %82, i8* %101, align 1
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -31
  %104 = load i64, i64* %PC.i, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i, align 8
  %106 = inttoptr i64 %103 to i8*
  %107 = load i8, i8* %106, align 1
  %108 = and i8 %107, 15
  %109 = or i8 %108, 48
  %110 = zext i8 %109 to i32
  %111 = zext i8 %109 to i64
  store i64 %111, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %112 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %109, i8* %AL.i310, align 1
  %116 = add i64 %102, -24
  %117 = add i64 %104, 17
  store i64 %117, i64* %PC.i, align 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RCX.i304, align 8
  %120 = add i64 %102, -12
  %121 = add i64 %104, 21
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %RSI.i324, align 8
  %125 = add i64 %119, 2
  %126 = add i64 %125, %124
  %127 = add i64 %104, 25
  store i64 %127, i64* %PC.i, align 8
  %128 = inttoptr i64 %126 to i8*
  store i8 %109, i8* %128, align 1
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -31
  %131 = load i64, i64* %PC.i, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %130 to i8*
  %134 = load i8, i8* %133, align 1
  %135 = and i8 %134, 15
  %136 = or i8 %135, 48
  %137 = zext i8 %136 to i32
  %138 = zext i8 %136 to i64
  store i64 %138, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %139 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %136, i8* %AL.i310, align 1
  %143 = add i64 %129, -24
  %144 = add i64 %131, 17
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RCX.i304, align 8
  %147 = add i64 %129, -12
  %148 = add i64 %131, 21
  store i64 %148, i64* %PC.i, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %RSI.i324, align 8
  %152 = add i64 %146, 3
  %153 = add i64 %152, %151
  %154 = add i64 %131, 25
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %153 to i8*
  store i8 %136, i8* %155, align 1
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -30
  %158 = load i64, i64* %PC.i, align 8
  %159 = add i64 %158, 4
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %157 to i8*
  %161 = load i8, i8* %160, align 1
  %162 = and i8 %161, 15
  %163 = or i8 %162, 48
  %164 = zext i8 %163 to i32
  %165 = zext i8 %163 to i64
  store i64 %165, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %166 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %163, i8* %AL.i310, align 1
  %170 = add i64 %156, -24
  %171 = add i64 %158, 17
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RCX.i304, align 8
  %174 = add i64 %156, -12
  %175 = add i64 %158, 21
  store i64 %175, i64* %PC.i, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RSI.i324, align 8
  %179 = add i64 %173, 4
  %180 = add i64 %179, %178
  %181 = add i64 %158, 25
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i8*
  store i8 %163, i8* %182, align 1
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -30
  %185 = load i64, i64* %PC.i, align 8
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %184 to i8*
  %188 = load i8, i8* %187, align 1
  %189 = and i8 %188, 15
  %190 = or i8 %189, 48
  %191 = zext i8 %190 to i32
  %192 = zext i8 %190 to i64
  store i64 %192, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %193 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %190, i8* %AL.i310, align 1
  %197 = add i64 %183, -24
  %198 = add i64 %185, 17
  store i64 %198, i64* %PC.i, align 8
  %199 = inttoptr i64 %197 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RCX.i304, align 8
  %201 = add i64 %183, -12
  %202 = add i64 %185, 21
  store i64 %202, i64* %PC.i, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %RSI.i324, align 8
  %206 = add i64 %200, 5
  %207 = add i64 %206, %205
  %208 = add i64 %185, 25
  store i64 %208, i64* %PC.i, align 8
  %209 = inttoptr i64 %207 to i8*
  store i8 %190, i8* %209, align 1
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -29
  %212 = load i64, i64* %PC.i, align 8
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC.i, align 8
  %214 = inttoptr i64 %211 to i8*
  %215 = load i8, i8* %214, align 1
  %216 = and i8 %215, 15
  %217 = or i8 %216, 48
  %218 = zext i8 %217 to i32
  %219 = zext i8 %217 to i64
  store i64 %219, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %220 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %217, i8* %AL.i310, align 1
  %224 = add i64 %210, -24
  %225 = add i64 %212, 17
  store i64 %225, i64* %PC.i, align 8
  %226 = inttoptr i64 %224 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RCX.i304, align 8
  %228 = add i64 %210, -12
  %229 = add i64 %212, 21
  store i64 %229, i64* %PC.i, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %RSI.i324, align 8
  %233 = add i64 %227, 6
  %234 = add i64 %233, %232
  %235 = add i64 %212, 25
  store i64 %235, i64* %PC.i, align 8
  %236 = inttoptr i64 %234 to i8*
  store i8 %217, i8* %236, align 1
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -29
  %239 = load i64, i64* %PC.i, align 8
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC.i, align 8
  %241 = inttoptr i64 %238 to i8*
  %242 = load i8, i8* %241, align 1
  %243 = and i8 %242, 15
  %244 = or i8 %243, 48
  %245 = zext i8 %244 to i32
  %246 = zext i8 %244 to i64
  store i64 %246, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %247 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %244, i8* %AL.i310, align 1
  %251 = add i64 %237, -24
  %252 = add i64 %239, 17
  store i64 %252, i64* %PC.i, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RCX.i304, align 8
  %255 = add i64 %237, -12
  %256 = add i64 %239, 21
  store i64 %256, i64* %PC.i, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RSI.i324, align 8
  %260 = add i64 %254, 7
  %261 = add i64 %260, %259
  %262 = add i64 %239, 25
  store i64 %262, i64* %PC.i, align 8
  %263 = inttoptr i64 %261 to i8*
  store i8 %244, i8* %263, align 1
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -28
  %266 = load i64, i64* %PC.i, align 8
  %267 = add i64 %266, 4
  store i64 %267, i64* %PC.i, align 8
  %268 = inttoptr i64 %265 to i8*
  %269 = load i8, i8* %268, align 1
  %270 = and i8 %269, 15
  %271 = or i8 %270, 48
  %272 = zext i8 %271 to i32
  %273 = zext i8 %271 to i64
  store i64 %273, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %274 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %271, i8* %AL.i310, align 1
  %278 = add i64 %264, -24
  %279 = add i64 %266, 17
  store i64 %279, i64* %PC.i, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %RCX.i304, align 8
  %282 = add i64 %264, -12
  %283 = add i64 %266, 21
  store i64 %283, i64* %PC.i, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %RSI.i324, align 8
  %287 = add i64 %281, 8
  %288 = add i64 %287, %286
  %289 = add i64 %266, 25
  store i64 %289, i64* %PC.i, align 8
  %290 = inttoptr i64 %288 to i8*
  store i8 %271, i8* %290, align 1
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -28
  %293 = load i64, i64* %PC.i, align 8
  %294 = add i64 %293, 4
  store i64 %294, i64* %PC.i, align 8
  %295 = inttoptr i64 %292 to i8*
  %296 = load i8, i8* %295, align 1
  %297 = and i8 %296, 15
  %298 = or i8 %297, 48
  %299 = zext i8 %298 to i32
  %300 = zext i8 %298 to i64
  store i64 %300, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %301 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %298, i8* %AL.i310, align 1
  %305 = add i64 %291, -24
  %306 = add i64 %293, 17
  store i64 %306, i64* %PC.i, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RCX.i304, align 8
  %309 = add i64 %291, -12
  %310 = add i64 %293, 21
  store i64 %310, i64* %PC.i, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %RSI.i324, align 8
  %314 = add i64 %308, 9
  %315 = add i64 %314, %313
  %316 = add i64 %293, 25
  store i64 %316, i64* %PC.i, align 8
  %317 = inttoptr i64 %315 to i8*
  store i8 %298, i8* %317, align 1
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -27
  %320 = load i64, i64* %PC.i, align 8
  %321 = add i64 %320, 4
  store i64 %321, i64* %PC.i, align 8
  %322 = inttoptr i64 %319 to i8*
  %323 = load i8, i8* %322, align 1
  %324 = and i8 %323, 15
  %325 = or i8 %324, 48
  %326 = zext i8 %325 to i32
  %327 = zext i8 %325 to i64
  store i64 %327, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %328 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %325, i8* %AL.i310, align 1
  %332 = add i64 %318, -24
  %333 = add i64 %320, 17
  store i64 %333, i64* %PC.i, align 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %RCX.i304, align 8
  %336 = add i64 %318, -12
  %337 = add i64 %320, 21
  store i64 %337, i64* %PC.i, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %RSI.i324, align 8
  %341 = add i64 %335, 10
  %342 = add i64 %341, %340
  %343 = add i64 %320, 25
  store i64 %343, i64* %PC.i, align 8
  %344 = inttoptr i64 %342 to i8*
  store i8 %325, i8* %344, align 1
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -27
  %347 = load i64, i64* %PC.i, align 8
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC.i, align 8
  %349 = inttoptr i64 %346 to i8*
  %350 = load i8, i8* %349, align 1
  %351 = and i8 %350, 15
  %352 = or i8 %351, 48
  %353 = zext i8 %352 to i32
  %354 = zext i8 %352 to i64
  store i64 %354, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %355 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %352, i8* %AL.i310, align 1
  %359 = add i64 %345, -24
  %360 = add i64 %347, 17
  store i64 %360, i64* %PC.i, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %RCX.i304, align 8
  %363 = add i64 %345, -12
  %364 = add i64 %347, 21
  store i64 %364, i64* %PC.i, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %RSI.i324, align 8
  %368 = add i64 %362, 11
  %369 = add i64 %368, %367
  %370 = add i64 %347, 25
  store i64 %370, i64* %PC.i, align 8
  %371 = inttoptr i64 %369 to i8*
  store i8 %352, i8* %371, align 1
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -26
  %374 = load i64, i64* %PC.i, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC.i, align 8
  %376 = inttoptr i64 %373 to i8*
  %377 = load i8, i8* %376, align 1
  %378 = and i8 %377, 15
  %379 = or i8 %378, 48
  %380 = zext i8 %379 to i32
  %381 = zext i8 %379 to i64
  store i64 %381, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %382 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %379, i8* %AL.i310, align 1
  %386 = add i64 %372, -24
  %387 = add i64 %374, 17
  store i64 %387, i64* %PC.i, align 8
  %388 = inttoptr i64 %386 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %RCX.i304, align 8
  %390 = add i64 %372, -12
  %391 = add i64 %374, 21
  store i64 %391, i64* %PC.i, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  store i64 %394, i64* %RSI.i324, align 8
  %395 = add i64 %389, 12
  %396 = add i64 %395, %394
  %397 = add i64 %374, 25
  store i64 %397, i64* %PC.i, align 8
  %398 = inttoptr i64 %396 to i8*
  store i8 %379, i8* %398, align 1
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -26
  %401 = load i64, i64* %PC.i, align 8
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC.i, align 8
  %403 = inttoptr i64 %400 to i8*
  %404 = load i8, i8* %403, align 1
  %405 = and i8 %404, 15
  %406 = or i8 %405, 48
  %407 = zext i8 %406 to i32
  %408 = zext i8 %406 to i64
  store i64 %408, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %409 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %406, i8* %AL.i310, align 1
  %413 = add i64 %399, -24
  %414 = add i64 %401, 17
  store i64 %414, i64* %PC.i, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RCX.i304, align 8
  %417 = add i64 %399, -12
  %418 = add i64 %401, 21
  store i64 %418, i64* %PC.i, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  store i64 %421, i64* %RSI.i324, align 8
  %422 = add i64 %416, 13
  %423 = add i64 %422, %421
  %424 = add i64 %401, 25
  store i64 %424, i64* %PC.i, align 8
  %425 = inttoptr i64 %423 to i8*
  store i8 %406, i8* %425, align 1
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -25
  %428 = load i64, i64* %PC.i, align 8
  %429 = add i64 %428, 4
  store i64 %429, i64* %PC.i, align 8
  %430 = inttoptr i64 %427 to i8*
  %431 = load i8, i8* %430, align 1
  %432 = and i8 %431, 15
  %433 = or i8 %432, 48
  %434 = zext i8 %433 to i32
  %435 = zext i8 %433 to i64
  store i64 %435, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %436 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %433, i8* %AL.i310, align 1
  %440 = add i64 %426, -24
  %441 = add i64 %428, 17
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RCX.i304, align 8
  %444 = add i64 %426, -12
  %445 = add i64 %428, 21
  store i64 %445, i64* %PC.i, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %RSI.i324, align 8
  %449 = add i64 %443, 14
  %450 = add i64 %449, %448
  %451 = add i64 %428, 25
  store i64 %451, i64* %PC.i, align 8
  %452 = inttoptr i64 %450 to i8*
  store i8 %433, i8* %452, align 1
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -25
  %455 = load i64, i64* %PC.i, align 8
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC.i, align 8
  %457 = inttoptr i64 %454 to i8*
  %458 = load i8, i8* %457, align 1
  %459 = and i8 %458, 15
  %460 = or i8 %459, 48
  %461 = zext i8 %460 to i32
  %462 = zext i8 %460 to i64
  store i64 %462, i64* %RDI.i317, align 8
  store i8 0, i8* %49, align 1
  %463 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %50, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 %460, i8* %AL.i310, align 1
  %467 = add i64 %453, -24
  %468 = add i64 %455, 17
  store i64 %468, i64* %PC.i, align 8
  %469 = inttoptr i64 %467 to i64*
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %RCX.i304, align 8
  %471 = add i64 %453, -12
  %472 = add i64 %455, 21
  store i64 %472, i64* %PC.i, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = sext i32 %474 to i64
  store i64 %475, i64* %RSI.i324, align 8
  %476 = add i64 %470, 15
  %477 = add i64 %476, %475
  %478 = add i64 %455, 25
  store i64 %478, i64* %PC.i, align 8
  %479 = inttoptr i64 %477 to i8*
  store i8 %460, i8* %479, align 1
  %480 = load i64, i64* %PC.i, align 8
  %481 = add i64 %480, 1
  store i64 %481, i64* %PC.i, align 8
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RBP.i, align 8
  store i64 %483, i64* %6, align 8
  %486 = add i64 %480, 2
  store i64 %486, i64* %PC.i, align 8
  %487 = inttoptr i64 %483 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %3, align 8
  %489 = add i64 %482, 16
  store i64 %489, i64* %6, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x20__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 15
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDI, align 8
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

define %struct.Memory* @routine_addl__0x30___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 48
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -49
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

define %struct.Memory* @routine_movb__dil___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al____rsi__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %AL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x1__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 1
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1f__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -31
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x2__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 2
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x3__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 3
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1e__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -30
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x4__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 4
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x5__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 5
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1d__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -29
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x6__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 6
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x7__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 7
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x8__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 8
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0x9__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 9
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1b__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -27
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0xa__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 10
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0xb__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 11
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1a__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -26
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0xc__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 12
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0xd__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 13
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x19__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -25
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0xe__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 14
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__0xf__rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 15
  %7 = add i64 %6, %5
  %8 = load i8, i8* %AL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
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
