; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x581b75_type = type <{ [8 x i8] }>
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
@G__0x581b75 = global %G__0x581b75_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46aaf0.attack_either(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46ada0.defend_both(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @play_attack_defend2_n(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -504
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
  %29 = add i64 %7, -280
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
  %38 = add i64 %7, -276
  %39 = extractelement <2 x float> %32, i32 1
  %40 = inttoptr i64 %38 to float*
  store float %39, float* %40, align 4
  %41 = add i64 %7, -272
  %42 = extractelement <2 x float> %35, i32 0
  %43 = inttoptr i64 %41 to float*
  store float %42, float* %43, align 4
  %44 = add i64 %7, -268
  %45 = extractelement <2 x float> %35, i32 1
  %46 = inttoptr i64 %44 to float*
  store float %45, float* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -288
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
  %59 = add i64 %48, -284
  %60 = extractelement <2 x float> %53, i32 1
  %61 = inttoptr i64 %59 to float*
  store float %60, float* %61, align 4
  %62 = add i64 %48, -280
  %63 = extractelement <2 x float> %56, i32 0
  %64 = inttoptr i64 %62 to float*
  store float %63, float* %64, align 4
  %65 = add i64 %48, -276
  %66 = extractelement <2 x float> %56, i32 1
  %67 = inttoptr i64 %65 to float*
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -304
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
  %80 = add i64 %69, -300
  %81 = extractelement <2 x float> %74, i32 1
  %82 = inttoptr i64 %80 to float*
  store float %81, float* %82, align 4
  %83 = add i64 %69, -296
  %84 = extractelement <2 x float> %77, i32 0
  %85 = inttoptr i64 %83 to float*
  store float %84, float* %85, align 4
  %86 = add i64 %69, -292
  %87 = extractelement <2 x float> %77, i32 1
  %88 = inttoptr i64 %86 to float*
  store float %87, float* %88, align 4
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -320
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
  %101 = add i64 %90, -316
  %102 = extractelement <2 x float> %95, i32 1
  %103 = inttoptr i64 %101 to float*
  store float %102, float* %103, align 4
  %104 = add i64 %90, -312
  %105 = extractelement <2 x float> %98, i32 0
  %106 = inttoptr i64 %104 to float*
  store float %105, float* %106, align 4
  %107 = add i64 %90, -308
  %108 = extractelement <2 x float> %98, i32 1
  %109 = inttoptr i64 %107 to float*
  store float %108, float* %109, align 4
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -336
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
  %122 = add i64 %111, -332
  %123 = extractelement <2 x float> %116, i32 1
  %124 = inttoptr i64 %122 to float*
  store float %123, float* %124, align 4
  %125 = add i64 %111, -328
  %126 = extractelement <2 x float> %119, i32 0
  %127 = inttoptr i64 %125 to float*
  store float %126, float* %127, align 4
  %128 = add i64 %111, -324
  %129 = extractelement <2 x float> %119, i32 1
  %130 = inttoptr i64 %128 to float*
  store float %129, float* %130, align 4
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -352
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
  %143 = add i64 %132, -348
  %144 = extractelement <2 x float> %137, i32 1
  %145 = inttoptr i64 %143 to float*
  store float %144, float* %145, align 4
  %146 = add i64 %132, -344
  %147 = extractelement <2 x float> %140, i32 0
  %148 = inttoptr i64 %146 to float*
  store float %147, float* %148, align 4
  %149 = add i64 %132, -340
  %150 = extractelement <2 x float> %140, i32 1
  %151 = inttoptr i64 %149 to float*
  store float %150, float* %151, align 4
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -368
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
  %164 = add i64 %153, -364
  %165 = extractelement <2 x float> %158, i32 1
  %166 = inttoptr i64 %164 to float*
  store float %165, float* %166, align 4
  %167 = add i64 %153, -360
  %168 = extractelement <2 x float> %161, i32 0
  %169 = inttoptr i64 %167 to float*
  store float %168, float* %169, align 4
  %170 = add i64 %153, -356
  %171 = extractelement <2 x float> %161, i32 1
  %172 = inttoptr i64 %170 to float*
  store float %171, float* %172, align 4
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -384
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
  %185 = add i64 %174, -380
  %186 = extractelement <2 x float> %179, i32 1
  %187 = inttoptr i64 %185 to float*
  store float %186, float* %187, align 4
  %188 = add i64 %174, -376
  %189 = extractelement <2 x float> %182, i32 0
  %190 = inttoptr i64 %188 to float*
  store float %189, float* %190, align 4
  %191 = add i64 %174, -372
  %192 = extractelement <2 x float> %182, i32 1
  %193 = inttoptr i64 %191 to float*
  store float %192, float* %193, align 4
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i461 = bitcast %union.anon* %194 to i32*
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -388
  %197 = load i32, i32* %EDI.i461, align 4
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 6
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %196 to i32*
  store i32 %197, i32* %200, align 4
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i459 = getelementptr inbounds %union.anon, %union.anon* %201, i64 0, i32 0
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -400
  %204 = load i64, i64* %R9.i459, align 8
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 7
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %203 to i64*
  store i64 %204, i64* %207, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -408
  %210 = load i64, i64* %R8.i, align 8
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %209 to i64*
  store i64 %210, i64* %213, align 8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i453 = getelementptr inbounds %union.anon, %union.anon* %214, i64 0, i32 0
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -416
  %217 = load i64, i64* %RCX.i453, align 8
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %220, align 8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i450 = bitcast %union.anon* %221 to i32*
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -420
  %224 = load i32, i32* %EDX.i450, align 4
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 6
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %223 to i32*
  store i32 %224, i32* %227, align 4
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i447 = bitcast %union.anon* %228 to i32*
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -424
  %231 = load i32, i32* %ESI.i447, align 4
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %234, align 4
  %235 = load i64, i64* %3, align 8
  %236 = load i8, i8* %15, align 1
  %237 = icmp ne i8 %236, 0
  %.v35 = select i1 %237, i64 109, i64 6
  %238 = add i64 %235, %.v35
  store i64 %238, i64* %3, align 8
  %cmpBr_47851c = icmp eq i8 %236, 1
  br i1 %cmpBr_47851c, label %block_.L_478589, label %block_478522

block_478522:                                     ; preds = %entry
  %239 = bitcast %union.VectorReg* %173 to i8*
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -384
  %242 = add i64 %238, 7
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = add i64 %240, -380
  %246 = inttoptr i64 %245 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = add i64 %240, -376
  %249 = inttoptr i64 %248 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = add i64 %240, -372
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
  %260 = add i64 %240, -208
  %261 = add i64 %238, 14
  store i64 %261, i64* %3, align 8
  %262 = load <2 x float>, <2 x float>* %178, align 1
  %263 = load <2 x float>, <2 x float>* %181, align 1
  %264 = extractelement <2 x float> %262, i32 0
  %265 = inttoptr i64 %260 to float*
  store float %264, float* %265, align 4
  %266 = add i64 %240, -204
  %267 = extractelement <2 x float> %262, i32 1
  %268 = inttoptr i64 %266 to float*
  store float %267, float* %268, align 4
  %269 = add i64 %240, -200
  %270 = extractelement <2 x float> %263, i32 0
  %271 = inttoptr i64 %269 to float*
  store float %270, float* %271, align 4
  %272 = add i64 %240, -196
  %273 = extractelement <2 x float> %263, i32 1
  %274 = inttoptr i64 %272 to float*
  store float %273, float* %274, align 4
  %275 = bitcast %union.VectorReg* %152 to i8*
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -368
  %278 = load i64, i64* %3, align 8
  %279 = add i64 %278, 7
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = add i64 %276, -364
  %283 = inttoptr i64 %282 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = add i64 %276, -360
  %286 = inttoptr i64 %285 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i64 %276, -356
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
  %297 = add i64 %276, -192
  %298 = add i64 %278, 14
  store i64 %298, i64* %3, align 8
  %299 = load <2 x float>, <2 x float>* %157, align 1
  %300 = load <2 x float>, <2 x float>* %160, align 1
  %301 = extractelement <2 x float> %299, i32 0
  %302 = inttoptr i64 %297 to float*
  store float %301, float* %302, align 4
  %303 = add i64 %276, -188
  %304 = extractelement <2 x float> %299, i32 1
  %305 = inttoptr i64 %303 to float*
  store float %304, float* %305, align 4
  %306 = add i64 %276, -184
  %307 = extractelement <2 x float> %300, i32 0
  %308 = inttoptr i64 %306 to float*
  store float %307, float* %308, align 4
  %309 = add i64 %276, -180
  %310 = extractelement <2 x float> %300, i32 1
  %311 = inttoptr i64 %309 to float*
  store float %310, float* %311, align 4
  %312 = bitcast %union.VectorReg* %131 to i8*
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -352
  %315 = load i64, i64* %3, align 8
  %316 = add i64 %315, 7
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = add i64 %313, -348
  %320 = inttoptr i64 %319 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i64 %313, -344
  %323 = inttoptr i64 %322 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i64 %313, -340
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
  %334 = add i64 %313, -176
  %335 = add i64 %315, 14
  store i64 %335, i64* %3, align 8
  %336 = load <2 x float>, <2 x float>* %136, align 1
  %337 = load <2 x float>, <2 x float>* %139, align 1
  %338 = extractelement <2 x float> %336, i32 0
  %339 = inttoptr i64 %334 to float*
  store float %338, float* %339, align 4
  %340 = add i64 %313, -172
  %341 = extractelement <2 x float> %336, i32 1
  %342 = inttoptr i64 %340 to float*
  store float %341, float* %342, align 4
  %343 = add i64 %313, -168
  %344 = extractelement <2 x float> %337, i32 0
  %345 = inttoptr i64 %343 to float*
  store float %344, float* %345, align 4
  %346 = add i64 %313, -164
  %347 = extractelement <2 x float> %337, i32 1
  %348 = inttoptr i64 %346 to float*
  store float %347, float* %348, align 4
  %349 = bitcast %union.VectorReg* %110 to i8*
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -336
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 7
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i64 %350, -332
  %357 = inttoptr i64 %356 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = add i64 %350, -328
  %360 = inttoptr i64 %359 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = add i64 %350, -324
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
  %371 = add i64 %350, -160
  %372 = add i64 %352, 14
  store i64 %372, i64* %3, align 8
  %373 = load <2 x float>, <2 x float>* %115, align 1
  %374 = load <2 x float>, <2 x float>* %118, align 1
  %375 = extractelement <2 x float> %373, i32 0
  %376 = inttoptr i64 %371 to float*
  store float %375, float* %376, align 4
  %377 = add i64 %350, -156
  %378 = extractelement <2 x float> %373, i32 1
  %379 = inttoptr i64 %377 to float*
  store float %378, float* %379, align 4
  %380 = add i64 %350, -152
  %381 = extractelement <2 x float> %374, i32 0
  %382 = inttoptr i64 %380 to float*
  store float %381, float* %382, align 4
  %383 = add i64 %350, -148
  %384 = extractelement <2 x float> %374, i32 1
  %385 = inttoptr i64 %383 to float*
  store float %384, float* %385, align 4
  %386 = bitcast %union.VectorReg* %89 to i8*
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -320
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 7
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = add i64 %387, -316
  %394 = inttoptr i64 %393 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = add i64 %387, -312
  %397 = inttoptr i64 %396 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i64 %387, -308
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
  %408 = add i64 %387, -144
  %409 = add i64 %389, 14
  store i64 %409, i64* %3, align 8
  %410 = load <2 x float>, <2 x float>* %94, align 1
  %411 = load <2 x float>, <2 x float>* %97, align 1
  %412 = extractelement <2 x float> %410, i32 0
  %413 = inttoptr i64 %408 to float*
  store float %412, float* %413, align 4
  %414 = add i64 %387, -140
  %415 = extractelement <2 x float> %410, i32 1
  %416 = inttoptr i64 %414 to float*
  store float %415, float* %416, align 4
  %417 = add i64 %387, -136
  %418 = extractelement <2 x float> %411, i32 0
  %419 = inttoptr i64 %417 to float*
  store float %418, float* %419, align 4
  %420 = add i64 %387, -132
  %421 = extractelement <2 x float> %411, i32 1
  %422 = inttoptr i64 %420 to float*
  store float %421, float* %422, align 4
  %423 = bitcast %union.VectorReg* %68 to i8*
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -304
  %426 = load i64, i64* %3, align 8
  %427 = add i64 %426, 7
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = add i64 %424, -300
  %431 = inttoptr i64 %430 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i64 %424, -296
  %434 = inttoptr i64 %433 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = add i64 %424, -292
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
  %445 = add i64 %424, -128
  %446 = add i64 %426, 11
  store i64 %446, i64* %3, align 8
  %447 = load <2 x float>, <2 x float>* %73, align 1
  %448 = load <2 x float>, <2 x float>* %76, align 1
  %449 = extractelement <2 x float> %447, i32 0
  %450 = inttoptr i64 %445 to float*
  store float %449, float* %450, align 4
  %451 = add i64 %424, -124
  %452 = extractelement <2 x float> %447, i32 1
  %453 = inttoptr i64 %451 to float*
  store float %452, float* %453, align 4
  %454 = add i64 %424, -120
  %455 = extractelement <2 x float> %448, i32 0
  %456 = inttoptr i64 %454 to float*
  store float %455, float* %456, align 4
  %457 = add i64 %424, -116
  %458 = extractelement <2 x float> %448, i32 1
  %459 = inttoptr i64 %457 to float*
  store float %458, float* %459, align 4
  %460 = bitcast %union.VectorReg* %47 to i8*
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -288
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i64 %461, -284
  %468 = inttoptr i64 %467 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = add i64 %461, -280
  %471 = inttoptr i64 %470 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = add i64 %461, -276
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
  %482 = add i64 %461, -112
  %483 = add i64 %463, 11
  store i64 %483, i64* %3, align 8
  %484 = load <2 x float>, <2 x float>* %52, align 1
  %485 = load <2 x float>, <2 x float>* %55, align 1
  %486 = extractelement <2 x float> %484, i32 0
  %487 = inttoptr i64 %482 to float*
  store float %486, float* %487, align 4
  %488 = add i64 %461, -108
  %489 = extractelement <2 x float> %484, i32 1
  %490 = inttoptr i64 %488 to float*
  store float %489, float* %490, align 4
  %491 = add i64 %461, -104
  %492 = extractelement <2 x float> %485, i32 0
  %493 = inttoptr i64 %491 to float*
  store float %492, float* %493, align 4
  %494 = add i64 %461, -100
  %495 = extractelement <2 x float> %485, i32 1
  %496 = inttoptr i64 %494 to float*
  store float %495, float* %496, align 4
  %497 = bitcast %union.VectorReg* %28 to i8*
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -272
  %500 = load i64, i64* %3, align 8
  %501 = add i64 %500, 7
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i64 %498, -268
  %505 = inttoptr i64 %504 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = add i64 %498, -264
  %508 = inttoptr i64 %507 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = add i64 %498, -260
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
  %519 = add i64 %498, -96
  %520 = add i64 %500, 11
  store i64 %520, i64* %3, align 8
  %521 = load <2 x float>, <2 x float>* %31, align 1
  %522 = load <2 x float>, <2 x float>* %34, align 1
  %523 = extractelement <2 x float> %521, i32 0
  %524 = inttoptr i64 %519 to float*
  store float %523, float* %524, align 4
  %525 = add i64 %498, -92
  %526 = extractelement <2 x float> %521, i32 1
  %527 = inttoptr i64 %525 to float*
  store float %526, float* %527, align 4
  %528 = add i64 %498, -88
  %529 = extractelement <2 x float> %522, i32 0
  %530 = inttoptr i64 %528 to float*
  store float %529, float* %530, align 4
  %531 = add i64 %498, -84
  %532 = extractelement <2 x float> %522, i32 1
  %533 = inttoptr i64 %531 to float*
  store float %532, float* %533, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_478589

block_.L_478589:                                  ; preds = %block_478522, %entry
  %534 = phi i64 [ %.pre, %block_478522 ], [ %238, %entry ]
  %RAX.i411 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -400
  %537 = add i64 %534, 7
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i411, align 8
  %540 = add i64 %535, -216
  %541 = add i64 %534, 14
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  store i64 %539, i64* %542, align 8
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -408
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 7
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %544 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RCX.i453, align 8
  %549 = add i64 %543, -224
  %550 = add i64 %545, 14
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  store i64 %548, i64* %551, align 8
  %RDX.i399 = getelementptr inbounds %union.anon, %union.anon* %221, i64 0, i32 0
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -416
  %554 = load i64, i64* %3, align 8
  %555 = add i64 %554, 7
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %553 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RDX.i399, align 8
  %558 = add i64 %552, -232
  %559 = add i64 %554, 14
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i64*
  store i64 %557, i64* %560, align 8
  %RSI.i393 = getelementptr inbounds %union.anon, %union.anon* %228, i64 0, i32 0
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -420
  %563 = load i64, i64* %3, align 8
  %564 = add i64 %563, 6
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RSI.i393, align 8
  %RDI.i390 = getelementptr inbounds %union.anon, %union.anon* %194, i64 0, i32 0
  %568 = add i64 %561, -424
  %569 = add i64 %563, 12
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RDI.i390, align 8
  %573 = add i64 %561, -388
  %574 = add i64 %563, 19
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %R8.i, align 8
  %578 = add i64 %561, -48
  store i64 %578, i64* %R9.i459, align 8
  %579 = add i64 %561, -4
  %580 = add i64 %563, 27
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  store i32 %576, i32* %581, align 4
  %582 = load i64, i64* %RBP.i, align 8
  %583 = add i64 %582, -8
  %584 = load i32, i32* %EDI.i461, align 4
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 3
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %583 to i32*
  store i32 %584, i32* %587, align 4
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -12
  %590 = load i32, i32* %ESI.i447, align 4
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 3
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %589 to i32*
  store i32 %590, i32* %593, align 4
  %594 = load i64, i64* %RBP.i, align 8
  %595 = add i64 %594, -4
  %596 = load i64, i64* %3, align 8
  %597 = add i64 %596, 3
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %595 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RSI.i393, align 8
  %601 = add i64 %594, -52
  %602 = add i64 %596, 6
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  store i32 %599, i32* %603, align 4
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -56
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 7
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  store i32 0, i32* %608, align 4
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -64
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 7
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i32*
  store i32 0, i32* %613, align 4
  %R10.i365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %614 = load i64, i64* %RBP.i, align 8
  %615 = add i64 %614, -256
  %616 = load i64, i64* %3, align 8
  %617 = load i64, i64* %R9.i459, align 8
  %618 = add i64 %617, 16
  %619 = add i64 %616, 11
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i64*
  store i64 %615, i64* %620, align 8
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, 16
  %623 = load i64, i64* %3, align 8
  store i64 %622, i64* %R10.i365, align 8
  %624 = load i64, i64* %R9.i459, align 8
  %625 = add i64 %624, 8
  %626 = add i64 %623, 8
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  store i64 %622, i64* %627, align 8
  %628 = load i64, i64* %R9.i459, align 8
  %629 = add i64 %628, 4
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 8
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %629 to i32*
  store i32 48, i32* %632, align 4
  %633 = bitcast %union.anon* %201 to i32**
  %634 = load i32*, i32** %633, align 8
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 7
  store i64 %636, i64* %3, align 8
  store i32 24, i32* %634, align 4
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -60
  %639 = load i64, i64* %3, align 8
  %640 = add i64 %639, 7
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %638 to i32*
  store i32 0, i32* %641, align 4
  %EAX.i345 = bitcast %union.anon* %18 to i32*
  %ECX.i203 = bitcast %union.anon* %214 to i32*
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_478611

block_.L_478611:                                  ; preds = %block_.L_4786e8, %block_.L_478589
  %642 = phi i64 [ %.pre15, %block_.L_478589 ], [ %978, %block_.L_4786e8 ]
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -60
  %645 = add i64 %642, 3
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX.i411, align 8
  %649 = add i64 %643, -12
  %650 = add i64 %642, 6
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = sub i32 %647, %652
  %654 = icmp ult i32 %647, %652
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %12, align 1
  %656 = and i32 %653, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %13, align 1
  %661 = xor i32 %652, %647
  %662 = xor i32 %661, %653
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %14, align 1
  %666 = icmp eq i32 %653, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %15, align 1
  %668 = lshr i32 %653, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %16, align 1
  %670 = lshr i32 %647, 31
  %671 = lshr i32 %652, 31
  %672 = xor i32 %671, %670
  %673 = xor i32 %668, %670
  %674 = add nuw nsw i32 %673, %672
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %17, align 1
  %677 = icmp ne i8 %669, 0
  %678 = xor i1 %677, %675
  %.v = select i1 %678, i64 12, i64 240
  %679 = add i64 %642, %.v
  %680 = add i64 %643, -48
  store i64 %680, i64* %RAX.i411, align 8
  %681 = add i64 %679, 7
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RCX.i453, align 8
  %685 = add i64 %679, 10
  store i64 %685, i64* %3, align 8
  %686 = add i32 %683, -40
  %687 = icmp ult i32 %683, 40
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %12, align 1
  %689 = and i32 %686, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %13, align 1
  %694 = xor i32 %686, %683
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %14, align 1
  %698 = icmp eq i32 %686, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %15, align 1
  %700 = lshr i32 %686, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %16, align 1
  %702 = lshr i32 %683, 31
  %703 = xor i32 %700, %702
  %704 = add nuw nsw i32 %703, %702
  %705 = icmp eq i32 %704, 2
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %17, align 1
  br i1 %678, label %block_47861d, label %block_.L_478701

block_47861d:                                     ; preds = %block_.L_478611
  %707 = add i64 %643, -432
  %708 = add i64 %679, 17
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  store i64 %680, i64* %709, align 8
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -436
  %712 = load i32, i32* %ECX.i203, align 4
  %713 = load i64, i64* %3, align 8
  %714 = add i64 %713, 6
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %711 to i32*
  store i32 %712, i32* %715, align 4
  %716 = load i64, i64* %3, align 8
  %717 = load i8, i8* %12, align 1
  %718 = load i8, i8* %15, align 1
  %719 = or i8 %718, %717
  %720 = icmp eq i8 %719, 0
  %.v38 = select i1 %720, i64 43, i64 6
  %721 = add i64 %716, %.v38
  store i64 %721, i64* %3, align 8
  %722 = load i64, i64* %RBP.i, align 8
  br i1 %720, label %block_.L_47865f, label %block_47863a

block_47863a:                                     ; preds = %block_47861d
  %723 = add i64 %722, -436
  %724 = add i64 %721, 6
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RAX.i411, align 8
  %728 = sext i32 %726 to i64
  store i64 %728, i64* %RCX.i453, align 8
  %729 = add i64 %722, -432
  %730 = add i64 %721, 16
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i64*
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %RDX.i399, align 8
  %733 = add i64 %732, 16
  %734 = add i64 %721, 20
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  %737 = add i64 %736, %728
  store i64 %737, i64* %RCX.i453, align 8
  %738 = add i32 %726, 8
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RAX.i411, align 8
  %740 = icmp ugt i32 %726, -9
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %12, align 1
  %742 = and i32 %738, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %13, align 1
  %747 = xor i32 %738, %726
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %14, align 1
  %751 = icmp eq i32 %738, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %15, align 1
  %753 = lshr i32 %738, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %16, align 1
  %755 = lshr i32 %726, 31
  %756 = xor i32 %753, %755
  %757 = add nuw nsw i32 %756, %753
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %17, align 1
  %760 = inttoptr i64 %732 to i32*
  %761 = add i64 %721, 25
  store i64 %761, i64* %3, align 8
  store i32 %738, i32* %760, align 4
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -448
  %764 = load i64, i64* %RCX.i453, align 8
  %765 = load i64, i64* %3, align 8
  %766 = add i64 %765, 7
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %763 to i64*
  store i64 %764, i64* %767, align 8
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 34
  store i64 %769, i64* %3, align 8
  br label %block_.L_47867c

block_.L_47865f:                                  ; preds = %block_47861d
  %770 = add i64 %722, -432
  %771 = add i64 %721, 7
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %RAX.i411, align 8
  %774 = add i64 %773, 8
  %775 = add i64 %721, 11
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i64*
  %777 = load i64, i64* %776, align 8
  store i64 %777, i64* %RDX.i399, align 8
  %778 = add i64 %777, 8
  store i64 %778, i64* %RCX.i453, align 8
  %779 = icmp ugt i64 %777, -9
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %12, align 1
  %781 = trunc i64 %778 to i32
  %782 = and i32 %781, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %13, align 1
  %787 = xor i64 %778, %777
  %788 = lshr i64 %787, 4
  %789 = trunc i64 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %14, align 1
  %791 = icmp eq i64 %778, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %15, align 1
  %793 = lshr i64 %778, 63
  %794 = trunc i64 %793 to i8
  store i8 %794, i8* %16, align 1
  %795 = lshr i64 %777, 63
  %796 = xor i64 %793, %795
  %797 = add nuw nsw i64 %796, %793
  %798 = icmp eq i64 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %17, align 1
  %800 = add i64 %721, 22
  store i64 %800, i64* %3, align 8
  store i64 %778, i64* %776, align 8
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -448
  %803 = load i64, i64* %RDX.i399, align 8
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 7
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %802 to i64*
  store i64 %803, i64* %806, align 8
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_47867c

block_.L_47867c:                                  ; preds = %block_.L_47865f, %block_47863a
  %807 = phi i64 [ %.pre21, %block_.L_47865f ], [ %769, %block_47863a ]
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -448
  %810 = add i64 %807, 7
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %RAX.i411, align 8
  %813 = add i64 %807, 9
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RCX.i453, align 8
  %817 = add i64 %808, -68
  %818 = add i64 %807, 12
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  store i32 %815, i32* %819, align 4
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -68
  %822 = load i64, i64* %3, align 8
  %823 = add i64 %822, 4
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %821 to i32*
  %825 = load i32, i32* %824, align 4
  store i8 0, i8* %12, align 1
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %831 = icmp eq i32 %825, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %15, align 1
  %833 = lshr i32 %825, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v28 = select i1 %831, i64 96, i64 10
  %835 = add i64 %822, %.v28
  store i64 %835, i64* %3, align 8
  br i1 %831, label %block_.L_4786e8, label %block_478692

block_478692:                                     ; preds = %block_.L_47867c
  store i64 ptrtoint (%G__0x581b75_type* @G__0x581b75 to i64), i64* %RDX.i399, align 8
  store i64 0, i64* %RAX.i411, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %836 = add i64 %835, 15
  store i64 %836, i64* %3, align 8
  %837 = load i32, i32* %824, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RDI.i390, align 8
  %839 = add i64 %820, -52
  %840 = add i64 %835, 18
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RSI.i393, align 8
  store i64 0, i64* %RCX.i453, align 8
  store i64 0, i64* %R8.i, align 8
  store i64 0, i64* %R9.i459, align 8
  %844 = add i64 %835, -456802
  %845 = add i64 %835, 31
  %846 = load i64, i64* %6, align 8
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %845, i64* %848, align 8
  store i64 %847, i64* %6, align 8
  store i64 %844, i64* %3, align 8
  %call2_4786ac = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %844, %struct.Memory* %2)
  %849 = load i32, i32* %EAX.i345, align 4
  %850 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %851 = and i32 %849, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %856 = icmp eq i32 %849, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %15, align 1
  %858 = lshr i32 %849, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v29 = select i1 %856, i64 9, i64 46
  %860 = add i64 %850, %.v29
  store i64 %860, i64* %3, align 8
  br i1 %856, label %block_4786ba, label %block_.L_4786df

block_4786ba:                                     ; preds = %block_478692
  store i64 ptrtoint (%G__0x581b75_type* @G__0x581b75 to i64), i64* %RDX.i399, align 8
  store i64 0, i64* %RAX.i411, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %861 = load i64, i64* %RBP.i, align 8
  %862 = add i64 %861, -68
  %863 = add i64 %860, 15
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RDI.i390, align 8
  %867 = add i64 %861, -52
  %868 = add i64 %860, 18
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RSI.i393, align 8
  store i64 0, i64* %RCX.i453, align 8
  store i64 0, i64* %R8.i, align 8
  %872 = add i64 %860, -437178
  %873 = add i64 %860, 28
  %874 = load i64, i64* %6, align 8
  %875 = add i64 %874, -8
  %876 = inttoptr i64 %875 to i64*
  store i64 %873, i64* %876, align 8
  store i64 %875, i64* %6, align 8
  store i64 %872, i64* %3, align 8
  %call2_4786d1 = tail call %struct.Memory* @sub_40db00.tryko(%struct.State* nonnull %0, i64 %872, %struct.Memory* %2)
  %877 = load i32, i32* %EAX.i345, align 4
  %878 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %879 = and i32 %877, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %884 = icmp eq i32 %877, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %15, align 1
  %886 = lshr i32 %877, 31
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v30 = select i1 %884, i64 18, i64 9
  %888 = add i64 %878, %.v30
  store i64 %888, i64* %3, align 8
  br i1 %884, label %block_.L_4786e8, label %block_.L_4786df

block_.L_4786df:                                  ; preds = %block_478692, %block_4786ba
  %889 = phi i64 [ %888, %block_4786ba ], [ %860, %block_478692 ]
  %890 = load i64, i64* %RBP.i, align 8
  %891 = add i64 %890, -64
  %892 = add i64 %889, 3
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = add i32 %894, 1
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX.i411, align 8
  %897 = icmp eq i32 %894, -1
  %898 = icmp eq i32 %895, 0
  %899 = or i1 %897, %898
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %12, align 1
  %901 = and i32 %895, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %13, align 1
  %906 = xor i32 %895, %894
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %14, align 1
  %910 = zext i1 %898 to i8
  store i8 %910, i8* %15, align 1
  %911 = lshr i32 %895, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %16, align 1
  %913 = lshr i32 %894, 31
  %914 = xor i32 %911, %913
  %915 = add nuw nsw i32 %914, %911
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %17, align 1
  %918 = add i64 %889, 9
  store i64 %918, i64* %3, align 8
  store i32 %895, i32* %893, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_4786e8

block_.L_4786e8:                                  ; preds = %block_.L_4786df, %block_4786ba, %block_.L_47867c
  %919 = phi i64 [ %.pre22, %block_.L_4786df ], [ %888, %block_4786ba ], [ %835, %block_.L_47867c ]
  store i64 3, i64* %RAX.i411, align 8
  %920 = load i64, i64* %RBP.i, align 8
  %921 = add i64 %920, -52
  %922 = add i64 %919, 8
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = sub i32 3, %924
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RAX.i411, align 8
  %927 = icmp ugt i32 %924, 3
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %12, align 1
  %929 = and i32 %925, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %13, align 1
  %934 = xor i32 %925, %924
  %935 = lshr i32 %934, 4
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %14, align 1
  %938 = icmp eq i32 %925, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %15, align 1
  %940 = lshr i32 %925, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %16, align 1
  %942 = lshr i32 %924, 31
  %943 = add nuw nsw i32 %940, %942
  %944 = icmp eq i32 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %17, align 1
  %946 = add i64 %919, 11
  store i64 %946, i64* %3, align 8
  store i32 %925, i32* %923, align 4
  %947 = load i64, i64* %RBP.i, align 8
  %948 = add i64 %947, -60
  %949 = load i64, i64* %3, align 8
  %950 = add i64 %949, 3
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %948 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = add i32 %952, 1
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX.i411, align 8
  %955 = icmp eq i32 %952, -1
  %956 = icmp eq i32 %953, 0
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %12, align 1
  %959 = and i32 %953, 255
  %960 = tail call i32 @llvm.ctpop.i32(i32 %959)
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  store i8 %963, i8* %13, align 1
  %964 = xor i32 %953, %952
  %965 = lshr i32 %964, 4
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  store i8 %967, i8* %14, align 1
  %968 = zext i1 %956 to i8
  store i8 %968, i8* %15, align 1
  %969 = lshr i32 %953, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %16, align 1
  %971 = lshr i32 %952, 31
  %972 = xor i32 %969, %971
  %973 = add nuw nsw i32 %972, %969
  %974 = icmp eq i32 %973, 2
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %17, align 1
  %976 = add i64 %949, 9
  store i64 %976, i64* %3, align 8
  store i32 %953, i32* %951, align 4
  %977 = load i64, i64* %3, align 8
  %978 = add i64 %977, -235
  store i64 %978, i64* %3, align 8
  br label %block_.L_478611

block_.L_478701:                                  ; preds = %block_.L_478611
  %979 = add i64 %643, -456
  %980 = add i64 %679, 17
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i64*
  store i64 %680, i64* %981, align 8
  %982 = load i64, i64* %RBP.i, align 8
  %983 = add i64 %982, -460
  %984 = load i32, i32* %ECX.i203, align 4
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, 6
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %983 to i32*
  store i32 %984, i32* %987, align 4
  %988 = load i64, i64* %3, align 8
  %989 = load i8, i8* %12, align 1
  %990 = load i8, i8* %15, align 1
  %991 = or i8 %990, %989
  %992 = icmp eq i8 %991, 0
  %.v36 = select i1 %992, i64 43, i64 6
  %993 = add i64 %988, %.v36
  store i64 %993, i64* %3, align 8
  %994 = load i64, i64* %RBP.i, align 8
  br i1 %992, label %block_.L_478743, label %block_47871e

block_47871e:                                     ; preds = %block_.L_478701
  %995 = add i64 %994, -460
  %996 = add i64 %993, 6
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX.i411, align 8
  %1000 = sext i32 %998 to i64
  store i64 %1000, i64* %RCX.i453, align 8
  %1001 = add i64 %994, -456
  %1002 = add i64 %993, 16
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i64*
  %1004 = load i64, i64* %1003, align 8
  store i64 %1004, i64* %RDX.i399, align 8
  %1005 = add i64 %1004, 16
  %1006 = add i64 %993, 20
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  %1009 = add i64 %1008, %1000
  store i64 %1009, i64* %RCX.i453, align 8
  %1010 = add i32 %998, 8
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RAX.i411, align 8
  %1012 = icmp ugt i32 %998, -9
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %12, align 1
  %1014 = and i32 %1010, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %13, align 1
  %1019 = xor i32 %1010, %998
  %1020 = lshr i32 %1019, 4
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  store i8 %1022, i8* %14, align 1
  %1023 = icmp eq i32 %1010, 0
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %15, align 1
  %1025 = lshr i32 %1010, 31
  %1026 = trunc i32 %1025 to i8
  store i8 %1026, i8* %16, align 1
  %1027 = lshr i32 %998, 31
  %1028 = xor i32 %1025, %1027
  %1029 = add nuw nsw i32 %1028, %1025
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %17, align 1
  %1032 = inttoptr i64 %1004 to i32*
  %1033 = add i64 %993, 25
  store i64 %1033, i64* %3, align 8
  store i32 %1010, i32* %1032, align 4
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -472
  %1036 = load i64, i64* %RCX.i453, align 8
  %1037 = load i64, i64* %3, align 8
  %1038 = add i64 %1037, 7
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1035 to i64*
  store i64 %1036, i64* %1039, align 8
  %1040 = load i64, i64* %3, align 8
  %1041 = add i64 %1040, 34
  store i64 %1041, i64* %3, align 8
  br label %block_.L_478760

block_.L_478743:                                  ; preds = %block_.L_478701
  %1042 = add i64 %994, -456
  %1043 = add i64 %993, 7
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RAX.i411, align 8
  %1046 = add i64 %1045, 8
  %1047 = add i64 %993, 11
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %RDX.i399, align 8
  %1050 = add i64 %1049, 8
  store i64 %1050, i64* %RCX.i453, align 8
  %1051 = icmp ugt i64 %1049, -9
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %12, align 1
  %1053 = trunc i64 %1050 to i32
  %1054 = and i32 %1053, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %13, align 1
  %1059 = xor i64 %1050, %1049
  %1060 = lshr i64 %1059, 4
  %1061 = trunc i64 %1060 to i8
  %1062 = and i8 %1061, 1
  store i8 %1062, i8* %14, align 1
  %1063 = icmp eq i64 %1050, 0
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %15, align 1
  %1065 = lshr i64 %1050, 63
  %1066 = trunc i64 %1065 to i8
  store i8 %1066, i8* %16, align 1
  %1067 = lshr i64 %1049, 63
  %1068 = xor i64 %1065, %1067
  %1069 = add nuw nsw i64 %1068, %1065
  %1070 = icmp eq i64 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %17, align 1
  %1072 = add i64 %993, 22
  store i64 %1072, i64* %3, align 8
  store i64 %1050, i64* %1048, align 8
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -472
  %1075 = load i64, i64* %RDX.i399, align 8
  %1076 = load i64, i64* %3, align 8
  %1077 = add i64 %1076, 7
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1074 to i64*
  store i64 %1075, i64* %1078, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_478760

block_.L_478760:                                  ; preds = %block_.L_478743, %block_47871e
  %1079 = phi i64 [ %.pre16, %block_.L_478743 ], [ %1041, %block_47871e ]
  %1080 = load i64, i64* %RBP.i, align 8
  %1081 = add i64 %1080, -472
  %1082 = add i64 %1079, 7
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RAX.i411, align 8
  %1085 = add i64 %1080, -48
  store i64 %1085, i64* %RCX.i453, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = add i64 %1079, 13
  store i64 %1087, i64* %3, align 8
  %1088 = load i32, i32* %1086, align 4
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RDX.i399, align 8
  %1090 = add i64 %1080, -72
  %1091 = add i64 %1079, 16
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  store i32 %1088, i32* %1092, align 4
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -48
  %1095 = load i64, i64* %3, align 8
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RDX.i399, align 8
  %1100 = add i32 %1098, -40
  %1101 = icmp ult i32 %1098, 40
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %12, align 1
  %1103 = and i32 %1100, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %13, align 1
  %1108 = xor i32 %1100, %1098
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %14, align 1
  %1112 = icmp eq i32 %1100, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %15, align 1
  %1114 = lshr i32 %1100, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %16, align 1
  %1116 = lshr i32 %1098, 31
  %1117 = xor i32 %1114, %1116
  %1118 = add nuw nsw i32 %1117, %1116
  %1119 = icmp eq i32 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %17, align 1
  %1121 = add i64 %1093, -480
  %1122 = load i64, i64* %RCX.i453, align 8
  %1123 = add i64 %1095, 13
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1121 to i64*
  store i64 %1122, i64* %1124, align 8
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -484
  %1127 = load i32, i32* %EDX.i450, align 4
  %1128 = load i64, i64* %3, align 8
  %1129 = add i64 %1128, 6
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1126 to i32*
  store i32 %1127, i32* %1130, align 4
  %1131 = load i64, i64* %3, align 8
  %1132 = load i8, i8* %12, align 1
  %1133 = load i8, i8* %15, align 1
  %1134 = or i8 %1133, %1132
  %1135 = icmp eq i8 %1134, 0
  %.v37 = select i1 %1135, i64 43, i64 6
  %1136 = add i64 %1131, %.v37
  store i64 %1136, i64* %3, align 8
  %1137 = load i64, i64* %RBP.i, align 8
  br i1 %1135, label %block_.L_4787ae, label %block_478789

block_478789:                                     ; preds = %block_.L_478760
  %1138 = add i64 %1137, -484
  %1139 = add i64 %1136, 6
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RAX.i411, align 8
  %1143 = sext i32 %1141 to i64
  store i64 %1143, i64* %RCX.i453, align 8
  %1144 = add i64 %1137, -480
  %1145 = add i64 %1136, 16
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RDX.i399, align 8
  %1148 = add i64 %1147, 16
  %1149 = add i64 %1136, 20
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  %1152 = add i64 %1151, %1143
  store i64 %1152, i64* %RCX.i453, align 8
  %1153 = add i32 %1141, 8
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX.i411, align 8
  %1155 = icmp ugt i32 %1141, -9
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %12, align 1
  %1157 = and i32 %1153, 255
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %13, align 1
  %1162 = xor i32 %1153, %1141
  %1163 = lshr i32 %1162, 4
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  store i8 %1165, i8* %14, align 1
  %1166 = icmp eq i32 %1153, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %15, align 1
  %1168 = lshr i32 %1153, 31
  %1169 = trunc i32 %1168 to i8
  store i8 %1169, i8* %16, align 1
  %1170 = lshr i32 %1141, 31
  %1171 = xor i32 %1168, %1170
  %1172 = add nuw nsw i32 %1171, %1168
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %17, align 1
  %1175 = inttoptr i64 %1147 to i32*
  %1176 = add i64 %1136, 25
  store i64 %1176, i64* %3, align 8
  store i32 %1153, i32* %1175, align 4
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -496
  %1179 = load i64, i64* %RCX.i453, align 8
  %1180 = load i64, i64* %3, align 8
  %1181 = add i64 %1180, 7
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1178 to i64*
  store i64 %1179, i64* %1182, align 8
  %1183 = load i64, i64* %3, align 8
  %1184 = add i64 %1183, 34
  store i64 %1184, i64* %3, align 8
  br label %block_.L_4787cb

block_.L_4787ae:                                  ; preds = %block_.L_478760
  %1185 = add i64 %1137, -480
  %1186 = add i64 %1136, 7
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  store i64 %1188, i64* %RAX.i411, align 8
  %1189 = add i64 %1188, 8
  %1190 = add i64 %1136, 11
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RDX.i399, align 8
  %1193 = add i64 %1192, 8
  store i64 %1193, i64* %RCX.i453, align 8
  %1194 = icmp ugt i64 %1192, -9
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %12, align 1
  %1196 = trunc i64 %1193 to i32
  %1197 = and i32 %1196, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %13, align 1
  %1202 = xor i64 %1193, %1192
  %1203 = lshr i64 %1202, 4
  %1204 = trunc i64 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %14, align 1
  %1206 = icmp eq i64 %1193, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %15, align 1
  %1208 = lshr i64 %1193, 63
  %1209 = trunc i64 %1208 to i8
  store i8 %1209, i8* %16, align 1
  %1210 = lshr i64 %1192, 63
  %1211 = xor i64 %1208, %1210
  %1212 = add nuw nsw i64 %1211, %1208
  %1213 = icmp eq i64 %1212, 2
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %17, align 1
  %1215 = add i64 %1136, 22
  store i64 %1215, i64* %3, align 8
  store i64 %1193, i64* %1191, align 8
  %1216 = load i64, i64* %RBP.i, align 8
  %1217 = add i64 %1216, -496
  %1218 = load i64, i64* %RDX.i399, align 8
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, 7
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1217 to i64*
  store i64 %1218, i64* %1221, align 8
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_4787cb

block_.L_4787cb:                                  ; preds = %block_.L_4787ae, %block_478789
  %1222 = phi i64 [ %.pre17, %block_.L_4787ae ], [ %1184, %block_478789 ]
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -496
  %1225 = add i64 %1222, 7
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i64*
  %1227 = load i64, i64* %1226, align 8
  store i64 %1227, i64* %RAX.i411, align 8
  %1228 = add i64 %1222, 9
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RCX.i453, align 8
  %1232 = add i64 %1223, -76
  %1233 = add i64 %1222, 12
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  store i32 %1230, i32* %1234, align 4
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -8
  %1237 = load i64, i64* %3, align 8
  %1238 = add i64 %1237, 4
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1236 to i32*
  %1240 = load i32, i32* %1239, align 4
  store i8 0, i8* %12, align 1
  %1241 = and i32 %1240, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1246 = icmp eq i32 %1240, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %15, align 1
  %1248 = lshr i32 %1240, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v23 = select i1 %1246, i64 83, i64 10
  %1250 = add i64 %1237, %.v23
  %1251 = add i64 %1235, -72
  %1252 = add i64 %1250, 4
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = sext i32 %1254 to i64
  store i64 %1255, i64* %RAX.i411, align 8
  %1256 = add nsw i64 %1255, 12099168
  %1257 = add i64 %1250, 12
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i8*
  %1259 = load i8, i8* %1258, align 1
  %1260 = zext i8 %1259 to i64
  store i64 %1260, i64* %RCX.i453, align 8
  %1261 = zext i8 %1259 to i32
  store i8 0, i8* %12, align 1
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1266 = icmp eq i8 %1259, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v24 = select i1 %1266, i64 42, i64 21
  %1268 = add i64 %1250, %.v24
  store i64 %1268, i64* %3, align 8
  br i1 %1246, label %block_.L_47882a, label %block_4787e1

block_4787e1:                                     ; preds = %block_.L_4787cb
  br i1 %1266, label %block_.L_47880b, label %block_4787f6

block_4787f6:                                     ; preds = %block_4787e1
  %1269 = add i64 %1235, -76
  %1270 = add i64 %1268, 4
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = sext i32 %1272 to i64
  store i64 %1273, i64* %RAX.i411, align 8
  %1274 = add nsw i64 %1273, 12099168
  %1275 = add i64 %1268, 12
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i8*
  %1277 = load i8, i8* %1276, align 1
  %1278 = zext i8 %1277 to i64
  store i64 %1278, i64* %RCX.i453, align 8
  %1279 = zext i8 %1277 to i32
  store i8 0, i8* %12, align 1
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1284 = icmp eq i8 %1277, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v25 = select i1 %1284, i64 21, i64 33
  %1286 = add i64 %1268, %.v25
  store i64 %1286, i64* %3, align 8
  br i1 %1284, label %block_.L_47880b, label %block_.L_478817

block_.L_47880b:                                  ; preds = %block_4787f6, %block_4787e1
  %1287 = phi i64 [ %1286, %block_4787f6 ], [ %1268, %block_4787e1 ]
  %1288 = add i64 %1235, -56
  %1289 = add i64 %1287, 7
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  store i32 5, i32* %1290, align 4
  %1291 = load i64, i64* %3, align 8
  %1292 = add i64 %1291, 19
  store i64 %1292, i64* %3, align 8
  br label %block_.L_478825

block_.L_478817:                                  ; preds = %block_4787f6
  %1293 = add i64 %1286, 3
  store i64 %1293, i64* %3, align 8
  %1294 = load i32, i32* %1253, align 4
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %RDI.i390, align 8
  %1296 = add i64 %1286, 6
  store i64 %1296, i64* %3, align 8
  %1297 = load i32, i32* %1271, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RSI.i393, align 8
  %1299 = add i64 %1286, -56615
  %1300 = add i64 %1286, 11
  %1301 = load i64, i64* %6, align 8
  %1302 = add i64 %1301, -8
  %1303 = inttoptr i64 %1302 to i64*
  store i64 %1300, i64* %1303, align 8
  store i64 %1302, i64* %6, align 8
  store i64 %1299, i64* %3, align 8
  %call2_47881d = tail call %struct.Memory* @sub_46aaf0.attack_either(%struct.State* nonnull %0, i64 %1299, %struct.Memory* %2)
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -56
  %1306 = load i32, i32* %EAX.i345, align 4
  %1307 = load i64, i64* %3, align 8
  %1308 = add i64 %1307, 3
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1305 to i32*
  store i32 %1306, i32* %1309, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_478825

block_.L_478825:                                  ; preds = %block_.L_478817, %block_.L_47880b
  %1310 = phi i64 [ %1292, %block_.L_47880b ], [ %.pre18, %block_.L_478817 ]
  %MEMORY.8 = phi %struct.Memory* [ %2, %block_.L_47880b ], [ %call2_47881d, %block_.L_478817 ]
  %1311 = add i64 %1310, 78
  br label %block_.L_478873

block_.L_47882a:                                  ; preds = %block_.L_4787cb
  br i1 %1266, label %block_.L_478854, label %block_47883f

block_47883f:                                     ; preds = %block_.L_47882a
  %1312 = add i64 %1235, -76
  %1313 = add i64 %1268, 4
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i32*
  %1315 = load i32, i32* %1314, align 4
  %1316 = sext i32 %1315 to i64
  store i64 %1316, i64* %RAX.i411, align 8
  %1317 = add nsw i64 %1316, 12099168
  %1318 = add i64 %1268, 12
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i8*
  %1320 = load i8, i8* %1319, align 1
  %1321 = zext i8 %1320 to i64
  store i64 %1321, i64* %RCX.i453, align 8
  %1322 = zext i8 %1320 to i32
  store i8 0, i8* %12, align 1
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1327 = icmp eq i8 %1320, 0
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v27 = select i1 %1327, i64 21, i64 33
  %1329 = add i64 %1268, %.v27
  store i64 %1329, i64* %3, align 8
  br i1 %1327, label %block_.L_478854, label %block_.L_478860

block_.L_478854:                                  ; preds = %block_47883f, %block_.L_47882a
  %1330 = phi i64 [ %1329, %block_47883f ], [ %1268, %block_.L_47882a ]
  %1331 = add i64 %1235, -56
  %1332 = add i64 %1330, 7
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  store i32 0, i32* %1333, align 4
  %1334 = load i64, i64* %3, align 8
  %1335 = add i64 %1334, 19
  store i64 %1335, i64* %3, align 8
  br label %block_.L_47886e

block_.L_478860:                                  ; preds = %block_47883f
  %1336 = add i64 %1329, 3
  store i64 %1336, i64* %3, align 8
  %1337 = load i32, i32* %1253, align 4
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RDI.i390, align 8
  %1339 = add i64 %1329, 6
  store i64 %1339, i64* %3, align 8
  %1340 = load i32, i32* %1314, align 4
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RSI.i393, align 8
  %1342 = add i64 %1329, -56000
  %1343 = add i64 %1329, 11
  %1344 = load i64, i64* %6, align 8
  %1345 = add i64 %1344, -8
  %1346 = inttoptr i64 %1345 to i64*
  store i64 %1343, i64* %1346, align 8
  store i64 %1345, i64* %6, align 8
  store i64 %1342, i64* %3, align 8
  %call2_478866 = tail call %struct.Memory* @sub_46ada0.defend_both(%struct.State* nonnull %0, i64 %1342, %struct.Memory* %2)
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -56
  %1349 = load i32, i32* %EAX.i345, align 4
  %1350 = load i64, i64* %3, align 8
  %1351 = add i64 %1350, 3
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1348 to i32*
  store i32 %1349, i32* %1352, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_47886e

block_.L_47886e:                                  ; preds = %block_.L_478860, %block_.L_478854
  %1353 = phi i64 [ %1335, %block_.L_478854 ], [ %.pre19, %block_.L_478860 ]
  %MEMORY.10 = phi %struct.Memory* [ %2, %block_.L_478854 ], [ %call2_478866, %block_.L_478860 ]
  %1354 = add i64 %1353, 5
  store i64 %1354, i64* %3, align 8
  br label %block_.L_478873

block_.L_478873:                                  ; preds = %block_.L_47886e, %block_.L_478825
  %storemerge = phi i64 [ %1311, %block_.L_478825 ], [ %1354, %block_.L_47886e ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.8, %block_.L_478825 ], [ %MEMORY.10, %block_.L_47886e ]
  %1355 = load i64, i64* %RBP.i, align 8
  %1356 = add i64 %1355, -60
  %1357 = add i64 %storemerge, 7
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  store i32 0, i32* %1358, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_47887a

block_.L_47887a:                                  ; preds = %block_478886, %block_.L_478873
  %1359 = phi i64 [ %1433, %block_478886 ], [ %.pre20, %block_.L_478873 ]
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -60
  %1362 = add i64 %1359, 3
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RAX.i411, align 8
  %1366 = add i64 %1360, -64
  %1367 = add i64 %1359, 6
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = sub i32 %1364, %1369
  %1371 = icmp ult i32 %1364, %1369
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %12, align 1
  %1373 = and i32 %1370, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %13, align 1
  %1378 = xor i32 %1369, %1364
  %1379 = xor i32 %1378, %1370
  %1380 = lshr i32 %1379, 4
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %14, align 1
  %1383 = icmp eq i32 %1370, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %15, align 1
  %1385 = lshr i32 %1370, 31
  %1386 = trunc i32 %1385 to i8
  store i8 %1386, i8* %16, align 1
  %1387 = lshr i32 %1364, 31
  %1388 = lshr i32 %1369, 31
  %1389 = xor i32 %1388, %1387
  %1390 = xor i32 %1385, %1387
  %1391 = add nuw nsw i32 %1390, %1389
  %1392 = icmp eq i32 %1391, 2
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %17, align 1
  %1394 = icmp ne i8 %1386, 0
  %1395 = xor i1 %1394, %1392
  %.v26 = select i1 %1395, i64 12, i64 31
  %1396 = add i64 %1359, %.v26
  store i64 %1396, i64* %3, align 8
  br i1 %1395, label %block_478886, label %block_.L_478899

block_478886:                                     ; preds = %block_.L_47887a
  %1397 = add i64 %1396, -437030
  %1398 = add i64 %1396, 5
  %1399 = load i64, i64* %6, align 8
  %1400 = add i64 %1399, -8
  %1401 = inttoptr i64 %1400 to i64*
  store i64 %1398, i64* %1401, align 8
  store i64 %1400, i64* %6, align 8
  store i64 %1397, i64* %3, align 8
  %call2_478886 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1397, %struct.Memory* %MEMORY.11)
  %1402 = load i64, i64* %RBP.i, align 8
  %1403 = add i64 %1402, -60
  %1404 = load i64, i64* %3, align 8
  %1405 = add i64 %1404, 3
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1403 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = add i32 %1407, 1
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RAX.i411, align 8
  %1410 = icmp eq i32 %1407, -1
  %1411 = icmp eq i32 %1408, 0
  %1412 = or i1 %1410, %1411
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %12, align 1
  %1414 = and i32 %1408, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %13, align 1
  %1419 = xor i32 %1408, %1407
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %14, align 1
  %1423 = zext i1 %1411 to i8
  store i8 %1423, i8* %15, align 1
  %1424 = lshr i32 %1408, 31
  %1425 = trunc i32 %1424 to i8
  store i8 %1425, i8* %16, align 1
  %1426 = lshr i32 %1407, 31
  %1427 = xor i32 %1424, %1426
  %1428 = add nuw nsw i32 %1427, %1424
  %1429 = icmp eq i32 %1428, 2
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %17, align 1
  %1431 = add i64 %1404, 9
  store i64 %1431, i64* %3, align 8
  store i32 %1408, i32* %1406, align 4
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, -26
  store i64 %1433, i64* %3, align 8
  br label %block_.L_47887a

block_.L_478899:                                  ; preds = %block_.L_47887a
  %1434 = add i64 %1360, -56
  %1435 = add i64 %1396, 3
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RAX.i411, align 8
  %1439 = load i64, i64* %6, align 8
  %1440 = add i64 %1439, 496
  store i64 %1440, i64* %6, align 8
  %1441 = icmp ugt i64 %1439, -497
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %12, align 1
  %1443 = trunc i64 %1440 to i32
  %1444 = and i32 %1443, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %13, align 1
  %1449 = xor i64 %1439, 16
  %1450 = xor i64 %1449, %1440
  %1451 = lshr i64 %1450, 4
  %1452 = trunc i64 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %14, align 1
  %1454 = icmp eq i64 %1440, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %15, align 1
  %1456 = lshr i64 %1440, 63
  %1457 = trunc i64 %1456 to i8
  store i8 %1457, i8* %16, align 1
  %1458 = lshr i64 %1439, 63
  %1459 = xor i64 %1456, %1458
  %1460 = add nuw nsw i64 %1459, %1456
  %1461 = icmp eq i64 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %17, align 1
  %1463 = add i64 %1396, 11
  store i64 %1463, i64* %3, align 8
  %1464 = add i64 %1439, 504
  %1465 = inttoptr i64 %1440 to i64*
  %1466 = load i64, i64* %1465, align 8
  store i64 %1466, i64* %RBP.i, align 8
  store i64 %1464, i64* %6, align 8
  %1467 = add i64 %1396, 12
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1464 to i64*
  %1469 = load i64, i64* %1468, align 8
  store i64 %1469, i64* %3, align 8
  %1470 = add i64 %1439, 512
  store i64 %1470, i64* %6, align 8
  ret %struct.Memory* %MEMORY.11
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
define %struct.Memory* @routine_subq__0x1f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -496
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 496
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
define %struct.Memory* @routine_movaps__xmm7__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
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
define %struct.Memory* @routine_movaps__xmm6__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
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
define %struct.Memory* @routine_movaps__xmm5__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
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
define %struct.Memory* @routine_movaps__xmm4__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
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
define %struct.Memory* @routine_movaps__xmm3__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
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
define %struct.Memory* @routine_movaps__xmm2__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -352
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
define %struct.Memory* @routine_movaps__xmm1__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
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
define %struct.Memory* @routine_movaps__xmm0__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -384
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
  %15 = add i64 %4, -380
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -376
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -372
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -388
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -420
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x1a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -424
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_478589(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movaps_MINUS0x180__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -384
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i64 %5, -380
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i64 %5, -376
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = add i64 %5, -372
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
define %struct.Memory* @routine_movaps__xmm0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
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
  %15 = add i64 %4, -204
  %16 = extractelement <2 x float> %9, i32 1
  %17 = inttoptr i64 %15 to float*
  store float %16, float* %17, align 4
  %18 = add i64 %4, -200
  %19 = extractelement <2 x float> %12, i32 0
  %20 = inttoptr i64 %18 to float*
  store float %19, float* %20, align 4
  %21 = add i64 %4, -196
  %22 = extractelement <2 x float> %12, i32 1
  %23 = inttoptr i64 %21 to float*
  store float %22, float* %23, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_MINUS0x170__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
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
define %struct.Memory* @routine_movaps_MINUS0x160__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
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
define %struct.Memory* @routine_movaps_MINUS0x150__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
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
define %struct.Memory* @routine_movaps_MINUS0x140__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm4__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
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
define %struct.Memory* @routine_movaps_MINUS0x130__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm5__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movaps_MINUS0x120__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm6__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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
define %struct.Memory* @routine_movaps_MINUS0x110__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to i32*
  store i32 %16, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %19, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm7__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_movq_MINUS0x190__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x198__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1a4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -420
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1a8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
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
define %struct.Memory* @routine_movl_MINUS0x184__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -388
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x100__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_movl__0x18____r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = bitcast i64* %R9 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 24, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jge_.L_478701(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movq__rax__MINUS0x1b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -436
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_47865f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
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
define %struct.Memory* @routine_movq__rcx__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -448
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47867c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
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
define %struct.Memory* @routine_movq__rdx__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -448
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_je_.L_4786e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x581b75___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581b75_type* @G__0x581b75 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jne_.L_4786df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478611(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -460
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_478743(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -460
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
define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_478760(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movq__rcx__MINUS0x1e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -484
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_4787ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movq_MINUS0x1e0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_4787cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1e0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_47882a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_je_.L_47880b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jne_.L_478817(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478825(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_callq_.attack_either(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478873(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_478854(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_478860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47886e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.defend_both(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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
define %struct.Memory* @routine_jge_.L_478899(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47887a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_addq__0x1f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 496
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -497
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
