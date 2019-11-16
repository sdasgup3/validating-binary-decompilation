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

declare %struct.Memory* @sub_44c640.GrowTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445df0.Strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @RegisterHit(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15.i461 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R15.i461, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i459 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %R14.i459, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12.i457 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %R12.i457, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 2
  store i64 %25, i64* %3, align 8
  %26 = add i64 %7, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i455 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %29 = load i64, i64* %RBX.i455, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  %32 = add i64 %7, -40
  %33 = inttoptr i64 %32 to i64*
  store i64 %29, i64* %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %7, -152
  store i64 %35, i64* %6, align 8
  %36 = icmp ult i64 %32, 112
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %38, align 1
  %39 = trunc i64 %35 to i32
  %40 = and i32 %39, 255
  %41 = tail call i32 @llvm.ctpop.i32(i32 %40)
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %44, i8* %45, align 1
  %46 = xor i64 %32, 16
  %47 = xor i64 %46, %35
  %48 = lshr i64 %47, 4
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %50, i8* %51, align 1
  %52 = icmp eq i64 %35, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1
  %55 = lshr i64 %35, 63
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %32, 63
  %59 = xor i64 %55, %58
  %60 = add nuw nsw i64 %59, %58
  %61 = icmp eq i64 %60, 2
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %62, i8* %63, align 1
  %RAX.i450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, 64
  %66 = add i64 %34, 8
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX.i450, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i447 = bitcast %union.anon* %69 to i32*
  %70 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %71 = add i64 %64, 56
  %72 = add i64 %34, 12
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %70, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i444 = bitcast %union.anon* %76 to i32*
  %77 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %78 = add i64 %64, 48
  %79 = add i64 %34, 16
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %77, align 8
  %83 = add i64 %64, 40
  %84 = add i64 %34, 19
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RBX.i455, align 8
  %R14D.i438 = bitcast %union.anon* %16 to i32*
  %88 = add i64 %64, 32
  %89 = add i64 %34, 23
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %R14.i459, align 8
  %R15D.i435 = bitcast %union.anon* %11 to i32*
  %93 = add i64 %64, 24
  %94 = add i64 %34, 27
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %R15.i461, align 8
  %R12D.i432 = bitcast %union.anon* %22 to i32*
  %98 = add i64 %64, 16
  %99 = add i64 %34, 31
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %R12.i457, align 8
  %RDI.i429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %103 = add i64 %64, -40
  %104 = load i64, i64* %RDI.i429, align 8
  %105 = add i64 %34, 35
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %106, align 8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -48
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 5
  store i64 %111, i64* %3, align 8
  %112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %107, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %113 = load i64, i64* %112, align 1
  %114 = inttoptr i64 %109 to i64*
  store i64 %113, i64* %114, align 8
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -56
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 5
  store i64 %118, i64* %3, align 8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %120 = load i64, i64* %119, align 1
  %121 = inttoptr i64 %116 to i64*
  store i64 %120, i64* %121, align 8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -60
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 5
  store i64 %126, i64* %3, align 8
  %127 = bitcast %union.VectorReg* %122 to <2 x float>*
  %128 = load <2 x float>, <2 x float>* %127, align 1
  %129 = extractelement <2 x float> %128, i32 0
  %130 = inttoptr i64 %124 to float*
  store float %129, float* %130, align 4
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -72
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 5
  store i64 %134, i64* %3, align 8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %136 = load i64, i64* %135, align 1
  %137 = inttoptr i64 %132 to i64*
  store i64 %136, i64* %137, align 8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -76
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 5
  store i64 %142, i64* %3, align 8
  %143 = bitcast %union.VectorReg* %138 to <2 x float>*
  %144 = load <2 x float>, <2 x float>* %143, align 1
  %145 = extractelement <2 x float> %144, i32 0
  %146 = inttoptr i64 %140 to float*
  store float %145, float* %146, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -88
  %149 = load i64, i64* %RSI.i, align 8
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %148 to i64*
  store i64 %149, i64* %152, align 8
  %RDX.i413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -96
  %155 = load i64, i64* %RDX.i413, align 8
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %154 to i64*
  store i64 %155, i64* %158, align 8
  %RCX.i410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -104
  %161 = load i64, i64* %RCX.i410, align 8
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164, align 8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i407 = bitcast %union.anon* %165 to i32*
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -108
  %168 = load i32, i32* %R8D.i407, align 4
  %169 = load i64, i64* %3, align 8
  %170 = add i64 %169, 4
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %167 to i32*
  store i32 %168, i32* %171, align 4
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %172 to i32*
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -112
  %175 = load i32, i32* %R9D.i, align 4
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 4
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %178, align 4
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -116
  %181 = load i32, i32* %R12D.i432, align 4
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 4
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %184, align 4
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -120
  %187 = load i32, i32* %R15D.i435, align 4
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 4
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %186 to i32*
  store i32 %187, i32* %190, align 4
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -124
  %193 = load i32, i32* %R14D.i438, align 4
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 4
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %192 to i32*
  store i32 %193, i32* %196, align 4
  %EBX.i = bitcast %union.anon* %28 to i32*
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -128
  %199 = load i32, i32* %EBX.i, align 4
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 3
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %198 to i32*
  store i32 %199, i32* %202, align 4
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -132
  %205 = load i32, i32* %R11D.i444, align 4
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, 7
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %208, align 4
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -136
  %211 = load i32, i32* %R10D.i447, align 4
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %214, align 4
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -144
  %217 = load i64, i64* %RAX.i450, align 8
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %220, align 8
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -40
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 4
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RAX.i450, align 8
  %227 = getelementptr inbounds %union.anon, %union.anon* %165, i64 0, i32 0
  %228 = add i64 %226, 20
  %229 = add i64 %223, 8
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %227, align 8
  %233 = add i64 %223, 12
  store i64 %233, i64* %3, align 8
  %234 = load i64, i64* %225, align 8
  store i64 %234, i64* %RAX.i450, align 8
  %235 = add i64 %234, 16
  %236 = add i64 %223, 16
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sub i32 %231, %238
  %240 = icmp ult i32 %231, %238
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %38, align 1
  %242 = and i32 %239, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %45, align 1
  %247 = xor i32 %238, %231
  %248 = xor i32 %247, %239
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %51, align 1
  %252 = icmp eq i32 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %54, align 1
  %254 = lshr i32 %239, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %57, align 1
  %256 = lshr i32 %231, 31
  %257 = lshr i32 %238, 31
  %258 = xor i32 %257, %256
  %259 = xor i32 %254, %256
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %63, align 1
  %.v = select i1 %252, i64 22, i64 31
  %263 = add i64 %223, %.v
  store i64 %263, i64* %3, align 8
  br i1 %252, label %block_44ca35, label %block_.L_44ca3e

block_44ca35:                                     ; preds = %entry
  %264 = add i64 %263, 4
  store i64 %264, i64* %3, align 8
  %265 = load i64, i64* %225, align 8
  store i64 %265, i64* %RDI.i429, align 8
  %266 = add i64 %263, -1013
  %267 = add i64 %263, 9
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  %call2_44ca39 = tail call %struct.Memory* @sub_44c640.GrowTophits(%struct.State* nonnull %0, i64 %266, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_44ca3e

block_.L_44ca3e:                                  ; preds = %entry, %block_44ca35
  %271 = phi i64 [ %263, %entry ], [ %.pre1, %block_44ca35 ]
  %272 = phi i64 [ %221, %entry ], [ %.pre, %block_44ca35 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_44ca39, %block_44ca35 ]
  %273 = add i64 %272, -88
  %274 = add i64 %271, 4
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RDI.i429, align 8
  %277 = add i64 %271, -27726
  %278 = add i64 %271, 9
  %279 = load i64, i64* %6, align 8
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %6, align 8
  store i64 %277, i64* %3, align 8
  %call2_44ca42 = tail call %struct.Memory* @sub_445df0.Strdup(%struct.State* nonnull %0, i64 %277, %struct.Memory* %MEMORY.0)
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -40
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 4
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RDI.i429, align 8
  %288 = add i64 %287, 8
  %289 = add i64 %284, 8
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RDI.i429, align 8
  %292 = add i64 %284, 12
  store i64 %292, i64* %3, align 8
  %293 = load i64, i64* %286, align 8
  store i64 %293, i64* %RCX.i410, align 8
  %294 = add i64 %293, 20
  %295 = add i64 %284, 16
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = mul nsw i64 %298, 104
  store i64 %299, i64* %RCX.i410, align 8
  %300 = lshr i64 %299, 63
  %301 = add i64 %299, %291
  store i64 %301, i64* %RDI.i429, align 8
  %302 = icmp ult i64 %301, %291
  %303 = icmp ult i64 %301, %299
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %38, align 1
  %306 = trunc i64 %301 to i32
  %307 = and i32 %306, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %45, align 1
  %312 = xor i64 %299, %291
  %313 = xor i64 %312, %301
  %314 = lshr i64 %313, 4
  %315 = trunc i64 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %51, align 1
  %317 = icmp eq i64 %301, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %54, align 1
  %319 = lshr i64 %301, 63
  %320 = trunc i64 %319 to i8
  store i8 %320, i8* %57, align 1
  %321 = lshr i64 %291, 63
  %322 = xor i64 %319, %321
  %323 = xor i64 %319, %300
  %324 = add nuw nsw i64 %322, %323
  %325 = icmp eq i64 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %63, align 1
  %327 = add i64 %301, 40
  %328 = load i64, i64* %RAX.i450, align 8
  %329 = add i64 %284, 27
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i64*
  store i64 %328, i64* %330, align 8
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -96
  %333 = load i64, i64* %3, align 8
  %334 = add i64 %333, 4
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %332 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RDI.i429, align 8
  %337 = add i64 %333, -27762
  %338 = add i64 %333, 9
  %339 = load i64, i64* %6, align 8
  %340 = add i64 %339, -8
  %341 = inttoptr i64 %340 to i64*
  store i64 %338, i64* %341, align 8
  store i64 %340, i64* %6, align 8
  store i64 %337, i64* %3, align 8
  %call2_44ca66 = tail call %struct.Memory* @sub_445df0.Strdup(%struct.State* nonnull %0, i64 %337, %struct.Memory* %call2_44ca42)
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -40
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, 4
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %343 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %RCX.i410, align 8
  %348 = add i64 %347, 8
  %349 = add i64 %344, 8
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RCX.i410, align 8
  %352 = add i64 %344, 12
  store i64 %352, i64* %3, align 8
  %353 = load i64, i64* %346, align 8
  store i64 %353, i64* %RDI.i429, align 8
  %354 = add i64 %353, 20
  %355 = add i64 %344, 16
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = mul nsw i64 %358, 104
  store i64 %359, i64* %RDI.i429, align 8
  %360 = lshr i64 %359, 63
  %361 = add i64 %359, %351
  store i64 %361, i64* %RCX.i410, align 8
  %362 = icmp ult i64 %361, %351
  %363 = icmp ult i64 %361, %359
  %364 = or i1 %362, %363
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %38, align 1
  %366 = trunc i64 %361 to i32
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %45, align 1
  %372 = xor i64 %359, %351
  %373 = xor i64 %372, %361
  %374 = lshr i64 %373, 4
  %375 = trunc i64 %374 to i8
  %376 = and i8 %375, 1
  store i8 %376, i8* %51, align 1
  %377 = icmp eq i64 %361, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %54, align 1
  %379 = lshr i64 %361, 63
  %380 = trunc i64 %379 to i8
  store i8 %380, i8* %57, align 1
  %381 = lshr i64 %351, 63
  %382 = xor i64 %379, %381
  %383 = xor i64 %379, %360
  %384 = add nuw nsw i64 %382, %383
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %63, align 1
  %387 = add i64 %361, 48
  %388 = load i64, i64* %RAX.i450, align 8
  %389 = add i64 %344, 27
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %387 to i64*
  store i64 %388, i64* %390, align 8
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -104
  %393 = load i64, i64* %3, align 8
  %394 = add i64 %393, 4
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %392 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RDI.i429, align 8
  %397 = add i64 %393, -27798
  %398 = add i64 %393, 9
  %399 = load i64, i64* %6, align 8
  %400 = add i64 %399, -8
  %401 = inttoptr i64 %400 to i64*
  store i64 %398, i64* %401, align 8
  store i64 %400, i64* %6, align 8
  store i64 %397, i64* %3, align 8
  %call2_44ca8a = tail call %struct.Memory* @sub_445df0.Strdup(%struct.State* nonnull %0, i64 %397, %struct.Memory* %call2_44ca66)
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -40
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 4
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %403 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RCX.i410, align 8
  %408 = add i64 %407, 8
  %409 = add i64 %404, 8
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RCX.i410, align 8
  %412 = add i64 %404, 12
  store i64 %412, i64* %3, align 8
  %413 = load i64, i64* %406, align 8
  store i64 %413, i64* %RDI.i429, align 8
  %414 = add i64 %413, 20
  %415 = add i64 %404, 16
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = mul nsw i64 %418, 104
  store i64 %419, i64* %RDI.i429, align 8
  %420 = lshr i64 %419, 63
  %421 = add i64 %419, %411
  store i64 %421, i64* %RCX.i410, align 8
  %422 = icmp ult i64 %421, %411
  %423 = icmp ult i64 %421, %419
  %424 = or i1 %422, %423
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %38, align 1
  %426 = trunc i64 %421 to i32
  %427 = and i32 %426, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %45, align 1
  %432 = xor i64 %419, %411
  %433 = xor i64 %432, %421
  %434 = lshr i64 %433, 4
  %435 = trunc i64 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %51, align 1
  %437 = icmp eq i64 %421, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %54, align 1
  %439 = lshr i64 %421, 63
  %440 = trunc i64 %439 to i8
  store i8 %440, i8* %57, align 1
  %441 = lshr i64 %411, 63
  %442 = xor i64 %439, %441
  %443 = xor i64 %439, %420
  %444 = add nuw nsw i64 %442, %443
  %445 = icmp eq i64 %444, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %63, align 1
  %447 = add i64 %421, 56
  %448 = load i64, i64* %RAX.i450, align 8
  %449 = add i64 %404, 27
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %447 to i64*
  store i64 %448, i64* %450, align 8
  %451 = bitcast [32 x %union.VectorReg]* %107 to i8*
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -48
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 5
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %112, align 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %459 = bitcast i64* %458 to double*
  store double 0.000000e+00, double* %459, align 1
  %460 = add i64 %452, -40
  %461 = add i64 %454, 9
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RAX.i450, align 8
  %464 = add i64 %463, 8
  %465 = add i64 %454, 13
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RAX.i450, align 8
  %468 = add i64 %454, 17
  store i64 %468, i64* %3, align 8
  %469 = load i64, i64* %462, align 8
  store i64 %469, i64* %RCX.i410, align 8
  %470 = add i64 %469, 20
  %471 = add i64 %454, 21
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  %475 = mul nsw i64 %474, 104
  store i64 %475, i64* %RCX.i410, align 8
  %476 = lshr i64 %475, 63
  %477 = add i64 %475, %467
  store i64 %477, i64* %RAX.i450, align 8
  %478 = icmp ult i64 %477, %467
  %479 = icmp ult i64 %477, %475
  %480 = or i1 %478, %479
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %38, align 1
  %482 = trunc i64 %477 to i32
  %483 = and i32 %482, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %45, align 1
  %488 = xor i64 %475, %467
  %489 = xor i64 %488, %477
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %51, align 1
  %493 = icmp eq i64 %477, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %54, align 1
  %495 = lshr i64 %477, 63
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %57, align 1
  %497 = lshr i64 %467, 63
  %498 = xor i64 %495, %497
  %499 = xor i64 %495, %476
  %500 = add nuw nsw i64 %498, %499
  %501 = icmp eq i64 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %63, align 1
  %503 = inttoptr i64 %477 to i64*
  %504 = add i64 %454, 32
  store i64 %504, i64* %3, align 8
  store i64 %457, i64* %503, align 8
  %505 = load i64, i64* %RBP.i, align 8
  %506 = add i64 %505, -56
  %507 = load i64, i64* %3, align 8
  %508 = add i64 %507, 5
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %506 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %112, align 1
  store double 0.000000e+00, double* %459, align 1
  %511 = add i64 %505, -40
  %512 = add i64 %507, 9
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %RAX.i450, align 8
  %515 = add i64 %514, 8
  %516 = add i64 %507, 13
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %RAX.i450, align 8
  %519 = add i64 %507, 17
  store i64 %519, i64* %3, align 8
  %520 = load i64, i64* %513, align 8
  store i64 %520, i64* %RCX.i410, align 8
  %521 = add i64 %520, 20
  %522 = add i64 %507, 21
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = sext i32 %524 to i64
  %526 = mul nsw i64 %525, 104
  store i64 %526, i64* %RCX.i410, align 8
  %527 = lshr i64 %526, 63
  %528 = add i64 %526, %518
  store i64 %528, i64* %RAX.i450, align 8
  %529 = icmp ult i64 %528, %518
  %530 = icmp ult i64 %528, %526
  %531 = or i1 %529, %530
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %38, align 1
  %533 = trunc i64 %528 to i32
  %534 = and i32 %533, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %45, align 1
  %539 = xor i64 %526, %518
  %540 = xor i64 %539, %528
  %541 = lshr i64 %540, 4
  %542 = trunc i64 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %51, align 1
  %544 = icmp eq i64 %528, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %54, align 1
  %546 = lshr i64 %528, 63
  %547 = trunc i64 %546 to i8
  store i8 %547, i8* %57, align 1
  %548 = lshr i64 %518, 63
  %549 = xor i64 %546, %548
  %550 = xor i64 %546, %527
  %551 = add nuw nsw i64 %549, %550
  %552 = icmp eq i64 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %63, align 1
  %554 = add i64 %528, 16
  %555 = add i64 %507, 33
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  store i64 %510, i64* %556, align 8
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -60
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 5
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = bitcast [32 x %union.VectorReg]* %107 to i32*
  store i32 %562, i32* %563, align 1
  %564 = getelementptr inbounds i8, i8* %451, i64 4
  %565 = bitcast i8* %564 to float*
  store float 0.000000e+00, float* %565, align 1
  %566 = bitcast i64* %458 to float*
  store float 0.000000e+00, float* %566, align 1
  %567 = getelementptr inbounds i8, i8* %451, i64 12
  %568 = bitcast i8* %567 to float*
  store float 0.000000e+00, float* %568, align 1
  %569 = add i64 %557, -40
  %570 = add i64 %559, 9
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RAX.i450, align 8
  %573 = add i64 %572, 8
  %574 = add i64 %559, 13
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RAX.i450, align 8
  %577 = add i64 %559, 17
  store i64 %577, i64* %3, align 8
  %578 = load i64, i64* %571, align 8
  store i64 %578, i64* %RCX.i410, align 8
  %579 = add i64 %578, 20
  %580 = add i64 %559, 21
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = sext i32 %582 to i64
  %584 = mul nsw i64 %583, 104
  store i64 %584, i64* %RCX.i410, align 8
  %585 = lshr i64 %584, 63
  %586 = add i64 %584, %576
  store i64 %586, i64* %RAX.i450, align 8
  %587 = icmp ult i64 %586, %576
  %588 = icmp ult i64 %586, %584
  %589 = or i1 %587, %588
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %38, align 1
  %591 = trunc i64 %586 to i32
  %592 = and i32 %591, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %45, align 1
  %597 = xor i64 %584, %576
  %598 = xor i64 %597, %586
  %599 = lshr i64 %598, 4
  %600 = trunc i64 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %51, align 1
  %602 = icmp eq i64 %586, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %54, align 1
  %604 = lshr i64 %586, 63
  %605 = trunc i64 %604 to i8
  store i8 %605, i8* %57, align 1
  %606 = lshr i64 %576, 63
  %607 = xor i64 %604, %606
  %608 = xor i64 %604, %585
  %609 = add nuw nsw i64 %607, %608
  %610 = icmp eq i64 %609, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %63, align 1
  %612 = add i64 %586, 8
  %613 = add i64 %559, 33
  store i64 %613, i64* %3, align 8
  %614 = bitcast [32 x %union.VectorReg]* %107 to <2 x float>*
  %615 = load <2 x float>, <2 x float>* %614, align 1
  %616 = extractelement <2 x float> %615, i32 0
  %617 = inttoptr i64 %612 to float*
  store float %616, float* %617, align 4
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -72
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, 5
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %112, align 1
  store double 0.000000e+00, double* %459, align 1
  %624 = add i64 %618, -40
  %625 = add i64 %620, 9
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RAX.i450, align 8
  %628 = add i64 %627, 8
  %629 = add i64 %620, 13
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RAX.i450, align 8
  %632 = add i64 %620, 17
  store i64 %632, i64* %3, align 8
  %633 = load i64, i64* %626, align 8
  store i64 %633, i64* %RCX.i410, align 8
  %634 = add i64 %633, 20
  %635 = add i64 %620, 21
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = mul nsw i64 %638, 104
  store i64 %639, i64* %RCX.i410, align 8
  %640 = lshr i64 %639, 63
  %641 = add i64 %639, %631
  store i64 %641, i64* %RAX.i450, align 8
  %642 = icmp ult i64 %641, %631
  %643 = icmp ult i64 %641, %639
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %38, align 1
  %646 = trunc i64 %641 to i32
  %647 = and i32 %646, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %45, align 1
  %652 = xor i64 %639, %631
  %653 = xor i64 %652, %641
  %654 = lshr i64 %653, 4
  %655 = trunc i64 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %51, align 1
  %657 = icmp eq i64 %641, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %54, align 1
  %659 = lshr i64 %641, 63
  %660 = trunc i64 %659 to i8
  store i8 %660, i8* %57, align 1
  %661 = lshr i64 %631, 63
  %662 = xor i64 %659, %661
  %663 = xor i64 %659, %640
  %664 = add nuw nsw i64 %662, %663
  %665 = icmp eq i64 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %63, align 1
  %667 = add i64 %641, 32
  %668 = add i64 %620, 33
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  store i64 %623, i64* %669, align 8
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -76
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 5
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674, align 4
  store i32 %675, i32* %563, align 1
  store float 0.000000e+00, float* %565, align 1
  store float 0.000000e+00, float* %566, align 1
  store float 0.000000e+00, float* %568, align 1
  %676 = add i64 %670, -40
  %677 = add i64 %672, 9
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RAX.i450, align 8
  %680 = add i64 %679, 8
  %681 = add i64 %672, 13
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RAX.i450, align 8
  %684 = add i64 %672, 17
  store i64 %684, i64* %3, align 8
  %685 = load i64, i64* %678, align 8
  store i64 %685, i64* %RCX.i410, align 8
  %686 = add i64 %685, 20
  %687 = add i64 %672, 21
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = sext i32 %689 to i64
  %691 = mul nsw i64 %690, 104
  store i64 %691, i64* %RCX.i410, align 8
  %692 = lshr i64 %691, 63
  %693 = add i64 %691, %683
  store i64 %693, i64* %RAX.i450, align 8
  %694 = icmp ult i64 %693, %683
  %695 = icmp ult i64 %693, %691
  %696 = or i1 %694, %695
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %38, align 1
  %698 = trunc i64 %693 to i32
  %699 = and i32 %698, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %45, align 1
  %704 = xor i64 %691, %683
  %705 = xor i64 %704, %693
  %706 = lshr i64 %705, 4
  %707 = trunc i64 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %51, align 1
  %709 = icmp eq i64 %693, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %54, align 1
  %711 = lshr i64 %693, 63
  %712 = trunc i64 %711 to i8
  store i8 %712, i8* %57, align 1
  %713 = lshr i64 %683, 63
  %714 = xor i64 %711, %713
  %715 = xor i64 %711, %692
  %716 = add nuw nsw i64 %714, %715
  %717 = icmp eq i64 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %63, align 1
  %719 = add i64 %693, 24
  %720 = add i64 %672, 33
  store i64 %720, i64* %3, align 8
  %721 = load <2 x float>, <2 x float>* %614, align 1
  %722 = extractelement <2 x float> %721, i32 0
  %723 = inttoptr i64 %719 to float*
  store float %722, float* %723, align 4
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -108
  %726 = load i64, i64* %3, align 8
  %727 = add i64 %726, 3
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %725 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RDX.i413, align 8
  %731 = add i64 %724, -40
  %732 = add i64 %726, 7
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RAX.i450, align 8
  %735 = add i64 %734, 8
  %736 = add i64 %726, 11
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %RAX.i450, align 8
  %739 = add i64 %726, 15
  store i64 %739, i64* %3, align 8
  %740 = load i64, i64* %733, align 8
  store i64 %740, i64* %RCX.i410, align 8
  %741 = add i64 %740, 20
  %742 = add i64 %726, 19
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = sext i32 %744 to i64
  %746 = mul nsw i64 %745, 104
  store i64 %746, i64* %RCX.i410, align 8
  %747 = lshr i64 %746, 63
  %748 = add i64 %746, %738
  store i64 %748, i64* %RAX.i450, align 8
  %749 = icmp ult i64 %748, %738
  %750 = icmp ult i64 %748, %746
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %38, align 1
  %753 = trunc i64 %748 to i32
  %754 = and i32 %753, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %45, align 1
  %759 = xor i64 %746, %738
  %760 = xor i64 %759, %748
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %51, align 1
  %764 = icmp eq i64 %748, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %54, align 1
  %766 = lshr i64 %748, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %57, align 1
  %768 = lshr i64 %738, 63
  %769 = xor i64 %766, %768
  %770 = xor i64 %766, %747
  %771 = add nuw nsw i64 %769, %770
  %772 = icmp eq i64 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %63, align 1
  %774 = add i64 %748, 64
  %775 = add i64 %726, 29
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  store i32 %729, i32* %776, align 4
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -112
  %779 = load i64, i64* %3, align 8
  %780 = add i64 %779, 3
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %778 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RDX.i413, align 8
  %784 = add i64 %777, -40
  %785 = add i64 %779, 7
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %RAX.i450, align 8
  %788 = add i64 %787, 8
  %789 = add i64 %779, 11
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RAX.i450, align 8
  %792 = add i64 %779, 15
  store i64 %792, i64* %3, align 8
  %793 = load i64, i64* %786, align 8
  store i64 %793, i64* %RCX.i410, align 8
  %794 = add i64 %793, 20
  %795 = add i64 %779, 19
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %797 to i64
  %799 = mul nsw i64 %798, 104
  store i64 %799, i64* %RCX.i410, align 8
  %800 = lshr i64 %799, 63
  %801 = add i64 %799, %791
  store i64 %801, i64* %RAX.i450, align 8
  %802 = icmp ult i64 %801, %791
  %803 = icmp ult i64 %801, %799
  %804 = or i1 %802, %803
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %38, align 1
  %806 = trunc i64 %801 to i32
  %807 = and i32 %806, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %45, align 1
  %812 = xor i64 %799, %791
  %813 = xor i64 %812, %801
  %814 = lshr i64 %813, 4
  %815 = trunc i64 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %51, align 1
  %817 = icmp eq i64 %801, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %54, align 1
  %819 = lshr i64 %801, 63
  %820 = trunc i64 %819 to i8
  store i8 %820, i8* %57, align 1
  %821 = lshr i64 %791, 63
  %822 = xor i64 %819, %821
  %823 = xor i64 %819, %800
  %824 = add nuw nsw i64 %822, %823
  %825 = icmp eq i64 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %63, align 1
  %827 = add i64 %801, 68
  %828 = add i64 %779, 29
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  store i32 %782, i32* %829, align 4
  %830 = load i64, i64* %RBP.i, align 8
  %831 = add i64 %830, -116
  %832 = load i64, i64* %3, align 8
  %833 = add i64 %832, 3
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %831 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDX.i413, align 8
  %837 = add i64 %830, -40
  %838 = add i64 %832, 7
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  %840 = load i64, i64* %839, align 8
  store i64 %840, i64* %RAX.i450, align 8
  %841 = add i64 %840, 8
  %842 = add i64 %832, 11
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RAX.i450, align 8
  %845 = add i64 %832, 15
  store i64 %845, i64* %3, align 8
  %846 = load i64, i64* %839, align 8
  store i64 %846, i64* %RCX.i410, align 8
  %847 = add i64 %846, 20
  %848 = add i64 %832, 19
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = sext i32 %850 to i64
  %852 = mul nsw i64 %851, 104
  store i64 %852, i64* %RCX.i410, align 8
  %853 = lshr i64 %852, 63
  %854 = add i64 %852, %844
  store i64 %854, i64* %RAX.i450, align 8
  %855 = icmp ult i64 %854, %844
  %856 = icmp ult i64 %854, %852
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %38, align 1
  %859 = trunc i64 %854 to i32
  %860 = and i32 %859, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %45, align 1
  %865 = xor i64 %852, %844
  %866 = xor i64 %865, %854
  %867 = lshr i64 %866, 4
  %868 = trunc i64 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %51, align 1
  %870 = icmp eq i64 %854, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %54, align 1
  %872 = lshr i64 %854, 63
  %873 = trunc i64 %872 to i8
  store i8 %873, i8* %57, align 1
  %874 = lshr i64 %844, 63
  %875 = xor i64 %872, %874
  %876 = xor i64 %872, %853
  %877 = add nuw nsw i64 %875, %876
  %878 = icmp eq i64 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %63, align 1
  %880 = add i64 %854, 72
  %881 = add i64 %832, 29
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i32*
  store i32 %835, i32* %882, align 4
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -120
  %885 = load i64, i64* %3, align 8
  %886 = add i64 %885, 3
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %884 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RDX.i413, align 8
  %890 = add i64 %883, -40
  %891 = add i64 %885, 7
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %RAX.i450, align 8
  %894 = add i64 %893, 8
  %895 = add i64 %885, 11
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i450, align 8
  %898 = add i64 %885, 15
  store i64 %898, i64* %3, align 8
  %899 = load i64, i64* %892, align 8
  store i64 %899, i64* %RCX.i410, align 8
  %900 = add i64 %899, 20
  %901 = add i64 %885, 19
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = sext i32 %903 to i64
  %905 = mul nsw i64 %904, 104
  store i64 %905, i64* %RCX.i410, align 8
  %906 = lshr i64 %905, 63
  %907 = add i64 %905, %897
  store i64 %907, i64* %RAX.i450, align 8
  %908 = icmp ult i64 %907, %897
  %909 = icmp ult i64 %907, %905
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %38, align 1
  %912 = trunc i64 %907 to i32
  %913 = and i32 %912, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %45, align 1
  %918 = xor i64 %905, %897
  %919 = xor i64 %918, %907
  %920 = lshr i64 %919, 4
  %921 = trunc i64 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %51, align 1
  %923 = icmp eq i64 %907, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %54, align 1
  %925 = lshr i64 %907, 63
  %926 = trunc i64 %925 to i8
  store i8 %926, i8* %57, align 1
  %927 = lshr i64 %897, 63
  %928 = xor i64 %925, %927
  %929 = xor i64 %925, %906
  %930 = add nuw nsw i64 %928, %929
  %931 = icmp eq i64 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %63, align 1
  %933 = add i64 %907, 76
  %934 = add i64 %885, 29
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  store i32 %888, i32* %935, align 4
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -124
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 3
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %937 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RDX.i413, align 8
  %943 = add i64 %936, -40
  %944 = add i64 %938, 7
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RAX.i450, align 8
  %947 = add i64 %946, 8
  %948 = add i64 %938, 11
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RAX.i450, align 8
  %951 = add i64 %938, 15
  store i64 %951, i64* %3, align 8
  %952 = load i64, i64* %945, align 8
  store i64 %952, i64* %RCX.i410, align 8
  %953 = add i64 %952, 20
  %954 = add i64 %938, 19
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  %958 = mul nsw i64 %957, 104
  store i64 %958, i64* %RCX.i410, align 8
  %959 = lshr i64 %958, 63
  %960 = add i64 %958, %950
  store i64 %960, i64* %RAX.i450, align 8
  %961 = icmp ult i64 %960, %950
  %962 = icmp ult i64 %960, %958
  %963 = or i1 %961, %962
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %38, align 1
  %965 = trunc i64 %960 to i32
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %45, align 1
  %971 = xor i64 %958, %950
  %972 = xor i64 %971, %960
  %973 = lshr i64 %972, 4
  %974 = trunc i64 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %51, align 1
  %976 = icmp eq i64 %960, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %54, align 1
  %978 = lshr i64 %960, 63
  %979 = trunc i64 %978 to i8
  store i8 %979, i8* %57, align 1
  %980 = lshr i64 %950, 63
  %981 = xor i64 %978, %980
  %982 = xor i64 %978, %959
  %983 = add nuw nsw i64 %981, %982
  %984 = icmp eq i64 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %63, align 1
  %986 = add i64 %960, 80
  %987 = add i64 %938, 29
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  store i32 %941, i32* %988, align 4
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -128
  %991 = load i64, i64* %3, align 8
  %992 = add i64 %991, 3
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %990 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RDX.i413, align 8
  %996 = add i64 %989, -40
  %997 = add i64 %991, 7
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i64*
  %999 = load i64, i64* %998, align 8
  store i64 %999, i64* %RAX.i450, align 8
  %1000 = add i64 %999, 8
  %1001 = add i64 %991, 11
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RAX.i450, align 8
  %1004 = add i64 %991, 15
  store i64 %1004, i64* %3, align 8
  %1005 = load i64, i64* %998, align 8
  store i64 %1005, i64* %RCX.i410, align 8
  %1006 = add i64 %1005, 20
  %1007 = add i64 %991, 19
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = mul nsw i64 %1010, 104
  store i64 %1011, i64* %RCX.i410, align 8
  %1012 = lshr i64 %1011, 63
  %1013 = add i64 %1011, %1003
  store i64 %1013, i64* %RAX.i450, align 8
  %1014 = icmp ult i64 %1013, %1003
  %1015 = icmp ult i64 %1013, %1011
  %1016 = or i1 %1014, %1015
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %38, align 1
  %1018 = trunc i64 %1013 to i32
  %1019 = and i32 %1018, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %45, align 1
  %1024 = xor i64 %1011, %1003
  %1025 = xor i64 %1024, %1013
  %1026 = lshr i64 %1025, 4
  %1027 = trunc i64 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %51, align 1
  %1029 = icmp eq i64 %1013, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %54, align 1
  %1031 = lshr i64 %1013, 63
  %1032 = trunc i64 %1031 to i8
  store i8 %1032, i8* %57, align 1
  %1033 = lshr i64 %1003, 63
  %1034 = xor i64 %1031, %1033
  %1035 = xor i64 %1031, %1012
  %1036 = add nuw nsw i64 %1034, %1035
  %1037 = icmp eq i64 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %63, align 1
  %1039 = add i64 %1013, 84
  %1040 = add i64 %991, 29
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 %994, i32* %1041, align 4
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -132
  %1044 = load i64, i64* %3, align 8
  %1045 = add i64 %1044, 6
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RDX.i413, align 8
  %1049 = add i64 %1042, -40
  %1050 = add i64 %1044, 10
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i64*
  %1052 = load i64, i64* %1051, align 8
  store i64 %1052, i64* %RAX.i450, align 8
  %1053 = add i64 %1052, 8
  %1054 = add i64 %1044, 14
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i64*
  %1056 = load i64, i64* %1055, align 8
  store i64 %1056, i64* %RAX.i450, align 8
  %1057 = add i64 %1044, 18
  store i64 %1057, i64* %3, align 8
  %1058 = load i64, i64* %1051, align 8
  store i64 %1058, i64* %RCX.i410, align 8
  %1059 = add i64 %1058, 20
  %1060 = add i64 %1044, 22
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = mul nsw i64 %1063, 104
  store i64 %1064, i64* %RCX.i410, align 8
  %1065 = lshr i64 %1064, 63
  %1066 = add i64 %1064, %1056
  store i64 %1066, i64* %RAX.i450, align 8
  %1067 = icmp ult i64 %1066, %1056
  %1068 = icmp ult i64 %1066, %1064
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %38, align 1
  %1071 = trunc i64 %1066 to i32
  %1072 = and i32 %1071, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %45, align 1
  %1077 = xor i64 %1064, %1056
  %1078 = xor i64 %1077, %1066
  %1079 = lshr i64 %1078, 4
  %1080 = trunc i64 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %51, align 1
  %1082 = icmp eq i64 %1066, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %54, align 1
  %1084 = lshr i64 %1066, 63
  %1085 = trunc i64 %1084 to i8
  store i8 %1085, i8* %57, align 1
  %1086 = lshr i64 %1056, 63
  %1087 = xor i64 %1084, %1086
  %1088 = xor i64 %1084, %1065
  %1089 = add nuw nsw i64 %1087, %1088
  %1090 = icmp eq i64 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %63, align 1
  %1092 = add i64 %1066, 88
  %1093 = add i64 %1044, 32
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  store i32 %1047, i32* %1094, align 4
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -136
  %1097 = load i64, i64* %3, align 8
  %1098 = add i64 %1097, 6
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RDX.i413, align 8
  %1102 = add i64 %1095, -40
  %1103 = add i64 %1097, 10
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %RAX.i450, align 8
  %1106 = add i64 %1105, 8
  %1107 = add i64 %1097, 14
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i64*
  %1109 = load i64, i64* %1108, align 8
  store i64 %1109, i64* %RAX.i450, align 8
  %1110 = add i64 %1097, 18
  store i64 %1110, i64* %3, align 8
  %1111 = load i64, i64* %1104, align 8
  store i64 %1111, i64* %RCX.i410, align 8
  %1112 = add i64 %1111, 20
  %1113 = add i64 %1097, 22
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = mul nsw i64 %1116, 104
  store i64 %1117, i64* %RCX.i410, align 8
  %1118 = lshr i64 %1117, 63
  %1119 = add i64 %1117, %1109
  store i64 %1119, i64* %RAX.i450, align 8
  %1120 = icmp ult i64 %1119, %1109
  %1121 = icmp ult i64 %1119, %1117
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %38, align 1
  %1124 = trunc i64 %1119 to i32
  %1125 = and i32 %1124, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %45, align 1
  %1130 = xor i64 %1117, %1109
  %1131 = xor i64 %1130, %1119
  %1132 = lshr i64 %1131, 4
  %1133 = trunc i64 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %51, align 1
  %1135 = icmp eq i64 %1119, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %54, align 1
  %1137 = lshr i64 %1119, 63
  %1138 = trunc i64 %1137 to i8
  store i8 %1138, i8* %57, align 1
  %1139 = lshr i64 %1109, 63
  %1140 = xor i64 %1137, %1139
  %1141 = xor i64 %1137, %1118
  %1142 = add nuw nsw i64 %1140, %1141
  %1143 = icmp eq i64 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %63, align 1
  %1145 = add i64 %1119, 92
  %1146 = add i64 %1097, 32
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  store i32 %1100, i32* %1147, align 4
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -144
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 7
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1149 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RAX.i450, align 8
  %1154 = add i64 %1148, -40
  %1155 = add i64 %1150, 11
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RCX.i410, align 8
  %1158 = add i64 %1157, 8
  %1159 = add i64 %1150, 15
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RCX.i410, align 8
  %1162 = add i64 %1150, 19
  store i64 %1162, i64* %3, align 8
  %1163 = load i64, i64* %1156, align 8
  store i64 %1163, i64* %RDI.i429, align 8
  %1164 = add i64 %1163, 20
  %1165 = add i64 %1150, 23
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1167 to i64
  %1169 = mul nsw i64 %1168, 104
  store i64 %1169, i64* %RDI.i429, align 8
  %1170 = lshr i64 %1169, 63
  %1171 = add i64 %1169, %1161
  store i64 %1171, i64* %RCX.i410, align 8
  %1172 = icmp ult i64 %1171, %1161
  %1173 = icmp ult i64 %1171, %1169
  %1174 = or i1 %1172, %1173
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %38, align 1
  %1176 = trunc i64 %1171 to i32
  %1177 = and i32 %1176, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %45, align 1
  %1182 = xor i64 %1169, %1161
  %1183 = xor i64 %1182, %1171
  %1184 = lshr i64 %1183, 4
  %1185 = trunc i64 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %51, align 1
  %1187 = icmp eq i64 %1171, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %54, align 1
  %1189 = lshr i64 %1171, 63
  %1190 = trunc i64 %1189 to i8
  store i8 %1190, i8* %57, align 1
  %1191 = lshr i64 %1161, 63
  %1192 = xor i64 %1189, %1191
  %1193 = xor i64 %1189, %1170
  %1194 = add nuw nsw i64 %1192, %1193
  %1195 = icmp eq i64 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %63, align 1
  %1197 = add i64 %1171, 96
  %1198 = add i64 %1150, 34
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i64*
  store i64 %1153, i64* %1199, align 8
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -40
  %1202 = load i64, i64* %3, align 8
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1201 to i64*
  %1205 = load i64, i64* %1204, align 8
  store i64 %1205, i64* %RAX.i450, align 8
  %1206 = add i64 %1205, 20
  %1207 = add i64 %1202, 7
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = add i32 %1209, 1
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RDX.i413, align 8
  %1212 = add i64 %1202, 13
  store i64 %1212, i64* %3, align 8
  store i32 %1210, i32* %1208, align 4
  %1213 = load i64, i64* %6, align 8
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1213, 112
  store i64 %1215, i64* %6, align 8
  %1216 = icmp ugt i64 %1213, -113
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %38, align 1
  %1218 = trunc i64 %1215 to i32
  %1219 = and i32 %1218, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %45, align 1
  %1224 = xor i64 %1213, 16
  %1225 = xor i64 %1224, %1215
  %1226 = lshr i64 %1225, 4
  %1227 = trunc i64 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %51, align 1
  %1229 = icmp eq i64 %1215, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %54, align 1
  %1231 = lshr i64 %1215, 63
  %1232 = trunc i64 %1231 to i8
  store i8 %1232, i8* %57, align 1
  %1233 = lshr i64 %1213, 63
  %1234 = xor i64 %1231, %1233
  %1235 = add nuw nsw i64 %1234, %1231
  %1236 = icmp eq i64 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %63, align 1
  %1238 = add i64 %1214, 5
  store i64 %1238, i64* %3, align 8
  %1239 = add i64 %1213, 120
  %1240 = inttoptr i64 %1215 to i64*
  %1241 = load i64, i64* %1240, align 8
  store i64 %1241, i64* %RBX.i455, align 8
  store i64 %1239, i64* %6, align 8
  %1242 = add i64 %1214, 7
  store i64 %1242, i64* %3, align 8
  %1243 = add i64 %1213, 128
  %1244 = inttoptr i64 %1239 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %R12.i457, align 8
  store i64 %1243, i64* %6, align 8
  %1246 = add i64 %1214, 9
  store i64 %1246, i64* %3, align 8
  %1247 = add i64 %1213, 136
  %1248 = inttoptr i64 %1243 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %R14.i459, align 8
  store i64 %1247, i64* %6, align 8
  %1250 = add i64 %1214, 11
  store i64 %1250, i64* %3, align 8
  %1251 = add i64 %1213, 144
  %1252 = inttoptr i64 %1247 to i64*
  %1253 = load i64, i64* %1252, align 8
  store i64 %1253, i64* %R15.i461, align 8
  store i64 %1251, i64* %6, align 8
  %1254 = add i64 %1214, 12
  store i64 %1254, i64* %3, align 8
  %1255 = add i64 %1213, 152
  %1256 = inttoptr i64 %1251 to i64*
  %1257 = load i64, i64* %1256, align 8
  store i64 %1257, i64* %RBP.i, align 8
  store i64 %1255, i64* %6, align 8
  %1258 = add i64 %1214, 13
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1255 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %3, align 8
  %1261 = add i64 %1213, 160
  store i64 %1261, i64* %6, align 8
  ret %struct.Memory* %call2_44ca8a
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
define %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x38__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rbp____r12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movsd__xmm3__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm4__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r12d__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %R12D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r15d__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %R15D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x10__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
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
define %struct.Memory* @routine_jne_.L_44ca3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.GrowTophits(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Strdup(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x14__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x28__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_0x14__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl__edx__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movl__edx__0x44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__edx__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl__edx__0x4c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__edx__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__edx__0x54__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x5c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x60__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
