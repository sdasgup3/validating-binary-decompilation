; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2c20c__rip__type = type <{ [8 x i8] }>
%G_0x2c2a6__rip__type = type <{ [8 x i8] }>
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
@G_0x2c20c__rip_ = global %G_0x2c20c__rip__type zeroinitializer
@G_0x2c2a6__rip_ = global %G_0x2c2a6__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_444ca0.Gammln(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Logp_cvec(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = bitcast [32 x %union.VectorReg]* %40 to i32*
  %44 = getelementptr inbounds i8, i8* %41, i64 4
  %45 = bitcast i8* %44 to i32*
  %46 = bitcast i64* %42 to i32*
  %47 = getelementptr inbounds i8, i8* %41, i64 12
  %48 = bitcast i8* %47 to i32*
  %49 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %49, align 1
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %50 = add i64 %7, -16
  %51 = load i64, i64* %RDI.i, align 8
  %52 = add i64 %10, 14
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %54 to i32*
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -12
  %57 = load i32, i32* %ESI.i, align 4
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 3
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %60, align 4
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %RDX.i, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -28
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 5
  store i64 %70, i64* %3, align 8
  %71 = bitcast [32 x %union.VectorReg]* %40 to <2 x float>*
  %72 = load <2 x float>, <2 x float>* %71, align 1
  %73 = extractelement <2 x float> %72, i32 0
  %74 = inttoptr i64 %68 to float*
  store float %73, float* %74, align 4
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -40
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 5
  store i64 %78, i64* %3, align 8
  %79 = load <2 x float>, <2 x float>* %71, align 1
  %80 = extractelement <2 x float> %79, i32 0
  %81 = inttoptr i64 %76 to float*
  store float %80, float* %81, align 4
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -36
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 5
  store i64 %85, i64* %3, align 8
  %86 = load <2 x float>, <2 x float>* %71, align 1
  %87 = extractelement <2 x float> %86, i32 0
  %88 = inttoptr i64 %83 to float*
  store float %87, float* %88, align 4
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -32
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 5
  store i64 %92, i64* %3, align 8
  %93 = load <2 x float>, <2 x float>* %71, align 1
  %94 = extractelement <2 x float> %93, i32 0
  %95 = inttoptr i64 %90 to float*
  store float %94, float* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -44
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100, align 4
  %RAX.i211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %101 = bitcast [32 x %union.VectorReg]* %40 to float*
  %102 = bitcast i8* %44 to float*
  %103 = bitcast i64* %42 to float*
  %104 = bitcast i8* %47 to float*
  %105 = bitcast i64* %42 to <2 x i32>*
  %106 = bitcast [32 x %union.VectorReg]* %40 to double*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %108 = bitcast %union.VectorReg* %107 to double*
  %109 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %111 = bitcast i64* %110 to double*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %113 = bitcast %union.VectorReg* %112 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4284b1

block_.L_4284b1:                                  ; preds = %block_4284bd, %entry
  %114 = phi i64 [ %437, %block_4284bd ], [ %.pre, %entry ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %114, 3
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RAX.i211, align 8
  %121 = add i64 %115, -12
  %122 = add i64 %114, 6
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %119, %124
  %126 = icmp ult i32 %119, %124
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %14, align 1
  %128 = and i32 %125, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  %133 = xor i32 %124, %119
  %134 = xor i32 %133, %125
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %27, align 1
  %138 = icmp eq i32 %125, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %30, align 1
  %140 = lshr i32 %125, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %33, align 1
  %142 = lshr i32 %119, 31
  %143 = lshr i32 %124, 31
  %144 = xor i32 %143, %142
  %145 = xor i32 %140, %142
  %146 = add nuw nsw i32 %145, %144
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %39, align 1
  %149 = icmp ne i8 %141, 0
  %150 = xor i1 %149, %147
  %.v = select i1 %150, i64 12, i64 245
  %151 = add i64 %114, %.v
  store i64 %151, i64* %3, align 8
  br i1 %150, label %block_4284bd, label %block_.L_4285a6

block_4284bd:                                     ; preds = %block_.L_4284b1
  %152 = add i64 %115, -8
  %153 = add i64 %151, 4
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RAX.i211, align 8
  %156 = add i64 %151, 8
  store i64 %156, i64* %3, align 8
  %157 = load i32, i32* %118, align 4
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %RCX.i201, align 8
  %159 = shl nsw i64 %158, 2
  %160 = add i64 %159, %155
  %161 = add i64 %151, 13
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %43, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %104, align 1
  %164 = add i64 %115, -24
  %165 = add i64 %151, 17
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RAX.i211, align 8
  %168 = add i64 %151, 21
  store i64 %168, i64* %3, align 8
  %169 = load i32, i32* %118, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %RCX.i201, align 8
  %171 = shl nsw i64 %170, 2
  %172 = add i64 %171, %167
  %173 = add i64 %151, 26
  store i64 %173, i64* %3, align 8
  %174 = load <2 x float>, <2 x float>* %71, align 1
  %175 = load <2 x i32>, <2 x i32>* %105, align 1
  %176 = inttoptr i64 %172 to float*
  %177 = load float, float* %176, align 4
  %178 = extractelement <2 x float> %174, i32 0
  %179 = fadd float %178, %177
  store float %179, float* %101, align 1
  %180 = bitcast <2 x float> %174 to <2 x i32>
  %181 = extractelement <2 x i32> %180, i32 1
  store i32 %181, i32* %45, align 1
  %182 = extractelement <2 x i32> %175, i32 0
  store i32 %182, i32* %46, align 1
  %183 = extractelement <2 x i32> %175, i32 1
  store i32 %183, i32* %48, align 1
  %184 = add i64 %115, -32
  %185 = add i64 %151, 31
  store i64 %185, i64* %3, align 8
  %186 = load <2 x float>, <2 x float>* %71, align 1
  %187 = load <2 x i32>, <2 x i32>* %105, align 1
  %188 = inttoptr i64 %184 to float*
  %189 = load float, float* %188, align 4
  %190 = extractelement <2 x float> %186, i32 0
  %191 = fadd float %190, %189
  store float %191, float* %101, align 1
  %192 = bitcast <2 x float> %186 to <2 x i32>
  %193 = extractelement <2 x i32> %192, i32 1
  store i32 %193, i32* %45, align 1
  %194 = extractelement <2 x i32> %187, i32 0
  store i32 %194, i32* %46, align 1
  %195 = extractelement <2 x i32> %187, i32 1
  store i32 %195, i32* %48, align 1
  %196 = add i64 %151, 36
  store i64 %196, i64* %3, align 8
  %197 = load <2 x float>, <2 x float>* %71, align 1
  %198 = extractelement <2 x float> %197, i32 0
  store float %198, float* %188, align 4
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -24
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 4
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %200 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RAX.i211, align 8
  %205 = add i64 %199, -44
  %206 = add i64 %201, 8
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX.i201, align 8
  %210 = shl nsw i64 %209, 2
  %211 = add i64 %210, %204
  %212 = add i64 %201, 13
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %43, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %104, align 1
  %215 = add i64 %199, -36
  %216 = add i64 %201, 18
  store i64 %216, i64* %3, align 8
  %217 = load <2 x float>, <2 x float>* %71, align 1
  %218 = load <2 x i32>, <2 x i32>* %105, align 1
  %219 = inttoptr i64 %215 to float*
  %220 = load float, float* %219, align 4
  %221 = extractelement <2 x float> %217, i32 0
  %222 = fadd float %221, %220
  store float %222, float* %101, align 1
  %223 = bitcast <2 x float> %217 to <2 x i32>
  %224 = extractelement <2 x i32> %223, i32 1
  store i32 %224, i32* %45, align 1
  %225 = extractelement <2 x i32> %218, i32 0
  store i32 %225, i32* %46, align 1
  %226 = extractelement <2 x i32> %218, i32 1
  store i32 %226, i32* %48, align 1
  %227 = add i64 %201, 23
  store i64 %227, i64* %3, align 8
  %228 = load <2 x float>, <2 x float>* %71, align 1
  %229 = extractelement <2 x float> %228, i32 0
  store float %229, float* %219, align 4
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -8
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 4
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %231 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RAX.i211, align 8
  %236 = add i64 %230, -44
  %237 = add i64 %232, 8
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %RCX.i201, align 8
  %241 = shl nsw i64 %240, 2
  %242 = add i64 %241, %235
  %243 = add i64 %232, 13
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %43, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %104, align 1
  %246 = add i64 %230, -40
  %247 = add i64 %232, 18
  store i64 %247, i64* %3, align 8
  %248 = load <2 x float>, <2 x float>* %71, align 1
  %249 = load <2 x i32>, <2 x i32>* %105, align 1
  %250 = inttoptr i64 %246 to float*
  %251 = load float, float* %250, align 4
  %252 = extractelement <2 x float> %248, i32 0
  %253 = fadd float %252, %251
  store float %253, float* %101, align 1
  %254 = bitcast <2 x float> %248 to <2 x i32>
  %255 = extractelement <2 x i32> %254, i32 1
  store i32 %255, i32* %45, align 1
  %256 = extractelement <2 x i32> %249, i32 0
  store i32 %256, i32* %46, align 1
  %257 = extractelement <2 x i32> %249, i32 1
  store i32 %257, i32* %48, align 1
  %258 = add i64 %232, 23
  store i64 %258, i64* %3, align 8
  %259 = load <2 x float>, <2 x float>* %71, align 1
  %260 = extractelement <2 x float> %259, i32 0
  store float %260, float* %250, align 4
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, -24
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 4
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RAX.i211, align 8
  %267 = add i64 %261, -44
  %268 = add i64 %263, 8
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %RCX.i201, align 8
  %272 = shl nsw i64 %271, 2
  %273 = add i64 %272, %266
  %274 = add i64 %263, 13
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %43, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %104, align 1
  %277 = add i64 %261, -8
  %278 = add i64 %263, 17
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i211, align 8
  %281 = add i64 %263, 21
  store i64 %281, i64* %3, align 8
  %282 = load i32, i32* %269, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RCX.i201, align 8
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %284, %280
  %286 = add i64 %263, 26
  store i64 %286, i64* %3, align 8
  %287 = load <2 x float>, <2 x float>* %71, align 1
  %288 = load <2 x i32>, <2 x i32>* %105, align 1
  %289 = inttoptr i64 %285 to float*
  %290 = load float, float* %289, align 4
  %291 = extractelement <2 x float> %287, i32 0
  %292 = fadd float %291, %290
  store float %292, float* %101, align 1
  %293 = bitcast <2 x float> %287 to <2 x i32>
  %294 = extractelement <2 x i32> %293, i32 1
  store i32 %294, i32* %45, align 1
  %295 = extractelement <2 x i32> %288, i32 0
  store i32 %295, i32* %46, align 1
  %296 = extractelement <2 x i32> %288, i32 1
  store i32 %296, i32* %48, align 1
  %297 = load <2 x float>, <2 x float>* %71, align 1
  %298 = extractelement <2 x float> %297, i32 0
  %299 = fpext float %298 to double
  store double %299, double* %106, align 1
  %300 = add i64 %263, 116625
  %301 = add i64 %263, 35
  %302 = load i64, i64* %6, align 8
  %303 = add i64 %302, -8
  %304 = inttoptr i64 %303 to i64*
  store i64 %301, i64* %304, align 8
  store i64 %303, i64* %6, align 8
  store i64 %300, i64* %3, align 8
  %call2_42852d = tail call %struct.Memory* @sub_444ca0.Gammln(%struct.State* nonnull %0, i64 %300, %struct.Memory* %2)
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, ptrtoint (%G_0x2c2a6__rip__type* @G_0x2c2a6__rip_ to i64)
  %307 = add i64 %305, 8
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %109, align 1
  store double 0.000000e+00, double* %111, align 1
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -28
  %312 = add i64 %305, 13
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to float*
  %314 = load float, float* %313, align 4
  %315 = fpext float %314 to double
  %316 = load double, double* %106, align 1
  %317 = fadd double %315, %316
  store double %317, double* %113, align 1
  %.cast4 = bitcast double %316 to <2 x i32>
  %318 = load <2 x i32>, <2 x i32>* %105, align 1
  %319 = fptrunc double %317 to float
  store float %319, float* %101, align 1
  %320 = extractelement <2 x i32> %.cast4, i32 1
  store i32 %320, i32* %45, align 1
  %321 = extractelement <2 x i32> %318, i32 0
  store i32 %321, i32* %46, align 1
  %322 = extractelement <2 x i32> %318, i32 1
  store i32 %322, i32* %48, align 1
  %323 = add i64 %305, 26
  store i64 %323, i64* %3, align 8
  %324 = load <2 x float>, <2 x float>* %71, align 1
  %325 = extractelement <2 x float> %324, i32 0
  store float %325, float* %313, align 4
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -8
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 4
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RAX.i211, align 8
  %332 = add i64 %326, -44
  %333 = add i64 %328, 8
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %RCX.i201, align 8
  %337 = shl nsw i64 %336, 2
  %338 = add i64 %337, %331
  %339 = add i64 %328, 13
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to float*
  %341 = load float, float* %340, align 4
  %342 = fpext float %341 to double
  %343 = load double, double* %108, align 1
  %344 = fadd double %342, %343
  store double %344, double* %106, align 1
  %345 = add i64 %328, 116564
  %346 = add i64 %328, 22
  %347 = load i64, i64* %6, align 8
  %348 = add i64 %347, -8
  %349 = inttoptr i64 %348 to i64*
  store i64 %346, i64* %349, align 8
  store i64 %348, i64* %6, align 8
  store i64 %345, i64* %3, align 8
  %call2_42855d = tail call %struct.Memory* @sub_444ca0.Gammln(%struct.State* nonnull %0, i64 %345, %struct.Memory* %2)
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -28
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 5
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to float*
  %355 = load float, float* %354, align 4
  %356 = fpext float %355 to double
  %357 = load double, double* %106, align 1
  %358 = fsub double %356, %357
  store double %358, double* %108, align 1
  %.cast = bitcast double %357 to <2 x i32>
  %359 = load <2 x i32>, <2 x i32>* %105, align 1
  %360 = fptrunc double %358 to float
  store float %360, float* %101, align 1
  %361 = extractelement <2 x i32> %.cast, i32 1
  store i32 %361, i32* %45, align 1
  %362 = extractelement <2 x i32> %359, i32 0
  store i32 %362, i32* %46, align 1
  %363 = extractelement <2 x i32> %359, i32 1
  store i32 %363, i32* %48, align 1
  %364 = add i64 %352, 18
  store i64 %364, i64* %3, align 8
  %365 = load <2 x float>, <2 x float>* %71, align 1
  %366 = extractelement <2 x float> %365, i32 0
  store float %366, float* %354, align 4
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -24
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, 4
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %368 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %RAX.i211, align 8
  %373 = add i64 %367, -44
  %374 = add i64 %369, 8
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %RCX.i201, align 8
  %378 = shl nsw i64 %377, 2
  %379 = add i64 %378, %372
  %380 = add i64 %369, 13
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to float*
  %382 = load float, float* %381, align 4
  %383 = fpext float %382 to double
  store double %383, double* %106, align 1
  %384 = add i64 %369, 116524
  %385 = add i64 %369, 18
  %386 = load i64, i64* %6, align 8
  %387 = add i64 %386, -8
  %388 = inttoptr i64 %387 to i64*
  store i64 %385, i64* %388, align 8
  store i64 %387, i64* %6, align 8
  store i64 %384, i64* %3, align 8
  %call2_428581 = tail call %struct.Memory* @sub_444ca0.Gammln(%struct.State* nonnull %0, i64 %384, %struct.Memory* %2)
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -28
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, 5
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %390 to float*
  %394 = load float, float* %393, align 4
  %395 = fpext float %394 to double
  %396 = load double, double* %106, align 1
  %397 = fsub double %395, %396
  store double %397, double* %108, align 1
  %.cast1 = bitcast double %396 to <2 x i32>
  %398 = load <2 x i32>, <2 x i32>* %105, align 1
  %399 = fptrunc double %397 to float
  store float %399, float* %101, align 1
  %400 = extractelement <2 x i32> %.cast1, i32 1
  store i32 %400, i32* %45, align 1
  %401 = extractelement <2 x i32> %398, i32 0
  store i32 %401, i32* %46, align 1
  %402 = extractelement <2 x i32> %398, i32 1
  store i32 %402, i32* %48, align 1
  %403 = add i64 %391, 18
  store i64 %403, i64* %3, align 8
  %404 = load <2 x float>, <2 x float>* %71, align 1
  %405 = extractelement <2 x float> %404, i32 0
  store float %405, float* %393, align 4
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -44
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 3
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %407 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, 1
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i211, align 8
  %414 = icmp eq i32 %411, -1
  %415 = icmp eq i32 %412, 0
  %416 = or i1 %414, %415
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %14, align 1
  %418 = and i32 %412, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %21, align 1
  %423 = xor i32 %412, %411
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %27, align 1
  %427 = zext i1 %415 to i8
  store i8 %427, i8* %30, align 1
  %428 = lshr i32 %412, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %33, align 1
  %430 = lshr i32 %411, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %428
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = add i64 %408, 9
  store i64 %435, i64* %3, align 8
  store i32 %412, i32* %410, align 4
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, -240
  store i64 %437, i64* %3, align 8
  br label %block_.L_4284b1

block_.L_4285a6:                                  ; preds = %block_.L_4284b1
  %438 = add i64 %115, -32
  %439 = add i64 %151, 5
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to float*
  %441 = load float, float* %440, align 4
  %442 = fpext float %441 to double
  store double %442, double* %106, align 1
  %443 = add i64 %151, 116474
  %444 = add i64 %151, 10
  %445 = load i64, i64* %6, align 8
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %444, i64* %447, align 8
  store i64 %446, i64* %6, align 8
  store i64 %443, i64* %3, align 8
  %call2_4285ab = tail call %struct.Memory* @sub_444ca0.Gammln(%struct.State* nonnull %0, i64 %443, %struct.Memory* %2)
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -28
  %450 = load i64, i64* %3, align 8
  %451 = add i64 %450, 5
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %449 to float*
  %453 = load float, float* %452, align 4
  %454 = fpext float %453 to double
  %455 = load double, double* %106, align 1
  %456 = fsub double %454, %455
  store double %456, double* %108, align 1
  %457 = bitcast double %455 to <2 x i32>
  %458 = load <2 x i32>, <2 x i32>* %105, align 1
  %459 = fptrunc double %456 to float
  store float %459, float* %101, align 1
  %460 = extractelement <2 x i32> %457, i32 1
  store i32 %460, i32* %45, align 1
  %461 = extractelement <2 x i32> %458, i32 0
  store i32 %461, i32* %46, align 1
  %462 = extractelement <2 x i32> %458, i32 1
  store i32 %462, i32* %48, align 1
  %463 = add i64 %450, 18
  store i64 %463, i64* %3, align 8
  %464 = load <2 x float>, <2 x float>* %71, align 1
  %465 = extractelement <2 x float> %464, i32 0
  store float %465, float* %452, align 4
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -36
  %468 = load i64, i64* %3, align 8
  %469 = add i64 %468, 5
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %467 to float*
  %471 = load float, float* %470, align 4
  %472 = fpext float %471 to double
  store double %472, double* %106, align 1
  %473 = add i64 %468, 116446
  %474 = add i64 %468, 10
  %475 = load i64, i64* %6, align 8
  %476 = add i64 %475, -8
  %477 = inttoptr i64 %476 to i64*
  store i64 %474, i64* %477, align 8
  store i64 %476, i64* %6, align 8
  store i64 %473, i64* %3, align 8
  %call2_4285c7 = tail call %struct.Memory* @sub_444ca0.Gammln(%struct.State* nonnull %0, i64 %473, %struct.Memory* %call2_4285ab)
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, ptrtoint (%G_0x2c20c__rip__type* @G_0x2c20c__rip_ to i64)
  %480 = add i64 %478, 8
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %109, align 1
  store double 0.000000e+00, double* %111, align 1
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -28
  %485 = add i64 %478, 13
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to float*
  %487 = load float, float* %486, align 4
  %488 = fpext float %487 to double
  %489 = load double, double* %106, align 1
  %490 = fadd double %488, %489
  store double %490, double* %113, align 1
  %491 = bitcast double %489 to <2 x i32>
  %492 = load <2 x i32>, <2 x i32>* %105, align 1
  %493 = fptrunc double %490 to float
  store float %493, float* %101, align 1
  %494 = extractelement <2 x i32> %491, i32 1
  store i32 %494, i32* %45, align 1
  %495 = extractelement <2 x i32> %492, i32 0
  store i32 %495, i32* %46, align 1
  %496 = extractelement <2 x i32> %492, i32 1
  store i32 %496, i32* %48, align 1
  %497 = add i64 %478, 26
  store i64 %497, i64* %3, align 8
  %498 = load <2 x float>, <2 x float>* %71, align 1
  %499 = extractelement <2 x float> %498, i32 0
  store float %499, float* %486, align 4
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -40
  %502 = load i64, i64* %3, align 8
  %503 = add i64 %502, 5
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %501 to float*
  %505 = load float, float* %504, align 4
  %506 = fpext float %505 to double
  %507 = load double, double* %108, align 1
  %508 = fadd double %506, %507
  store double %508, double* %106, align 1
  %509 = add i64 %502, 116410
  %510 = add i64 %502, 14
  %511 = load i64, i64* %6, align 8
  %512 = add i64 %511, -8
  %513 = inttoptr i64 %512 to i64*
  store i64 %510, i64* %513, align 8
  store i64 %512, i64* %6, align 8
  store i64 %509, i64* %3, align 8
  %call2_4285ef = tail call %struct.Memory* @sub_444ca0.Gammln(%struct.State* nonnull %0, i64 %509, %struct.Memory* %call2_4285c7)
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -28
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, 5
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %515 to float*
  %519 = load float, float* %518, align 4
  %520 = fpext float %519 to double
  %521 = load double, double* %106, align 1
  %522 = fadd double %520, %521
  store double %522, double* %108, align 1
  %.cast2 = bitcast double %521 to <2 x i32>
  %523 = load <2 x i32>, <2 x i32>* %105, align 1
  %524 = fptrunc double %522 to float
  store float %524, float* %101, align 1
  %525 = extractelement <2 x i32> %.cast2, i32 1
  store i32 %525, i32* %45, align 1
  %526 = extractelement <2 x i32> %523, i32 0
  store i32 %526, i32* %46, align 1
  %527 = extractelement <2 x i32> %523, i32 1
  store i32 %527, i32* %48, align 1
  %528 = add i64 %516, 18
  store i64 %528, i64* %3, align 8
  %529 = load <2 x float>, <2 x float>* %71, align 1
  %530 = extractelement <2 x float> %529, i32 0
  store float %530, float* %518, align 4
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -28
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 5
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %532 to i32*
  %536 = load i32, i32* %535, align 4
  store i32 %536, i32* %43, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %104, align 1
  %537 = load i64, i64* %6, align 8
  %538 = add i64 %537, 48
  store i64 %538, i64* %6, align 8
  %539 = icmp ugt i64 %537, -49
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %14, align 1
  %541 = trunc i64 %538 to i32
  %542 = and i32 %541, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  %547 = xor i64 %537, 16
  %548 = xor i64 %547, %538
  %549 = lshr i64 %548, 4
  %550 = trunc i64 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %27, align 1
  %552 = icmp eq i64 %538, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %30, align 1
  %554 = lshr i64 %538, 63
  %555 = trunc i64 %554 to i8
  store i8 %555, i8* %33, align 1
  %556 = lshr i64 %537, 63
  %557 = xor i64 %554, %556
  %558 = add nuw nsw i64 %557, %554
  %559 = icmp eq i64 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %39, align 1
  %561 = add i64 %533, 10
  store i64 %561, i64* %3, align 8
  %562 = add i64 %537, 56
  %563 = inttoptr i64 %538 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %RBP.i, align 8
  store i64 %562, i64* %6, align 8
  %565 = add i64 %533, 11
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %562 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %3, align 8
  %568 = add i64 %537, 64
  store i64 %568, i64* %6, align 8
  ret %struct.Memory* %call2_4285ef
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
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
define %struct.Memory* @routine_jge_.L_4285a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Gammln(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x2c2a6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c2a6__rip__type* @G_0x2c2a6__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
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
define %struct.Memory* @routine_jmpq_.L_4284b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2c20c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c20c__rip__type* @G_0x2c20c__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
