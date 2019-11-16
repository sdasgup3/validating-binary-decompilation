; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x663060_type = type <{ [8 x i8] }>
%G__0x459e27_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
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
@G_0x663060 = local_unnamed_addr global %G_0x663060_type zeroinitializer
@G__0x459e27 = global %G__0x459e27_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exit(i64)

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401670.vfprintf_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Die(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -424
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
  %29 = add i64 %7, -232
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
  %38 = add i64 %7, -228
  %39 = extractelement <2 x float> %32, i32 1
  %40 = inttoptr i64 %38 to float*
  store float %39, float* %40, align 4
  %41 = add i64 %7, -224
  %42 = extractelement <2 x float> %35, i32 0
  %43 = inttoptr i64 %41 to float*
  store float %42, float* %43, align 4
  %44 = add i64 %7, -220
  %45 = extractelement <2 x float> %35, i32 1
  %46 = inttoptr i64 %44 to float*
  store float %45, float* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -240
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
  %59 = add i64 %48, -236
  %60 = extractelement <2 x float> %53, i32 1
  %61 = inttoptr i64 %59 to float*
  store float %60, float* %61, align 4
  %62 = add i64 %48, -232
  %63 = extractelement <2 x float> %56, i32 0
  %64 = inttoptr i64 %62 to float*
  store float %63, float* %64, align 4
  %65 = add i64 %48, -228
  %66 = extractelement <2 x float> %56, i32 1
  %67 = inttoptr i64 %65 to float*
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -256
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
  %80 = add i64 %69, -252
  %81 = extractelement <2 x float> %74, i32 1
  %82 = inttoptr i64 %80 to float*
  store float %81, float* %82, align 4
  %83 = add i64 %69, -248
  %84 = extractelement <2 x float> %77, i32 0
  %85 = inttoptr i64 %83 to float*
  store float %84, float* %85, align 4
  %86 = add i64 %69, -244
  %87 = extractelement <2 x float> %77, i32 1
  %88 = inttoptr i64 %86 to float*
  store float %87, float* %88, align 4
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -272
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
  %101 = add i64 %90, -268
  %102 = extractelement <2 x float> %95, i32 1
  %103 = inttoptr i64 %101 to float*
  store float %102, float* %103, align 4
  %104 = add i64 %90, -264
  %105 = extractelement <2 x float> %98, i32 0
  %106 = inttoptr i64 %104 to float*
  store float %105, float* %106, align 4
  %107 = add i64 %90, -260
  %108 = extractelement <2 x float> %98, i32 1
  %109 = inttoptr i64 %107 to float*
  store float %108, float* %109, align 4
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -288
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
  %122 = add i64 %111, -284
  %123 = extractelement <2 x float> %116, i32 1
  %124 = inttoptr i64 %122 to float*
  store float %123, float* %124, align 4
  %125 = add i64 %111, -280
  %126 = extractelement <2 x float> %119, i32 0
  %127 = inttoptr i64 %125 to float*
  store float %126, float* %127, align 4
  %128 = add i64 %111, -276
  %129 = extractelement <2 x float> %119, i32 1
  %130 = inttoptr i64 %128 to float*
  store float %129, float* %130, align 4
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -304
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
  %143 = add i64 %132, -300
  %144 = extractelement <2 x float> %137, i32 1
  %145 = inttoptr i64 %143 to float*
  store float %144, float* %145, align 4
  %146 = add i64 %132, -296
  %147 = extractelement <2 x float> %140, i32 0
  %148 = inttoptr i64 %146 to float*
  store float %147, float* %148, align 4
  %149 = add i64 %132, -292
  %150 = extractelement <2 x float> %140, i32 1
  %151 = inttoptr i64 %149 to float*
  store float %150, float* %151, align 4
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -320
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
  %164 = add i64 %153, -316
  %165 = extractelement <2 x float> %158, i32 1
  %166 = inttoptr i64 %164 to float*
  store float %165, float* %166, align 4
  %167 = add i64 %153, -312
  %168 = extractelement <2 x float> %161, i32 0
  %169 = inttoptr i64 %167 to float*
  store float %168, float* %169, align 4
  %170 = add i64 %153, -308
  %171 = extractelement <2 x float> %161, i32 1
  %172 = inttoptr i64 %170 to float*
  store float %171, float* %172, align 4
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -336
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
  %185 = add i64 %174, -332
  %186 = extractelement <2 x float> %179, i32 1
  %187 = inttoptr i64 %185 to float*
  store float %186, float* %187, align 4
  %188 = add i64 %174, -328
  %189 = extractelement <2 x float> %182, i32 0
  %190 = inttoptr i64 %188 to float*
  store float %189, float* %190, align 4
  %191 = add i64 %174, -324
  %192 = extractelement <2 x float> %182, i32 1
  %193 = inttoptr i64 %191 to float*
  store float %192, float* %193, align 4
  %RDI.i160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -344
  %196 = load i64, i64* %RDI.i160, align 8
  %197 = load i64, i64* %3, align 8
  %198 = add i64 %197, 7
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -352
  %202 = load i64, i64* %R9.i, align 8
  %203 = load i64, i64* %3, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205, align 8
  %R8.i156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -360
  %208 = load i64, i64* %R8.i156, align 8
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %207 to i64*
  store i64 %208, i64* %211, align 8
  %RCX.i152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -368
  %214 = load i64, i64* %RCX.i152, align 8
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 7
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %213 to i64*
  store i64 %214, i64* %217, align 8
  %RDX.i149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -376
  %220 = load i64, i64* %RDX.i149, align 8
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 7
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223, align 8
  %RSI.i146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -384
  %226 = load i64, i64* %RSI.i146, align 8
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 7
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %229, align 8
  %230 = load i64, i64* %3, align 8
  %231 = load i8, i8* %15, align 1
  %232 = icmp ne i8 %231, 0
  %.v = select i1 %232, i64 100, i64 6
  %233 = add i64 %230, %.v
  store i64 %233, i64* %3, align 8
  %cmpBr_43ea7f = icmp eq i8 %231, 1
  br i1 %cmpBr_43ea7f, label %block_.L_43eae3, label %block_43ea85

block_43ea85:                                     ; preds = %entry
  %234 = bitcast %union.VectorReg* %173 to i8*
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -336
  %237 = add i64 %233, 7
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = add i64 %235, -332
  %241 = inttoptr i64 %240 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = add i64 %235, -328
  %244 = inttoptr i64 %243 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = add i64 %235, -324
  %247 = inttoptr i64 %246 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = bitcast %union.VectorReg* %173 to i32*
  store i32 %239, i32* %249, align 1
  %250 = getelementptr inbounds i8, i8* %234, i64 4
  %251 = bitcast i8* %250 to i32*
  store i32 %242, i32* %251, align 1
  %252 = bitcast i64* %180 to i32*
  store i32 %245, i32* %252, align 1
  %253 = getelementptr inbounds i8, i8* %234, i64 12
  %254 = bitcast i8* %253 to i32*
  store i32 %248, i32* %254, align 1
  %255 = add i64 %235, -160
  %256 = add i64 %233, 14
  store i64 %256, i64* %3, align 8
  %257 = load <2 x float>, <2 x float>* %178, align 1
  %258 = load <2 x float>, <2 x float>* %181, align 1
  %259 = extractelement <2 x float> %257, i32 0
  %260 = inttoptr i64 %255 to float*
  store float %259, float* %260, align 4
  %261 = add i64 %235, -156
  %262 = extractelement <2 x float> %257, i32 1
  %263 = inttoptr i64 %261 to float*
  store float %262, float* %263, align 4
  %264 = add i64 %235, -152
  %265 = extractelement <2 x float> %258, i32 0
  %266 = inttoptr i64 %264 to float*
  store float %265, float* %266, align 4
  %267 = add i64 %235, -148
  %268 = extractelement <2 x float> %258, i32 1
  %269 = inttoptr i64 %267 to float*
  store float %268, float* %269, align 4
  %270 = bitcast %union.VectorReg* %152 to i8*
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -320
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 7
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = add i64 %271, -316
  %278 = inttoptr i64 %277 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = add i64 %271, -312
  %281 = inttoptr i64 %280 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = add i64 %271, -308
  %284 = inttoptr i64 %283 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = bitcast %union.VectorReg* %152 to i32*
  store i32 %276, i32* %286, align 1
  %287 = getelementptr inbounds i8, i8* %270, i64 4
  %288 = bitcast i8* %287 to i32*
  store i32 %279, i32* %288, align 1
  %289 = bitcast i64* %159 to i32*
  store i32 %282, i32* %289, align 1
  %290 = getelementptr inbounds i8, i8* %270, i64 12
  %291 = bitcast i8* %290 to i32*
  store i32 %285, i32* %291, align 1
  %292 = add i64 %271, -144
  %293 = add i64 %273, 14
  store i64 %293, i64* %3, align 8
  %294 = load <2 x float>, <2 x float>* %157, align 1
  %295 = load <2 x float>, <2 x float>* %160, align 1
  %296 = extractelement <2 x float> %294, i32 0
  %297 = inttoptr i64 %292 to float*
  store float %296, float* %297, align 4
  %298 = add i64 %271, -140
  %299 = extractelement <2 x float> %294, i32 1
  %300 = inttoptr i64 %298 to float*
  store float %299, float* %300, align 4
  %301 = add i64 %271, -136
  %302 = extractelement <2 x float> %295, i32 0
  %303 = inttoptr i64 %301 to float*
  store float %302, float* %303, align 4
  %304 = add i64 %271, -132
  %305 = extractelement <2 x float> %295, i32 1
  %306 = inttoptr i64 %304 to float*
  store float %305, float* %306, align 4
  %307 = bitcast %union.VectorReg* %131 to i8*
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -304
  %310 = load i64, i64* %3, align 8
  %311 = add i64 %310, 7
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %309 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = add i64 %308, -300
  %315 = inttoptr i64 %314 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i64 %308, -296
  %318 = inttoptr i64 %317 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = add i64 %308, -292
  %321 = inttoptr i64 %320 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = bitcast %union.VectorReg* %131 to i32*
  store i32 %313, i32* %323, align 1
  %324 = getelementptr inbounds i8, i8* %307, i64 4
  %325 = bitcast i8* %324 to i32*
  store i32 %316, i32* %325, align 1
  %326 = bitcast i64* %138 to i32*
  store i32 %319, i32* %326, align 1
  %327 = getelementptr inbounds i8, i8* %307, i64 12
  %328 = bitcast i8* %327 to i32*
  store i32 %322, i32* %328, align 1
  %329 = add i64 %308, -128
  %330 = add i64 %310, 11
  store i64 %330, i64* %3, align 8
  %331 = load <2 x float>, <2 x float>* %136, align 1
  %332 = load <2 x float>, <2 x float>* %139, align 1
  %333 = extractelement <2 x float> %331, i32 0
  %334 = inttoptr i64 %329 to float*
  store float %333, float* %334, align 4
  %335 = add i64 %308, -124
  %336 = extractelement <2 x float> %331, i32 1
  %337 = inttoptr i64 %335 to float*
  store float %336, float* %337, align 4
  %338 = add i64 %308, -120
  %339 = extractelement <2 x float> %332, i32 0
  %340 = inttoptr i64 %338 to float*
  store float %339, float* %340, align 4
  %341 = add i64 %308, -116
  %342 = extractelement <2 x float> %332, i32 1
  %343 = inttoptr i64 %341 to float*
  store float %342, float* %343, align 4
  %344 = bitcast %union.VectorReg* %110 to i8*
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -288
  %347 = load i64, i64* %3, align 8
  %348 = add i64 %347, 7
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %346 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = add i64 %345, -284
  %352 = inttoptr i64 %351 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i64 %345, -280
  %355 = inttoptr i64 %354 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = add i64 %345, -276
  %358 = inttoptr i64 %357 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = bitcast %union.VectorReg* %110 to i32*
  store i32 %350, i32* %360, align 1
  %361 = getelementptr inbounds i8, i8* %344, i64 4
  %362 = bitcast i8* %361 to i32*
  store i32 %353, i32* %362, align 1
  %363 = bitcast i64* %117 to i32*
  store i32 %356, i32* %363, align 1
  %364 = getelementptr inbounds i8, i8* %344, i64 12
  %365 = bitcast i8* %364 to i32*
  store i32 %359, i32* %365, align 1
  %366 = add i64 %345, -112
  %367 = add i64 %347, 11
  store i64 %367, i64* %3, align 8
  %368 = load <2 x float>, <2 x float>* %115, align 1
  %369 = load <2 x float>, <2 x float>* %118, align 1
  %370 = extractelement <2 x float> %368, i32 0
  %371 = inttoptr i64 %366 to float*
  store float %370, float* %371, align 4
  %372 = add i64 %345, -108
  %373 = extractelement <2 x float> %368, i32 1
  %374 = inttoptr i64 %372 to float*
  store float %373, float* %374, align 4
  %375 = add i64 %345, -104
  %376 = extractelement <2 x float> %369, i32 0
  %377 = inttoptr i64 %375 to float*
  store float %376, float* %377, align 4
  %378 = add i64 %345, -100
  %379 = extractelement <2 x float> %369, i32 1
  %380 = inttoptr i64 %378 to float*
  store float %379, float* %380, align 4
  %381 = bitcast %union.VectorReg* %89 to i8*
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -272
  %384 = load i64, i64* %3, align 8
  %385 = add i64 %384, 7
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = add i64 %382, -268
  %389 = inttoptr i64 %388 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = add i64 %382, -264
  %392 = inttoptr i64 %391 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i64 %382, -260
  %395 = inttoptr i64 %394 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = bitcast %union.VectorReg* %89 to i32*
  store i32 %387, i32* %397, align 1
  %398 = getelementptr inbounds i8, i8* %381, i64 4
  %399 = bitcast i8* %398 to i32*
  store i32 %390, i32* %399, align 1
  %400 = bitcast i64* %96 to i32*
  store i32 %393, i32* %400, align 1
  %401 = getelementptr inbounds i8, i8* %381, i64 12
  %402 = bitcast i8* %401 to i32*
  store i32 %396, i32* %402, align 1
  %403 = add i64 %382, -96
  %404 = add i64 %384, 11
  store i64 %404, i64* %3, align 8
  %405 = load <2 x float>, <2 x float>* %94, align 1
  %406 = load <2 x float>, <2 x float>* %97, align 1
  %407 = extractelement <2 x float> %405, i32 0
  %408 = inttoptr i64 %403 to float*
  store float %407, float* %408, align 4
  %409 = add i64 %382, -92
  %410 = extractelement <2 x float> %405, i32 1
  %411 = inttoptr i64 %409 to float*
  store float %410, float* %411, align 4
  %412 = add i64 %382, -88
  %413 = extractelement <2 x float> %406, i32 0
  %414 = inttoptr i64 %412 to float*
  store float %413, float* %414, align 4
  %415 = add i64 %382, -84
  %416 = extractelement <2 x float> %406, i32 1
  %417 = inttoptr i64 %415 to float*
  store float %416, float* %417, align 4
  %418 = bitcast %union.VectorReg* %68 to i8*
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -256
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, 7
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %420 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = add i64 %419, -252
  %426 = inttoptr i64 %425 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = add i64 %419, -248
  %429 = inttoptr i64 %428 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = add i64 %419, -244
  %432 = inttoptr i64 %431 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = bitcast %union.VectorReg* %68 to i32*
  store i32 %424, i32* %434, align 1
  %435 = getelementptr inbounds i8, i8* %418, i64 4
  %436 = bitcast i8* %435 to i32*
  store i32 %427, i32* %436, align 1
  %437 = bitcast i64* %75 to i32*
  store i32 %430, i32* %437, align 1
  %438 = getelementptr inbounds i8, i8* %418, i64 12
  %439 = bitcast i8* %438 to i32*
  store i32 %433, i32* %439, align 1
  %440 = add i64 %419, -80
  %441 = add i64 %421, 11
  store i64 %441, i64* %3, align 8
  %442 = load <2 x float>, <2 x float>* %73, align 1
  %443 = load <2 x float>, <2 x float>* %76, align 1
  %444 = extractelement <2 x float> %442, i32 0
  %445 = inttoptr i64 %440 to float*
  store float %444, float* %445, align 4
  %446 = add i64 %419, -76
  %447 = extractelement <2 x float> %442, i32 1
  %448 = inttoptr i64 %446 to float*
  store float %447, float* %448, align 4
  %449 = add i64 %419, -72
  %450 = extractelement <2 x float> %443, i32 0
  %451 = inttoptr i64 %449 to float*
  store float %450, float* %451, align 4
  %452 = add i64 %419, -68
  %453 = extractelement <2 x float> %443, i32 1
  %454 = inttoptr i64 %452 to float*
  store float %453, float* %454, align 4
  %455 = bitcast %union.VectorReg* %47 to i8*
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -240
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 7
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i64 %456, -236
  %463 = inttoptr i64 %462 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = add i64 %456, -232
  %466 = inttoptr i64 %465 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i64 %456, -228
  %469 = inttoptr i64 %468 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = bitcast %union.VectorReg* %47 to i32*
  store i32 %461, i32* %471, align 1
  %472 = getelementptr inbounds i8, i8* %455, i64 4
  %473 = bitcast i8* %472 to i32*
  store i32 %464, i32* %473, align 1
  %474 = bitcast i64* %54 to i32*
  store i32 %467, i32* %474, align 1
  %475 = getelementptr inbounds i8, i8* %455, i64 12
  %476 = bitcast i8* %475 to i32*
  store i32 %470, i32* %476, align 1
  %477 = add i64 %456, -64
  %478 = add i64 %458, 11
  store i64 %478, i64* %3, align 8
  %479 = load <2 x float>, <2 x float>* %52, align 1
  %480 = load <2 x float>, <2 x float>* %55, align 1
  %481 = extractelement <2 x float> %479, i32 0
  %482 = inttoptr i64 %477 to float*
  store float %481, float* %482, align 4
  %483 = add i64 %456, -60
  %484 = extractelement <2 x float> %479, i32 1
  %485 = inttoptr i64 %483 to float*
  store float %484, float* %485, align 4
  %486 = add i64 %456, -56
  %487 = extractelement <2 x float> %480, i32 0
  %488 = inttoptr i64 %486 to float*
  store float %487, float* %488, align 4
  %489 = add i64 %456, -52
  %490 = extractelement <2 x float> %480, i32 1
  %491 = inttoptr i64 %489 to float*
  store float %490, float* %491, align 4
  %492 = bitcast %union.VectorReg* %28 to i8*
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -224
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, 7
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %494 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = add i64 %493, -220
  %500 = inttoptr i64 %499 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = add i64 %493, -216
  %503 = inttoptr i64 %502 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i64 %493, -212
  %506 = inttoptr i64 %505 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = bitcast %union.VectorReg* %28 to i32*
  store i32 %498, i32* %508, align 1
  %509 = getelementptr inbounds i8, i8* %492, i64 4
  %510 = bitcast i8* %509 to i32*
  store i32 %501, i32* %510, align 1
  %511 = bitcast i64* %33 to i32*
  store i32 %504, i32* %511, align 1
  %512 = getelementptr inbounds i8, i8* %492, i64 12
  %513 = bitcast i8* %512 to i32*
  store i32 %507, i32* %513, align 1
  %514 = add i64 %493, -48
  %515 = add i64 %495, 11
  store i64 %515, i64* %3, align 8
  %516 = load <2 x float>, <2 x float>* %31, align 1
  %517 = load <2 x float>, <2 x float>* %34, align 1
  %518 = extractelement <2 x float> %516, i32 0
  %519 = inttoptr i64 %514 to float*
  store float %518, float* %519, align 4
  %520 = add i64 %493, -44
  %521 = extractelement <2 x float> %516, i32 1
  %522 = inttoptr i64 %520 to float*
  store float %521, float* %522, align 4
  %523 = add i64 %493, -40
  %524 = extractelement <2 x float> %517, i32 0
  %525 = inttoptr i64 %523 to float*
  store float %524, float* %525, align 4
  %526 = add i64 %493, -36
  %527 = extractelement <2 x float> %517, i32 1
  %528 = inttoptr i64 %526 to float*
  store float %527, float* %528, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43eae3

block_.L_43eae3:                                  ; preds = %block_43ea85, %entry
  %529 = phi i64 [ %.pre, %block_43ea85 ], [ %233, %entry ]
  %RAX.i109 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -352
  %532 = add i64 %529, 7
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i64*
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %RAX.i109, align 8
  %535 = add i64 %530, -168
  %536 = add i64 %529, 14
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i64*
  store i64 %534, i64* %537, align 8
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -360
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 7
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RCX.i152, align 8
  %544 = add i64 %538, -176
  %545 = add i64 %540, 14
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  store i64 %543, i64* %546, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -368
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 7
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RDX.i149, align 8
  %553 = add i64 %547, -184
  %554 = add i64 %549, 14
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  store i64 %552, i64* %555, align 8
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -376
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, 7
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %557 to i64*
  %561 = load i64, i64* %560, align 8
  store i64 %561, i64* %RSI.i146, align 8
  %562 = add i64 %556, -192
  %563 = add i64 %558, 14
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  store i64 %561, i64* %564, align 8
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -384
  %567 = load i64, i64* %3, align 8
  %568 = add i64 %567, 7
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %566 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RDI.i160, align 8
  %571 = add i64 %565, -200
  %572 = add i64 %567, 14
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  store i64 %570, i64* %573, align 8
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -344
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, 7
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %R8.i156, align 8
  store i64 ptrtoint (%G__0x459e27_type* @G__0x459e27 to i64), i64* %RSI.i146, align 8
  %580 = add i64 %574, -8
  %581 = add i64 %576, 21
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  store i64 %579, i64* %582, align 8
  %583 = load i64, i64* %3, align 8
  %584 = load i64, i64* bitcast (%G_0x663060_type* @G_0x663060 to i64*), align 8
  store i64 %584, i64* %RDI.i160, align 8
  store i8 0, i8* %AL.i, align 1
  %585 = add i64 %583, -251342
  %586 = add i64 %583, 15
  %587 = load i64, i64* %6, align 8
  %588 = add i64 %587, -8
  %589 = inttoptr i64 %588 to i64*
  store i64 %586, i64* %589, align 8
  store i64 %588, i64* %6, align 8
  store i64 %585, i64* %3, align 8
  %590 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -32
  %593 = load i64, i64* %3, align 8
  store i64 %592, i64* %RCX.i152, align 8
  store i64 %592, i64* %RDX.i149, align 8
  %594 = add i64 %591, -208
  %595 = add i64 %591, -16
  %596 = add i64 %593, 18
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i64*
  store i64 %594, i64* %597, align 8
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, 16
  %600 = load i64, i64* %3, align 8
  store i64 %599, i64* %RSI.i146, align 8
  %601 = load i64, i64* %RDX.i149, align 8
  %602 = add i64 %601, 8
  %603 = add i64 %600, 8
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i64*
  store i64 %599, i64* %604, align 8
  %605 = load i64, i64* %RDX.i149, align 8
  %606 = add i64 %605, 4
  %607 = load i64, i64* %3, align 8
  %608 = add i64 %607, 7
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %606 to i32*
  store i32 48, i32* %609, align 4
  %610 = bitcast i64* %RDX.i149 to i32**
  %611 = load i32*, i32** %610, align 8
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, 6
  store i64 %613, i64* %3, align 8
  store i32 8, i32* %611, align 4
  %614 = load i64, i64* %3, align 8
  %615 = load i64, i64* bitcast (%G_0x663060_type* @G_0x663060 to i64*), align 8
  store i64 %615, i64* %RDI.i160, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -8
  %618 = add i64 %614, 12
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RSI.i146, align 8
  %621 = load i64, i64* %RCX.i152, align 8
  store i64 %621, i64* %RDX.i149, align 8
  %EAX.i37 = bitcast %union.anon* %18 to i32*
  %622 = add i64 %616, -388
  %623 = load i32, i32* %EAX.i37, align 4
  %624 = add i64 %614, 21
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %622 to i32*
  store i32 %623, i32* %625, align 4
  %626 = load i64, i64* %3, align 8
  %627 = add i64 %626, -251161
  %628 = add i64 %626, 5
  %629 = load i64, i64* %6, align 8
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %628, i64* %631, align 8
  store i64 %630, i64* %6, align 8
  store i64 %627, i64* %3, align 8
  %call2_43eb89 = tail call %struct.Memory* @sub_401670.vfprintf_plt(%struct.State* nonnull %0, i64 %627, %struct.Memory* %590)
  %632 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i146, align 8
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -32
  store i64 %634, i64* %RCX.i152, align 8
  %635 = load i64, i64* bitcast (%G_0x663060_type* @G_0x663060 to i64*), align 8
  store i64 %635, i64* %RDI.i160, align 8
  %636 = add i64 %633, -392
  %637 = load i32, i32* %EAX.i37, align 4
  %638 = add i64 %632, 28
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %636 to i32*
  store i32 %637, i32* %639, align 4
  %640 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -400
  %643 = load i64, i64* %RCX.i152, align 8
  %644 = add i64 %640, 9
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %642 to i64*
  store i64 %643, i64* %645, align 8
  %646 = load i64, i64* %3, align 8
  %647 = add i64 %646, -251459
  %648 = add i64 %646, 5
  %649 = load i64, i64* %6, align 8
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %648, i64* %651, align 8
  store i64 %650, i64* %6, align 8
  store i64 %647, i64* %3, align 8
  %652 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_43eb89)
  %653 = load i64, i64* %3, align 8
  %654 = load i64, i64* bitcast (%G_0x663060_type* @G_0x663060 to i64*), align 8
  store i64 %654, i64* %RDI.i160, align 8
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -404
  %657 = load i32, i32* %EAX.i37, align 4
  %658 = add i64 %653, 14
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %656 to i32*
  store i32 %657, i32* %659, align 4
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, -251366
  %662 = add i64 %660, 5
  %663 = load i64, i64* %6, align 8
  %664 = add i64 %663, -8
  %665 = inttoptr i64 %664 to i64*
  store i64 %662, i64* %665, align 8
  store i64 %664, i64* %6, align 8
  store i64 %661, i64* %3, align 8
  %666 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %652)
  %667 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i160, align 8
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -408
  %670 = load i32, i32* %EAX.i37, align 4
  %671 = add i64 %667, 11
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %669 to i32*
  store i32 %670, i32* %672, align 4
  %673 = load i64, i64* %3, align 8
  %674 = add i64 %673, -251142
  %675 = add i64 %673, 5
  %676 = load i64, i64* %6, align 8
  %677 = add i64 %676, -8
  %678 = inttoptr i64 %677 to i64*
  store i64 %675, i64* %678, align 8
  store i64 %677, i64* %6, align 8
  store i64 %674, i64* %3, align 8
  %679 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %666)
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, 5
  store i64 %681, i64* %3, align 8
  ret %struct.Memory* %679
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
define %struct.Memory* @routine_subq__0x1a0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -416
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 416
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
define %struct.Memory* @routine_movaps__xmm7__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
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
  %15 = add i64 %4, -220
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -216
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -212
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm6__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
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
  %15 = add i64 %4, -236
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -232
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -228
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
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
define %struct.Memory* @routine_movaps__xmm4__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
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
define %struct.Memory* @routine_movaps__xmm3__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
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
define %struct.Memory* @routine_movaps__xmm2__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
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
define %struct.Memory* @routine_movaps__xmm1__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
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
define %struct.Memory* @routine_movaps__xmm0__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
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
define %struct.Memory* @routine_movq__rdi__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43eae3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movaps_MINUS0x150__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
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
define %struct.Memory* @routine_movaps_MINUS0x140__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
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
define %struct.Memory* @routine_movaps_MINUS0x130__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movaps_MINUS0x120__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movaps_MINUS0x110__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_movaps_MINUS0x100__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movaps_MINUS0xf0__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -240
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -236
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -232
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -228
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
define %struct.Memory* @routine_movaps__xmm6__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
  %15 = add i64 %4, -60
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -56
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -52
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0xe0__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -224
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -220
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -216
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -212
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
define %struct.Memory* @routine_movaps__xmm7__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
  %15 = add i64 %4, -44
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -40
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -36
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x170__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x178__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x180__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x158__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459e27___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459e27_type* @G__0x459e27 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x663060___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x663060_type* @G_0x663060 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xd0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x30__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 48, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 8, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -388
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.vfprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -392
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -404
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -408
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exit_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_nop(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
