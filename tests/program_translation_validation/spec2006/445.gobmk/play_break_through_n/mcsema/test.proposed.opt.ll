; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x581b60_type = type <{ [8 x i8] }>
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
@G__0x581b60 = global %G__0x581b60_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46b280.break_through(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @play_break_through_n(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -520
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %18 to i8*
  %19 = load i8, i8* %AL.i, align 1
  store i8 0, i8* %12, align 1
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %13, align 1
  %25 = icmp eq i8 %19, 0
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %15, align 1
  %27 = lshr i8 %19, 7
  store i8 %27, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %29 = add i64 %7, -264
  %30 = add i64 %10, 19
  store i64 %30, i64* %3, align 8
  %31 = bitcast %union.VectorReg* %28 to <2 x float>*
  %32 = load <2 x float>, <2 x float>* %31, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %34 = bitcast i64* %33 to <2 x float>*
  %35 = load <2 x float>, <2 x float>* %34, align 1
  %36 = extractelement <2 x float> %32, i32 0
  %37 = inttoptr i64 %29 to float*
  store float %36, float* %37, align 4
  %38 = add i64 %7, -260
  %39 = extractelement <2 x float> %32, i32 1
  %40 = inttoptr i64 %38 to float*
  store float %39, float* %40, align 4
  %41 = add i64 %7, -256
  %42 = extractelement <2 x float> %35, i32 0
  %43 = inttoptr i64 %41 to float*
  store float %42, float* %43, align 4
  %44 = add i64 %7, -252
  %45 = extractelement <2 x float> %35, i32 1
  %46 = inttoptr i64 %44 to float*
  store float %45, float* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -272
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = bitcast %union.VectorReg* %47 to <2 x float>*
  %53 = load <2 x float>, <2 x float>* %52, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to <2 x float>*
  %56 = load <2 x float>, <2 x float>* %55, align 1
  %57 = extractelement <2 x float> %53, i32 0
  %58 = inttoptr i64 %49 to float*
  store float %57, float* %58, align 4
  %59 = add i64 %48, -268
  %60 = extractelement <2 x float> %53, i32 1
  %61 = inttoptr i64 %59 to float*
  store float %60, float* %61, align 4
  %62 = add i64 %48, -264
  %63 = extractelement <2 x float> %56, i32 0
  %64 = inttoptr i64 %62 to float*
  store float %63, float* %64, align 4
  %65 = add i64 %48, -260
  %66 = extractelement <2 x float> %56, i32 1
  %67 = inttoptr i64 %65 to float*
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -288
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %3, align 8
  %73 = bitcast %union.VectorReg* %68 to <2 x float>*
  %74 = load <2 x float>, <2 x float>* %73, align 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %76 = bitcast i64* %75 to <2 x float>*
  %77 = load <2 x float>, <2 x float>* %76, align 1
  %78 = extractelement <2 x float> %74, i32 0
  %79 = inttoptr i64 %70 to float*
  store float %78, float* %79, align 4
  %80 = add i64 %69, -284
  %81 = extractelement <2 x float> %74, i32 1
  %82 = inttoptr i64 %80 to float*
  store float %81, float* %82, align 4
  %83 = add i64 %69, -280
  %84 = extractelement <2 x float> %77, i32 0
  %85 = inttoptr i64 %83 to float*
  store float %84, float* %85, align 4
  %86 = add i64 %69, -276
  %87 = extractelement <2 x float> %77, i32 1
  %88 = inttoptr i64 %86 to float*
  store float %87, float* %88, align 4
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -304
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %3, align 8
  %94 = bitcast %union.VectorReg* %89 to <2 x float>*
  %95 = load <2 x float>, <2 x float>* %94, align 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %97 = bitcast i64* %96 to <2 x float>*
  %98 = load <2 x float>, <2 x float>* %97, align 1
  %99 = extractelement <2 x float> %95, i32 0
  %100 = inttoptr i64 %91 to float*
  store float %99, float* %100, align 4
  %101 = add i64 %90, -300
  %102 = extractelement <2 x float> %95, i32 1
  %103 = inttoptr i64 %101 to float*
  store float %102, float* %103, align 4
  %104 = add i64 %90, -296
  %105 = extractelement <2 x float> %98, i32 0
  %106 = inttoptr i64 %104 to float*
  store float %105, float* %106, align 4
  %107 = add i64 %90, -292
  %108 = extractelement <2 x float> %98, i32 1
  %109 = inttoptr i64 %107 to float*
  store float %108, float* %109, align 4
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -320
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 7
  store i64 %114, i64* %3, align 8
  %115 = bitcast %union.VectorReg* %110 to <2 x float>*
  %116 = load <2 x float>, <2 x float>* %115, align 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %118 = bitcast i64* %117 to <2 x float>*
  %119 = load <2 x float>, <2 x float>* %118, align 1
  %120 = extractelement <2 x float> %116, i32 0
  %121 = inttoptr i64 %112 to float*
  store float %120, float* %121, align 4
  %122 = add i64 %111, -316
  %123 = extractelement <2 x float> %116, i32 1
  %124 = inttoptr i64 %122 to float*
  store float %123, float* %124, align 4
  %125 = add i64 %111, -312
  %126 = extractelement <2 x float> %119, i32 0
  %127 = inttoptr i64 %125 to float*
  store float %126, float* %127, align 4
  %128 = add i64 %111, -308
  %129 = extractelement <2 x float> %119, i32 1
  %130 = inttoptr i64 %128 to float*
  store float %129, float* %130, align 4
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -336
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, 7
  store i64 %135, i64* %3, align 8
  %136 = bitcast %union.VectorReg* %131 to <2 x float>*
  %137 = load <2 x float>, <2 x float>* %136, align 1
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %139 = bitcast i64* %138 to <2 x float>*
  %140 = load <2 x float>, <2 x float>* %139, align 1
  %141 = extractelement <2 x float> %137, i32 0
  %142 = inttoptr i64 %133 to float*
  store float %141, float* %142, align 4
  %143 = add i64 %132, -332
  %144 = extractelement <2 x float> %137, i32 1
  %145 = inttoptr i64 %143 to float*
  store float %144, float* %145, align 4
  %146 = add i64 %132, -328
  %147 = extractelement <2 x float> %140, i32 0
  %148 = inttoptr i64 %146 to float*
  store float %147, float* %148, align 4
  %149 = add i64 %132, -324
  %150 = extractelement <2 x float> %140, i32 1
  %151 = inttoptr i64 %149 to float*
  store float %150, float* %151, align 4
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -352
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 7
  store i64 %156, i64* %3, align 8
  %157 = bitcast %union.VectorReg* %152 to <2 x float>*
  %158 = load <2 x float>, <2 x float>* %157, align 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %160 = bitcast i64* %159 to <2 x float>*
  %161 = load <2 x float>, <2 x float>* %160, align 1
  %162 = extractelement <2 x float> %158, i32 0
  %163 = inttoptr i64 %154 to float*
  store float %162, float* %163, align 4
  %164 = add i64 %153, -348
  %165 = extractelement <2 x float> %158, i32 1
  %166 = inttoptr i64 %164 to float*
  store float %165, float* %166, align 4
  %167 = add i64 %153, -344
  %168 = extractelement <2 x float> %161, i32 0
  %169 = inttoptr i64 %167 to float*
  store float %168, float* %169, align 4
  %170 = add i64 %153, -340
  %171 = extractelement <2 x float> %161, i32 1
  %172 = inttoptr i64 %170 to float*
  store float %171, float* %172, align 4
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -368
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 7
  store i64 %177, i64* %3, align 8
  %178 = bitcast %union.VectorReg* %173 to <2 x float>*
  %179 = load <2 x float>, <2 x float>* %178, align 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %181 = bitcast i64* %180 to <2 x float>*
  %182 = load <2 x float>, <2 x float>* %181, align 1
  %183 = extractelement <2 x float> %179, i32 0
  %184 = inttoptr i64 %175 to float*
  store float %183, float* %184, align 4
  %185 = add i64 %174, -364
  %186 = extractelement <2 x float> %179, i32 1
  %187 = inttoptr i64 %185 to float*
  store float %186, float* %187, align 4
  %188 = add i64 %174, -360
  %189 = extractelement <2 x float> %182, i32 0
  %190 = inttoptr i64 %188 to float*
  store float %189, float* %190, align 4
  %191 = add i64 %174, -356
  %192 = extractelement <2 x float> %182, i32 1
  %193 = inttoptr i64 %191 to float*
  store float %192, float* %193, align 4
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i499 = bitcast %union.anon* %194 to i32*
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -372
  %197 = load i32, i32* %EDI.i499, align 4
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 6
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %196 to i32*
  store i32 %197, i32* %200, align 4
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i497 = getelementptr inbounds %union.anon, %union.anon* %201, i64 0, i32 0
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -384
  %204 = load i64, i64* %R9.i497, align 8
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 7
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %203 to i64*
  store i64 %204, i64* %207, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -392
  %210 = load i64, i64* %R8.i, align 8
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %209 to i64*
  store i64 %210, i64* %213, align 8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i491 = getelementptr inbounds %union.anon, %union.anon* %214, i64 0, i32 0
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -400
  %217 = load i64, i64* %RCX.i491, align 8
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %220, align 8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i488 = getelementptr inbounds %union.anon, %union.anon* %221, i64 0, i32 0
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -408
  %224 = load i64, i64* %RDX.i488, align 8
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 7
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %223 to i64*
  store i64 %224, i64* %227, align 8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %228 to i32*
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -412
  %231 = load i32, i32* %ESI.i, align 4
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %234, align 4
  %235 = load i64, i64* %3, align 8
  %236 = load i8, i8* %15, align 1
  %237 = icmp ne i8 %236, 0
  %.v34 = select i1 %237, i64 106, i64 6
  %238 = add i64 %235, %.v34
  store i64 %238, i64* %3, align 8
  %cmpBr_477d4d = icmp eq i8 %236, 1
  br i1 %cmpBr_477d4d, label %block_.L_477db7, label %block_477d53

block_477d53:                                     ; preds = %entry
  %239 = bitcast %union.VectorReg* %173 to i8*
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -368
  %242 = add i64 %238, 7
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = add i64 %240, -364
  %246 = inttoptr i64 %245 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = add i64 %240, -360
  %249 = inttoptr i64 %248 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = add i64 %240, -356
  %252 = inttoptr i64 %251 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = bitcast %union.VectorReg* %173 to i32*
  store i32 %244, i32* %254, align 1
  %255 = getelementptr inbounds i8, i8* %239, i64 4
  %256 = bitcast i8* %255 to i32*
  store i32 %247, i32* %256, align 1
  %257 = bitcast i64* %180 to i32*
  store i32 %250, i32* %257, align 1
  %258 = getelementptr inbounds i8, i8* %239, i64 12
  %259 = bitcast i8* %258 to i32*
  store i32 %253, i32* %259, align 1
  %260 = add i64 %240, -192
  %261 = add i64 %238, 14
  store i64 %261, i64* %3, align 8
  %262 = load <2 x float>, <2 x float>* %178, align 1
  %263 = load <2 x float>, <2 x float>* %181, align 1
  %264 = extractelement <2 x float> %262, i32 0
  %265 = inttoptr i64 %260 to float*
  store float %264, float* %265, align 4
  %266 = add i64 %240, -188
  %267 = extractelement <2 x float> %262, i32 1
  %268 = inttoptr i64 %266 to float*
  store float %267, float* %268, align 4
  %269 = add i64 %240, -184
  %270 = extractelement <2 x float> %263, i32 0
  %271 = inttoptr i64 %269 to float*
  store float %270, float* %271, align 4
  %272 = add i64 %240, -180
  %273 = extractelement <2 x float> %263, i32 1
  %274 = inttoptr i64 %272 to float*
  store float %273, float* %274, align 4
  %275 = bitcast %union.VectorReg* %152 to i8*
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -352
  %278 = load i64, i64* %3, align 8
  %279 = add i64 %278, 7
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = add i64 %276, -348
  %283 = inttoptr i64 %282 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = add i64 %276, -344
  %286 = inttoptr i64 %285 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i64 %276, -340
  %289 = inttoptr i64 %288 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = bitcast %union.VectorReg* %152 to i32*
  store i32 %281, i32* %291, align 1
  %292 = getelementptr inbounds i8, i8* %275, i64 4
  %293 = bitcast i8* %292 to i32*
  store i32 %284, i32* %293, align 1
  %294 = bitcast i64* %159 to i32*
  store i32 %287, i32* %294, align 1
  %295 = getelementptr inbounds i8, i8* %275, i64 12
  %296 = bitcast i8* %295 to i32*
  store i32 %290, i32* %296, align 1
  %297 = add i64 %276, -176
  %298 = add i64 %278, 14
  store i64 %298, i64* %3, align 8
  %299 = load <2 x float>, <2 x float>* %157, align 1
  %300 = load <2 x float>, <2 x float>* %160, align 1
  %301 = extractelement <2 x float> %299, i32 0
  %302 = inttoptr i64 %297 to float*
  store float %301, float* %302, align 4
  %303 = add i64 %276, -172
  %304 = extractelement <2 x float> %299, i32 1
  %305 = inttoptr i64 %303 to float*
  store float %304, float* %305, align 4
  %306 = add i64 %276, -168
  %307 = extractelement <2 x float> %300, i32 0
  %308 = inttoptr i64 %306 to float*
  store float %307, float* %308, align 4
  %309 = add i64 %276, -164
  %310 = extractelement <2 x float> %300, i32 1
  %311 = inttoptr i64 %309 to float*
  store float %310, float* %311, align 4
  %312 = bitcast %union.VectorReg* %131 to i8*
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -336
  %315 = load i64, i64* %3, align 8
  %316 = add i64 %315, 7
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = add i64 %313, -332
  %320 = inttoptr i64 %319 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i64 %313, -328
  %323 = inttoptr i64 %322 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i64 %313, -324
  %326 = inttoptr i64 %325 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = bitcast %union.VectorReg* %131 to i32*
  store i32 %318, i32* %328, align 1
  %329 = getelementptr inbounds i8, i8* %312, i64 4
  %330 = bitcast i8* %329 to i32*
  store i32 %321, i32* %330, align 1
  %331 = bitcast i64* %138 to i32*
  store i32 %324, i32* %331, align 1
  %332 = getelementptr inbounds i8, i8* %312, i64 12
  %333 = bitcast i8* %332 to i32*
  store i32 %327, i32* %333, align 1
  %334 = add i64 %313, -160
  %335 = add i64 %315, 14
  store i64 %335, i64* %3, align 8
  %336 = load <2 x float>, <2 x float>* %136, align 1
  %337 = load <2 x float>, <2 x float>* %139, align 1
  %338 = extractelement <2 x float> %336, i32 0
  %339 = inttoptr i64 %334 to float*
  store float %338, float* %339, align 4
  %340 = add i64 %313, -156
  %341 = extractelement <2 x float> %336, i32 1
  %342 = inttoptr i64 %340 to float*
  store float %341, float* %342, align 4
  %343 = add i64 %313, -152
  %344 = extractelement <2 x float> %337, i32 0
  %345 = inttoptr i64 %343 to float*
  store float %344, float* %345, align 4
  %346 = add i64 %313, -148
  %347 = extractelement <2 x float> %337, i32 1
  %348 = inttoptr i64 %346 to float*
  store float %347, float* %348, align 4
  %349 = bitcast %union.VectorReg* %110 to i8*
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -320
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 7
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i64 %350, -316
  %357 = inttoptr i64 %356 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = add i64 %350, -312
  %360 = inttoptr i64 %359 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = add i64 %350, -308
  %363 = inttoptr i64 %362 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = bitcast %union.VectorReg* %110 to i32*
  store i32 %355, i32* %365, align 1
  %366 = getelementptr inbounds i8, i8* %349, i64 4
  %367 = bitcast i8* %366 to i32*
  store i32 %358, i32* %367, align 1
  %368 = bitcast i64* %117 to i32*
  store i32 %361, i32* %368, align 1
  %369 = getelementptr inbounds i8, i8* %349, i64 12
  %370 = bitcast i8* %369 to i32*
  store i32 %364, i32* %370, align 1
  %371 = add i64 %350, -144
  %372 = add i64 %352, 14
  store i64 %372, i64* %3, align 8
  %373 = load <2 x float>, <2 x float>* %115, align 1
  %374 = load <2 x float>, <2 x float>* %118, align 1
  %375 = extractelement <2 x float> %373, i32 0
  %376 = inttoptr i64 %371 to float*
  store float %375, float* %376, align 4
  %377 = add i64 %350, -140
  %378 = extractelement <2 x float> %373, i32 1
  %379 = inttoptr i64 %377 to float*
  store float %378, float* %379, align 4
  %380 = add i64 %350, -136
  %381 = extractelement <2 x float> %374, i32 0
  %382 = inttoptr i64 %380 to float*
  store float %381, float* %382, align 4
  %383 = add i64 %350, -132
  %384 = extractelement <2 x float> %374, i32 1
  %385 = inttoptr i64 %383 to float*
  store float %384, float* %385, align 4
  %386 = bitcast %union.VectorReg* %89 to i8*
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -304
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 7
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = add i64 %387, -300
  %394 = inttoptr i64 %393 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = add i64 %387, -296
  %397 = inttoptr i64 %396 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i64 %387, -292
  %400 = inttoptr i64 %399 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = bitcast %union.VectorReg* %89 to i32*
  store i32 %392, i32* %402, align 1
  %403 = getelementptr inbounds i8, i8* %386, i64 4
  %404 = bitcast i8* %403 to i32*
  store i32 %395, i32* %404, align 1
  %405 = bitcast i64* %96 to i32*
  store i32 %398, i32* %405, align 1
  %406 = getelementptr inbounds i8, i8* %386, i64 12
  %407 = bitcast i8* %406 to i32*
  store i32 %401, i32* %407, align 1
  %408 = add i64 %387, -128
  %409 = add i64 %389, 11
  store i64 %409, i64* %3, align 8
  %410 = load <2 x float>, <2 x float>* %94, align 1
  %411 = load <2 x float>, <2 x float>* %97, align 1
  %412 = extractelement <2 x float> %410, i32 0
  %413 = inttoptr i64 %408 to float*
  store float %412, float* %413, align 4
  %414 = add i64 %387, -124
  %415 = extractelement <2 x float> %410, i32 1
  %416 = inttoptr i64 %414 to float*
  store float %415, float* %416, align 4
  %417 = add i64 %387, -120
  %418 = extractelement <2 x float> %411, i32 0
  %419 = inttoptr i64 %417 to float*
  store float %418, float* %419, align 4
  %420 = add i64 %387, -116
  %421 = extractelement <2 x float> %411, i32 1
  %422 = inttoptr i64 %420 to float*
  store float %421, float* %422, align 4
  %423 = bitcast %union.VectorReg* %68 to i8*
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -288
  %426 = load i64, i64* %3, align 8
  %427 = add i64 %426, 7
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = add i64 %424, -284
  %431 = inttoptr i64 %430 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i64 %424, -280
  %434 = inttoptr i64 %433 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = add i64 %424, -276
  %437 = inttoptr i64 %436 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = bitcast %union.VectorReg* %68 to i32*
  store i32 %429, i32* %439, align 1
  %440 = getelementptr inbounds i8, i8* %423, i64 4
  %441 = bitcast i8* %440 to i32*
  store i32 %432, i32* %441, align 1
  %442 = bitcast i64* %75 to i32*
  store i32 %435, i32* %442, align 1
  %443 = getelementptr inbounds i8, i8* %423, i64 12
  %444 = bitcast i8* %443 to i32*
  store i32 %438, i32* %444, align 1
  %445 = add i64 %424, -112
  %446 = add i64 %426, 11
  store i64 %446, i64* %3, align 8
  %447 = load <2 x float>, <2 x float>* %73, align 1
  %448 = load <2 x float>, <2 x float>* %76, align 1
  %449 = extractelement <2 x float> %447, i32 0
  %450 = inttoptr i64 %445 to float*
  store float %449, float* %450, align 4
  %451 = add i64 %424, -108
  %452 = extractelement <2 x float> %447, i32 1
  %453 = inttoptr i64 %451 to float*
  store float %452, float* %453, align 4
  %454 = add i64 %424, -104
  %455 = extractelement <2 x float> %448, i32 0
  %456 = inttoptr i64 %454 to float*
  store float %455, float* %456, align 4
  %457 = add i64 %424, -100
  %458 = extractelement <2 x float> %448, i32 1
  %459 = inttoptr i64 %457 to float*
  store float %458, float* %459, align 4
  %460 = bitcast %union.VectorReg* %47 to i8*
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -272
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i64 %461, -268
  %468 = inttoptr i64 %467 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = add i64 %461, -264
  %471 = inttoptr i64 %470 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = add i64 %461, -260
  %474 = inttoptr i64 %473 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = bitcast %union.VectorReg* %47 to i32*
  store i32 %466, i32* %476, align 1
  %477 = getelementptr inbounds i8, i8* %460, i64 4
  %478 = bitcast i8* %477 to i32*
  store i32 %469, i32* %478, align 1
  %479 = bitcast i64* %54 to i32*
  store i32 %472, i32* %479, align 1
  %480 = getelementptr inbounds i8, i8* %460, i64 12
  %481 = bitcast i8* %480 to i32*
  store i32 %475, i32* %481, align 1
  %482 = add i64 %461, -96
  %483 = add i64 %463, 11
  store i64 %483, i64* %3, align 8
  %484 = load <2 x float>, <2 x float>* %52, align 1
  %485 = load <2 x float>, <2 x float>* %55, align 1
  %486 = extractelement <2 x float> %484, i32 0
  %487 = inttoptr i64 %482 to float*
  store float %486, float* %487, align 4
  %488 = add i64 %461, -92
  %489 = extractelement <2 x float> %484, i32 1
  %490 = inttoptr i64 %488 to float*
  store float %489, float* %490, align 4
  %491 = add i64 %461, -88
  %492 = extractelement <2 x float> %485, i32 0
  %493 = inttoptr i64 %491 to float*
  store float %492, float* %493, align 4
  %494 = add i64 %461, -84
  %495 = extractelement <2 x float> %485, i32 1
  %496 = inttoptr i64 %494 to float*
  store float %495, float* %496, align 4
  %497 = bitcast %union.VectorReg* %28 to i8*
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -256
  %500 = load i64, i64* %3, align 8
  %501 = add i64 %500, 7
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i64 %498, -252
  %505 = inttoptr i64 %504 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = add i64 %498, -248
  %508 = inttoptr i64 %507 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = add i64 %498, -244
  %511 = inttoptr i64 %510 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = bitcast %union.VectorReg* %28 to i32*
  store i32 %503, i32* %513, align 1
  %514 = getelementptr inbounds i8, i8* %497, i64 4
  %515 = bitcast i8* %514 to i32*
  store i32 %506, i32* %515, align 1
  %516 = bitcast i64* %33 to i32*
  store i32 %509, i32* %516, align 1
  %517 = getelementptr inbounds i8, i8* %497, i64 12
  %518 = bitcast i8* %517 to i32*
  store i32 %512, i32* %518, align 1
  %519 = add i64 %498, -80
  %520 = add i64 %500, 11
  store i64 %520, i64* %3, align 8
  %521 = load <2 x float>, <2 x float>* %31, align 1
  %522 = load <2 x float>, <2 x float>* %34, align 1
  %523 = extractelement <2 x float> %521, i32 0
  %524 = inttoptr i64 %519 to float*
  store float %523, float* %524, align 4
  %525 = add i64 %498, -76
  %526 = extractelement <2 x float> %521, i32 1
  %527 = inttoptr i64 %525 to float*
  store float %526, float* %527, align 4
  %528 = add i64 %498, -72
  %529 = extractelement <2 x float> %522, i32 0
  %530 = inttoptr i64 %528 to float*
  store float %529, float* %530, align 4
  %531 = add i64 %498, -68
  %532 = extractelement <2 x float> %522, i32 1
  %533 = inttoptr i64 %531 to float*
  store float %532, float* %533, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_477db7

block_.L_477db7:                                  ; preds = %block_477d53, %entry
  %534 = phi i64 [ %.pre, %block_477d53 ], [ %238, %entry ]
  %RAX.i450 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -384
  %537 = add i64 %534, 7
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i450, align 8
  %540 = add i64 %535, -200
  %541 = add i64 %534, 14
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  store i64 %539, i64* %542, align 8
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -392
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 7
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %544 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RCX.i491, align 8
  %549 = add i64 %543, -208
  %550 = add i64 %545, 14
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  store i64 %548, i64* %551, align 8
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -400
  %554 = load i64, i64* %3, align 8
  %555 = add i64 %554, 7
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %553 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RDX.i488, align 8
  %558 = add i64 %552, -216
  %559 = add i64 %554, 14
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i64*
  store i64 %557, i64* %560, align 8
  %RSI.i432 = getelementptr inbounds %union.anon, %union.anon* %228, i64 0, i32 0
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -408
  %563 = load i64, i64* %3, align 8
  %564 = add i64 %563, 7
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %562 to i64*
  %566 = load i64, i64* %565, align 8
  store i64 %566, i64* %RSI.i432, align 8
  %567 = add i64 %561, -224
  %568 = add i64 %563, 14
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  store i64 %566, i64* %569, align 8
  %RDI.i426 = getelementptr inbounds %union.anon, %union.anon* %194, i64 0, i32 0
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -412
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 6
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RDI.i426, align 8
  %577 = add i64 %570, -372
  %578 = add i64 %572, 13
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %R8.i, align 8
  %582 = add i64 %570, -32
  store i64 %582, i64* %R9.i497, align 8
  %583 = add i64 %570, -4
  %584 = add i64 %572, 21
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  store i32 %580, i32* %585, align 4
  %586 = load i64, i64* %RBP.i, align 8
  %587 = add i64 %586, -8
  %588 = load i32, i32* %EDI.i499, align 4
  %589 = load i64, i64* %3, align 8
  %590 = add i64 %589, 3
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %587 to i32*
  store i32 %588, i32* %591, align 4
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -4
  %594 = load i64, i64* %3, align 8
  %595 = add i64 %594, 3
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RDI.i426, align 8
  %599 = add i64 %592, -36
  %600 = add i64 %594, 6
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  store i32 %597, i32* %601, align 4
  %602 = load i64, i64* %RBP.i, align 8
  %603 = add i64 %602, -40
  %604 = load i64, i64* %3, align 8
  %605 = add i64 %604, 7
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %603 to i32*
  store i32 0, i32* %606, align 4
  %607 = load i64, i64* %RBP.i, align 8
  %608 = add i64 %607, -48
  %609 = load i64, i64* %3, align 8
  %610 = add i64 %609, 7
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %608 to i32*
  store i32 0, i32* %611, align 4
  %R10.i403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -240
  %614 = load i64, i64* %3, align 8
  %615 = load i64, i64* %R9.i497, align 8
  %616 = add i64 %615, 16
  %617 = add i64 %614, 11
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i64*
  store i64 %613, i64* %618, align 8
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, 16
  %621 = load i64, i64* %3, align 8
  store i64 %620, i64* %R10.i403, align 8
  %622 = load i64, i64* %R9.i497, align 8
  %623 = add i64 %622, 8
  %624 = add i64 %621, 8
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  store i64 %620, i64* %625, align 8
  %626 = load i64, i64* %R9.i497, align 8
  %627 = add i64 %626, 4
  %628 = load i64, i64* %3, align 8
  %629 = add i64 %628, 8
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %627 to i32*
  store i32 48, i32* %630, align 4
  %631 = bitcast %union.anon* %201 to i32**
  %632 = load i32*, i32** %631, align 8
  %633 = load i64, i64* %3, align 8
  %634 = add i64 %633, 7
  store i64 %634, i64* %3, align 8
  store i32 16, i32* %632, align 4
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -44
  %637 = load i64, i64* %3, align 8
  %638 = add i64 %637, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %636 to i32*
  store i32 0, i32* %639, align 4
  %EAX.i383 = bitcast %union.anon* %18 to i32*
  %ECX.i241 = bitcast %union.anon* %214 to i32*
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_477e44

block_.L_477e44:                                  ; preds = %block_.L_477f1b, %block_.L_477db7
  %640 = phi i64 [ %.pre15, %block_.L_477db7 ], [ %976, %block_.L_477f1b ]
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -44
  %643 = add i64 %640, 3
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX.i450, align 8
  %647 = add i64 %641, -8
  %648 = add i64 %640, 6
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sub i32 %645, %650
  %652 = icmp ult i32 %645, %650
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %12, align 1
  %654 = and i32 %651, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %13, align 1
  %659 = xor i32 %650, %645
  %660 = xor i32 %659, %651
  %661 = lshr i32 %660, 4
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %14, align 1
  %664 = icmp eq i32 %651, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %15, align 1
  %666 = lshr i32 %651, 31
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %16, align 1
  %668 = lshr i32 %645, 31
  %669 = lshr i32 %650, 31
  %670 = xor i32 %669, %668
  %671 = xor i32 %666, %668
  %672 = add nuw nsw i32 %671, %670
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %17, align 1
  %675 = icmp ne i8 %667, 0
  %676 = xor i1 %675, %673
  %.v = select i1 %676, i64 12, i64 240
  %677 = add i64 %640, %.v
  %678 = add i64 %641, -32
  store i64 %678, i64* %RAX.i450, align 8
  %679 = add i64 %677, 7
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RCX.i491, align 8
  %683 = add i64 %677, 10
  store i64 %683, i64* %3, align 8
  %684 = add i32 %681, -40
  %685 = icmp ult i32 %681, 40
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %12, align 1
  %687 = and i32 %684, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %13, align 1
  %692 = xor i32 %684, %681
  %693 = lshr i32 %692, 4
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %14, align 1
  %696 = icmp eq i32 %684, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %15, align 1
  %698 = lshr i32 %684, 31
  %699 = trunc i32 %698 to i8
  store i8 %699, i8* %16, align 1
  %700 = lshr i32 %681, 31
  %701 = xor i32 %698, %700
  %702 = add nuw nsw i32 %701, %700
  %703 = icmp eq i32 %702, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %17, align 1
  br i1 %676, label %block_477e50, label %block_.L_477f34

block_477e50:                                     ; preds = %block_.L_477e44
  %705 = add i64 %641, -424
  %706 = add i64 %677, 17
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  store i64 %678, i64* %707, align 8
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -428
  %710 = load i32, i32* %ECX.i241, align 4
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 6
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %709 to i32*
  store i32 %710, i32* %713, align 4
  %714 = load i64, i64* %3, align 8
  %715 = load i8, i8* %12, align 1
  %716 = load i8, i8* %15, align 1
  %717 = or i8 %716, %715
  %718 = icmp eq i8 %717, 0
  %.v38 = select i1 %718, i64 43, i64 6
  %719 = add i64 %714, %.v38
  store i64 %719, i64* %3, align 8
  %720 = load i64, i64* %RBP.i, align 8
  br i1 %718, label %block_.L_477e92, label %block_477e6d

block_477e6d:                                     ; preds = %block_477e50
  %721 = add i64 %720, -428
  %722 = add i64 %719, 6
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX.i450, align 8
  %726 = sext i32 %724 to i64
  store i64 %726, i64* %RCX.i491, align 8
  %727 = add i64 %720, -424
  %728 = add i64 %719, 16
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %RDX.i488, align 8
  %731 = add i64 %730, 16
  %732 = add i64 %719, 20
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  %735 = add i64 %734, %726
  store i64 %735, i64* %RCX.i491, align 8
  %736 = add i32 %724, 8
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RAX.i450, align 8
  %738 = icmp ugt i32 %724, -9
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %12, align 1
  %740 = and i32 %736, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %13, align 1
  %745 = xor i32 %736, %724
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %14, align 1
  %749 = icmp eq i32 %736, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %15, align 1
  %751 = lshr i32 %736, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %16, align 1
  %753 = lshr i32 %724, 31
  %754 = xor i32 %751, %753
  %755 = add nuw nsw i32 %754, %751
  %756 = icmp eq i32 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %17, align 1
  %758 = inttoptr i64 %730 to i32*
  %759 = add i64 %719, 25
  store i64 %759, i64* %3, align 8
  store i32 %736, i32* %758, align 4
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -440
  %762 = load i64, i64* %RCX.i491, align 8
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, 7
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %761 to i64*
  store i64 %762, i64* %765, align 8
  %766 = load i64, i64* %3, align 8
  %767 = add i64 %766, 34
  store i64 %767, i64* %3, align 8
  br label %block_.L_477eaf

block_.L_477e92:                                  ; preds = %block_477e50
  %768 = add i64 %720, -424
  %769 = add i64 %719, 7
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i64*
  %771 = load i64, i64* %770, align 8
  store i64 %771, i64* %RAX.i450, align 8
  %772 = add i64 %771, 8
  %773 = add i64 %719, 11
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %RDX.i488, align 8
  %776 = add i64 %775, 8
  store i64 %776, i64* %RCX.i491, align 8
  %777 = icmp ugt i64 %775, -9
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %12, align 1
  %779 = trunc i64 %776 to i32
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %13, align 1
  %785 = xor i64 %776, %775
  %786 = lshr i64 %785, 4
  %787 = trunc i64 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %14, align 1
  %789 = icmp eq i64 %776, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %15, align 1
  %791 = lshr i64 %776, 63
  %792 = trunc i64 %791 to i8
  store i8 %792, i8* %16, align 1
  %793 = lshr i64 %775, 63
  %794 = xor i64 %791, %793
  %795 = add nuw nsw i64 %794, %791
  %796 = icmp eq i64 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %17, align 1
  %798 = add i64 %719, 22
  store i64 %798, i64* %3, align 8
  store i64 %776, i64* %774, align 8
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -440
  %801 = load i64, i64* %RDX.i488, align 8
  %802 = load i64, i64* %3, align 8
  %803 = add i64 %802, 7
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %800 to i64*
  store i64 %801, i64* %804, align 8
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_477eaf

block_.L_477eaf:                                  ; preds = %block_.L_477e92, %block_477e6d
  %805 = phi i64 [ %.pre21, %block_.L_477e92 ], [ %767, %block_477e6d ]
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -440
  %808 = add i64 %805, 7
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RAX.i450, align 8
  %811 = add i64 %805, 9
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RCX.i491, align 8
  %815 = add i64 %806, -52
  %816 = add i64 %805, 12
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  store i32 %813, i32* %817, align 4
  %818 = load i64, i64* %RBP.i, align 8
  %819 = add i64 %818, -52
  %820 = load i64, i64* %3, align 8
  %821 = add i64 %820, 4
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822, align 4
  store i8 0, i8* %12, align 1
  %824 = and i32 %823, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %829 = icmp eq i32 %823, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %15, align 1
  %831 = lshr i32 %823, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v27 = select i1 %829, i64 96, i64 10
  %833 = add i64 %820, %.v27
  store i64 %833, i64* %3, align 8
  br i1 %829, label %block_.L_477f1b, label %block_477ec5

block_477ec5:                                     ; preds = %block_.L_477eaf
  store i64 ptrtoint (%G__0x581b60_type* @G__0x581b60 to i64), i64* %RDX.i488, align 8
  store i64 0, i64* %RAX.i450, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %834 = add i64 %833, 15
  store i64 %834, i64* %3, align 8
  %835 = load i32, i32* %822, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDI.i426, align 8
  %837 = add i64 %818, -36
  %838 = add i64 %833, 18
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RSI.i432, align 8
  store i64 0, i64* %RCX.i491, align 8
  store i64 0, i64* %R8.i, align 8
  store i64 0, i64* %R9.i497, align 8
  %842 = add i64 %833, -454805
  %843 = add i64 %833, 31
  %844 = load i64, i64* %6, align 8
  %845 = add i64 %844, -8
  %846 = inttoptr i64 %845 to i64*
  store i64 %843, i64* %846, align 8
  store i64 %845, i64* %6, align 8
  store i64 %842, i64* %3, align 8
  %call2_477edf = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %842, %struct.Memory* %2)
  %847 = load i32, i32* %EAX.i383, align 4
  %848 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %849 = and i32 %847, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %854 = icmp eq i32 %847, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %15, align 1
  %856 = lshr i32 %847, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v28 = select i1 %854, i64 9, i64 46
  %858 = add i64 %848, %.v28
  store i64 %858, i64* %3, align 8
  br i1 %854, label %block_477eed, label %block_.L_477f12

block_477eed:                                     ; preds = %block_477ec5
  store i64 ptrtoint (%G__0x581b60_type* @G__0x581b60 to i64), i64* %RDX.i488, align 8
  store i64 0, i64* %RAX.i450, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -52
  %861 = add i64 %858, 15
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RDI.i426, align 8
  %865 = add i64 %859, -36
  %866 = add i64 %858, 18
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RSI.i432, align 8
  store i64 0, i64* %RCX.i491, align 8
  store i64 0, i64* %R8.i, align 8
  %870 = add i64 %858, -435181
  %871 = add i64 %858, 28
  %872 = load i64, i64* %6, align 8
  %873 = add i64 %872, -8
  %874 = inttoptr i64 %873 to i64*
  store i64 %871, i64* %874, align 8
  store i64 %873, i64* %6, align 8
  store i64 %870, i64* %3, align 8
  %call2_477f04 = tail call %struct.Memory* @sub_40db00.tryko(%struct.State* nonnull %0, i64 %870, %struct.Memory* %2)
  %875 = load i32, i32* %EAX.i383, align 4
  %876 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %877 = and i32 %875, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %882 = icmp eq i32 %875, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %15, align 1
  %884 = lshr i32 %875, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v29 = select i1 %882, i64 18, i64 9
  %886 = add i64 %876, %.v29
  store i64 %886, i64* %3, align 8
  br i1 %882, label %block_.L_477f1b, label %block_.L_477f12

block_.L_477f12:                                  ; preds = %block_477ec5, %block_477eed
  %887 = phi i64 [ %886, %block_477eed ], [ %858, %block_477ec5 ]
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -48
  %890 = add i64 %887, 3
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = add i32 %892, 1
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX.i450, align 8
  %895 = icmp eq i32 %892, -1
  %896 = icmp eq i32 %893, 0
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %12, align 1
  %899 = and i32 %893, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %13, align 1
  %904 = xor i32 %893, %892
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %14, align 1
  %908 = zext i1 %896 to i8
  store i8 %908, i8* %15, align 1
  %909 = lshr i32 %893, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %16, align 1
  %911 = lshr i32 %892, 31
  %912 = xor i32 %909, %911
  %913 = add nuw nsw i32 %912, %909
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %17, align 1
  %916 = add i64 %887, 9
  store i64 %916, i64* %3, align 8
  store i32 %893, i32* %891, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_477f1b

block_.L_477f1b:                                  ; preds = %block_.L_477f12, %block_477eed, %block_.L_477eaf
  %917 = phi i64 [ %.pre22, %block_.L_477f12 ], [ %886, %block_477eed ], [ %833, %block_.L_477eaf ]
  store i64 3, i64* %RAX.i450, align 8
  %918 = load i64, i64* %RBP.i, align 8
  %919 = add i64 %918, -36
  %920 = add i64 %917, 8
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = sub i32 3, %922
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %RAX.i450, align 8
  %925 = icmp ugt i32 %922, 3
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %12, align 1
  %927 = and i32 %923, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %13, align 1
  %932 = xor i32 %923, %922
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %14, align 1
  %936 = icmp eq i32 %923, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %15, align 1
  %938 = lshr i32 %923, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %16, align 1
  %940 = lshr i32 %922, 31
  %941 = add nuw nsw i32 %938, %940
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %17, align 1
  %944 = add i64 %917, 11
  store i64 %944, i64* %3, align 8
  store i32 %923, i32* %921, align 4
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -44
  %947 = load i64, i64* %3, align 8
  %948 = add i64 %947, 3
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %946 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = add i32 %950, 1
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i450, align 8
  %953 = icmp eq i32 %950, -1
  %954 = icmp eq i32 %951, 0
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %12, align 1
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %13, align 1
  %962 = xor i32 %951, %950
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %14, align 1
  %966 = zext i1 %954 to i8
  store i8 %966, i8* %15, align 1
  %967 = lshr i32 %951, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %16, align 1
  %969 = lshr i32 %950, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %967
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %17, align 1
  %974 = add i64 %947, 9
  store i64 %974, i64* %3, align 8
  store i32 %951, i32* %949, align 4
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, -235
  store i64 %976, i64* %3, align 8
  br label %block_.L_477e44

block_.L_477f34:                                  ; preds = %block_.L_477e44
  %977 = add i64 %641, -448
  %978 = add i64 %677, 17
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  store i64 %678, i64* %979, align 8
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -452
  %982 = load i32, i32* %ECX.i241, align 4
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 6
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %981 to i32*
  store i32 %982, i32* %985, align 4
  %986 = load i64, i64* %3, align 8
  %987 = load i8, i8* %12, align 1
  %988 = load i8, i8* %15, align 1
  %989 = or i8 %988, %987
  %990 = icmp eq i8 %989, 0
  %.v35 = select i1 %990, i64 43, i64 6
  %991 = add i64 %986, %.v35
  store i64 %991, i64* %3, align 8
  %992 = load i64, i64* %RBP.i, align 8
  br i1 %990, label %block_.L_477f76, label %block_477f51

block_477f51:                                     ; preds = %block_.L_477f34
  %993 = add i64 %992, -452
  %994 = add i64 %991, 6
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i32*
  %996 = load i32, i32* %995, align 4
  %997 = zext i32 %996 to i64
  store i64 %997, i64* %RAX.i450, align 8
  %998 = sext i32 %996 to i64
  store i64 %998, i64* %RCX.i491, align 8
  %999 = add i64 %992, -448
  %1000 = add i64 %991, 16
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i64*
  %1002 = load i64, i64* %1001, align 8
  store i64 %1002, i64* %RDX.i488, align 8
  %1003 = add i64 %1002, 16
  %1004 = add i64 %991, 20
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i64*
  %1006 = load i64, i64* %1005, align 8
  %1007 = add i64 %1006, %998
  store i64 %1007, i64* %RCX.i491, align 8
  %1008 = add i32 %996, 8
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RAX.i450, align 8
  %1010 = icmp ugt i32 %996, -9
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %12, align 1
  %1012 = and i32 %1008, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %13, align 1
  %1017 = xor i32 %1008, %996
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %14, align 1
  %1021 = icmp eq i32 %1008, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %15, align 1
  %1023 = lshr i32 %1008, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %16, align 1
  %1025 = lshr i32 %996, 31
  %1026 = xor i32 %1023, %1025
  %1027 = add nuw nsw i32 %1026, %1023
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %17, align 1
  %1030 = inttoptr i64 %1002 to i32*
  %1031 = add i64 %991, 25
  store i64 %1031, i64* %3, align 8
  store i32 %1008, i32* %1030, align 4
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -464
  %1034 = load i64, i64* %RCX.i491, align 8
  %1035 = load i64, i64* %3, align 8
  %1036 = add i64 %1035, 7
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1033 to i64*
  store i64 %1034, i64* %1037, align 8
  %1038 = load i64, i64* %3, align 8
  %1039 = add i64 %1038, 34
  store i64 %1039, i64* %3, align 8
  br label %block_.L_477f93

block_.L_477f76:                                  ; preds = %block_.L_477f34
  %1040 = add i64 %992, -448
  %1041 = add i64 %991, 7
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i64*
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %RAX.i450, align 8
  %1044 = add i64 %1043, 8
  %1045 = add i64 %991, 11
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046, align 8
  store i64 %1047, i64* %RDX.i488, align 8
  %1048 = add i64 %1047, 8
  store i64 %1048, i64* %RCX.i491, align 8
  %1049 = icmp ugt i64 %1047, -9
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %12, align 1
  %1051 = trunc i64 %1048 to i32
  %1052 = and i32 %1051, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %13, align 1
  %1057 = xor i64 %1048, %1047
  %1058 = lshr i64 %1057, 4
  %1059 = trunc i64 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %14, align 1
  %1061 = icmp eq i64 %1048, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %15, align 1
  %1063 = lshr i64 %1048, 63
  %1064 = trunc i64 %1063 to i8
  store i8 %1064, i8* %16, align 1
  %1065 = lshr i64 %1047, 63
  %1066 = xor i64 %1063, %1065
  %1067 = add nuw nsw i64 %1066, %1063
  %1068 = icmp eq i64 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %17, align 1
  %1070 = add i64 %991, 22
  store i64 %1070, i64* %3, align 8
  store i64 %1048, i64* %1046, align 8
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -464
  %1073 = load i64, i64* %RDX.i488, align 8
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 7
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1072 to i64*
  store i64 %1073, i64* %1076, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_477f93

block_.L_477f93:                                  ; preds = %block_.L_477f76, %block_477f51
  %1077 = phi i64 [ %.pre16, %block_.L_477f76 ], [ %1039, %block_477f51 ]
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -464
  %1080 = add i64 %1077, 7
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i64*
  %1082 = load i64, i64* %1081, align 8
  store i64 %1082, i64* %RAX.i450, align 8
  %1083 = add i64 %1078, -32
  store i64 %1083, i64* %RCX.i491, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = add i64 %1077, 13
  store i64 %1085, i64* %3, align 8
  %1086 = load i32, i32* %1084, align 4
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RDX.i488, align 8
  %EDX.i184 = bitcast %union.anon* %221 to i32*
  %1088 = add i64 %1078, -56
  %1089 = add i64 %1077, 16
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  store i32 %1086, i32* %1090, align 4
  %1091 = load i64, i64* %RBP.i, align 8
  %1092 = add i64 %1091, -32
  %1093 = load i64, i64* %3, align 8
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1092 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RDX.i488, align 8
  %1098 = add i32 %1096, -40
  %1099 = icmp ult i32 %1096, 40
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %12, align 1
  %1101 = and i32 %1098, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %13, align 1
  %1106 = xor i32 %1098, %1096
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %14, align 1
  %1110 = icmp eq i32 %1098, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %15, align 1
  %1112 = lshr i32 %1098, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %16, align 1
  %1114 = lshr i32 %1096, 31
  %1115 = xor i32 %1112, %1114
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %17, align 1
  %1119 = add i64 %1091, -472
  %1120 = load i64, i64* %RCX.i491, align 8
  %1121 = add i64 %1093, 13
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i64*
  store i64 %1120, i64* %1122, align 8
  %1123 = load i64, i64* %RBP.i, align 8
  %1124 = add i64 %1123, -476
  %1125 = load i32, i32* %EDX.i184, align 4
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 6
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1124 to i32*
  store i32 %1125, i32* %1128, align 4
  %1129 = load i64, i64* %3, align 8
  %1130 = load i8, i8* %12, align 1
  %1131 = load i8, i8* %15, align 1
  %1132 = or i8 %1131, %1130
  %1133 = icmp eq i8 %1132, 0
  %.v36 = select i1 %1133, i64 43, i64 6
  %1134 = add i64 %1129, %.v36
  store i64 %1134, i64* %3, align 8
  %1135 = load i64, i64* %RBP.i, align 8
  br i1 %1133, label %block_.L_477fe1, label %block_477fbc

block_477fbc:                                     ; preds = %block_.L_477f93
  %1136 = add i64 %1135, -476
  %1137 = add i64 %1134, 6
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i450, align 8
  %1141 = sext i32 %1139 to i64
  store i64 %1141, i64* %RCX.i491, align 8
  %1142 = add i64 %1135, -472
  %1143 = add i64 %1134, 16
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i64*
  %1145 = load i64, i64* %1144, align 8
  store i64 %1145, i64* %RDX.i488, align 8
  %1146 = add i64 %1145, 16
  %1147 = add i64 %1134, 20
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  %1149 = load i64, i64* %1148, align 8
  %1150 = add i64 %1149, %1141
  store i64 %1150, i64* %RCX.i491, align 8
  %1151 = add i32 %1139, 8
  %1152 = zext i32 %1151 to i64
  store i64 %1152, i64* %RAX.i450, align 8
  %1153 = icmp ugt i32 %1139, -9
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %12, align 1
  %1155 = and i32 %1151, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %13, align 1
  %1160 = xor i32 %1151, %1139
  %1161 = lshr i32 %1160, 4
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %14, align 1
  %1164 = icmp eq i32 %1151, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %15, align 1
  %1166 = lshr i32 %1151, 31
  %1167 = trunc i32 %1166 to i8
  store i8 %1167, i8* %16, align 1
  %1168 = lshr i32 %1139, 31
  %1169 = xor i32 %1166, %1168
  %1170 = add nuw nsw i32 %1169, %1166
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %17, align 1
  %1173 = inttoptr i64 %1145 to i32*
  %1174 = add i64 %1134, 25
  store i64 %1174, i64* %3, align 8
  store i32 %1151, i32* %1173, align 4
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -488
  %1177 = load i64, i64* %RCX.i491, align 8
  %1178 = load i64, i64* %3, align 8
  %1179 = add i64 %1178, 7
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1176 to i64*
  store i64 %1177, i64* %1180, align 8
  %1181 = load i64, i64* %3, align 8
  %1182 = add i64 %1181, 34
  store i64 %1182, i64* %3, align 8
  br label %block_.L_477ffe

block_.L_477fe1:                                  ; preds = %block_.L_477f93
  %1183 = add i64 %1135, -472
  %1184 = add i64 %1134, 7
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  store i64 %1186, i64* %RAX.i450, align 8
  %1187 = add i64 %1186, 8
  %1188 = add i64 %1134, 11
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %RDX.i488, align 8
  %1191 = add i64 %1190, 8
  store i64 %1191, i64* %RCX.i491, align 8
  %1192 = icmp ugt i64 %1190, -9
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %12, align 1
  %1194 = trunc i64 %1191 to i32
  %1195 = and i32 %1194, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %13, align 1
  %1200 = xor i64 %1191, %1190
  %1201 = lshr i64 %1200, 4
  %1202 = trunc i64 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %14, align 1
  %1204 = icmp eq i64 %1191, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %15, align 1
  %1206 = lshr i64 %1191, 63
  %1207 = trunc i64 %1206 to i8
  store i8 %1207, i8* %16, align 1
  %1208 = lshr i64 %1190, 63
  %1209 = xor i64 %1206, %1208
  %1210 = add nuw nsw i64 %1209, %1206
  %1211 = icmp eq i64 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %17, align 1
  %1213 = add i64 %1134, 22
  store i64 %1213, i64* %3, align 8
  store i64 %1191, i64* %1189, align 8
  %1214 = load i64, i64* %RBP.i, align 8
  %1215 = add i64 %1214, -488
  %1216 = load i64, i64* %RDX.i488, align 8
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, 7
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1215 to i64*
  store i64 %1216, i64* %1219, align 8
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_477ffe

block_.L_477ffe:                                  ; preds = %block_.L_477fe1, %block_477fbc
  %1220 = phi i64 [ %.pre17, %block_.L_477fe1 ], [ %1182, %block_477fbc ]
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -488
  %1223 = add i64 %1220, 7
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %RAX.i450, align 8
  %1226 = add i64 %1221, -32
  store i64 %1226, i64* %RCX.i491, align 8
  %.cast = inttoptr i64 %1225 to i32*
  %1227 = add i64 %1220, 13
  store i64 %1227, i64* %3, align 8
  %1228 = load i32, i32* %.cast, align 4
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RDX.i488, align 8
  %1230 = add i64 %1221, -60
  %1231 = add i64 %1220, 16
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  store i32 %1228, i32* %1232, align 4
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -32
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 3
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1234 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RDX.i488, align 8
  %1240 = add i32 %1238, -40
  %1241 = icmp ult i32 %1238, 40
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %12, align 1
  %1243 = and i32 %1240, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %13, align 1
  %1248 = xor i32 %1240, %1238
  %1249 = lshr i32 %1248, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %14, align 1
  %1252 = icmp eq i32 %1240, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %15, align 1
  %1254 = lshr i32 %1240, 31
  %1255 = trunc i32 %1254 to i8
  store i8 %1255, i8* %16, align 1
  %1256 = lshr i32 %1238, 31
  %1257 = xor i32 %1254, %1256
  %1258 = add nuw nsw i32 %1257, %1256
  %1259 = icmp eq i32 %1258, 2
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %17, align 1
  %1261 = add i64 %1233, -496
  %1262 = load i64, i64* %RCX.i491, align 8
  %1263 = add i64 %1235, 13
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1261 to i64*
  store i64 %1262, i64* %1264, align 8
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -500
  %1267 = load i32, i32* %EDX.i184, align 4
  %1268 = load i64, i64* %3, align 8
  %1269 = add i64 %1268, 6
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1266 to i32*
  store i32 %1267, i32* %1270, align 4
  %1271 = load i64, i64* %3, align 8
  %1272 = load i8, i8* %12, align 1
  %1273 = load i8, i8* %15, align 1
  %1274 = or i8 %1273, %1272
  %1275 = icmp eq i8 %1274, 0
  %.v37 = select i1 %1275, i64 43, i64 6
  %1276 = add i64 %1271, %.v37
  store i64 %1276, i64* %3, align 8
  %1277 = load i64, i64* %RBP.i, align 8
  br i1 %1275, label %block_.L_47804c, label %block_478027

block_478027:                                     ; preds = %block_.L_477ffe
  %1278 = add i64 %1277, -500
  %1279 = add i64 %1276, 6
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RAX.i450, align 8
  %1283 = sext i32 %1281 to i64
  store i64 %1283, i64* %RCX.i491, align 8
  %1284 = add i64 %1277, -496
  %1285 = add i64 %1276, 16
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i64*
  %1287 = load i64, i64* %1286, align 8
  store i64 %1287, i64* %RDX.i488, align 8
  %1288 = add i64 %1287, 16
  %1289 = add i64 %1276, 20
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i64*
  %1291 = load i64, i64* %1290, align 8
  %1292 = add i64 %1291, %1283
  store i64 %1292, i64* %RCX.i491, align 8
  %1293 = add i32 %1281, 8
  %1294 = zext i32 %1293 to i64
  store i64 %1294, i64* %RAX.i450, align 8
  %1295 = icmp ugt i32 %1281, -9
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %12, align 1
  %1297 = and i32 %1293, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %13, align 1
  %1302 = xor i32 %1293, %1281
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %14, align 1
  %1306 = icmp eq i32 %1293, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %15, align 1
  %1308 = lshr i32 %1293, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %16, align 1
  %1310 = lshr i32 %1281, 31
  %1311 = xor i32 %1308, %1310
  %1312 = add nuw nsw i32 %1311, %1308
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %17, align 1
  %1315 = inttoptr i64 %1287 to i32*
  %1316 = add i64 %1276, 25
  store i64 %1316, i64* %3, align 8
  store i32 %1293, i32* %1315, align 4
  %1317 = load i64, i64* %RBP.i, align 8
  %1318 = add i64 %1317, -512
  %1319 = load i64, i64* %RCX.i491, align 8
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 7
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1318 to i64*
  store i64 %1319, i64* %1322, align 8
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 34
  store i64 %1324, i64* %3, align 8
  br label %block_.L_478069

block_.L_47804c:                                  ; preds = %block_.L_477ffe
  %1325 = add i64 %1277, -496
  %1326 = add i64 %1276, 7
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i64*
  %1328 = load i64, i64* %1327, align 8
  store i64 %1328, i64* %RAX.i450, align 8
  %1329 = add i64 %1328, 8
  %1330 = add i64 %1276, 11
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RDX.i488, align 8
  %1333 = add i64 %1332, 8
  store i64 %1333, i64* %RCX.i491, align 8
  %1334 = icmp ugt i64 %1332, -9
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %12, align 1
  %1336 = trunc i64 %1333 to i32
  %1337 = and i32 %1336, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %13, align 1
  %1342 = xor i64 %1333, %1332
  %1343 = lshr i64 %1342, 4
  %1344 = trunc i64 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %14, align 1
  %1346 = icmp eq i64 %1333, 0
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %15, align 1
  %1348 = lshr i64 %1333, 63
  %1349 = trunc i64 %1348 to i8
  store i8 %1349, i8* %16, align 1
  %1350 = lshr i64 %1332, 63
  %1351 = xor i64 %1348, %1350
  %1352 = add nuw nsw i64 %1351, %1348
  %1353 = icmp eq i64 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %17, align 1
  %1355 = add i64 %1276, 22
  store i64 %1355, i64* %3, align 8
  store i64 %1333, i64* %1331, align 8
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -512
  %1358 = load i64, i64* %RDX.i488, align 8
  %1359 = load i64, i64* %3, align 8
  %1360 = add i64 %1359, 7
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1357 to i64*
  store i64 %1358, i64* %1361, align 8
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_478069

block_.L_478069:                                  ; preds = %block_.L_47804c, %block_478027
  %1362 = phi i64 [ %.pre18, %block_.L_47804c ], [ %1324, %block_478027 ]
  %1363 = load i64, i64* %RBP.i, align 8
  %1364 = add i64 %1363, -512
  %1365 = add i64 %1362, 7
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RAX.i450, align 8
  %1368 = add i64 %1362, 9
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RCX.i491, align 8
  %1372 = add i64 %1363, -64
  %1373 = add i64 %1362, 12
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  store i32 %1370, i32* %1374, align 4
  %1375 = load i64, i64* %RBP.i, align 8
  %1376 = add i64 %1375, -56
  %1377 = load i64, i64* %3, align 8
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1376 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = sext i32 %1380 to i64
  store i64 %1381, i64* %RAX.i450, align 8
  %1382 = add nsw i64 %1381, 12099168
  %1383 = add i64 %1377, 12
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i8*
  %1385 = load i8, i8* %1384, align 1
  %1386 = zext i8 %1385 to i64
  store i64 %1386, i64* %RCX.i491, align 8
  %1387 = zext i8 %1385 to i32
  store i8 0, i8* %12, align 1
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1392 = icmp eq i8 %1385, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v23 = select i1 %1392, i64 63, i64 21
  %1394 = add i64 %1377, %.v23
  store i64 %1394, i64* %3, align 8
  br i1 %1392, label %block_.L_4780b4, label %block_47808a

block_47808a:                                     ; preds = %block_.L_478069
  %1395 = add i64 %1375, -60
  %1396 = add i64 %1394, 4
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = sext i32 %1398 to i64
  store i64 %1399, i64* %RAX.i450, align 8
  %1400 = add nsw i64 %1399, 12099168
  %1401 = add i64 %1394, 12
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i8*
  %1403 = load i8, i8* %1402, align 1
  %1404 = zext i8 %1403 to i64
  store i64 %1404, i64* %RCX.i491, align 8
  %1405 = zext i8 %1403 to i32
  store i8 0, i8* %12, align 1
  %1406 = tail call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  store i8 %1409, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1410 = icmp eq i8 %1403, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v24 = select i1 %1410, i64 42, i64 21
  %1412 = add i64 %1394, %.v24
  store i64 %1412, i64* %3, align 8
  br i1 %1410, label %block_.L_4780b4, label %block_47809f

block_47809f:                                     ; preds = %block_47808a
  %1413 = add i64 %1375, -64
  %1414 = add i64 %1412, 4
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = sext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i450, align 8
  %1418 = add nsw i64 %1417, 12099168
  %1419 = add i64 %1412, 12
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i8*
  %1421 = load i8, i8* %1420, align 1
  %1422 = zext i8 %1421 to i64
  store i64 %1422, i64* %RCX.i491, align 8
  %1423 = zext i8 %1421 to i32
  store i8 0, i8* %12, align 1
  %1424 = tail call i32 @llvm.ctpop.i32(i32 %1423)
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = xor i8 %1426, 1
  store i8 %1427, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1428 = icmp eq i8 %1421, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v25 = select i1 %1428, i64 21, i64 33
  %1430 = add i64 %1412, %.v25
  store i64 %1430, i64* %3, align 8
  br i1 %1428, label %block_.L_4780b4, label %block_.L_4780c0

block_.L_4780b4:                                  ; preds = %block_47809f, %block_47808a, %block_.L_478069
  %1431 = phi i64 [ %1430, %block_47809f ], [ %1412, %block_47808a ], [ %1394, %block_.L_478069 ]
  %1432 = add i64 %1375, -40
  %1433 = add i64 %1431, 7
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  store i32 1, i32* %1434, align 4
  %1435 = load i64, i64* %3, align 8
  %1436 = add i64 %1435, 22
  store i64 %1436, i64* %3, align 8
  br label %block_.L_4780d1

block_.L_4780c0:                                  ; preds = %block_47809f
  %1437 = add i64 %1430, 3
  store i64 %1437, i64* %3, align 8
  %1438 = load i32, i32* %1379, align 4
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RDI.i426, align 8
  %1440 = add i64 %1430, 6
  store i64 %1440, i64* %3, align 8
  %1441 = load i32, i32* %1397, align 4
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RSI.i432, align 8
  %1443 = add i64 %1430, 9
  store i64 %1443, i64* %3, align 8
  %1444 = load i32, i32* %1415, align 4
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RDX.i488, align 8
  %1446 = add i64 %1430, -52800
  %1447 = add i64 %1430, 14
  %1448 = load i64, i64* %6, align 8
  %1449 = add i64 %1448, -8
  %1450 = inttoptr i64 %1449 to i64*
  store i64 %1447, i64* %1450, align 8
  store i64 %1449, i64* %6, align 8
  store i64 %1446, i64* %3, align 8
  %call2_4780c9 = tail call %struct.Memory* @sub_46b280.break_through(%struct.State* nonnull %0, i64 %1446, %struct.Memory* %2)
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -40
  %1453 = load i32, i32* %EAX.i383, align 4
  %1454 = load i64, i64* %3, align 8
  %1455 = add i64 %1454, 3
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1452 to i32*
  store i32 %1453, i32* %1456, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_4780d1

block_.L_4780d1:                                  ; preds = %block_.L_4780c0, %block_.L_4780b4
  %1457 = phi i64 [ %1436, %block_.L_4780b4 ], [ %.pre19, %block_.L_4780c0 ]
  %MEMORY.9 = phi %struct.Memory* [ %2, %block_.L_4780b4 ], [ %call2_4780c9, %block_.L_4780c0 ]
  %1458 = load i64, i64* %RBP.i, align 8
  %1459 = add i64 %1458, -44
  %1460 = add i64 %1457, 7
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  store i32 0, i32* %1461, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_4780d8

block_.L_4780d8:                                  ; preds = %block_4780e4, %block_.L_4780d1
  %1462 = phi i64 [ %1536, %block_4780e4 ], [ %.pre20, %block_.L_4780d1 ]
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -44
  %1465 = add i64 %1462, 3
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RAX.i450, align 8
  %1469 = add i64 %1463, -48
  %1470 = add i64 %1462, 6
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sub i32 %1467, %1472
  %1474 = icmp ult i32 %1467, %1472
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %12, align 1
  %1476 = and i32 %1473, 255
  %1477 = tail call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  store i8 %1480, i8* %13, align 1
  %1481 = xor i32 %1472, %1467
  %1482 = xor i32 %1481, %1473
  %1483 = lshr i32 %1482, 4
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %14, align 1
  %1486 = icmp eq i32 %1473, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %15, align 1
  %1488 = lshr i32 %1473, 31
  %1489 = trunc i32 %1488 to i8
  store i8 %1489, i8* %16, align 1
  %1490 = lshr i32 %1467, 31
  %1491 = lshr i32 %1472, 31
  %1492 = xor i32 %1491, %1490
  %1493 = xor i32 %1488, %1490
  %1494 = add nuw nsw i32 %1493, %1492
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %17, align 1
  %1497 = icmp ne i8 %1489, 0
  %1498 = xor i1 %1497, %1495
  %.v26 = select i1 %1498, i64 12, i64 31
  %1499 = add i64 %1462, %.v26
  store i64 %1499, i64* %3, align 8
  br i1 %1498, label %block_4780e4, label %block_.L_4780f7

block_4780e4:                                     ; preds = %block_.L_4780d8
  %1500 = add i64 %1499, -435076
  %1501 = add i64 %1499, 5
  %1502 = load i64, i64* %6, align 8
  %1503 = add i64 %1502, -8
  %1504 = inttoptr i64 %1503 to i64*
  store i64 %1501, i64* %1504, align 8
  store i64 %1503, i64* %6, align 8
  store i64 %1500, i64* %3, align 8
  %call2_4780e4 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1500, %struct.Memory* %MEMORY.9)
  %1505 = load i64, i64* %RBP.i, align 8
  %1506 = add i64 %1505, -44
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1506 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = add i32 %1510, 1
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RAX.i450, align 8
  %1513 = icmp eq i32 %1510, -1
  %1514 = icmp eq i32 %1511, 0
  %1515 = or i1 %1513, %1514
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %12, align 1
  %1517 = and i32 %1511, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %13, align 1
  %1522 = xor i32 %1511, %1510
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %14, align 1
  %1526 = zext i1 %1514 to i8
  store i8 %1526, i8* %15, align 1
  %1527 = lshr i32 %1511, 31
  %1528 = trunc i32 %1527 to i8
  store i8 %1528, i8* %16, align 1
  %1529 = lshr i32 %1510, 31
  %1530 = xor i32 %1527, %1529
  %1531 = add nuw nsw i32 %1530, %1527
  %1532 = icmp eq i32 %1531, 2
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %17, align 1
  %1534 = add i64 %1507, 9
  store i64 %1534, i64* %3, align 8
  store i32 %1511, i32* %1509, align 4
  %1535 = load i64, i64* %3, align 8
  %1536 = add i64 %1535, -26
  store i64 %1536, i64* %3, align 8
  br label %block_.L_4780d8

block_.L_4780f7:                                  ; preds = %block_.L_4780d8
  %1537 = add i64 %1463, -40
  %1538 = add i64 %1499, 3
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX.i450, align 8
  %1542 = load i64, i64* %6, align 8
  %1543 = add i64 %1542, 512
  store i64 %1543, i64* %6, align 8
  %1544 = icmp ugt i64 %1542, -513
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %12, align 1
  %1546 = trunc i64 %1543 to i32
  %1547 = and i32 %1546, 255
  %1548 = tail call i32 @llvm.ctpop.i32(i32 %1547)
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = xor i8 %1550, 1
  store i8 %1551, i8* %13, align 1
  %1552 = xor i64 %1543, %1542
  %1553 = lshr i64 %1552, 4
  %1554 = trunc i64 %1553 to i8
  %1555 = and i8 %1554, 1
  store i8 %1555, i8* %14, align 1
  %1556 = icmp eq i64 %1543, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %15, align 1
  %1558 = lshr i64 %1543, 63
  %1559 = trunc i64 %1558 to i8
  store i8 %1559, i8* %16, align 1
  %1560 = lshr i64 %1542, 63
  %1561 = xor i64 %1558, %1560
  %1562 = add nuw nsw i64 %1561, %1558
  %1563 = icmp eq i64 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %17, align 1
  %1565 = add i64 %1499, 11
  store i64 %1565, i64* %3, align 8
  %1566 = add i64 %1542, 520
  %1567 = inttoptr i64 %1543 to i64*
  %1568 = load i64, i64* %1567, align 8
  store i64 %1568, i64* %RBP.i, align 8
  store i64 %1566, i64* %6, align 8
  %1569 = add i64 %1499, 12
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1566 to i64*
  %1571 = load i64, i64* %1570, align 8
  store i64 %1571, i64* %3, align 8
  %1572 = add i64 %1542, 528
  store i64 %1572, i64* %6, align 8
  ret %struct.Memory* %MEMORY.9
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
define %struct.Memory* @routine_subq__0x200___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -512
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 512
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

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__al___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = zext i8 %4 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i8 %4, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %4, 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm7__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -252
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -248
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -244
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm6__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -268
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -264
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -260
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -284
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -280
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -276
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -300
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -296
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -292
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -316
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -312
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -308
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -332
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -328
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -324
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -352
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -348
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -344
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -340
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -364
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -360
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -356
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x19c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -412
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_477db7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x170__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -368
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -364
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -360
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -356
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -188
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -184
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -180
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x160__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -352
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -348
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -344
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -340
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -172
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -168
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -164
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x150__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -336
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -332
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -328
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -324
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -156
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -152
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -148
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x140__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -320
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -316
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -312
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -308
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -140
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -136
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -132
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x130__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -304
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -300
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -296
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -292
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -124
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -120
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -116
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x120__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -288
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -284
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -280
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -276
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -108
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -104
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -100
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x110__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -272
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -268
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -264
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -260
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm6__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -92
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -88
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -84
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x100__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -256
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -252
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -248
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -244
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %13, i32* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm7__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %9, i32 0
  %14 = inttoptr i64 %5 to float*
  store float %13, float* %14, align 4
  %15 = add i64 %4, -76
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -72
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -68
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x180__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x188__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x190__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x198__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x19c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -412
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x174__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xf0__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x10__r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x8__r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x30__0x4__r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 48, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10____r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = bitcast i64* %R9 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 16, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_477f34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__0x28___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -40
  %8 = icmp ult i32 %4, 40
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -428
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_477e92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1ac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_0x10__rdx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RCX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477eaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1b8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_477f1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581b60___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581b60_type* @G__0x581b60 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_477f12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_callq_.tryko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477e44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -448
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -452
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_477f76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -452
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1c0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -464
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477f93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1c0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -464
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1d0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x28___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -40
  %8 = icmp ult i32 %4, 40
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -476
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_477fe1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1dc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -476
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1d8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477ffe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1d8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -500
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_47804c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -500
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1f0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1f0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x200__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4780b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4780c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4780d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.break_through(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_jge_.L_4780f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.popgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4780d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_addq__0x200___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 512
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -513
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
