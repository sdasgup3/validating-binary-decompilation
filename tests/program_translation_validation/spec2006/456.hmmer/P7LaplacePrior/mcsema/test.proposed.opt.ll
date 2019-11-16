; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1cb07__rip__type = type <{ [4 x i8] }>
%G_0x1cb42__rip__type = type <{ [4 x i8] }>
%G_0x1cb7e__rip__type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
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
@G_0x1cb07__rip_ = global %G_0x1cb07__rip__type zeroinitializer
@G_0x1cb42__rip_ = global %G_0x1cb42__rip__type zeroinitializer
@G_0x1cb7e__rip_ = global %G_0x1cb7e__rip__type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_437b40.P7AllocPrior(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7LaplacePrior(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -24
  %12 = icmp ult i64 %8, 16
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
  %40 = add i64 %10, -81
  %41 = add i64 %10, 12
  %42 = add i64 %7, -32
  %43 = inttoptr i64 %42 to i64*
  store i64 %41, i64* %43, align 8
  store i64 %42, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  %call2_437b98 = tail call %struct.Memory* @sub_437b40.P7AllocPrior(%struct.State* %0, i64 %40, %struct.Memory* %2)
  %RSI.i82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %3, align 8
  store i64 8, i64* %RSI.i82, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %46 = bitcast %union.VectorReg* %45 to i8*
  %47 = add i64 %44, add (i64 ptrtoint (%G_0x1cb7e__rip__type* @G_0x1cb7e__rip_ to i64), i64 5)
  %48 = add i64 %44, 13
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.VectorReg* %45 to i32*
  store i32 %50, i32* %51, align 1
  %52 = getelementptr inbounds i8, i8* %46, i64 4
  %53 = bitcast i8* %52 to float*
  store float 0.000000e+00, float* %53, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to float*
  store float 0.000000e+00, float* %55, align 1
  %56 = getelementptr inbounds i8, i8* %46, i64 12
  %57 = bitcast i8* %56 to float*
  store float 0.000000e+00, float* %57, align 1
  %RAX.i77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -8
  %60 = load i64, i64* %RAX.i77, align 8
  %61 = add i64 %44, 17
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX.i77, align 8
  %69 = add i64 %65, 10
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  store i32 0, i32* %70, align 4
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RAX.i77, align 8
  %77 = add i64 %76, 4
  %78 = add i64 %73, 11
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  store i32 1, i32* %79, align 4
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -8
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RAX.i77, align 8
  %86 = add i64 %85, 8
  %87 = add i64 %82, 9
  store i64 %87, i64* %3, align 8
  %88 = bitcast %union.VectorReg* %45 to <2 x float>*
  %89 = load <2 x float>, <2 x float>* %88, align 1
  %90 = extractelement <2 x float> %89, i32 0
  %91 = inttoptr i64 %86 to float*
  store float %90, float* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -8
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 808
  store i64 %98, i64* %RAX.i77, align 8
  %99 = icmp ugt i64 %97, -809
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %14, align 1
  %101 = trunc i64 %98 to i32
  %102 = and i32 %101, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %21, align 1
  %107 = xor i64 %98, %97
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %27, align 1
  %111 = icmp eq i64 %98, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %30, align 1
  %113 = lshr i64 %98, 63
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %33, align 1
  %115 = lshr i64 %97, 63
  %116 = xor i64 %113, %115
  %117 = add nuw nsw i64 %116, %113
  %118 = icmp eq i64 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %39, align 1
  %RDI.i54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 %98, i64* %RDI.i54, align 8
  %120 = add i64 %94, 107380
  %121 = add i64 %94, 18
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %6, align 8
  store i64 %120, i64* %3, align 8
  %call2_437bd9 = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %120, %struct.Memory* %call2_437b98)
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, ptrtoint (%G_0x1cb42__rip__type* @G_0x1cb42__rip_ to i64)
  %127 = add i64 %125, 8
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  store float 0.000000e+00, float* %55, align 1
  store float 0.000000e+00, float* %57, align 1
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -8
  %132 = add i64 %125, 12
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RAX.i77, align 8
  %135 = add i64 %134, 6408
  %136 = add i64 %125, 22
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  store i32 1, i32* %137, align 4
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -8
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %139 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RAX.i77, align 8
  %144 = add i64 %143, 6412
  %145 = add i64 %140, 12
  store i64 %145, i64* %3, align 8
  %146 = load <2 x float>, <2 x float>* %88, align 1
  %147 = extractelement <2 x float> %146, i32 0
  %148 = inttoptr i64 %144 to float*
  store float %147, float* %148, align 4
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -8
  %151 = load i64, i64* %3, align 8
  %152 = add i64 %151, 4
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %150 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 7212
  store i64 %155, i64* %RAX.i77, align 8
  %156 = icmp ugt i64 %154, -7213
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %14, align 1
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %21, align 1
  %164 = xor i64 %155, %154
  %165 = lshr i64 %164, 4
  %166 = trunc i64 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %27, align 1
  %168 = icmp eq i64 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %30, align 1
  %170 = lshr i64 %155, 63
  %171 = trunc i64 %170 to i8
  store i8 %171, i8* %33, align 1
  %172 = lshr i64 %154, 63
  %173 = xor i64 %170, %172
  %174 = add nuw nsw i64 %173, %170
  %175 = icmp eq i64 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %39, align 1
  %177 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RSI.i82, align 8
  store i64 %155, i64* %RDI.i54, align 8
  %179 = add i64 %151, 107328
  %180 = add i64 %151, 25
  %181 = load i64, i64* %6, align 8
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %180, i64* %183, align 8
  store i64 %182, i64* %6, align 8
  store i64 %179, i64* %3, align 8
  %call2_437c14 = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %179, %struct.Memory* %call2_437bd9)
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, ptrtoint (%G_0x1cb07__rip__type* @G_0x1cb07__rip_ to i64)
  %186 = add i64 %184, 8
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  store float 0.000000e+00, float* %55, align 1
  store float 0.000000e+00, float* %57, align 1
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -8
  %191 = add i64 %184, 12
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RAX.i77, align 8
  %194 = add i64 %193, 23212
  %195 = add i64 %184, 22
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  store i32 1, i32* %196, align 4
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -8
  %199 = load i64, i64* %3, align 8
  %200 = add i64 %199, 4
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RAX.i77, align 8
  %203 = add i64 %202, 23216
  %204 = add i64 %199, 12
  store i64 %204, i64* %3, align 8
  %205 = load <2 x float>, <2 x float>* %88, align 1
  %206 = extractelement <2 x float> %205, i32 0
  %207 = inttoptr i64 %203 to float*
  store float %206, float* %207, align 4
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -8
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i64*
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 24016
  store i64 %214, i64* %RAX.i77, align 8
  %215 = icmp ugt i64 %213, -24017
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %14, align 1
  %217 = trunc i64 %214 to i32
  %218 = and i32 %217, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %21, align 1
  %223 = xor i64 %213, 16
  %224 = xor i64 %223, %214
  %225 = lshr i64 %224, 4
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %27, align 1
  %228 = icmp eq i64 %214, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %30, align 1
  %230 = lshr i64 %214, 63
  %231 = trunc i64 %230 to i8
  store i8 %231, i8* %33, align 1
  %232 = lshr i64 %213, 63
  %233 = xor i64 %230, %232
  %234 = add nuw nsw i64 %233, %230
  %235 = icmp eq i64 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %39, align 1
  %237 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RSI.i82, align 8
  store i64 %214, i64* %RDI.i54, align 8
  %239 = add i64 %210, 107269
  %240 = add i64 %210, 25
  %241 = load i64, i64* %6, align 8
  %242 = add i64 %241, -8
  %243 = inttoptr i64 %242 to i64*
  store i64 %240, i64* %243, align 8
  store i64 %242, i64* %6, align 8
  store i64 %239, i64* %3, align 8
  %call2_437c4f = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %239, %struct.Memory* %call2_437c14)
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -8
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 4
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %245 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RAX.i77, align 8
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, 16
  store i64 %251, i64* %6, align 8
  %252 = icmp ugt i64 %250, -17
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %14, align 1
  %254 = trunc i64 %251 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  %260 = xor i64 %250, 16
  %261 = xor i64 %260, %251
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %27, align 1
  %265 = icmp eq i64 %251, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %30, align 1
  %267 = lshr i64 %251, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %33, align 1
  %269 = lshr i64 %250, 63
  %270 = xor i64 %267, %269
  %271 = add nuw nsw i64 %270, %267
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %39, align 1
  %274 = add i64 %246, 9
  store i64 %274, i64* %3, align 8
  %275 = add i64 %250, 24
  %276 = inttoptr i64 %251 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RBP.i, align 8
  store i64 %275, i64* %6, align 8
  %278 = add i64 %246, 10
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %275 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %3, align 8
  %281 = add i64 %250, 32
  store i64 %281, i64* %6, align 8
  ret %struct.Memory* %call2_437c4f
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
define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16
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
define %struct.Memory* @routine_callq_.P7AllocPrior(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1cb7e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1cb7e__rip__type* @G_0x1cb7e__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x328___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 808
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -809
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FSet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x1cb42__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1cb42__rip__type* @G_0x1cb42__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x1908__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x190c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6412
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c2c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 7212
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -7213
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
define %struct.Memory* @routine_movl_0x677060___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1cb07__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1cb07__rip__type* @G_0x1cb07__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x5aac__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 23212
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x5ab0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 23216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5dd0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24016
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -24017
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -17
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
