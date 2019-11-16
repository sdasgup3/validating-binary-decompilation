; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_431d30.AllocPlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_438990.P7DefaultNullModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434270.Plan7LSConfig(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Plan9toPlan7(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i617, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i614, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RSI.i614, align 8
  %56 = add i64 %52, 6
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RDI.i617, align 8
  %60 = add i64 %52, -12544
  %61 = add i64 %52, 11
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %61, i64* %64, align 8
  store i64 %63, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  %call2_434e36 = tail call %struct.Memory* @sub_431d30.AllocPlan7(%struct.State* %0, i64 %60, %struct.Memory* %2)
  %RAX.i604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -24
  %67 = load i64, i64* %RAX.i604, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -28
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 1, i32* %75, align 4
  %RCX.i596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %77 = bitcast %union.VectorReg* %76 to i8*
  %78 = bitcast %union.VectorReg* %76 to i32*
  %79 = getelementptr inbounds i8, i8* %77, i64 4
  %80 = bitcast i8* %79 to float*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %82 = bitcast i64* %81 to float*
  %83 = getelementptr inbounds i8, i8* %77, i64 12
  %84 = bitcast i8* %83 to float*
  %85 = bitcast %union.VectorReg* %76 to <2 x float>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_434e46

block_.L_434e46:                                  ; preds = %block_434e55, %entry
  %86 = phi i64 [ %642, %block_434e55 ], [ %.pre, %entry ]
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -28
  %89 = add i64 %86, 3
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RAX.i604, align 8
  %93 = add i64 %87, -8
  %94 = add i64 %86, 7
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RCX.i596, align 8
  %97 = add i64 %86, 9
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %91, %99
  %101 = icmp ult i32 %91, %99
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  %108 = xor i32 %99, %91
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %27, align 1
  %113 = icmp eq i32 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %30, align 1
  %115 = lshr i32 %100, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %33, align 1
  %117 = lshr i32 %91, 31
  %118 = lshr i32 %99, 31
  %119 = xor i32 %118, %117
  %120 = xor i32 %115, %117
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %39, align 1
  %124 = icmp ne i8 %116, 0
  %125 = xor i1 %124, %122
  %.v40 = select i1 %125, i64 15, i64 361
  %126 = add i64 %86, %.v40
  store i64 %126, i64* %3, align 8
  br i1 %125, label %block_434e55, label %block_.L_434faf

block_434e55:                                     ; preds = %block_.L_434e46
  %127 = add i64 %126, 4
  store i64 %127, i64* %3, align 8
  %128 = load i64, i64* %95, align 8
  store i64 %128, i64* %RAX.i604, align 8
  %129 = add i64 %128, 16
  %130 = add i64 %126, 8
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RAX.i604, align 8
  %133 = add i64 %126, 12
  store i64 %133, i64* %3, align 8
  %134 = load i32, i32* %90, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 92
  store i64 %136, i64* %RCX.i596, align 8
  %137 = lshr i64 %136, 63
  %138 = add i64 %136, %132
  store i64 %138, i64* %RAX.i604, align 8
  %139 = icmp ult i64 %138, %132
  %140 = icmp ult i64 %138, %136
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %14, align 1
  %143 = trunc i64 %138 to i32
  %144 = and i32 %143, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1
  %149 = xor i64 %136, %132
  %150 = xor i64 %149, %138
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %27, align 1
  %154 = icmp eq i64 %138, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %30, align 1
  %156 = lshr i64 %138, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %33, align 1
  %158 = lshr i64 %132, 63
  %159 = xor i64 %156, %158
  %160 = xor i64 %156, %137
  %161 = add nuw nsw i64 %159, %160
  %162 = icmp eq i64 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %39, align 1
  %164 = inttoptr i64 %138 to i32*
  %165 = add i64 %126, 23
  store i64 %165, i64* %3, align 8
  %166 = load i32, i32* %164, align 4
  store i32 %166, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %167 = add i64 %87, -24
  %168 = add i64 %126, 27
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RAX.i604, align 8
  %171 = add i64 %170, 144
  %172 = add i64 %126, 34
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i604, align 8
  %175 = add i64 %126, 38
  store i64 %175, i64* %3, align 8
  %176 = load i32, i32* %90, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %RCX.i596, align 8
  %178 = shl nsw i64 %177, 3
  %179 = add i64 %178, %174
  %180 = add i64 %126, 42
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RAX.i604, align 8
  %183 = add i64 %126, 46
  store i64 %183, i64* %3, align 8
  %184 = load <2 x float>, <2 x float>* %85, align 1
  %185 = extractelement <2 x float> %184, i32 0
  %186 = inttoptr i64 %182 to float*
  store float %185, float* %186, align 4
  %187 = load i64, i64* %RBP.i, align 8
  %188 = add i64 %187, -8
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, 4
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %188 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RAX.i604, align 8
  %193 = add i64 %192, 16
  %194 = add i64 %189, 8
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RAX.i604, align 8
  %197 = add i64 %187, -28
  %198 = add i64 %189, 12
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %201, 92
  store i64 %202, i64* %RCX.i596, align 8
  %203 = lshr i64 %202, 63
  %204 = add i64 %202, %196
  store i64 %204, i64* %RAX.i604, align 8
  %205 = icmp ult i64 %204, %196
  %206 = icmp ult i64 %204, %202
  %207 = or i1 %205, %206
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %14, align 1
  %209 = trunc i64 %204 to i32
  %210 = and i32 %209, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  %215 = xor i64 %202, %196
  %216 = xor i64 %215, %204
  %217 = lshr i64 %216, 4
  %218 = trunc i64 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %27, align 1
  %220 = icmp eq i64 %204, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %30, align 1
  %222 = lshr i64 %204, 63
  %223 = trunc i64 %222 to i8
  store i8 %223, i8* %33, align 1
  %224 = lshr i64 %196, 63
  %225 = xor i64 %222, %224
  %226 = xor i64 %222, %203
  %227 = add nuw nsw i64 %225, %226
  %228 = icmp eq i64 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %39, align 1
  %230 = add i64 %204, 8
  %231 = add i64 %189, 24
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %234 = add i64 %187, -24
  %235 = add i64 %189, 28
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RAX.i604, align 8
  %238 = add i64 %237, 144
  %239 = add i64 %189, 35
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RAX.i604, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -28
  %244 = add i64 %189, 39
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RCX.i596, align 8
  %248 = shl nsw i64 %247, 3
  %249 = add i64 %248, %241
  %250 = add i64 %189, 43
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RAX.i604, align 8
  %253 = add i64 %252, 8
  %254 = add i64 %189, 48
  store i64 %254, i64* %3, align 8
  %255 = load <2 x float>, <2 x float>* %85, align 1
  %256 = extractelement <2 x float> %255, i32 0
  %257 = inttoptr i64 %253 to float*
  store float %256, float* %257, align 4
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -8
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 4
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %RAX.i604, align 8
  %264 = add i64 %263, 16
  %265 = add i64 %260, 8
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX.i604, align 8
  %268 = add i64 %258, -28
  %269 = add i64 %260, 12
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = mul nsw i64 %272, 92
  store i64 %273, i64* %RCX.i596, align 8
  %274 = lshr i64 %273, 63
  %275 = add i64 %273, %267
  store i64 %275, i64* %RAX.i604, align 8
  %276 = icmp ult i64 %275, %267
  %277 = icmp ult i64 %275, %273
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = trunc i64 %275 to i32
  %281 = and i32 %280, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i64 %273, %267
  %287 = xor i64 %286, %275
  %288 = lshr i64 %287, 4
  %289 = trunc i64 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %27, align 1
  %291 = icmp eq i64 %275, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %30, align 1
  %293 = lshr i64 %275, 63
  %294 = trunc i64 %293 to i8
  store i8 %294, i8* %33, align 1
  %295 = lshr i64 %267, 63
  %296 = xor i64 %293, %295
  %297 = xor i64 %293, %274
  %298 = add nuw nsw i64 %296, %297
  %299 = icmp eq i64 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %39, align 1
  %301 = add i64 %275, 4
  %302 = add i64 %260, 24
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %305 = add i64 %258, -24
  %306 = add i64 %260, 28
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RAX.i604, align 8
  %309 = add i64 %308, 144
  %310 = add i64 %260, 35
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RAX.i604, align 8
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -28
  %315 = add i64 %260, 39
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %RCX.i596, align 8
  %319 = shl nsw i64 %318, 3
  %320 = add i64 %319, %312
  %321 = add i64 %260, 43
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RAX.i604, align 8
  %324 = add i64 %323, 4
  %325 = add i64 %260, 48
  store i64 %325, i64* %3, align 8
  %326 = load <2 x float>, <2 x float>* %85, align 1
  %327 = extractelement <2 x float> %326, i32 0
  %328 = inttoptr i64 %324 to float*
  store float %327, float* %328, align 4
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -8
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 4
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %330 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RAX.i604, align 8
  %335 = add i64 %334, 24
  %336 = add i64 %331, 8
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RAX.i604, align 8
  %339 = add i64 %329, -28
  %340 = add i64 %331, 12
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = mul nsw i64 %343, 92
  store i64 %344, i64* %RCX.i596, align 8
  %345 = lshr i64 %344, 63
  %346 = add i64 %344, %338
  store i64 %346, i64* %RAX.i604, align 8
  %347 = icmp ult i64 %346, %338
  %348 = icmp ult i64 %346, %344
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %14, align 1
  %351 = trunc i64 %346 to i32
  %352 = and i32 %351, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352)
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %21, align 1
  %357 = xor i64 %344, %338
  %358 = xor i64 %357, %346
  %359 = lshr i64 %358, 4
  %360 = trunc i64 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %27, align 1
  %362 = icmp eq i64 %346, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %30, align 1
  %364 = lshr i64 %346, 63
  %365 = trunc i64 %364 to i8
  store i8 %365, i8* %33, align 1
  %366 = lshr i64 %338, 63
  %367 = xor i64 %364, %366
  %368 = xor i64 %364, %345
  %369 = add nuw nsw i64 %367, %368
  %370 = icmp eq i64 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %39, align 1
  %372 = inttoptr i64 %346 to i32*
  %373 = add i64 %331, 23
  store i64 %373, i64* %3, align 8
  %374 = load i32, i32* %372, align 4
  store i32 %374, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %375 = add i64 %329, -24
  %376 = add i64 %331, 27
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RAX.i604, align 8
  %379 = add i64 %378, 144
  %380 = add i64 %331, 34
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RAX.i604, align 8
  %383 = load i64, i64* %RBP.i, align 8
  %384 = add i64 %383, -28
  %385 = add i64 %331, 38
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RCX.i596, align 8
  %389 = shl nsw i64 %388, 3
  %390 = add i64 %389, %382
  %391 = add i64 %331, 42
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %RAX.i604, align 8
  %394 = add i64 %393, 20
  %395 = add i64 %331, 47
  store i64 %395, i64* %3, align 8
  %396 = load <2 x float>, <2 x float>* %85, align 1
  %397 = extractelement <2 x float> %396, i32 0
  %398 = inttoptr i64 %394 to float*
  store float %397, float* %398, align 4
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -8
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, 4
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %RAX.i604, align 8
  %405 = add i64 %404, 24
  %406 = add i64 %401, 8
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RAX.i604, align 8
  %409 = add i64 %399, -28
  %410 = add i64 %401, 12
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = mul nsw i64 %413, 92
  store i64 %414, i64* %RCX.i596, align 8
  %415 = lshr i64 %414, 63
  %416 = add i64 %414, %408
  store i64 %416, i64* %RAX.i604, align 8
  %417 = icmp ult i64 %416, %408
  %418 = icmp ult i64 %416, %414
  %419 = or i1 %417, %418
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1
  %421 = trunc i64 %416 to i32
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %21, align 1
  %427 = xor i64 %414, %408
  %428 = xor i64 %427, %416
  %429 = lshr i64 %428, 4
  %430 = trunc i64 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %27, align 1
  %432 = icmp eq i64 %416, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %30, align 1
  %434 = lshr i64 %416, 63
  %435 = trunc i64 %434 to i8
  store i8 %435, i8* %33, align 1
  %436 = lshr i64 %408, 63
  %437 = xor i64 %434, %436
  %438 = xor i64 %434, %415
  %439 = add nuw nsw i64 %437, %438
  %440 = icmp eq i64 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %39, align 1
  %442 = add i64 %416, 8
  %443 = add i64 %401, 24
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  store i32 %445, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %446 = add i64 %399, -24
  %447 = add i64 %401, 28
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %RAX.i604, align 8
  %450 = add i64 %449, 144
  %451 = add i64 %401, 35
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RAX.i604, align 8
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -28
  %456 = add i64 %401, 39
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX.i596, align 8
  %460 = shl nsw i64 %459, 3
  %461 = add i64 %460, %453
  %462 = add i64 %401, 43
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RAX.i604, align 8
  %465 = add i64 %464, 24
  %466 = add i64 %401, 48
  store i64 %466, i64* %3, align 8
  %467 = load <2 x float>, <2 x float>* %85, align 1
  %468 = extractelement <2 x float> %467, i32 0
  %469 = inttoptr i64 %465 to float*
  store float %468, float* %469, align 4
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -8
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %471 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RAX.i604, align 8
  %476 = add i64 %475, 8
  %477 = add i64 %472, 8
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RAX.i604, align 8
  %480 = add i64 %470, -28
  %481 = add i64 %472, 12
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = mul nsw i64 %484, 92
  store i64 %485, i64* %RCX.i596, align 8
  %486 = lshr i64 %485, 63
  %487 = add i64 %485, %479
  store i64 %487, i64* %RAX.i604, align 8
  %488 = icmp ult i64 %487, %479
  %489 = icmp ult i64 %487, %485
  %490 = or i1 %488, %489
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %14, align 1
  %492 = trunc i64 %487 to i32
  %493 = and i32 %492, 255
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  store i8 %497, i8* %21, align 1
  %498 = xor i64 %485, %479
  %499 = xor i64 %498, %487
  %500 = lshr i64 %499, 4
  %501 = trunc i64 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %27, align 1
  %503 = icmp eq i64 %487, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %30, align 1
  %505 = lshr i64 %487, 63
  %506 = trunc i64 %505 to i8
  store i8 %506, i8* %33, align 1
  %507 = lshr i64 %479, 63
  %508 = xor i64 %505, %507
  %509 = xor i64 %505, %486
  %510 = add nuw nsw i64 %508, %509
  %511 = icmp eq i64 %510, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %39, align 1
  %513 = inttoptr i64 %487 to i32*
  %514 = add i64 %472, 23
  store i64 %514, i64* %3, align 8
  %515 = load i32, i32* %513, align 4
  store i32 %515, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %516 = add i64 %470, -24
  %517 = add i64 %472, 27
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RAX.i604, align 8
  %520 = add i64 %519, 144
  %521 = add i64 %472, 34
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %RAX.i604, align 8
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -28
  %526 = add i64 %472, 38
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = sext i32 %528 to i64
  store i64 %529, i64* %RCX.i596, align 8
  %530 = shl nsw i64 %529, 3
  %531 = add i64 %530, %523
  %532 = add i64 %472, 42
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i64*
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %RAX.i604, align 8
  %535 = add i64 %534, 12
  %536 = add i64 %472, 47
  store i64 %536, i64* %3, align 8
  %537 = load <2 x float>, <2 x float>* %85, align 1
  %538 = extractelement <2 x float> %537, i32 0
  %539 = inttoptr i64 %535 to float*
  store float %538, float* %539, align 4
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -8
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, 4
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %541 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RAX.i604, align 8
  %546 = add i64 %545, 8
  %547 = add i64 %542, 8
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RAX.i604, align 8
  %550 = add i64 %540, -28
  %551 = add i64 %542, 12
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = mul nsw i64 %554, 92
  store i64 %555, i64* %RCX.i596, align 8
  %556 = lshr i64 %555, 63
  %557 = add i64 %555, %549
  store i64 %557, i64* %RAX.i604, align 8
  %558 = icmp ult i64 %557, %549
  %559 = icmp ult i64 %557, %555
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %14, align 1
  %562 = trunc i64 %557 to i32
  %563 = and i32 %562, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %21, align 1
  %568 = xor i64 %555, %549
  %569 = xor i64 %568, %557
  %570 = lshr i64 %569, 4
  %571 = trunc i64 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %27, align 1
  %573 = icmp eq i64 %557, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %30, align 1
  %575 = lshr i64 %557, 63
  %576 = trunc i64 %575 to i8
  store i8 %576, i8* %33, align 1
  %577 = lshr i64 %549, 63
  %578 = xor i64 %575, %577
  %579 = xor i64 %575, %556
  %580 = add nuw nsw i64 %578, %579
  %581 = icmp eq i64 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %39, align 1
  %583 = add i64 %557, 4
  %584 = add i64 %542, 24
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  store i32 %586, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %587 = add i64 %540, -24
  %588 = add i64 %542, 28
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i64*
  %590 = load i64, i64* %589, align 8
  store i64 %590, i64* %RAX.i604, align 8
  %591 = add i64 %590, 144
  %592 = add i64 %542, 35
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %RAX.i604, align 8
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -28
  %597 = add i64 %542, 39
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  store i64 %600, i64* %RCX.i596, align 8
  %601 = shl nsw i64 %600, 3
  %602 = add i64 %601, %594
  %603 = add i64 %542, 43
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %RAX.i604, align 8
  %606 = add i64 %605, 16
  %607 = add i64 %542, 48
  store i64 %607, i64* %3, align 8
  %608 = load <2 x float>, <2 x float>* %85, align 1
  %609 = extractelement <2 x float> %608, i32 0
  %610 = inttoptr i64 %606 to float*
  store float %609, float* %610, align 4
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -28
  %613 = load i64, i64* %3, align 8
  %614 = add i64 %613, 3
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = add i32 %616, 1
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX.i604, align 8
  %619 = icmp eq i32 %616, -1
  %620 = icmp eq i32 %617, 0
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %14, align 1
  %623 = and i32 %617, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %21, align 1
  %628 = xor i32 %617, %616
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %27, align 1
  %632 = zext i1 %620 to i8
  store i8 %632, i8* %30, align 1
  %633 = lshr i32 %617, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %33, align 1
  %635 = lshr i32 %616, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %633
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %39, align 1
  %640 = add i64 %613, 9
  store i64 %640, i64* %3, align 8
  store i32 %617, i32* %615, align 4
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, -356
  store i64 %642, i64* %3, align 8
  br label %block_.L_434e46

block_.L_434faf:                                  ; preds = %block_.L_434e46
  %643 = add i64 %126, 7
  store i64 %643, i64* %3, align 8
  store i32 1, i32* %90, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_434fb6

block_.L_434fb6:                                  ; preds = %block_.L_435023, %block_.L_434faf
  %644 = phi i64 [ %864, %block_.L_435023 ], [ %.pre26, %block_.L_434faf ]
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -28
  %647 = add i64 %644, 3
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RAX.i604, align 8
  %651 = add i64 %645, -8
  %652 = add i64 %644, 7
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RCX.i596, align 8
  %655 = add i64 %644, 9
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = sub i32 %649, %657
  %659 = icmp ult i32 %649, %657
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %14, align 1
  %661 = and i32 %658, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %21, align 1
  %666 = xor i32 %657, %649
  %667 = xor i32 %666, %658
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  store i8 %670, i8* %27, align 1
  %671 = icmp eq i32 %658, 0
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %30, align 1
  %673 = lshr i32 %658, 31
  %674 = trunc i32 %673 to i8
  store i8 %674, i8* %33, align 1
  %675 = lshr i32 %649, 31
  %676 = lshr i32 %657, 31
  %677 = xor i32 %676, %675
  %678 = xor i32 %673, %675
  %679 = add nuw nsw i32 %678, %677
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %39, align 1
  %682 = icmp ne i8 %674, 0
  %683 = xor i1 %682, %680
  %.demorgan = or i1 %671, %683
  %.v41 = select i1 %.demorgan, i64 15, i64 128
  %684 = add i64 %644, %.v41
  store i64 %684, i64* %3, align 8
  br i1 %.demorgan, label %block_434fc5, label %block_.L_435036

block_434fc5:                                     ; preds = %block_.L_434fb6
  %685 = add i64 %645, -32
  %686 = add i64 %684, 7
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  store i32 0, i32* %687, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_434fcc

block_.L_434fcc:                                  ; preds = %block_434fdc, %block_434fc5
  %688 = phi i64 [ %834, %block_434fdc ], [ %.pre27, %block_434fc5 ]
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -32
  %691 = add i64 %688, 3
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RAX.i604, align 8
  %695 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %696 = sub i32 %693, %695
  %697 = icmp ult i32 %693, %695
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  %704 = xor i32 %695, %693
  %705 = xor i32 %704, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %27, align 1
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %30, align 1
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %33, align 1
  %713 = lshr i32 %693, 31
  %714 = lshr i32 %695, 31
  %715 = xor i32 %714, %713
  %716 = xor i32 %711, %713
  %717 = add nuw nsw i32 %716, %715
  %718 = icmp eq i32 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %39, align 1
  %720 = icmp ne i8 %712, 0
  %721 = xor i1 %720, %718
  %.v = select i1 %721, i64 16, i64 87
  %722 = add i64 %688, %.v
  store i64 %722, i64* %3, align 8
  br i1 %721, label %block_434fdc, label %block_.L_435023

block_434fdc:                                     ; preds = %block_.L_434fcc
  %723 = add i64 %689, -8
  %724 = add i64 %722, 4
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i64*
  %726 = load i64, i64* %725, align 8
  store i64 %726, i64* %RAX.i604, align 8
  %727 = add i64 %726, 16
  %728 = add i64 %722, 8
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %RAX.i604, align 8
  %731 = add i64 %689, -28
  %732 = add i64 %722, 12
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = sext i32 %734 to i64
  %736 = mul nsw i64 %735, 92
  store i64 %736, i64* %RCX.i596, align 8
  %737 = lshr i64 %736, 63
  %738 = add i64 %736, %730
  store i64 %738, i64* %RAX.i604, align 8
  %739 = icmp ult i64 %738, %730
  %740 = icmp ult i64 %738, %736
  %741 = or i1 %739, %740
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %14, align 1
  %743 = trunc i64 %738 to i32
  %744 = and i32 %743, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %21, align 1
  %749 = xor i64 %736, %730
  %750 = xor i64 %749, %738
  %751 = lshr i64 %750, 4
  %752 = trunc i64 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %27, align 1
  %754 = icmp eq i64 %738, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %30, align 1
  %756 = lshr i64 %738, 63
  %757 = trunc i64 %756 to i8
  store i8 %757, i8* %33, align 1
  %758 = lshr i64 %730, 63
  %759 = xor i64 %756, %758
  %760 = xor i64 %756, %737
  %761 = add nuw nsw i64 %759, %760
  %762 = icmp eq i64 %761, 2
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %39, align 1
  %764 = add i64 %722, 23
  store i64 %764, i64* %3, align 8
  %765 = load i32, i32* %692, align 4
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RCX.i596, align 8
  %767 = shl nsw i64 %766, 2
  %768 = add i64 %738, 12
  %769 = add i64 %768, %767
  %770 = add i64 %722, 29
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  store i32 %772, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %773 = add i64 %689, -24
  %774 = add i64 %722, 33
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i64*
  %776 = load i64, i64* %775, align 8
  store i64 %776, i64* %RAX.i604, align 8
  %777 = add i64 %776, 152
  %778 = add i64 %722, 40
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i64*
  %780 = load i64, i64* %779, align 8
  store i64 %780, i64* %RAX.i604, align 8
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -28
  %783 = add i64 %722, 44
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RCX.i596, align 8
  %787 = shl nsw i64 %786, 3
  %788 = add i64 %787, %780
  %789 = add i64 %722, 48
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RAX.i604, align 8
  %792 = add i64 %781, -32
  %793 = add i64 %722, 52
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  store i64 %796, i64* %RCX.i596, align 8
  %797 = shl nsw i64 %796, 2
  %798 = add i64 %797, %791
  %799 = add i64 %722, 57
  store i64 %799, i64* %3, align 8
  %800 = load <2 x float>, <2 x float>* %85, align 1
  %801 = extractelement <2 x float> %800, i32 0
  %802 = inttoptr i64 %798 to float*
  store float %801, float* %802, align 4
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -32
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 3
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %804 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %808, 1
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RAX.i604, align 8
  %811 = icmp eq i32 %808, -1
  %812 = icmp eq i32 %809, 0
  %813 = or i1 %811, %812
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = and i32 %809, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %21, align 1
  %820 = xor i32 %809, %808
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %27, align 1
  %824 = zext i1 %812 to i8
  store i8 %824, i8* %30, align 1
  %825 = lshr i32 %809, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %33, align 1
  %827 = lshr i32 %808, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %825
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %39, align 1
  %832 = add i64 %805, 9
  store i64 %832, i64* %3, align 8
  store i32 %809, i32* %807, align 4
  %833 = load i64, i64* %3, align 8
  %834 = add i64 %833, -82
  store i64 %834, i64* %3, align 8
  br label %block_.L_434fcc

block_.L_435023:                                  ; preds = %block_.L_434fcc
  %835 = add i64 %689, -28
  %836 = add i64 %722, 8
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = add i32 %838, 1
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX.i604, align 8
  %841 = icmp eq i32 %838, -1
  %842 = icmp eq i32 %839, 0
  %843 = or i1 %841, %842
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %14, align 1
  %845 = and i32 %839, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %21, align 1
  %850 = xor i32 %839, %838
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %27, align 1
  %854 = zext i1 %842 to i8
  store i8 %854, i8* %30, align 1
  %855 = lshr i32 %839, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %33, align 1
  %857 = lshr i32 %838, 31
  %858 = xor i32 %855, %857
  %859 = add nuw nsw i32 %858, %855
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %39, align 1
  %862 = add i64 %722, 14
  store i64 %862, i64* %3, align 8
  store i32 %839, i32* %837, align 4
  %863 = load i64, i64* %3, align 8
  %864 = add i64 %863, -123
  store i64 %864, i64* %3, align 8
  br label %block_.L_434fb6

block_.L_435036:                                  ; preds = %block_.L_434fb6
  %865 = add i64 %684, 7
  store i64 %865, i64* %3, align 8
  store i32 1, i32* %648, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_43503d

block_.L_43503d:                                  ; preds = %block_.L_4350aa, %block_.L_435036
  %866 = phi i64 [ %1086, %block_.L_4350aa ], [ %.pre28, %block_.L_435036 ]
  %867 = load i64, i64* %RBP.i, align 8
  %868 = add i64 %867, -28
  %869 = add i64 %866, 3
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i604, align 8
  %873 = add i64 %867, -8
  %874 = add i64 %866, 7
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RCX.i596, align 8
  %877 = add i64 %866, 9
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = sub i32 %871, %879
  %881 = icmp ult i32 %871, %879
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %14, align 1
  %883 = and i32 %880, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %21, align 1
  %888 = xor i32 %879, %871
  %889 = xor i32 %888, %880
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %27, align 1
  %893 = icmp eq i32 %880, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %30, align 1
  %895 = lshr i32 %880, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %33, align 1
  %897 = lshr i32 %871, 31
  %898 = lshr i32 %879, 31
  %899 = xor i32 %898, %897
  %900 = xor i32 %895, %897
  %901 = add nuw nsw i32 %900, %899
  %902 = icmp eq i32 %901, 2
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %39, align 1
  %904 = icmp ne i8 %896, 0
  %905 = xor i1 %904, %902
  %.v42 = select i1 %905, i64 15, i64 128
  %906 = add i64 %866, %.v42
  store i64 %906, i64* %3, align 8
  br i1 %905, label %block_43504c, label %block_.L_4350bd

block_43504c:                                     ; preds = %block_.L_43503d
  %907 = add i64 %867, -32
  %908 = add i64 %906, 7
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  store i32 0, i32* %909, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_435053

block_.L_435053:                                  ; preds = %block_435063, %block_43504c
  %910 = phi i64 [ %1056, %block_435063 ], [ %.pre36, %block_43504c ]
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -32
  %913 = add i64 %910, 3
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i604, align 8
  %917 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %918 = sub i32 %915, %917
  %919 = icmp ult i32 %915, %917
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = and i32 %918, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  %926 = xor i32 %917, %915
  %927 = xor i32 %926, %918
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %27, align 1
  %931 = icmp eq i32 %918, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %30, align 1
  %933 = lshr i32 %918, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %33, align 1
  %935 = lshr i32 %915, 31
  %936 = lshr i32 %917, 31
  %937 = xor i32 %936, %935
  %938 = xor i32 %933, %935
  %939 = add nuw nsw i32 %938, %937
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %39, align 1
  %942 = icmp ne i8 %934, 0
  %943 = xor i1 %942, %940
  %.v39 = select i1 %943, i64 16, i64 87
  %944 = add i64 %910, %.v39
  store i64 %944, i64* %3, align 8
  br i1 %943, label %block_435063, label %block_.L_4350aa

block_435063:                                     ; preds = %block_.L_435053
  %945 = add i64 %911, -8
  %946 = add i64 %944, 4
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RAX.i604, align 8
  %949 = add i64 %948, 8
  %950 = add i64 %944, 8
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %RAX.i604, align 8
  %953 = add i64 %911, -28
  %954 = add i64 %944, 12
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  %958 = mul nsw i64 %957, 92
  store i64 %958, i64* %RCX.i596, align 8
  %959 = lshr i64 %958, 63
  %960 = add i64 %958, %952
  store i64 %960, i64* %RAX.i604, align 8
  %961 = icmp ult i64 %960, %952
  %962 = icmp ult i64 %960, %958
  %963 = or i1 %961, %962
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %14, align 1
  %965 = trunc i64 %960 to i32
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  %971 = xor i64 %958, %952
  %972 = xor i64 %971, %960
  %973 = lshr i64 %972, 4
  %974 = trunc i64 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %27, align 1
  %976 = icmp eq i64 %960, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %30, align 1
  %978 = lshr i64 %960, 63
  %979 = trunc i64 %978 to i8
  store i8 %979, i8* %33, align 1
  %980 = lshr i64 %952, 63
  %981 = xor i64 %978, %980
  %982 = xor i64 %978, %959
  %983 = add nuw nsw i64 %981, %982
  %984 = icmp eq i64 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %39, align 1
  %986 = add i64 %944, 23
  store i64 %986, i64* %3, align 8
  %987 = load i32, i32* %914, align 4
  %988 = sext i32 %987 to i64
  store i64 %988, i64* %RCX.i596, align 8
  %989 = shl nsw i64 %988, 2
  %990 = add i64 %960, 12
  %991 = add i64 %990, %989
  %992 = add i64 %944, 29
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  store i32 %994, i32* %78, align 1
  store float 0.000000e+00, float* %80, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %84, align 1
  %995 = add i64 %911, -24
  %996 = add i64 %944, 33
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  %998 = load i64, i64* %997, align 8
  store i64 %998, i64* %RAX.i604, align 8
  %999 = add i64 %998, 160
  %1000 = add i64 %944, 40
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i64*
  %1002 = load i64, i64* %1001, align 8
  store i64 %1002, i64* %RAX.i604, align 8
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -28
  %1005 = add i64 %944, 44
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RCX.i596, align 8
  %1009 = shl nsw i64 %1008, 3
  %1010 = add i64 %1009, %1002
  %1011 = add i64 %944, 48
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %RAX.i604, align 8
  %1014 = add i64 %1003, -32
  %1015 = add i64 %944, 52
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = sext i32 %1017 to i64
  store i64 %1018, i64* %RCX.i596, align 8
  %1019 = shl nsw i64 %1018, 2
  %1020 = add i64 %1019, %1013
  %1021 = add i64 %944, 57
  store i64 %1021, i64* %3, align 8
  %1022 = load <2 x float>, <2 x float>* %85, align 1
  %1023 = extractelement <2 x float> %1022, i32 0
  %1024 = inttoptr i64 %1020 to float*
  store float %1023, float* %1024, align 4
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -32
  %1027 = load i64, i64* %3, align 8
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = add i32 %1030, 1
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RAX.i604, align 8
  %1033 = icmp eq i32 %1030, -1
  %1034 = icmp eq i32 %1031, 0
  %1035 = or i1 %1033, %1034
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %14, align 1
  %1037 = and i32 %1031, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %21, align 1
  %1042 = xor i32 %1031, %1030
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %27, align 1
  %1046 = zext i1 %1034 to i8
  store i8 %1046, i8* %30, align 1
  %1047 = lshr i32 %1031, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %33, align 1
  %1049 = lshr i32 %1030, 31
  %1050 = xor i32 %1047, %1049
  %1051 = add nuw nsw i32 %1050, %1047
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %39, align 1
  %1054 = add i64 %1027, 9
  store i64 %1054, i64* %3, align 8
  store i32 %1031, i32* %1029, align 4
  %1055 = load i64, i64* %3, align 8
  %1056 = add i64 %1055, -82
  store i64 %1056, i64* %3, align 8
  br label %block_.L_435053

block_.L_4350aa:                                  ; preds = %block_.L_435053
  %1057 = add i64 %911, -28
  %1058 = add i64 %944, 8
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = add i32 %1060, 1
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RAX.i604, align 8
  %1063 = icmp eq i32 %1060, -1
  %1064 = icmp eq i32 %1061, 0
  %1065 = or i1 %1063, %1064
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %14, align 1
  %1067 = and i32 %1061, 255
  %1068 = tail call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  store i8 %1071, i8* %21, align 1
  %1072 = xor i32 %1061, %1060
  %1073 = lshr i32 %1072, 4
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  store i8 %1075, i8* %27, align 1
  %1076 = zext i1 %1064 to i8
  store i8 %1076, i8* %30, align 1
  %1077 = lshr i32 %1061, 31
  %1078 = trunc i32 %1077 to i8
  store i8 %1078, i8* %33, align 1
  %1079 = lshr i32 %1060, 31
  %1080 = xor i32 %1077, %1079
  %1081 = add nuw nsw i32 %1080, %1077
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %39, align 1
  %1084 = add i64 %944, 14
  store i64 %1084, i64* %3, align 8
  store i32 %1061, i32* %1059, align 4
  %1085 = load i64, i64* %3, align 8
  %1086 = add i64 %1085, -123
  store i64 %1086, i64* %3, align 8
  br label %block_.L_43503d

block_.L_4350bd:                                  ; preds = %block_.L_43503d
  %1087 = add i64 %906, 4
  store i64 %1087, i64* %3, align 8
  %1088 = load i64, i64* %875, align 8
  store i64 %1088, i64* %RAX.i604, align 8
  %1089 = add i64 %1088, 16
  %1090 = add i64 %906, 8
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i64*
  %1092 = load i64, i64* %1091, align 8
  store i64 %1092, i64* %RAX.i604, align 8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1094 = bitcast [32 x %union.VectorReg]* %1093 to i8*
  %1095 = add i64 %1092, 8
  %1096 = add i64 %906, 13
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = bitcast [32 x %union.VectorReg]* %1093 to float*
  %1100 = bitcast [32 x %union.VectorReg]* %1093 to i32*
  store i32 %1098, i32* %1100, align 1
  %1101 = getelementptr inbounds i8, i8* %1094, i64 4
  %1102 = bitcast i8* %1101 to float*
  store float 0.000000e+00, float* %1102, align 1
  store float 0.000000e+00, float* %82, align 1
  %1103 = getelementptr inbounds i8, i8* %1094, i64 12
  %1104 = bitcast i8* %1103 to float*
  store float 0.000000e+00, float* %1104, align 1
  %1105 = add i64 %906, 17
  store i64 %1105, i64* %3, align 8
  %1106 = load i64, i64* %875, align 8
  store i64 %1106, i64* %RAX.i604, align 8
  %1107 = add i64 %1106, 16
  %1108 = add i64 %906, 21
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %RAX.i604, align 8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1112 = bitcast %union.VectorReg* %1111 to i8*
  %1113 = add i64 %1110, 8
  %1114 = add i64 %906, 26
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = bitcast %union.VectorReg* %1111 to float*
  %1118 = bitcast %union.VectorReg* %1111 to i32*
  store i32 %1116, i32* %1118, align 1
  %1119 = getelementptr inbounds i8, i8* %1112, i64 4
  %1120 = bitcast i8* %1119 to float*
  store float 0.000000e+00, float* %1120, align 1
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1122 = bitcast i64* %1121 to float*
  store float 0.000000e+00, float* %1122, align 1
  %1123 = getelementptr inbounds i8, i8* %1112, i64 12
  %1124 = bitcast i8* %1123 to float*
  store float 0.000000e+00, float* %1124, align 1
  %1125 = add i64 %906, 30
  store i64 %1125, i64* %3, align 8
  %1126 = load i64, i64* %875, align 8
  store i64 %1126, i64* %RAX.i604, align 8
  %1127 = add i64 %1126, 16
  %1128 = add i64 %906, 34
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RAX.i604, align 8
  %1131 = add i64 %906, 38
  store i64 %1131, i64* %3, align 8
  %1132 = bitcast %union.VectorReg* %1111 to <2 x float>*
  %1133 = load <2 x float>, <2 x float>* %1132, align 1
  %1134 = bitcast i64* %1121 to <2 x i32>*
  %1135 = load <2 x i32>, <2 x i32>* %1134, align 1
  %1136 = inttoptr i64 %1130 to float*
  %1137 = load float, float* %1136, align 4
  %1138 = extractelement <2 x float> %1133, i32 0
  %1139 = fadd float %1138, %1137
  store float %1139, float* %1117, align 1
  %1140 = bitcast <2 x float> %1133 to <2 x i32>
  %1141 = extractelement <2 x i32> %1140, i32 1
  %1142 = bitcast i8* %1119 to i32*
  store i32 %1141, i32* %1142, align 1
  %1143 = extractelement <2 x i32> %1135, i32 0
  %1144 = bitcast i64* %1121 to i32*
  store i32 %1143, i32* %1144, align 1
  %1145 = extractelement <2 x i32> %1135, i32 1
  %1146 = bitcast i8* %1123 to i32*
  store i32 %1145, i32* %1146, align 1
  %1147 = bitcast [32 x %union.VectorReg]* %1093 to <2 x float>*
  %1148 = load <2 x float>, <2 x float>* %1147, align 1
  %1149 = bitcast i64* %81 to <2 x i32>*
  %1150 = load <2 x i32>, <2 x i32>* %1149, align 1
  %1151 = load <2 x float>, <2 x float>* %1132, align 1
  %1152 = extractelement <2 x float> %1148, i32 0
  %1153 = extractelement <2 x float> %1151, i32 0
  %1154 = fdiv float %1152, %1153
  store float %1154, float* %1099, align 1
  %1155 = bitcast <2 x float> %1148 to <2 x i32>
  %1156 = extractelement <2 x i32> %1155, i32 1
  %1157 = bitcast i8* %1101 to i32*
  store i32 %1156, i32* %1157, align 1
  %1158 = extractelement <2 x i32> %1150, i32 0
  %1159 = bitcast i64* %81 to i32*
  store i32 %1158, i32* %1159, align 1
  %1160 = extractelement <2 x i32> %1150, i32 1
  %1161 = bitcast i8* %1103 to i32*
  store i32 %1160, i32* %1161, align 1
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -24
  %1164 = add i64 %906, 46
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i64*
  %1166 = load i64, i64* %1165, align 8
  store i64 %1166, i64* %RAX.i604, align 8
  %1167 = add i64 %1166, 168
  %1168 = add i64 %906, 54
  store i64 %1168, i64* %3, align 8
  %1169 = load <2 x float>, <2 x float>* %1147, align 1
  %1170 = extractelement <2 x float> %1169, i32 0
  %1171 = inttoptr i64 %1167 to float*
  store float %1170, float* %1171, align 4
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -24
  %1174 = load i64, i64* %3, align 8
  %1175 = add i64 %1174, 4
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1173 to i64*
  %1177 = load i64, i64* %1176, align 8
  %1178 = add i64 %1177, 224
  store i64 %1178, i64* %RAX.i604, align 8
  %1179 = icmp ugt i64 %1177, -225
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %14, align 1
  %1181 = trunc i64 %1178 to i32
  %1182 = and i32 %1181, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %21, align 1
  %1187 = xor i64 %1178, %1177
  %1188 = lshr i64 %1187, 4
  %1189 = trunc i64 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %27, align 1
  %1191 = icmp eq i64 %1178, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %30, align 1
  %1193 = lshr i64 %1178, 63
  %1194 = trunc i64 %1193 to i8
  store i8 %1194, i8* %33, align 1
  %1195 = lshr i64 %1177, 63
  %1196 = xor i64 %1193, %1195
  %1197 = add nuw nsw i64 %1196, %1193
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %39, align 1
  %1200 = add i64 %1174, 14
  store i64 %1200, i64* %3, align 8
  %1201 = load i64, i64* %1176, align 8
  %1202 = add i64 %1201, 304
  store i64 %1202, i64* %RCX.i596, align 8
  %1203 = icmp ugt i64 %1201, -305
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %14, align 1
  %1205 = trunc i64 %1202 to i32
  %1206 = and i32 %1205, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %21, align 1
  %1211 = xor i64 %1201, 16
  %1212 = xor i64 %1211, %1202
  %1213 = lshr i64 %1212, 4
  %1214 = trunc i64 %1213 to i8
  %1215 = and i8 %1214, 1
  store i8 %1215, i8* %27, align 1
  %1216 = icmp eq i64 %1202, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %30, align 1
  %1218 = lshr i64 %1202, 63
  %1219 = trunc i64 %1218 to i8
  store i8 %1219, i8* %33, align 1
  %1220 = lshr i64 %1201, 63
  %1221 = xor i64 %1218, %1220
  %1222 = add nuw nsw i64 %1221, %1218
  %1223 = icmp eq i64 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %39, align 1
  store i64 %1178, i64* %RDI.i617, align 8
  store i64 %1202, i64* %RSI.i614, align 8
  %1225 = add i64 %1174, 14493
  %1226 = add i64 %1174, 32
  %1227 = load i64, i64* %6, align 8
  %1228 = add i64 %1227, -8
  %1229 = inttoptr i64 %1228 to i64*
  store i64 %1226, i64* %1229, align 8
  store i64 %1228, i64* %6, align 8
  store i64 %1225, i64* %3, align 8
  %call2_43510e = tail call %struct.Memory* @sub_438990.P7DefaultNullModel(%struct.State* nonnull %0, i64 %1225, %struct.Memory* %call2_434e36)
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -32
  %1232 = load i64, i64* %3, align 8
  %1233 = add i64 %1232, 7
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1231 to i32*
  store i32 0, i32* %1234, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_43511a

block_.L_43511a:                                  ; preds = %block_43512a, %block_.L_4350bd
  %1235 = phi i64 [ %1328, %block_43512a ], [ %.pre29, %block_.L_4350bd ]
  %1236 = load i64, i64* %RBP.i, align 8
  %1237 = add i64 %1236, -32
  %1238 = add i64 %1235, 3
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i604, align 8
  %1242 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1243 = sub i32 %1240, %1242
  %1244 = icmp ult i32 %1240, %1242
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %14, align 1
  %1246 = and i32 %1243, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %21, align 1
  %1251 = xor i32 %1242, %1240
  %1252 = xor i32 %1251, %1243
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %27, align 1
  %1256 = icmp eq i32 %1243, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %30, align 1
  %1258 = lshr i32 %1243, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %33, align 1
  %1260 = lshr i32 %1240, 31
  %1261 = lshr i32 %1242, 31
  %1262 = xor i32 %1261, %1260
  %1263 = xor i32 %1258, %1260
  %1264 = add nuw nsw i32 %1263, %1262
  %1265 = icmp eq i32 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %39, align 1
  %1267 = icmp ne i8 %1259, 0
  %1268 = xor i1 %1267, %1265
  %.v37 = select i1 %1268, i64 16, i64 61
  %1269 = add i64 %1235, %.v37
  %1270 = add i64 %1236, -8
  %1271 = add i64 %1269, 4
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX.i604, align 8
  br i1 %1268, label %block_43512a, label %block_.L_435157

block_43512a:                                     ; preds = %block_.L_43511a
  %1274 = add i64 %1269, 8
  store i64 %1274, i64* %3, align 8
  %1275 = load i32, i32* %1239, align 4
  %1276 = sext i32 %1275 to i64
  store i64 %1276, i64* %RCX.i596, align 8
  %1277 = shl nsw i64 %1276, 2
  %1278 = add i64 %1273, 32
  %1279 = add i64 %1278, %1277
  %1280 = add i64 %1269, 14
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  store i32 %1282, i32* %1100, align 1
  store float 0.000000e+00, float* %1102, align 1
  store float 0.000000e+00, float* %82, align 1
  store float 0.000000e+00, float* %1104, align 1
  %1283 = add i64 %1236, -24
  %1284 = add i64 %1269, 18
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i64*
  %1286 = load i64, i64* %1285, align 8
  store i64 %1286, i64* %RAX.i604, align 8
  %1287 = add i64 %1269, 22
  store i64 %1287, i64* %3, align 8
  %1288 = load i32, i32* %1239, align 4
  %1289 = sext i32 %1288 to i64
  store i64 %1289, i64* %RCX.i596, align 8
  %1290 = shl nsw i64 %1289, 2
  %1291 = add i64 %1286, 224
  %1292 = add i64 %1291, %1290
  %1293 = add i64 %1269, 31
  store i64 %1293, i64* %3, align 8
  %1294 = load <2 x float>, <2 x float>* %1147, align 1
  %1295 = extractelement <2 x float> %1294, i32 0
  %1296 = inttoptr i64 %1292 to float*
  store float %1295, float* %1296, align 4
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -32
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, 1
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RAX.i604, align 8
  %1305 = icmp eq i32 %1302, -1
  %1306 = icmp eq i32 %1303, 0
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %14, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %21, align 1
  %1314 = xor i32 %1303, %1302
  %1315 = lshr i32 %1314, 4
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  store i8 %1317, i8* %27, align 1
  %1318 = zext i1 %1306 to i8
  store i8 %1318, i8* %30, align 1
  %1319 = lshr i32 %1303, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %33, align 1
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %39, align 1
  %1326 = add i64 %1299, 9
  store i64 %1326, i64* %3, align 8
  store i32 %1303, i32* %1301, align 4
  %1327 = load i64, i64* %3, align 8
  %1328 = add i64 %1327, -56
  store i64 %1328, i64* %3, align 8
  br label %block_.L_43511a

block_.L_435157:                                  ; preds = %block_.L_43511a
  %1329 = add i64 %1273, 112
  %1330 = add i64 %1269, 9
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i8 0, i8* %14, align 1
  %1333 = trunc i64 %1332 to i32
  %1334 = and i32 %1333, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1339 = icmp eq i64 %1332, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %30, align 1
  %1341 = lshr i64 %1332, 63
  %1342 = trunc i64 %1341 to i8
  store i8 %1342, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v43 = select i1 %1339, i64 32, i64 15
  %1343 = add i64 %1269, %.v43
  store i64 %1343, i64* %3, align 8
  br i1 %1339, label %block_.L_435177, label %block_435166

block_435166:                                     ; preds = %block_.L_435157
  %1344 = add i64 %1236, -24
  %1345 = add i64 %1343, 4
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i64*
  %1347 = load i64, i64* %1346, align 8
  store i64 %1347, i64* %RDI.i617, align 8
  %1348 = add i64 %1343, 8
  store i64 %1348, i64* %3, align 8
  %1349 = load i64, i64* %1272, align 8
  store i64 %1349, i64* %RAX.i604, align 8
  %1350 = add i64 %1349, 112
  %1351 = add i64 %1343, 12
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RSI.i614, align 8
  %1354 = add i64 %1343, -9702
  %1355 = add i64 %1343, 17
  %1356 = load i64, i64* %6, align 8
  %1357 = add i64 %1356, -8
  %1358 = inttoptr i64 %1357 to i64*
  store i64 %1355, i64* %1358, align 8
  store i64 %1357, i64* %6, align 8
  store i64 %1354, i64* %3, align 8
  %call2_435172 = tail call %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* nonnull %0, i64 %1354, %struct.Memory* %call2_43510e)
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_435177

block_.L_435177:                                  ; preds = %block_435166, %block_.L_435157
  %1359 = phi i64 [ %1343, %block_.L_435157 ], [ %.pre31, %block_435166 ]
  %1360 = phi i64 [ %1236, %block_.L_435157 ], [ %.pre30, %block_435166 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_43510e, %block_.L_435157 ], [ %call2_435172, %block_435166 ]
  %1361 = add i64 %1360, -8
  %1362 = add i64 %1359, 4
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  %1364 = load i64, i64* %1363, align 8
  store i64 %1364, i64* %RAX.i604, align 8
  %1365 = add i64 %1364, 144
  %1366 = add i64 %1359, 10
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = and i32 %1368, 1
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i596, align 8
  store i8 0, i8* %14, align 1
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1372 = trunc i32 %1371 to i8
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1374 = icmp eq i32 %1369, 0
  %1375 = trunc i32 %1369 to i8
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v44 = select i1 %1374, i64 66, i64 22
  %1377 = add i64 %1359, %.v44
  store i64 %1377, i64* %3, align 8
  br i1 %1374, label %block_.L_4351b9, label %block_43518d

block_43518d:                                     ; preds = %block_.L_435177
  %1378 = add i64 %1360, -24
  %1379 = add i64 %1377, 4
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %RAX.i604, align 8
  %1382 = add i64 %1381, 24
  %1383 = add i64 %1377, 8
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i64*
  %1385 = load i64, i64* %1384, align 8
  store i64 %1385, i64* %RDI.i617, align 8
  %1386 = add i64 %1377, 12
  store i64 %1386, i64* %3, align 8
  %1387 = load i64, i64* %1363, align 8
  store i64 %1387, i64* %RAX.i604, align 8
  %1388 = add i64 %1387, 120
  %1389 = add i64 %1377, 16
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  store i64 %1391, i64* %RSI.i614, align 8
  %1392 = add i64 %1377, -212397
  %1393 = add i64 %1377, 21
  %1394 = load i64, i64* %6, align 8
  %1395 = add i64 %1394, -8
  %1396 = inttoptr i64 %1395 to i64*
  store i64 %1393, i64* %1396, align 8
  store i64 %1395, i64* %6, align 8
  store i64 %1392, i64* %3, align 8
  %1397 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.6)
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -24
  %1400 = load i64, i64* %3, align 8
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RSI.i614, align 8
  %1404 = add i64 %1403, 456
  %1405 = add i64 %1400, 10
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = or i32 %1407, 4
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i596, align 8
  store i8 0, i8* %14, align 1
  %1410 = and i32 %1408, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %1415 = lshr i32 %1407, 31
  %1416 = trunc i32 %1415 to i8
  store i8 %1416, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1417 = add i64 %1400, 19
  store i64 %1417, i64* %3, align 8
  store i32 %1408, i32* %1406, align 4
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -40
  %1420 = load i64, i64* %RAX.i604, align 8
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 4
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1419 to i64*
  store i64 %1420, i64* %1423, align 8
  %.pre32 = load i64, i64* %RBP.i, align 8
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_4351b9

block_.L_4351b9:                                  ; preds = %block_43518d, %block_.L_435177
  %1424 = phi i64 [ %1377, %block_.L_435177 ], [ %.pre33, %block_43518d ]
  %1425 = phi i64 [ %1360, %block_.L_435177 ], [ %.pre32, %block_43518d ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_435177 ], [ %1397, %block_43518d ]
  %1426 = add i64 %1425, -8
  %1427 = add i64 %1424, 4
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX.i604, align 8
  %1430 = add i64 %1429, 144
  %1431 = add i64 %1424, 10
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = and i32 %1433, 2
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i596, align 8
  store i8 0, i8* %14, align 1
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1434)
  %1437 = trunc i32 %1436 to i8
  %1438 = xor i8 %1437, 1
  store i8 %1438, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1439 = icmp eq i32 %1434, 0
  %.lobit38 = lshr exact i32 %1434, 1
  %1440 = trunc i32 %.lobit38 to i8
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v45 = select i1 %1439, i64 69, i64 22
  %1442 = add i64 %1424, %.v45
  store i64 %1442, i64* %3, align 8
  br i1 %1439, label %block_.L_4351fe, label %block_4351cf

block_4351cf:                                     ; preds = %block_.L_4351b9
  %1443 = add i64 %1425, -24
  %1444 = add i64 %1442, 4
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i64*
  %1446 = load i64, i64* %1445, align 8
  store i64 %1446, i64* %RAX.i604, align 8
  %1447 = add i64 %1446, 32
  %1448 = add i64 %1442, 8
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RDI.i617, align 8
  %1451 = add i64 %1442, 12
  store i64 %1451, i64* %3, align 8
  %1452 = load i64, i64* %1428, align 8
  store i64 %1452, i64* %RAX.i604, align 8
  %1453 = add i64 %1452, 128
  %1454 = add i64 %1442, 19
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i64 %1456, i64* %RSI.i614, align 8
  %1457 = add i64 %1442, -212463
  %1458 = add i64 %1442, 24
  %1459 = load i64, i64* %6, align 8
  %1460 = add i64 %1459, -8
  %1461 = inttoptr i64 %1460 to i64*
  store i64 %1458, i64* %1461, align 8
  store i64 %1460, i64* %6, align 8
  store i64 %1457, i64* %3, align 8
  %1462 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.7)
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -24
  %1465 = load i64, i64* %3, align 8
  %1466 = add i64 %1465, 4
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1464 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RSI.i614, align 8
  %1469 = add i64 %1468, 456
  %1470 = add i64 %1465, 10
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = or i32 %1472, 8
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RCX.i596, align 8
  store i8 0, i8* %14, align 1
  %1475 = and i32 %1473, 255
  %1476 = tail call i32 @llvm.ctpop.i32(i32 %1475)
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  %1479 = xor i8 %1478, 1
  store i8 %1479, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %1480 = lshr i32 %1472, 31
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1482 = add i64 %1465, 19
  store i64 %1482, i64* %3, align 8
  store i32 %1473, i32* %1471, align 4
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -48
  %1485 = load i64, i64* %RAX.i604, align 8
  %1486 = load i64, i64* %3, align 8
  %1487 = add i64 %1486, 4
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1484 to i64*
  store i64 %1485, i64* %1488, align 8
  %.pre34 = load i64, i64* %RBP.i, align 8
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_4351fe

block_.L_4351fe:                                  ; preds = %block_4351cf, %block_.L_4351b9
  %1489 = phi i64 [ %1442, %block_.L_4351b9 ], [ %.pre35, %block_4351cf ]
  %1490 = phi i64 [ %1425, %block_.L_4351b9 ], [ %.pre34, %block_4351cf ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_4351b9 ], [ %1462, %block_4351cf ]
  %1491 = add i64 %1490, -24
  %1492 = add i64 %1489, 4
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RDI.i617, align 8
  %1495 = add i64 %1489, -3982
  %1496 = add i64 %1489, 9
  %1497 = load i64, i64* %6, align 8
  %1498 = add i64 %1497, -8
  %1499 = inttoptr i64 %1498 to i64*
  store i64 %1496, i64* %1499, align 8
  store i64 %1498, i64* %6, align 8
  store i64 %1495, i64* %3, align 8
  %call2_435202 = tail call %struct.Memory* @sub_434270.Plan7LSConfig(%struct.State* nonnull %0, i64 %1495, %struct.Memory* %MEMORY.8)
  %1500 = load i64, i64* %RBP.i, align 8
  %1501 = add i64 %1500, -24
  %1502 = load i64, i64* %3, align 8
  %1503 = add i64 %1502, 4
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1501 to i64*
  %1505 = load i64, i64* %1504, align 8
  store i64 %1505, i64* %RDI.i617, align 8
  %1506 = add i64 %1502, -5591
  %1507 = add i64 %1502, 9
  %1508 = load i64, i64* %6, align 8
  %1509 = add i64 %1508, -8
  %1510 = inttoptr i64 %1509 to i64*
  store i64 %1507, i64* %1510, align 8
  store i64 %1509, i64* %6, align 8
  store i64 %1506, i64* %3, align 8
  %call2_43520b = tail call %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* nonnull %0, i64 %1506, %struct.Memory* %call2_435202)
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -24
  %1513 = load i64, i64* %3, align 8
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1512 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RDI.i617, align 8
  %1517 = add i64 %1516, 456
  %1518 = add i64 %1513, 10
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = or i32 %1520, 32
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i604, align 8
  store i8 0, i8* %14, align 1
  %1523 = and i32 %1521, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %1528 = lshr i32 %1520, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1530 = add i64 %1513, 19
  store i64 %1530, i64* %3, align 8
  store i32 %1521, i32* %1519, align 4
  %1531 = load i64, i64* %RBP.i, align 8
  %1532 = add i64 %1531, -24
  %1533 = load i64, i64* %3, align 8
  %1534 = add i64 %1533, 4
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1532 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %RDI.i617, align 8
  %1537 = add i64 %1536, 456
  %1538 = add i64 %1533, 10
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = and i32 %1540, -2
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RAX.i604, align 8
  store i8 0, i8* %14, align 1
  %1543 = and i32 %1540, 254
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  %1548 = icmp ult i32 %1540, 2
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %30, align 1
  %1550 = lshr i32 %1540, 31
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1552 = add i64 %1533, 19
  store i64 %1552, i64* %3, align 8
  store i32 %1541, i32* %1539, align 4
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -24
  %1555 = load i64, i64* %3, align 8
  %1556 = add i64 %1555, 4
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1554 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RDI.i617, align 8
  %1559 = add i64 %1553, -16
  %1560 = add i64 %1555, 8
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i64 %1562, i64* %RCX.i596, align 8
  %1563 = add i64 %1555, 11
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  store i64 %1558, i64* %1564, align 8
  %1565 = load i64, i64* %6, align 8
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1565, 48
  store i64 %1567, i64* %6, align 8
  %1568 = icmp ugt i64 %1565, -49
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %1570 = trunc i64 %1567 to i32
  %1571 = and i32 %1570, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i64 %1565, 16
  %1577 = xor i64 %1576, %1567
  %1578 = lshr i64 %1577, 4
  %1579 = trunc i64 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %27, align 1
  %1581 = icmp eq i64 %1567, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %30, align 1
  %1583 = lshr i64 %1567, 63
  %1584 = trunc i64 %1583 to i8
  store i8 %1584, i8* %33, align 1
  %1585 = lshr i64 %1565, 63
  %1586 = xor i64 %1583, %1585
  %1587 = add nuw nsw i64 %1586, %1583
  %1588 = icmp eq i64 %1587, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %39, align 1
  %1590 = add i64 %1566, 5
  store i64 %1590, i64* %3, align 8
  %1591 = add i64 %1565, 56
  %1592 = inttoptr i64 %1567 to i64*
  %1593 = load i64, i64* %1592, align 8
  store i64 %1593, i64* %RBP.i, align 8
  store i64 %1591, i64* %6, align 8
  %1594 = add i64 %1566, 6
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1591 to i64*
  %1596 = load i64, i64* %1595, align 8
  store i64 %1596, i64* %3, align 8
  %1597 = add i64 %1565, 64
  store i64 %1597, i64* %6, align 8
  ret %struct.Memory* %call2_43520b
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl___rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocPlan7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = bitcast i64* %RCX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_434faf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 92
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movss___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
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
define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movss_0x4__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434e46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_435036(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_435023(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movss_0xc__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 12
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434fcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_435028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434fb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4350bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4350aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_435053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4350af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43503d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x8__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to float**
  %6 = load float*, float** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = load float, float* %6, align 4
  %15 = extractelement <2 x float> %10, i32 0
  %16 = fadd float %15, %14
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = bitcast <2 x float> %10 to <2 x i32>
  %19 = extractelement <2 x i32> %18, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %13, i32 0
  %23 = bitcast i64* %11 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %13, i32 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xa8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 168
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
define %struct.Memory* @routine_addq__0xe0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -225
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x130___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 304
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -305
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
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7DefaultNullModel(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_435157(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x20__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 32
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xe0__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 224
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43511a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_435177(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Plan7SetName(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
define %struct.Memory* @routine_je_.L_4351b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x78__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 4
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x1c8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4351fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x20__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x80__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 8
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Plan7LSConfig(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Plan7Renormalize(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 32
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967294
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 254
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp ult i32 %6, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %6, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
