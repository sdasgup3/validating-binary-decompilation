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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Plan7ESTViterbi(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RAX.i2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %39 = add i64 %7, -56
  store i64 %39, i64* %RAX.i2535, align 8
  %R8.i2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %40 = add i64 %7, -64
  store i64 %40, i64* %R8.i2533, align 8
  %R9.i2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %41 = add i64 %7, -72
  store i64 %41, i64* %R9.i2530, align 8
  %R10.i2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %42 = add i64 %7, -80
  store i64 %42, i64* %R10.i2527, align 8
  %RDI.i2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = add i64 %7, -16
  %44 = load i64, i64* %RDI.i2523, align 8
  %45 = add i64 %10, 27
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2520 = bitcast %union.anon* %47 to i32*
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -12
  %50 = load i32, i32* %ESI.i2520, align 4
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2517 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -24
  %57 = load i64, i64* %RDX.i2517, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2514 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %RCX.i2514, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %RSI.i2511 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -12
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RSI.i2511, align 8
  %76 = icmp eq i32 %73, -1
  %77 = icmp eq i32 %74, 0
  %78 = or i1 %76, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %14, align 1
  %80 = and i32 %74, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80)
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %21, align 1
  %85 = xor i32 %74, %73
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %26, align 1
  %89 = zext i1 %77 to i8
  store i8 %89, i8* %29, align 1
  %90 = lshr i32 %74, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %32, align 1
  %92 = lshr i32 %73, 31
  %93 = xor i32 %90, %92
  %94 = add nuw nsw i32 %93, %90
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %38, align 1
  %97 = add i64 %68, -24
  %98 = add i64 %70, 10
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RCX.i2514, align 8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %102 = add i64 %100, 136
  %103 = add i64 %70, 17
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %101, align 8
  store i64 %75, i64* %RDI.i2523, align 8
  store i64 %106, i64* %RSI.i2511, align 8
  %107 = load i64, i64* %RAX.i2535, align 8
  store i64 %107, i64* %RDX.i2517, align 8
  %108 = load i64, i64* %R8.i2533, align 8
  store i64 %108, i64* %RCX.i2514, align 8
  %109 = load i64, i64* %R9.i2530, align 8
  store i64 %109, i64* %R8.i2533, align 8
  %110 = load i64, i64* %R10.i2527, align 8
  store i64 %110, i64* %R9.i2530, align 8
  %111 = add i64 %70, -24263
  %112 = add i64 %70, 39
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %call2_40d779 = tail call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %111, %struct.Memory* %2)
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -40
  %118 = load i64, i64* %RAX.i2535, align 8
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -48
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX.i2535, align 8
  %128 = add i64 %124, 7
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX.i2535, align 8
  %131 = add i64 %130, 16
  %132 = add i64 %124, 14
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 0, i32* %133, align 4
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -24
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RAX.i2535, align 8
  %140 = add i64 %139, 336
  %141 = add i64 %136, 10
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RSI.i2511, align 8
  %145 = add i64 %134, -48
  %146 = add i64 %136, 14
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RAX.i2535, align 8
  %149 = add i64 %136, 17
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RAX.i2535, align 8
  %152 = add i64 %136, 19
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  store i32 %143, i32* %153, align 4
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -48
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RAX.i2535, align 8
  %160 = add i64 %156, 7
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX.i2535, align 8
  %163 = add i64 %162, 12
  %164 = add i64 %156, 14
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 -987654321, i32* %165, align 4
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -48
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RAX.i2535, align 8
  %172 = add i64 %168, 7
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i2535, align 8
  %175 = add i64 %174, 8
  %176 = add i64 %168, 14
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  store i32 -987654321, i32* %177, align 4
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -48
  %180 = load i64, i64* %3, align 8
  %181 = add i64 %180, 4
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %179 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i2535, align 8
  %184 = add i64 %180, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i2535, align 8
  %187 = add i64 %186, 4
  %188 = add i64 %180, 14
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 -987654321, i32* %189, align 4
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -80
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 7
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  store i32 0, i32* %194, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40d7d4

block_.L_40d7d4:                                  ; preds = %block_40d7e7, %entry
  %195 = phi i64 [ %318, %block_40d7e7 ], [ %.pre, %entry ]
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -80
  %198 = add i64 %195, 3
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX.i2535, align 8
  %202 = add i64 %196, -24
  %203 = add i64 %195, 7
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RCX.i2514, align 8
  %206 = add i64 %205, 136
  %207 = add i64 %195, 13
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sub i32 %200, %209
  %211 = icmp ult i32 %200, %209
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = and i32 %210, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  %218 = xor i32 %209, %200
  %219 = xor i32 %218, %210
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1
  %223 = icmp eq i32 %210, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i32 %210, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = lshr i32 %200, 31
  %228 = lshr i32 %209, 31
  %229 = xor i32 %228, %227
  %230 = xor i32 %225, %227
  %231 = add nuw nsw i32 %230, %229
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %38, align 1
  %234 = icmp ne i8 %226, 0
  %235 = xor i1 %234, %232
  %.demorgan = or i1 %223, %235
  %.v114 = select i1 %.demorgan, i64 19, i64 87
  %236 = add i64 %195, %.v114
  store i64 %236, i64* %3, align 8
  br i1 %.demorgan, label %block_40d7e7, label %block_.L_40d82b

block_40d7e7:                                     ; preds = %block_.L_40d7d4
  %237 = add i64 %196, -72
  %238 = add i64 %236, 4
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX.i2535, align 8
  %241 = add i64 %236, 7
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX.i2535, align 8
  %244 = add i64 %236, 11
  store i64 %244, i64* %3, align 8
  %245 = load i32, i32* %199, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %RCX.i2514, align 8
  %247 = shl nsw i64 %246, 2
  %248 = add i64 %247, %243
  %249 = add i64 %236, 18
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  store i32 -987654321, i32* %250, align 4
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -64
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i2535, align 8
  %257 = add i64 %253, 7
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RAX.i2535, align 8
  %260 = add i64 %251, -80
  %261 = add i64 %253, 11
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %RCX.i2514, align 8
  %265 = shl nsw i64 %264, 2
  %266 = add i64 %265, %259
  %267 = add i64 %253, 18
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 -987654321, i32* %268, align 4
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -56
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 4
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RAX.i2535, align 8
  %275 = add i64 %271, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RAX.i2535, align 8
  %278 = add i64 %269, -80
  %279 = add i64 %271, 11
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX.i2514, align 8
  %283 = shl nsw i64 %282, 2
  %284 = add i64 %283, %277
  %285 = add i64 %271, 18
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  store i32 -987654321, i32* %286, align 4
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -80
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 3
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, 1
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i2535, align 8
  %295 = icmp eq i32 %292, -1
  %296 = icmp eq i32 %293, 0
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %14, align 1
  %299 = and i32 %293, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %21, align 1
  %304 = xor i32 %293, %292
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %26, align 1
  %308 = zext i1 %296 to i8
  store i8 %308, i8* %29, align 1
  %309 = lshr i32 %293, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %32, align 1
  %311 = lshr i32 %292, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %38, align 1
  %316 = add i64 %289, 9
  store i64 %316, i64* %3, align 8
  store i32 %293, i32* %291, align 4
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, -82
  store i64 %318, i64* %3, align 8
  br label %block_.L_40d7d4

block_.L_40d82b:                                  ; preds = %block_.L_40d7d4
  %319 = add i64 %196, -48
  %320 = add i64 %236, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX.i2535, align 8
  %323 = add i64 %236, 7
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RAX.i2535, align 8
  %326 = add i64 %325, 16
  %327 = add i64 %236, 10
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i2514, align 8
  %331 = add i64 %236, 14
  store i64 %331, i64* %3, align 8
  %332 = load i64, i64* %204, align 8
  store i64 %332, i64* %RAX.i2535, align 8
  %333 = add i64 %332, 340
  %334 = add i64 %236, 20
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = add i32 %336, %329
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RCX.i2514, align 8
  %339 = icmp ult i32 %337, %329
  %340 = icmp ult i32 %337, %336
  %341 = or i1 %339, %340
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %14, align 1
  %343 = and i32 %337, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %21, align 1
  %348 = xor i32 %336, %329
  %349 = xor i32 %348, %337
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %26, align 1
  %353 = icmp eq i32 %337, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %29, align 1
  %355 = lshr i32 %337, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %32, align 1
  %357 = lshr i32 %329, 31
  %358 = lshr i32 %336, 31
  %359 = xor i32 %355, %357
  %360 = xor i32 %355, %358
  %361 = add nuw nsw i32 %359, %360
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %38, align 1
  %364 = add i64 %236, 24
  store i64 %364, i64* %3, align 8
  %365 = load i64, i64* %321, align 8
  store i64 %365, i64* %RAX.i2535, align 8
  %366 = add i64 %365, 8
  %367 = add i64 %236, 28
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RAX.i2535, align 8
  %ECX.i2367 = bitcast %union.anon* %61 to i32*
  %370 = add i64 %369, 16
  %371 = add i64 %236, 31
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  store i32 %337, i32* %372, align 4
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -48
  %375 = load i64, i64* %3, align 8
  %376 = add i64 %375, 4
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RAX.i2535, align 8
  %379 = add i64 %378, 8
  %380 = add i64 %375, 8
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RAX.i2535, align 8
  %383 = add i64 %382, 16
  %384 = add i64 %375, 11
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RCX.i2514, align 8
  %388 = add i64 %373, -24
  %389 = add i64 %375, 15
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX.i2535, align 8
  %392 = add i64 %391, 336
  %393 = add i64 %375, 21
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = add i32 %395, %386
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RCX.i2514, align 8
  %398 = icmp ult i32 %396, %386
  %399 = icmp ult i32 %396, %395
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %14, align 1
  %402 = and i32 %396, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402)
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %21, align 1
  %407 = xor i32 %395, %386
  %408 = xor i32 %407, %396
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %26, align 1
  %412 = icmp eq i32 %396, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %29, align 1
  %414 = lshr i32 %396, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %32, align 1
  %416 = lshr i32 %386, 31
  %417 = lshr i32 %395, 31
  %418 = xor i32 %414, %416
  %419 = xor i32 %414, %417
  %420 = add nuw nsw i32 %418, %419
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %38, align 1
  %423 = add i64 %375, 25
  store i64 %423, i64* %3, align 8
  %424 = load i64, i64* %377, align 8
  store i64 %424, i64* %RAX.i2535, align 8
  %425 = add i64 %424, 8
  %426 = add i64 %375, 29
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i64*
  %428 = load i64, i64* %427, align 8
  store i64 %428, i64* %RAX.i2535, align 8
  %429 = add i64 %375, 31
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  store i32 %396, i32* %430, align 4
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -48
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 4
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %432 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX.i2535, align 8
  %437 = add i64 %433, 7
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RAX.i2535, align 8
  %440 = add i64 %439, 12
  %441 = add i64 %433, 14
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  store i32 -987654321, i32* %442, align 4
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -48
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, 4
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i2535, align 8
  %449 = add i64 %445, 7
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RAX.i2535, align 8
  %452 = add i64 %451, 8
  %453 = add i64 %445, 14
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  store i32 -987654321, i32* %454, align 4
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -48
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 4
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %456 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RAX.i2535, align 8
  %461 = add i64 %457, 7
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RAX.i2535, align 8
  %464 = add i64 %463, 4
  %465 = add i64 %457, 14
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  store i32 -987654321, i32* %466, align 4
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -80
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %469, 7
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %468 to i32*
  store i32 0, i32* %471, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_40d89a

block_.L_40d89a:                                  ; preds = %block_40d8ad, %block_.L_40d82b
  %472 = phi i64 [ %595, %block_40d8ad ], [ %.pre55, %block_.L_40d82b ]
  %473 = load i64, i64* %RBP.i, align 8
  %474 = add i64 %473, -80
  %475 = add i64 %472, 3
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RAX.i2535, align 8
  %479 = add i64 %473, -24
  %480 = add i64 %472, 7
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RCX.i2514, align 8
  %483 = add i64 %482, 136
  %484 = add i64 %472, 13
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = sub i32 %477, %486
  %488 = icmp ult i32 %477, %486
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %14, align 1
  %490 = and i32 %487, 255
  %491 = tail call i32 @llvm.ctpop.i32(i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  store i8 %494, i8* %21, align 1
  %495 = xor i32 %486, %477
  %496 = xor i32 %495, %487
  %497 = lshr i32 %496, 4
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  store i8 %499, i8* %26, align 1
  %500 = icmp eq i32 %487, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %29, align 1
  %502 = lshr i32 %487, 31
  %503 = trunc i32 %502 to i8
  store i8 %503, i8* %32, align 1
  %504 = lshr i32 %477, 31
  %505 = lshr i32 %486, 31
  %506 = xor i32 %505, %504
  %507 = xor i32 %502, %504
  %508 = add nuw nsw i32 %507, %506
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %38, align 1
  %511 = icmp ne i8 %503, 0
  %512 = xor i1 %511, %509
  %.demorgan110 = or i1 %500, %512
  %.v115 = select i1 %.demorgan110, i64 19, i64 87
  %513 = add i64 %472, %.v115
  store i64 %513, i64* %3, align 8
  br i1 %.demorgan110, label %block_40d8ad, label %block_.L_40d8f1

block_40d8ad:                                     ; preds = %block_.L_40d89a
  %514 = add i64 %473, -72
  %515 = add i64 %513, 4
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RAX.i2535, align 8
  %518 = add i64 %513, 7
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RAX.i2535, align 8
  %521 = add i64 %513, 11
  store i64 %521, i64* %3, align 8
  %522 = load i32, i32* %476, align 4
  %523 = sext i32 %522 to i64
  store i64 %523, i64* %RCX.i2514, align 8
  %524 = shl nsw i64 %523, 2
  %525 = add i64 %524, %520
  %526 = add i64 %513, 18
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  store i32 -987654321, i32* %527, align 4
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -64
  %530 = load i64, i64* %3, align 8
  %531 = add i64 %530, 4
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %529 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RAX.i2535, align 8
  %534 = add i64 %530, 7
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RAX.i2535, align 8
  %537 = add i64 %528, -80
  %538 = add i64 %530, 11
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RCX.i2514, align 8
  %542 = shl nsw i64 %541, 2
  %543 = add i64 %542, %536
  %544 = add i64 %530, 18
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  store i32 -987654321, i32* %545, align 4
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -56
  %548 = load i64, i64* %3, align 8
  %549 = add i64 %548, 4
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %547 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RAX.i2535, align 8
  %552 = add i64 %548, 7
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i64*
  %554 = load i64, i64* %553, align 8
  store i64 %554, i64* %RAX.i2535, align 8
  %555 = add i64 %546, -80
  %556 = add i64 %548, 11
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = sext i32 %558 to i64
  store i64 %559, i64* %RCX.i2514, align 8
  %560 = shl nsw i64 %559, 2
  %561 = add i64 %560, %554
  %562 = add i64 %548, 18
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 -987654321, i32* %563, align 4
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -80
  %566 = load i64, i64* %3, align 8
  %567 = add i64 %566, 3
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = add i32 %569, 1
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX.i2535, align 8
  %572 = icmp eq i32 %569, -1
  %573 = icmp eq i32 %570, 0
  %574 = or i1 %572, %573
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %14, align 1
  %576 = and i32 %570, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %21, align 1
  %581 = xor i32 %570, %569
  %582 = lshr i32 %581, 4
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  store i8 %584, i8* %26, align 1
  %585 = zext i1 %573 to i8
  store i8 %585, i8* %29, align 1
  %586 = lshr i32 %570, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %32, align 1
  %588 = lshr i32 %569, 31
  %589 = xor i32 %586, %588
  %590 = add nuw nsw i32 %589, %586
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %38, align 1
  %593 = add i64 %566, 9
  store i64 %593, i64* %3, align 8
  store i32 %570, i32* %568, align 4
  %594 = load i64, i64* %3, align 8
  %595 = add i64 %594, -82
  store i64 %595, i64* %3, align 8
  br label %block_.L_40d89a

block_.L_40d8f1:                                  ; preds = %block_.L_40d89a
  %596 = add i64 %473, -76
  %597 = add i64 %513, 7
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  store i32 2, i32* %598, align 4
  %EDX.i1060 = bitcast %union.anon* %54 to i32*
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_40d8f8

block_.L_40d8f8:                                  ; preds = %block_.L_40e493, %block_.L_40d8f1
  %599 = phi i64 [ %6608, %block_.L_40e493 ], [ %.pre56, %block_.L_40d8f1 ]
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -76
  %602 = add i64 %599, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i2535, align 8
  %606 = add i64 %600, -12
  %607 = add i64 %599, 6
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sub i32 %604, %609
  %611 = icmp ult i32 %604, %609
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %610, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i32 %609, %604
  %619 = xor i32 %618, %610
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %26, align 1
  %623 = icmp eq i32 %610, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %29, align 1
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %32, align 1
  %627 = lshr i32 %604, 31
  %628 = lshr i32 %609, 31
  %629 = xor i32 %628, %627
  %630 = xor i32 %625, %627
  %631 = add nuw nsw i32 %630, %629
  %632 = icmp eq i32 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %38, align 1
  %634 = icmp ne i8 %626, 0
  %635 = xor i1 %634, %632
  %.demorgan111 = or i1 %623, %635
  %.v116 = select i1 %.demorgan111, i64 12, i64 2990
  %636 = add i64 %599, %.v116
  store i64 %636, i64* %3, align 8
  br i1 %.demorgan111, label %block_40d904, label %block_.L_40e4a6

block_40d904:                                     ; preds = %block_.L_40d8f8
  %637 = add i64 %600, -72
  %638 = add i64 %636, 4
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i2535, align 8
  %641 = add i64 %636, 8
  store i64 %641, i64* %3, align 8
  %642 = load i32, i32* %603, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RCX.i2514, align 8
  %644 = shl nsw i64 %643, 3
  %645 = add i64 %644, %640
  %646 = add i64 %636, 12
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %RAX.i2535, align 8
  %649 = add i64 %636, 18
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  store i32 -987654321, i32* %650, align 4
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -64
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 4
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RAX.i2535, align 8
  %657 = add i64 %651, -76
  %658 = add i64 %653, 8
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RCX.i2514, align 8
  %662 = shl nsw i64 %661, 3
  %663 = add i64 %662, %656
  %664 = add i64 %653, 12
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %RAX.i2535, align 8
  %667 = add i64 %653, 18
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  store i32 -987654321, i32* %668, align 4
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -56
  %671 = load i64, i64* %3, align 8
  %672 = add i64 %671, 4
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %670 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX.i2535, align 8
  %675 = add i64 %669, -76
  %676 = add i64 %671, 8
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = sext i32 %678 to i64
  store i64 %679, i64* %RCX.i2514, align 8
  %680 = shl nsw i64 %679, 3
  %681 = add i64 %680, %674
  %682 = add i64 %671, 12
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RAX.i2535, align 8
  %685 = add i64 %671, 18
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i32*
  store i32 -987654321, i32* %686, align 4
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -76
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, 4
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %688 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = add i32 %692, -2
  %694 = icmp ult i32 %692, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %14, align 1
  %696 = and i32 %693, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %21, align 1
  %701 = xor i32 %693, %692
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %26, align 1
  %705 = icmp eq i32 %693, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %29, align 1
  %707 = lshr i32 %693, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %32, align 1
  %709 = lshr i32 %692, 31
  %710 = xor i32 %707, %709
  %711 = add nuw nsw i32 %710, %709
  %712 = icmp eq i32 %711, 2
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %38, align 1
  %714 = icmp ne i8 %708, 0
  %715 = xor i1 %714, %712
  %716 = or i1 %705, %715
  %.v117 = select i1 %716, i64 159, i64 10
  %717 = add i64 %689, %.v117
  store i64 %717, i64* %3, align 8
  br i1 %716, label %block_.L_40d9d9, label %block_40d944

block_40d944:                                     ; preds = %block_40d904
  %718 = add i64 %687, -8
  %719 = add i64 %717, 4
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RAX.i2535, align 8
  %722 = add i64 %717, 7
  store i64 %722, i64* %3, align 8
  %723 = load i32, i32* %691, align 4
  %724 = add i32 %723, -2
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RCX.i2514, align 8
  %726 = icmp ult i32 %723, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %14, align 1
  %728 = and i32 %724, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %21, align 1
  %733 = xor i32 %724, %723
  %734 = lshr i32 %733, 4
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %26, align 1
  %737 = icmp eq i32 %724, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %29, align 1
  %739 = lshr i32 %724, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %32, align 1
  %741 = lshr i32 %723, 31
  %742 = xor i32 %739, %741
  %743 = add nuw nsw i32 %742, %741
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %38, align 1
  %746 = sext i32 %724 to i64
  store i64 %746, i64* %RDX.i2517, align 8
  %747 = add i64 %721, %746
  %748 = add i64 %717, 17
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i8*
  %750 = load i8, i8* %749, align 1
  %751 = sext i8 %750 to i64
  %752 = and i64 %751, 4294967295
  store i64 %752, i64* %RCX.i2514, align 8
  %753 = sext i8 %750 to i32
  %754 = add nsw i32 %753, -4
  %755 = icmp ult i8 %750, 4
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %14, align 1
  %757 = and i32 %754, 255
  %758 = tail call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  store i8 %761, i8* %21, align 1
  %762 = xor i32 %754, %753
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %26, align 1
  %766 = icmp eq i32 %754, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %29, align 1
  %768 = lshr i32 %754, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %32, align 1
  %770 = lshr i32 %753, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %38, align 1
  %775 = icmp ne i8 %769, 0
  %776 = xor i1 %775, %773
  %.v118 = select i1 %776, i64 26, i64 137
  %777 = add i64 %717, %.v118
  store i64 %777, i64* %3, align 8
  br i1 %776, label %block_40d95e, label %block_.L_40d9cd

block_40d95e:                                     ; preds = %block_40d944
  %778 = add i64 %777, 4
  store i64 %778, i64* %3, align 8
  %779 = load i64, i64* %720, align 8
  store i64 %779, i64* %RAX.i2535, align 8
  %780 = add i64 %777, 7
  store i64 %780, i64* %3, align 8
  %781 = load i32, i32* %691, align 4
  %782 = add i32 %781, -1
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RCX.i2514, align 8
  %784 = icmp eq i32 %781, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %14, align 1
  %786 = and i32 %782, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %21, align 1
  %791 = xor i32 %782, %781
  %792 = lshr i32 %791, 4
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  store i8 %794, i8* %26, align 1
  %795 = icmp eq i32 %782, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %29, align 1
  %797 = lshr i32 %782, 31
  %798 = trunc i32 %797 to i8
  store i8 %798, i8* %32, align 1
  %799 = lshr i32 %781, 31
  %800 = xor i32 %797, %799
  %801 = add nuw nsw i32 %800, %799
  %802 = icmp eq i32 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %38, align 1
  %804 = sext i32 %782 to i64
  store i64 %804, i64* %RDX.i2517, align 8
  %805 = add i64 %779, %804
  %806 = add i64 %777, 17
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i8*
  %808 = load i8, i8* %807, align 1
  %809 = sext i8 %808 to i64
  %810 = and i64 %809, 4294967295
  store i64 %810, i64* %RCX.i2514, align 8
  %811 = sext i8 %808 to i32
  %812 = add nsw i32 %811, -4
  %813 = icmp ult i8 %808, 4
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = and i32 %812, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %21, align 1
  %820 = xor i32 %812, %811
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %26, align 1
  %824 = icmp eq i32 %812, 0
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %29, align 1
  %826 = lshr i32 %812, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %32, align 1
  %828 = lshr i32 %811, 31
  %829 = xor i32 %826, %828
  %830 = add nuw nsw i32 %829, %828
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %38, align 1
  %833 = icmp ne i8 %827, 0
  %834 = xor i1 %833, %831
  %.v146 = select i1 %834, i64 26, i64 111
  %835 = add i64 %777, %.v146
  store i64 %835, i64* %3, align 8
  br i1 %834, label %block_40d978, label %block_.L_40d9cd

block_40d978:                                     ; preds = %block_40d95e
  %836 = add i64 %835, 4
  store i64 %836, i64* %3, align 8
  %837 = load i64, i64* %720, align 8
  store i64 %837, i64* %RAX.i2535, align 8
  %838 = add i64 %835, 8
  store i64 %838, i64* %3, align 8
  %839 = load i32, i32* %691, align 4
  %840 = sext i32 %839 to i64
  store i64 %840, i64* %RCX.i2514, align 8
  %841 = add i64 %837, %840
  %842 = add i64 %835, 12
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i8*
  %844 = load i8, i8* %843, align 1
  %845 = sext i8 %844 to i64
  %846 = and i64 %845, 4294967295
  store i64 %846, i64* %RDX.i2517, align 8
  %847 = sext i8 %844 to i32
  %848 = add nsw i32 %847, -4
  %849 = icmp ult i8 %844, 4
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %14, align 1
  %851 = and i32 %848, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i32 %848, %847
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %26, align 1
  %860 = icmp eq i32 %848, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  %862 = lshr i32 %848, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %32, align 1
  %864 = lshr i32 %847, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %38, align 1
  %869 = icmp ne i8 %863, 0
  %870 = xor i1 %869, %867
  %.v147 = select i1 %870, i64 21, i64 85
  %871 = add i64 %835, %.v147
  store i64 %871, i64* %3, align 8
  br i1 %870, label %block_40d98d, label %block_.L_40d9cd

block_40d98d:                                     ; preds = %block_40d978
  %872 = add i64 %871, 4
  store i64 %872, i64* %3, align 8
  %873 = load i64, i64* %720, align 8
  store i64 %873, i64* %RAX.i2535, align 8
  %874 = add i64 %871, 7
  store i64 %874, i64* %3, align 8
  %875 = load i32, i32* %691, align 4
  %876 = add i32 %875, -2
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RCX.i2514, align 8
  %878 = icmp ult i32 %875, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %876, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %876, %875
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %26, align 1
  %889 = icmp eq i32 %876, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %29, align 1
  %891 = lshr i32 %876, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %32, align 1
  %893 = lshr i32 %875, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %38, align 1
  %898 = sext i32 %876 to i64
  store i64 %898, i64* %RDX.i2517, align 8
  %899 = add i64 %873, %898
  %900 = add i64 %871, 17
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i8*
  %902 = load i8, i8* %901, align 1
  %.tr = sext i8 %902 to i32
  %903 = shl nsw i32 %.tr, 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RCX.i2514, align 8
  %.lobit = lshr i8 %902, 7
  store i8 %.lobit, i8* %14, align 1
  %905 = and i32 %903, 240
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %910 = icmp eq i8 %902, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %29, align 1
  %912 = lshr i32 %.tr, 27
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %915 = add i64 %871, 24
  store i64 %915, i64* %3, align 8
  %916 = load i64, i64* %720, align 8
  store i64 %916, i64* %RAX.i2535, align 8
  %917 = add i64 %871, 27
  store i64 %917, i64* %3, align 8
  %918 = load i32, i32* %691, align 4
  %919 = add i32 %918, -1
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RSI.i2511, align 8
  %921 = icmp eq i32 %918, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1
  %923 = and i32 %919, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i32 %919, %918
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %26, align 1
  %932 = icmp eq i32 %919, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %29, align 1
  %934 = lshr i32 %919, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %32, align 1
  %936 = lshr i32 %918, 31
  %937 = xor i32 %934, %936
  %938 = add nuw nsw i32 %937, %936
  %939 = icmp eq i32 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %38, align 1
  %941 = sext i32 %919 to i64
  store i64 %941, i64* %RDX.i2517, align 8
  %942 = add i64 %916, %941
  %943 = add i64 %871, 37
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i8*
  %945 = load i8, i8* %944, align 1
  %.tr35 = sext i8 %945 to i32
  %946 = shl nsw i32 %.tr35, 2
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RSI.i2511, align 8
  %948 = add nsw i32 %946, %903
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RCX.i2514, align 8
  %950 = icmp ult i32 %948, %903
  %951 = icmp ult i32 %948, %946
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %14, align 1
  %954 = and i32 %948, 252
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i32 %946, %903
  %960 = xor i32 %959, %948
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %26, align 1
  %964 = icmp eq i32 %948, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %29, align 1
  %966 = lshr i32 %948, 31
  %967 = trunc i32 %966 to i8
  store i8 %967, i8* %32, align 1
  %968 = lshr i32 %.tr, 27
  %969 = and i32 %968, 1
  %970 = lshr i32 %.tr35, 29
  %971 = and i32 %970, 1
  %972 = xor i32 %966, %969
  %973 = xor i32 %966, %971
  %974 = add nuw nsw i32 %972, %973
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %38, align 1
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -8
  %979 = add i64 %871, 46
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %RAX.i2535, align 8
  %982 = add i64 %977, -76
  %983 = add i64 %871, 50
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RDX.i2517, align 8
  %987 = add i64 %981, %986
  %988 = add i64 %871, 54
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i8*
  %990 = load i8, i8* %989, align 1
  %991 = sext i8 %990 to i64
  %992 = and i64 %991, 4294967295
  store i64 %992, i64* %RSI.i2511, align 8
  %993 = sext i8 %990 to i32
  %994 = add nsw i32 %993, %948
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RCX.i2514, align 8
  %996 = icmp ult i32 %994, %948
  %997 = icmp ult i32 %994, %993
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %14, align 1
  %1000 = and i32 %994, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i32 %993, %948
  %1006 = xor i32 %1005, %994
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %26, align 1
  %1010 = icmp eq i32 %994, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %29, align 1
  %1012 = lshr i32 %994, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %32, align 1
  %1014 = lshr i32 %993, 31
  %1015 = xor i32 %1012, %966
  %1016 = xor i32 %1012, %1014
  %1017 = add nuw nsw i32 %1015, %1016
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %38, align 1
  %1020 = add i64 %977, -88
  %1021 = add i64 %871, 59
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  store i32 %994, i32* %1022, align 4
  %1023 = load i64, i64* %3, align 8
  %1024 = add i64 %1023, 12
  store i64 %1024, i64* %3, align 8
  br label %block_.L_40d9d4

block_.L_40d9cd:                                  ; preds = %block_40d978, %block_40d95e, %block_40d944
  %1025 = phi i64 [ %871, %block_40d978 ], [ %835, %block_40d95e ], [ %777, %block_40d944 ]
  %1026 = add i64 %687, -88
  %1027 = add i64 %1025, 7
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  store i32 64, i32* %1028, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_40d9d4

block_.L_40d9d4:                                  ; preds = %block_.L_40d9cd, %block_40d98d
  %1029 = phi i64 [ %.pre57, %block_.L_40d9cd ], [ %1024, %block_40d98d ]
  %1030 = add i64 %1029, 5
  store i64 %1030, i64* %3, align 8
  %.pre58 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40d9d9

block_.L_40d9d9:                                  ; preds = %block_.L_40d9d4, %block_40d904
  %1031 = phi i64 [ %1030, %block_.L_40d9d4 ], [ %717, %block_40d904 ]
  %1032 = phi i64 [ %.pre58, %block_.L_40d9d4 ], [ %687, %block_40d904 ]
  %1033 = add i64 %1032, -80
  %1034 = add i64 %1031, 7
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 1, i32* %1035, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_40d9e0

block_.L_40d9e0:                                  ; preds = %block_.L_40e266, %block_.L_40d9d9
  %1036 = phi i64 [ %5593, %block_.L_40e266 ], [ %.pre59, %block_.L_40d9d9 ]
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -80
  %1039 = add i64 %1036, 3
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i2535, align 8
  %1043 = add i64 %1037, -24
  %1044 = add i64 %1036, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RCX.i2514, align 8
  %1047 = add i64 %1046, 136
  %1048 = add i64 %1036, 13
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = sub i32 %1041, %1050
  %1052 = icmp ult i32 %1041, %1050
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %14, align 1
  %1054 = and i32 %1051, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %21, align 1
  %1059 = xor i32 %1050, %1041
  %1060 = xor i32 %1059, %1051
  %1061 = lshr i32 %1060, 4
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  store i8 %1063, i8* %26, align 1
  %1064 = icmp eq i32 %1051, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %29, align 1
  %1066 = lshr i32 %1051, 31
  %1067 = trunc i32 %1066 to i8
  store i8 %1067, i8* %32, align 1
  %1068 = lshr i32 %1041, 31
  %1069 = lshr i32 %1050, 31
  %1070 = xor i32 %1069, %1068
  %1071 = xor i32 %1066, %1068
  %1072 = add nuw nsw i32 %1071, %1070
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %38, align 1
  %1075 = icmp ne i8 %1067, 0
  %1076 = xor i1 %1075, %1073
  %.demorgan112 = or i1 %1064, %1076
  %.v119 = select i1 %.demorgan112, i64 19, i64 2201
  %1077 = add i64 %1036, %.v119
  store i64 %1077, i64* %3, align 8
  br i1 %.demorgan112, label %block_40d9f3, label %block_.L_40e279

block_40d9f3:                                     ; preds = %block_.L_40d9e0
  %1078 = add i64 %1037, -76
  %1079 = add i64 %1077, 4
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = add i32 %1081, -2
  %1083 = icmp ult i32 %1081, 2
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %14, align 1
  %1085 = and i32 %1082, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %21, align 1
  %1090 = xor i32 %1082, %1081
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  store i8 %1093, i8* %26, align 1
  %1094 = icmp eq i32 %1082, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %29, align 1
  %1096 = lshr i32 %1082, 31
  %1097 = trunc i32 %1096 to i8
  store i8 %1097, i8* %32, align 1
  %1098 = lshr i32 %1081, 31
  %1099 = xor i32 %1096, %1098
  %1100 = add nuw nsw i32 %1099, %1098
  %1101 = icmp eq i32 %1100, 2
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %38, align 1
  %1103 = icmp ne i8 %1097, 0
  %1104 = xor i1 %1103, %1101
  %1105 = or i1 %1094, %1104
  %.v125 = select i1 %1105, i64 431, i64 10
  %1106 = add i64 %1077, %.v125
  store i64 %1106, i64* %3, align 8
  br i1 %1105, label %block_.L_40dba2, label %block_40d9fd

block_40d9fd:                                     ; preds = %block_40d9f3
  %1107 = add i64 %1037, -56
  %1108 = add i64 %1106, 4
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %RAX.i2535, align 8
  %1111 = add i64 %1106, 7
  store i64 %1111, i64* %3, align 8
  %1112 = load i32, i32* %1080, align 4
  %1113 = add i32 %1112, -3
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RCX.i2514, align 8
  %1115 = icmp ult i32 %1112, 3
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %14, align 1
  %1117 = and i32 %1113, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  %1122 = xor i32 %1113, %1112
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %26, align 1
  %1126 = icmp eq i32 %1113, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %29, align 1
  %1128 = lshr i32 %1113, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %32, align 1
  %1130 = lshr i32 %1112, 31
  %1131 = xor i32 %1128, %1130
  %1132 = add nuw nsw i32 %1131, %1130
  %1133 = icmp eq i32 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %38, align 1
  %1135 = sext i32 %1113 to i64
  store i64 %1135, i64* %RDX.i2517, align 8
  %1136 = shl nsw i64 %1135, 3
  %1137 = add i64 %1110, %1136
  %1138 = add i64 %1106, 17
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i64*
  %1140 = load i64, i64* %1139, align 8
  store i64 %1140, i64* %RAX.i2535, align 8
  %1141 = add i64 %1106, 20
  store i64 %1141, i64* %3, align 8
  %1142 = load i32, i32* %1040, align 4
  %1143 = add i32 %1142, -1
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RCX.i2514, align 8
  %1145 = icmp eq i32 %1142, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %14, align 1
  %1147 = and i32 %1143, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i32 %1143, %1142
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %26, align 1
  %1156 = icmp eq i32 %1143, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %29, align 1
  %1158 = lshr i32 %1143, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %32, align 1
  %1160 = lshr i32 %1142, 31
  %1161 = xor i32 %1158, %1160
  %1162 = add nuw nsw i32 %1161, %1160
  %1163 = icmp eq i32 %1162, 2
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %38, align 1
  %1165 = sext i32 %1143 to i64
  store i64 %1165, i64* %RDX.i2517, align 8
  %1166 = shl nsw i64 %1165, 2
  %1167 = add i64 %1140, %1166
  %1168 = add i64 %1106, 29
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RCX.i2514, align 8
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -24
  %1174 = add i64 %1106, 33
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RAX.i2535, align 8
  %1177 = add i64 %1176, 312
  %1178 = add i64 %1106, 40
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RAX.i2535, align 8
  %1181 = add i64 %1106, 43
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RAX.i2535, align 8
  %1184 = add i64 %1172, -80
  %1185 = add i64 %1106, 46
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = add i32 %1187, -1
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RSI.i2511, align 8
  %1190 = icmp eq i32 %1187, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %14, align 1
  %1192 = and i32 %1188, 255
  %1193 = tail call i32 @llvm.ctpop.i32(i32 %1192)
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  store i8 %1196, i8* %21, align 1
  %1197 = xor i32 %1188, %1187
  %1198 = lshr i32 %1197, 4
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  store i8 %1200, i8* %26, align 1
  %1201 = icmp eq i32 %1188, 0
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %29, align 1
  %1203 = lshr i32 %1188, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %32, align 1
  %1205 = lshr i32 %1187, 31
  %1206 = xor i32 %1203, %1205
  %1207 = add nuw nsw i32 %1206, %1205
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %38, align 1
  %1210 = sext i32 %1188 to i64
  store i64 %1210, i64* %RDX.i2517, align 8
  %1211 = shl nsw i64 %1210, 2
  %1212 = add i64 %1183, %1211
  %1213 = add i64 %1106, 55
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = add i32 %1215, %1170
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RCX.i2514, align 8
  %1218 = icmp ult i32 %1216, %1170
  %1219 = icmp ult i32 %1216, %1215
  %1220 = or i1 %1218, %1219
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %14, align 1
  %1222 = and i32 %1216, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %21, align 1
  %1227 = xor i32 %1215, %1170
  %1228 = xor i32 %1227, %1216
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %26, align 1
  %1232 = icmp eq i32 %1216, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1216, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  %1236 = lshr i32 %1170, 31
  %1237 = lshr i32 %1215, 31
  %1238 = xor i32 %1234, %1236
  %1239 = xor i32 %1234, %1237
  %1240 = add nuw nsw i32 %1238, %1239
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %38, align 1
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -56
  %1245 = add i64 %1106, 59
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i64*
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %RAX.i2535, align 8
  %1248 = add i64 %1243, -76
  %1249 = add i64 %1106, 63
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = sext i32 %1251 to i64
  store i64 %1252, i64* %RDX.i2517, align 8
  %1253 = shl nsw i64 %1252, 3
  %1254 = add i64 %1253, %1247
  %1255 = add i64 %1106, 67
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1254 to i64*
  %1257 = load i64, i64* %1256, align 8
  store i64 %1257, i64* %RAX.i2535, align 8
  %1258 = add i64 %1243, -80
  %1259 = add i64 %1106, 71
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = sext i32 %1261 to i64
  store i64 %1262, i64* %RDX.i2517, align 8
  %1263 = shl nsw i64 %1262, 2
  %1264 = add i64 %1263, %1257
  %1265 = add i64 %1106, 74
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  store i32 %1216, i32* %1266, align 4
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -64
  %1269 = load i64, i64* %3, align 8
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1268 to i64*
  %1272 = load i64, i64* %1271, align 8
  store i64 %1272, i64* %RAX.i2535, align 8
  %1273 = add i64 %1267, -76
  %1274 = add i64 %1269, 7
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = add i32 %1276, -3
  %1278 = zext i32 %1277 to i64
  store i64 %1278, i64* %RCX.i2514, align 8
  %1279 = icmp ult i32 %1276, 3
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %14, align 1
  %1281 = and i32 %1277, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281)
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %21, align 1
  %1286 = xor i32 %1277, %1276
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %26, align 1
  %1290 = icmp eq i32 %1277, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %29, align 1
  %1292 = lshr i32 %1277, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %32, align 1
  %1294 = lshr i32 %1276, 31
  %1295 = xor i32 %1292, %1294
  %1296 = add nuw nsw i32 %1295, %1294
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %38, align 1
  %1299 = sext i32 %1277 to i64
  store i64 %1299, i64* %RDX.i2517, align 8
  %1300 = shl nsw i64 %1299, 3
  %1301 = add i64 %1272, %1300
  %1302 = add i64 %1269, 17
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i64*
  %1304 = load i64, i64* %1303, align 8
  store i64 %1304, i64* %RAX.i2535, align 8
  %1305 = add i64 %1267, -80
  %1306 = add i64 %1269, 20
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = add i32 %1308, -1
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RCX.i2514, align 8
  %1311 = icmp eq i32 %1308, 0
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = and i32 %1309, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %21, align 1
  %1318 = xor i32 %1309, %1308
  %1319 = lshr i32 %1318, 4
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  store i8 %1321, i8* %26, align 1
  %1322 = icmp eq i32 %1309, 0
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %29, align 1
  %1324 = lshr i32 %1309, 31
  %1325 = trunc i32 %1324 to i8
  store i8 %1325, i8* %32, align 1
  %1326 = lshr i32 %1308, 31
  %1327 = xor i32 %1324, %1326
  %1328 = add nuw nsw i32 %1327, %1326
  %1329 = icmp eq i32 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %38, align 1
  %1331 = sext i32 %1309 to i64
  store i64 %1331, i64* %RDX.i2517, align 8
  %1332 = shl nsw i64 %1331, 2
  %1333 = add i64 %1304, %1332
  %1334 = add i64 %1269, 29
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RCX.i2514, align 8
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -24
  %1340 = add i64 %1269, 33
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RAX.i2535, align 8
  %1343 = add i64 %1342, 312
  %1344 = add i64 %1269, 40
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i64*
  %1346 = load i64, i64* %1345, align 8
  store i64 %1346, i64* %RAX.i2535, align 8
  %1347 = add i64 %1346, 24
  %1348 = add i64 %1269, 44
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i64 %1350, i64* %RAX.i2535, align 8
  %1351 = add i64 %1338, -80
  %1352 = add i64 %1269, 47
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = add i32 %1354, -1
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RSI.i2511, align 8
  %1357 = icmp eq i32 %1354, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %14, align 1
  %1359 = and i32 %1355, 255
  %1360 = tail call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  store i8 %1363, i8* %21, align 1
  %1364 = xor i32 %1355, %1354
  %1365 = lshr i32 %1364, 4
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  store i8 %1367, i8* %26, align 1
  %1368 = icmp eq i32 %1355, 0
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %29, align 1
  %1370 = lshr i32 %1355, 31
  %1371 = trunc i32 %1370 to i8
  store i8 %1371, i8* %32, align 1
  %1372 = lshr i32 %1354, 31
  %1373 = xor i32 %1370, %1372
  %1374 = add nuw nsw i32 %1373, %1372
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %38, align 1
  %1377 = sext i32 %1355 to i64
  store i64 %1377, i64* %RDX.i2517, align 8
  %1378 = shl nsw i64 %1377, 2
  %1379 = add i64 %1350, %1378
  %1380 = add i64 %1269, 56
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = add i32 %1382, %1336
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RCX.i2514, align 8
  %1385 = icmp ult i32 %1383, %1336
  %1386 = icmp ult i32 %1383, %1382
  %1387 = or i1 %1385, %1386
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %14, align 1
  %1389 = and i32 %1383, 255
  %1390 = tail call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  store i8 %1393, i8* %21, align 1
  %1394 = xor i32 %1382, %1336
  %1395 = xor i32 %1394, %1383
  %1396 = lshr i32 %1395, 4
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  store i8 %1398, i8* %26, align 1
  %1399 = icmp eq i32 %1383, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %29, align 1
  %1401 = lshr i32 %1383, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %32, align 1
  %1403 = lshr i32 %1336, 31
  %1404 = lshr i32 %1382, 31
  %1405 = xor i32 %1401, %1403
  %1406 = xor i32 %1401, %1404
  %1407 = add nuw nsw i32 %1405, %1406
  %1408 = icmp eq i32 %1407, 2
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %38, align 1
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -84
  %1412 = add i64 %1269, 59
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  store i32 %1383, i32* %1413, align 4
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -56
  %1416 = load i64, i64* %3, align 8
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1415 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RAX.i2535, align 8
  %1420 = add i64 %1414, -76
  %1421 = add i64 %1416, 8
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = sext i32 %1423 to i64
  store i64 %1424, i64* %RDX.i2517, align 8
  %1425 = shl nsw i64 %1424, 3
  %1426 = add i64 %1425, %1419
  %1427 = add i64 %1416, 12
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX.i2535, align 8
  %1430 = add i64 %1414, -80
  %1431 = add i64 %1416, 16
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = sext i32 %1433 to i64
  store i64 %1434, i64* %RDX.i2517, align 8
  %1435 = load i32, i32* %ECX.i2367, align 4
  %1436 = shl nsw i64 %1434, 2
  %1437 = add i64 %1429, %1436
  %1438 = add i64 %1416, 19
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = sub i32 %1435, %1440
  %1442 = icmp ult i32 %1435, %1440
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %14, align 1
  %1444 = and i32 %1441, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %21, align 1
  %1449 = xor i32 %1440, %1435
  %1450 = xor i32 %1449, %1441
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %26, align 1
  %1454 = icmp eq i32 %1441, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %29, align 1
  %1456 = lshr i32 %1441, 31
  %1457 = trunc i32 %1456 to i8
  store i8 %1457, i8* %32, align 1
  %1458 = lshr i32 %1435, 31
  %1459 = lshr i32 %1440, 31
  %1460 = xor i32 %1459, %1458
  %1461 = xor i32 %1456, %1458
  %1462 = add nuw nsw i32 %1461, %1460
  %1463 = icmp eq i32 %1462, 2
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %38, align 1
  %1465 = icmp ne i8 %1457, 0
  %1466 = xor i1 %1465, %1463
  %1467 = or i1 %1454, %1466
  %.v126 = select i1 %1467, i64 47, i64 25
  %1468 = add i64 %1416, %.v126
  store i64 %1468, i64* %3, align 8
  br i1 %1467, label %block_.L_40dab1, label %block_40da9b

block_40da9b:                                     ; preds = %block_40d9fd
  %1469 = add i64 %1414, -84
  %1470 = add i64 %1468, 3
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = zext i32 %1472 to i64
  store i64 %1473, i64* %RAX.i2535, align 8
  %1474 = add i64 %1468, 7
  store i64 %1474, i64* %3, align 8
  %1475 = load i64, i64* %1418, align 8
  store i64 %1475, i64* %RCX.i2514, align 8
  %1476 = add i64 %1468, 11
  store i64 %1476, i64* %3, align 8
  %1477 = load i32, i32* %1422, align 4
  %1478 = sext i32 %1477 to i64
  store i64 %1478, i64* %RDX.i2517, align 8
  %1479 = shl nsw i64 %1478, 3
  %1480 = add i64 %1479, %1475
  %1481 = add i64 %1468, 15
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %RCX.i2514, align 8
  %1484 = add i64 %1468, 19
  store i64 %1484, i64* %3, align 8
  %1485 = load i32, i32* %1432, align 4
  %1486 = sext i32 %1485 to i64
  store i64 %1486, i64* %RDX.i2517, align 8
  %1487 = shl nsw i64 %1486, 2
  %1488 = add i64 %1487, %1483
  %1489 = add i64 %1468, 22
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  store i32 %1472, i32* %1490, align 4
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_40dab1

block_.L_40dab1:                                  ; preds = %block_40da9b, %block_40d9fd
  %1491 = phi i64 [ %.pre61, %block_40da9b ], [ %1468, %block_40d9fd ]
  %1492 = phi i64 [ %.pre60, %block_40da9b ], [ %1414, %block_40d9fd ]
  %1493 = add i64 %1492, -48
  %1494 = add i64 %1491, 4
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RAX.i2535, align 8
  %1497 = add i64 %1492, -76
  %1498 = add i64 %1491, 7
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = add i32 %1500, -3
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RCX.i2514, align 8
  %1503 = icmp ult i32 %1500, 3
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %14, align 1
  %1505 = and i32 %1501, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %21, align 1
  %1510 = xor i32 %1501, %1500
  %1511 = lshr i32 %1510, 4
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  store i8 %1513, i8* %26, align 1
  %1514 = icmp eq i32 %1501, 0
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %29, align 1
  %1516 = lshr i32 %1501, 31
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, i8* %32, align 1
  %1518 = lshr i32 %1500, 31
  %1519 = xor i32 %1516, %1518
  %1520 = add nuw nsw i32 %1519, %1518
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %38, align 1
  %1523 = sext i32 %1501 to i64
  store i64 %1523, i64* %RDX.i2517, align 8
  %1524 = shl nsw i64 %1523, 3
  %1525 = add i64 %1496, %1524
  %1526 = add i64 %1491, 17
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i64*
  %1528 = load i64, i64* %1527, align 8
  store i64 %1528, i64* %RAX.i2535, align 8
  %1529 = add i64 %1491, 19
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RCX.i2514, align 8
  %1533 = add i64 %1492, -24
  %1534 = add i64 %1491, 23
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %RAX.i2535, align 8
  %1537 = add i64 %1536, 368
  %1538 = add i64 %1491, 30
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX.i2535, align 8
  %1541 = add i64 %1492, -80
  %1542 = add i64 %1491, 34
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = sext i32 %1544 to i64
  store i64 %1545, i64* %RDX.i2517, align 8
  %1546 = shl nsw i64 %1545, 2
  %1547 = add i64 %1540, %1546
  %1548 = add i64 %1491, 37
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = add i32 %1550, %1531
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RCX.i2514, align 8
  %1553 = icmp ult i32 %1551, %1531
  %1554 = icmp ult i32 %1551, %1550
  %1555 = or i1 %1553, %1554
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %14, align 1
  %1557 = and i32 %1551, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  %1562 = xor i32 %1550, %1531
  %1563 = xor i32 %1562, %1551
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  store i8 %1566, i8* %26, align 1
  %1567 = icmp eq i32 %1551, 0
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %29, align 1
  %1569 = lshr i32 %1551, 31
  %1570 = trunc i32 %1569 to i8
  store i8 %1570, i8* %32, align 1
  %1571 = lshr i32 %1531, 31
  %1572 = lshr i32 %1550, 31
  %1573 = xor i32 %1569, %1571
  %1574 = xor i32 %1569, %1572
  %1575 = add nuw nsw i32 %1573, %1574
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %38, align 1
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -84
  %1580 = add i64 %1491, 40
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  store i32 %1551, i32* %1581, align 4
  %1582 = load i64, i64* %RBP.i, align 8
  %1583 = add i64 %1582, -56
  %1584 = load i64, i64* %3, align 8
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1583 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RAX.i2535, align 8
  %1588 = add i64 %1582, -76
  %1589 = add i64 %1584, 8
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = sext i32 %1591 to i64
  store i64 %1592, i64* %RDX.i2517, align 8
  %1593 = shl nsw i64 %1592, 3
  %1594 = add i64 %1593, %1587
  %1595 = add i64 %1584, 12
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RAX.i2535, align 8
  %1598 = add i64 %1582, -80
  %1599 = add i64 %1584, 16
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = sext i32 %1601 to i64
  store i64 %1602, i64* %RDX.i2517, align 8
  %1603 = load i32, i32* %ECX.i2367, align 4
  %1604 = shl nsw i64 %1602, 2
  %1605 = add i64 %1597, %1604
  %1606 = add i64 %1584, 19
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = sub i32 %1603, %1608
  %1610 = icmp ult i32 %1603, %1608
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %14, align 1
  %1612 = and i32 %1609, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %21, align 1
  %1617 = xor i32 %1608, %1603
  %1618 = xor i32 %1617, %1609
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %26, align 1
  %1622 = icmp eq i32 %1609, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %29, align 1
  %1624 = lshr i32 %1609, 31
  %1625 = trunc i32 %1624 to i8
  store i8 %1625, i8* %32, align 1
  %1626 = lshr i32 %1603, 31
  %1627 = lshr i32 %1608, 31
  %1628 = xor i32 %1627, %1626
  %1629 = xor i32 %1624, %1626
  %1630 = add nuw nsw i32 %1629, %1628
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %38, align 1
  %1633 = icmp ne i8 %1625, 0
  %1634 = xor i1 %1633, %1631
  %1635 = or i1 %1622, %1634
  %.v127 = select i1 %1635, i64 47, i64 25
  %1636 = add i64 %1584, %.v127
  store i64 %1636, i64* %3, align 8
  br i1 %1635, label %block_.L_40db08, label %block_40daf2

block_40daf2:                                     ; preds = %block_.L_40dab1
  %1637 = add i64 %1582, -84
  %1638 = add i64 %1636, 3
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RAX.i2535, align 8
  %1642 = add i64 %1636, 7
  store i64 %1642, i64* %3, align 8
  %1643 = load i64, i64* %1586, align 8
  store i64 %1643, i64* %RCX.i2514, align 8
  %1644 = add i64 %1636, 11
  store i64 %1644, i64* %3, align 8
  %1645 = load i32, i32* %1590, align 4
  %1646 = sext i32 %1645 to i64
  store i64 %1646, i64* %RDX.i2517, align 8
  %1647 = shl nsw i64 %1646, 3
  %1648 = add i64 %1647, %1643
  %1649 = add i64 %1636, 15
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RCX.i2514, align 8
  %1652 = add i64 %1636, 19
  store i64 %1652, i64* %3, align 8
  %1653 = load i32, i32* %1600, align 4
  %1654 = sext i32 %1653 to i64
  store i64 %1654, i64* %RDX.i2517, align 8
  %1655 = shl nsw i64 %1654, 2
  %1656 = add i64 %1655, %1651
  %1657 = add i64 %1636, 22
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  store i32 %1640, i32* %1658, align 4
  %.pre62 = load i64, i64* %RBP.i, align 8
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_40db08

block_.L_40db08:                                  ; preds = %block_40daf2, %block_.L_40dab1
  %1659 = phi i64 [ %.pre63, %block_40daf2 ], [ %1636, %block_.L_40dab1 ]
  %1660 = phi i64 [ %.pre62, %block_40daf2 ], [ %1582, %block_.L_40dab1 ]
  %1661 = add i64 %1660, -72
  %1662 = add i64 %1659, 4
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i64*
  %1664 = load i64, i64* %1663, align 8
  store i64 %1664, i64* %RAX.i2535, align 8
  %1665 = add i64 %1660, -76
  %1666 = add i64 %1659, 7
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  %1668 = load i32, i32* %1667, align 4
  %1669 = add i32 %1668, -3
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RCX.i2514, align 8
  %1671 = icmp ult i32 %1668, 3
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %14, align 1
  %1673 = and i32 %1669, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %21, align 1
  %1678 = xor i32 %1669, %1668
  %1679 = lshr i32 %1678, 4
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %26, align 1
  %1682 = icmp eq i32 %1669, 0
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %29, align 1
  %1684 = lshr i32 %1669, 31
  %1685 = trunc i32 %1684 to i8
  store i8 %1685, i8* %32, align 1
  %1686 = lshr i32 %1668, 31
  %1687 = xor i32 %1684, %1686
  %1688 = add nuw nsw i32 %1687, %1686
  %1689 = icmp eq i32 %1688, 2
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %38, align 1
  %1691 = sext i32 %1669 to i64
  store i64 %1691, i64* %RDX.i2517, align 8
  %1692 = shl nsw i64 %1691, 3
  %1693 = add i64 %1664, %1692
  %1694 = add i64 %1659, 17
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i64*
  %1696 = load i64, i64* %1695, align 8
  store i64 %1696, i64* %RAX.i2535, align 8
  %1697 = add i64 %1660, -80
  %1698 = add i64 %1659, 20
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i32*
  %1700 = load i32, i32* %1699, align 4
  %1701 = add i32 %1700, -1
  %1702 = zext i32 %1701 to i64
  store i64 %1702, i64* %RCX.i2514, align 8
  %1703 = icmp eq i32 %1700, 0
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %14, align 1
  %1705 = and i32 %1701, 255
  %1706 = tail call i32 @llvm.ctpop.i32(i32 %1705)
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  %1709 = xor i8 %1708, 1
  store i8 %1709, i8* %21, align 1
  %1710 = xor i32 %1701, %1700
  %1711 = lshr i32 %1710, 4
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  store i8 %1713, i8* %26, align 1
  %1714 = icmp eq i32 %1701, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %29, align 1
  %1716 = lshr i32 %1701, 31
  %1717 = trunc i32 %1716 to i8
  store i8 %1717, i8* %32, align 1
  %1718 = lshr i32 %1700, 31
  %1719 = xor i32 %1716, %1718
  %1720 = add nuw nsw i32 %1719, %1718
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %38, align 1
  %1723 = sext i32 %1701 to i64
  store i64 %1723, i64* %RDX.i2517, align 8
  %1724 = shl nsw i64 %1723, 2
  %1725 = add i64 %1696, %1724
  %1726 = add i64 %1659, 29
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RCX.i2514, align 8
  %1730 = load i64, i64* %RBP.i, align 8
  %1731 = add i64 %1730, -24
  %1732 = add i64 %1659, 33
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RAX.i2535, align 8
  %1735 = add i64 %1734, 312
  %1736 = add i64 %1659, 40
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i64*
  %1738 = load i64, i64* %1737, align 8
  store i64 %1738, i64* %RAX.i2535, align 8
  %1739 = add i64 %1738, 40
  %1740 = add i64 %1659, 44
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i64*
  %1742 = load i64, i64* %1741, align 8
  store i64 %1742, i64* %RAX.i2535, align 8
  %1743 = add i64 %1730, -80
  %1744 = add i64 %1659, 47
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = add i32 %1746, -1
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RSI.i2511, align 8
  %1749 = icmp eq i32 %1746, 0
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %14, align 1
  %1751 = and i32 %1747, 255
  %1752 = tail call i32 @llvm.ctpop.i32(i32 %1751)
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = xor i8 %1754, 1
  store i8 %1755, i8* %21, align 1
  %1756 = xor i32 %1747, %1746
  %1757 = lshr i32 %1756, 4
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  store i8 %1759, i8* %26, align 1
  %1760 = icmp eq i32 %1747, 0
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %29, align 1
  %1762 = lshr i32 %1747, 31
  %1763 = trunc i32 %1762 to i8
  store i8 %1763, i8* %32, align 1
  %1764 = lshr i32 %1746, 31
  %1765 = xor i32 %1762, %1764
  %1766 = add nuw nsw i32 %1765, %1764
  %1767 = icmp eq i32 %1766, 2
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %38, align 1
  %1769 = sext i32 %1747 to i64
  store i64 %1769, i64* %RDX.i2517, align 8
  %1770 = shl nsw i64 %1769, 2
  %1771 = add i64 %1742, %1770
  %1772 = add i64 %1659, 56
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = add i32 %1774, %1728
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RCX.i2514, align 8
  %1777 = icmp ult i32 %1775, %1728
  %1778 = icmp ult i32 %1775, %1774
  %1779 = or i1 %1777, %1778
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %14, align 1
  %1781 = and i32 %1775, 255
  %1782 = tail call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  store i8 %1785, i8* %21, align 1
  %1786 = xor i32 %1774, %1728
  %1787 = xor i32 %1786, %1775
  %1788 = lshr i32 %1787, 4
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  store i8 %1790, i8* %26, align 1
  %1791 = icmp eq i32 %1775, 0
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %29, align 1
  %1793 = lshr i32 %1775, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %32, align 1
  %1795 = lshr i32 %1728, 31
  %1796 = lshr i32 %1774, 31
  %1797 = xor i32 %1793, %1795
  %1798 = xor i32 %1793, %1796
  %1799 = add nuw nsw i32 %1797, %1798
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %38, align 1
  %1802 = load i64, i64* %RBP.i, align 8
  %1803 = add i64 %1802, -84
  %1804 = add i64 %1659, 59
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  store i32 %1775, i32* %1805, align 4
  %1806 = load i64, i64* %RBP.i, align 8
  %1807 = add i64 %1806, -56
  %1808 = load i64, i64* %3, align 8
  %1809 = add i64 %1808, 4
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1807 to i64*
  %1811 = load i64, i64* %1810, align 8
  store i64 %1811, i64* %RAX.i2535, align 8
  %1812 = add i64 %1806, -76
  %1813 = add i64 %1808, 8
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = sext i32 %1815 to i64
  store i64 %1816, i64* %RDX.i2517, align 8
  %1817 = shl nsw i64 %1816, 3
  %1818 = add i64 %1817, %1811
  %1819 = add i64 %1808, 12
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %RAX.i2535, align 8
  %1822 = add i64 %1806, -80
  %1823 = add i64 %1808, 16
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = sext i32 %1825 to i64
  store i64 %1826, i64* %RDX.i2517, align 8
  %1827 = load i32, i32* %ECX.i2367, align 4
  %1828 = shl nsw i64 %1826, 2
  %1829 = add i64 %1821, %1828
  %1830 = add i64 %1808, 19
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = sub i32 %1827, %1832
  %1834 = icmp ult i32 %1827, %1832
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %14, align 1
  %1836 = and i32 %1833, 255
  %1837 = tail call i32 @llvm.ctpop.i32(i32 %1836)
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %21, align 1
  %1841 = xor i32 %1832, %1827
  %1842 = xor i32 %1841, %1833
  %1843 = lshr i32 %1842, 4
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  store i8 %1845, i8* %26, align 1
  %1846 = icmp eq i32 %1833, 0
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %29, align 1
  %1848 = lshr i32 %1833, 31
  %1849 = trunc i32 %1848 to i8
  store i8 %1849, i8* %32, align 1
  %1850 = lshr i32 %1827, 31
  %1851 = lshr i32 %1832, 31
  %1852 = xor i32 %1851, %1850
  %1853 = xor i32 %1848, %1850
  %1854 = add nuw nsw i32 %1853, %1852
  %1855 = icmp eq i32 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %38, align 1
  %1857 = icmp ne i8 %1849, 0
  %1858 = xor i1 %1857, %1855
  %1859 = or i1 %1846, %1858
  %.v128 = select i1 %1859, i64 47, i64 25
  %1860 = add i64 %1808, %.v128
  store i64 %1860, i64* %3, align 8
  br i1 %1859, label %block_.L_40db72, label %block_40db5c

block_40db5c:                                     ; preds = %block_.L_40db08
  %1861 = add i64 %1806, -84
  %1862 = add i64 %1860, 3
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i2535, align 8
  %1866 = add i64 %1860, 7
  store i64 %1866, i64* %3, align 8
  %1867 = load i64, i64* %1810, align 8
  store i64 %1867, i64* %RCX.i2514, align 8
  %1868 = add i64 %1860, 11
  store i64 %1868, i64* %3, align 8
  %1869 = load i32, i32* %1814, align 4
  %1870 = sext i32 %1869 to i64
  store i64 %1870, i64* %RDX.i2517, align 8
  %1871 = shl nsw i64 %1870, 3
  %1872 = add i64 %1871, %1867
  %1873 = add i64 %1860, 15
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i64*
  %1875 = load i64, i64* %1874, align 8
  store i64 %1875, i64* %RCX.i2514, align 8
  %1876 = add i64 %1860, 19
  store i64 %1876, i64* %3, align 8
  %1877 = load i32, i32* %1824, align 4
  %1878 = sext i32 %1877 to i64
  store i64 %1878, i64* %RDX.i2517, align 8
  %1879 = shl nsw i64 %1878, 2
  %1880 = add i64 %1879, %1875
  %1881 = add i64 %1860, 22
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  store i32 %1864, i32* %1882, align 4
  %.pre64 = load i64, i64* %RBP.i, align 8
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_40db72

block_.L_40db72:                                  ; preds = %block_40db5c, %block_.L_40db08
  %1883 = phi i64 [ %.pre65, %block_40db5c ], [ %1860, %block_.L_40db08 ]
  %1884 = phi i64 [ %.pre64, %block_40db5c ], [ %1806, %block_.L_40db08 ]
  %1885 = add i64 %1884, -24
  %1886 = add i64 %1883, 4
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i64*
  %1888 = load i64, i64* %1887, align 8
  store i64 %1888, i64* %RAX.i2535, align 8
  %1889 = add i64 %1888, 424
  %1890 = add i64 %1883, 11
  store i64 %1890, i64* %3, align 8
  %1891 = inttoptr i64 %1889 to i64*
  %1892 = load i64, i64* %1891, align 8
  store i64 %1892, i64* %RAX.i2535, align 8
  %1893 = add i64 %1884, -88
  %1894 = add i64 %1883, 15
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = sext i32 %1896 to i64
  store i64 %1897, i64* %RCX.i2514, align 8
  %1898 = shl nsw i64 %1897, 3
  %1899 = add i64 %1898, %1892
  %1900 = add i64 %1883, 19
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i64*
  %1902 = load i64, i64* %1901, align 8
  store i64 %1902, i64* %RAX.i2535, align 8
  %1903 = add i64 %1884, -80
  %1904 = add i64 %1883, 23
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = sext i32 %1906 to i64
  store i64 %1907, i64* %RCX.i2514, align 8
  %1908 = shl nsw i64 %1907, 2
  %1909 = add i64 %1908, %1902
  %1910 = add i64 %1883, 26
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i32*
  %1912 = load i32, i32* %1911, align 4
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RDX.i2517, align 8
  %1914 = add i64 %1884, -56
  %1915 = add i64 %1883, 30
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i64*
  %1917 = load i64, i64* %1916, align 8
  store i64 %1917, i64* %RAX.i2535, align 8
  %1918 = add i64 %1884, -76
  %1919 = add i64 %1883, 34
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i32*
  %1921 = load i32, i32* %1920, align 4
  %1922 = sext i32 %1921 to i64
  store i64 %1922, i64* %RCX.i2514, align 8
  %1923 = shl nsw i64 %1922, 3
  %1924 = add i64 %1923, %1917
  %1925 = add i64 %1883, 38
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i64*
  %1927 = load i64, i64* %1926, align 8
  store i64 %1927, i64* %RAX.i2535, align 8
  %1928 = add i64 %1883, 42
  store i64 %1928, i64* %3, align 8
  %1929 = load i32, i32* %1905, align 4
  %1930 = sext i32 %1929 to i64
  store i64 %1930, i64* %RCX.i2514, align 8
  %1931 = shl nsw i64 %1930, 2
  %1932 = add i64 %1927, %1931
  %1933 = add i64 %1883, 45
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = add i32 %1935, %1912
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RDX.i2517, align 8
  %1938 = icmp ult i32 %1936, %1912
  %1939 = icmp ult i32 %1936, %1935
  %1940 = or i1 %1938, %1939
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %14, align 1
  %1942 = and i32 %1936, 255
  %1943 = tail call i32 @llvm.ctpop.i32(i32 %1942)
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = xor i8 %1945, 1
  store i8 %1946, i8* %21, align 1
  %1947 = xor i32 %1935, %1912
  %1948 = xor i32 %1947, %1936
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %26, align 1
  %1952 = icmp eq i32 %1936, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %29, align 1
  %1954 = lshr i32 %1936, 31
  %1955 = trunc i32 %1954 to i8
  store i8 %1955, i8* %32, align 1
  %1956 = lshr i32 %1912, 31
  %1957 = lshr i32 %1935, 31
  %1958 = xor i32 %1954, %1956
  %1959 = xor i32 %1954, %1957
  %1960 = add nuw nsw i32 %1958, %1959
  %1961 = icmp eq i32 %1960, 2
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %38, align 1
  %1963 = add i64 %1883, 48
  store i64 %1963, i64* %3, align 8
  store i32 %1936, i32* %1934, align 4
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_40dba2

block_.L_40dba2:                                  ; preds = %block_.L_40db72, %block_40d9f3
  %1964 = phi i64 [ %.pre67, %block_.L_40db72 ], [ %1106, %block_40d9f3 ]
  %1965 = phi i64 [ %.pre66, %block_.L_40db72 ], [ %1037, %block_40d9f3 ]
  %1966 = add i64 %1965, -56
  %1967 = add i64 %1964, 4
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i64*
  %1969 = load i64, i64* %1968, align 8
  store i64 %1969, i64* %RAX.i2535, align 8
  %1970 = add i64 %1965, -76
  %1971 = add i64 %1964, 7
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = add i32 %1973, -2
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i2514, align 8
  %1976 = icmp ult i32 %1973, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %14, align 1
  %1978 = and i32 %1974, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %21, align 1
  %1983 = xor i32 %1974, %1973
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %26, align 1
  %1987 = icmp eq i32 %1974, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %29, align 1
  %1989 = lshr i32 %1974, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %32, align 1
  %1991 = lshr i32 %1973, 31
  %1992 = xor i32 %1989, %1991
  %1993 = add nuw nsw i32 %1992, %1991
  %1994 = icmp eq i32 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %38, align 1
  %1996 = sext i32 %1974 to i64
  store i64 %1996, i64* %RDX.i2517, align 8
  %1997 = shl nsw i64 %1996, 3
  %1998 = add i64 %1969, %1997
  %1999 = add i64 %1964, 17
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i64*
  %2001 = load i64, i64* %2000, align 8
  store i64 %2001, i64* %RAX.i2535, align 8
  %2002 = add i64 %1965, -80
  %2003 = add i64 %1964, 20
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = add i32 %2005, -1
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RCX.i2514, align 8
  %2008 = icmp eq i32 %2005, 0
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %14, align 1
  %2010 = and i32 %2006, 255
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %21, align 1
  %2015 = xor i32 %2006, %2005
  %2016 = lshr i32 %2015, 4
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  store i8 %2018, i8* %26, align 1
  %2019 = icmp eq i32 %2006, 0
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %29, align 1
  %2021 = lshr i32 %2006, 31
  %2022 = trunc i32 %2021 to i8
  store i8 %2022, i8* %32, align 1
  %2023 = lshr i32 %2005, 31
  %2024 = xor i32 %2021, %2023
  %2025 = add nuw nsw i32 %2024, %2023
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %38, align 1
  %2028 = sext i32 %2006 to i64
  store i64 %2028, i64* %RDX.i2517, align 8
  %2029 = shl nsw i64 %2028, 2
  %2030 = add i64 %2001, %2029
  %2031 = add i64 %1964, 29
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RCX.i2514, align 8
  %2035 = load i64, i64* %RBP.i, align 8
  %2036 = add i64 %2035, -24
  %2037 = add i64 %1964, 33
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %RAX.i2535, align 8
  %2040 = add i64 %2039, 312
  %2041 = add i64 %1964, 40
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i64*
  %2043 = load i64, i64* %2042, align 8
  store i64 %2043, i64* %RAX.i2535, align 8
  %2044 = add i64 %1964, 43
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %RAX.i2535, align 8
  %2047 = add i64 %2035, -80
  %2048 = add i64 %1964, 46
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = add i32 %2050, -1
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RSI.i2511, align 8
  %2053 = icmp eq i32 %2050, 0
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %14, align 1
  %2055 = and i32 %2051, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %21, align 1
  %2060 = xor i32 %2051, %2050
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %26, align 1
  %2064 = icmp eq i32 %2051, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %29, align 1
  %2066 = lshr i32 %2051, 31
  %2067 = trunc i32 %2066 to i8
  store i8 %2067, i8* %32, align 1
  %2068 = lshr i32 %2050, 31
  %2069 = xor i32 %2066, %2068
  %2070 = add nuw nsw i32 %2069, %2068
  %2071 = icmp eq i32 %2070, 2
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %38, align 1
  %2073 = sext i32 %2051 to i64
  store i64 %2073, i64* %RDX.i2517, align 8
  %2074 = shl nsw i64 %2073, 2
  %2075 = add i64 %2046, %2074
  %2076 = add i64 %1964, 55
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = add i32 %2078, %2033
  %2080 = zext i32 %2079 to i64
  store i64 %2080, i64* %RCX.i2514, align 8
  %2081 = icmp ult i32 %2079, %2033
  %2082 = icmp ult i32 %2079, %2078
  %2083 = or i1 %2081, %2082
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %14, align 1
  %2085 = and i32 %2079, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %21, align 1
  %2090 = xor i32 %2078, %2033
  %2091 = xor i32 %2090, %2079
  %2092 = lshr i32 %2091, 4
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  store i8 %2094, i8* %26, align 1
  %2095 = icmp eq i32 %2079, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %29, align 1
  %2097 = lshr i32 %2079, 31
  %2098 = trunc i32 %2097 to i8
  store i8 %2098, i8* %32, align 1
  %2099 = lshr i32 %2033, 31
  %2100 = lshr i32 %2078, 31
  %2101 = xor i32 %2097, %2099
  %2102 = xor i32 %2097, %2100
  %2103 = add nuw nsw i32 %2101, %2102
  %2104 = icmp eq i32 %2103, 2
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %38, align 1
  %2106 = load i64, i64* %RBP.i, align 8
  %2107 = add i64 %2106, -24
  %2108 = add i64 %1964, 59
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i64*
  %2110 = load i64, i64* %2109, align 8
  store i64 %2110, i64* %RAX.i2535, align 8
  %2111 = add i64 %2110, 440
  %2112 = add i64 %1964, 65
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = add i32 %2114, %2079
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RCX.i2514, align 8
  %2117 = icmp ult i32 %2115, %2079
  %2118 = icmp ult i32 %2115, %2114
  %2119 = or i1 %2117, %2118
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %14, align 1
  %2121 = and i32 %2115, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %21, align 1
  %2126 = xor i32 %2114, %2079
  %2127 = xor i32 %2126, %2115
  %2128 = lshr i32 %2127, 4
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %26, align 1
  %2131 = icmp eq i32 %2115, 0
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %29, align 1
  %2133 = lshr i32 %2115, 31
  %2134 = trunc i32 %2133 to i8
  store i8 %2134, i8* %32, align 1
  %2135 = lshr i32 %2114, 31
  %2136 = xor i32 %2133, %2097
  %2137 = xor i32 %2133, %2135
  %2138 = add nuw nsw i32 %2136, %2137
  %2139 = icmp eq i32 %2138, 2
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %38, align 1
  %2141 = add i64 %2106, -84
  %2142 = add i64 %1964, 68
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  store i32 %2115, i32* %2143, align 4
  %2144 = load i64, i64* %RBP.i, align 8
  %2145 = add i64 %2144, -56
  %2146 = load i64, i64* %3, align 8
  %2147 = add i64 %2146, 4
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2145 to i64*
  %2149 = load i64, i64* %2148, align 8
  store i64 %2149, i64* %RAX.i2535, align 8
  %2150 = add i64 %2144, -76
  %2151 = add i64 %2146, 8
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = sext i32 %2153 to i64
  store i64 %2154, i64* %RDX.i2517, align 8
  %2155 = shl nsw i64 %2154, 3
  %2156 = add i64 %2155, %2149
  %2157 = add i64 %2146, 12
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i64*
  %2159 = load i64, i64* %2158, align 8
  store i64 %2159, i64* %RAX.i2535, align 8
  %2160 = add i64 %2144, -80
  %2161 = add i64 %2146, 16
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = sext i32 %2163 to i64
  store i64 %2164, i64* %RDX.i2517, align 8
  %2165 = load i32, i32* %ECX.i2367, align 4
  %2166 = shl nsw i64 %2164, 2
  %2167 = add i64 %2159, %2166
  %2168 = add i64 %2146, 19
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = sub i32 %2165, %2170
  %2172 = icmp ult i32 %2165, %2170
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %14, align 1
  %2174 = and i32 %2171, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %21, align 1
  %2179 = xor i32 %2170, %2165
  %2180 = xor i32 %2179, %2171
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %26, align 1
  %2184 = icmp eq i32 %2171, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %29, align 1
  %2186 = lshr i32 %2171, 31
  %2187 = trunc i32 %2186 to i8
  store i8 %2187, i8* %32, align 1
  %2188 = lshr i32 %2165, 31
  %2189 = lshr i32 %2170, 31
  %2190 = xor i32 %2189, %2188
  %2191 = xor i32 %2186, %2188
  %2192 = add nuw nsw i32 %2191, %2190
  %2193 = icmp eq i32 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %38, align 1
  %2195 = icmp ne i8 %2187, 0
  %2196 = xor i1 %2195, %2193
  %2197 = or i1 %2184, %2196
  %.v129 = select i1 %2197, i64 47, i64 25
  %2198 = add i64 %2146, %.v129
  store i64 %2198, i64* %3, align 8
  br i1 %2197, label %block_.L_40dc15, label %block_40dbff

block_40dbff:                                     ; preds = %block_.L_40dba2
  %2199 = add i64 %2144, -84
  %2200 = add i64 %2198, 3
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i32*
  %2202 = load i32, i32* %2201, align 4
  %2203 = zext i32 %2202 to i64
  store i64 %2203, i64* %RAX.i2535, align 8
  %2204 = add i64 %2198, 7
  store i64 %2204, i64* %3, align 8
  %2205 = load i64, i64* %2148, align 8
  store i64 %2205, i64* %RCX.i2514, align 8
  %2206 = add i64 %2198, 11
  store i64 %2206, i64* %3, align 8
  %2207 = load i32, i32* %2152, align 4
  %2208 = sext i32 %2207 to i64
  store i64 %2208, i64* %RDX.i2517, align 8
  %2209 = shl nsw i64 %2208, 3
  %2210 = add i64 %2209, %2205
  %2211 = add i64 %2198, 15
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i64*
  %2213 = load i64, i64* %2212, align 8
  store i64 %2213, i64* %RCX.i2514, align 8
  %2214 = add i64 %2198, 19
  store i64 %2214, i64* %3, align 8
  %2215 = load i32, i32* %2162, align 4
  %2216 = sext i32 %2215 to i64
  store i64 %2216, i64* %RDX.i2517, align 8
  %2217 = shl nsw i64 %2216, 2
  %2218 = add i64 %2217, %2213
  %2219 = add i64 %2198, 22
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i32*
  store i32 %2202, i32* %2220, align 4
  %.pre68 = load i64, i64* %RBP.i, align 8
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_40dc15

block_.L_40dc15:                                  ; preds = %block_40dbff, %block_.L_40dba2
  %2221 = phi i64 [ %.pre69, %block_40dbff ], [ %2198, %block_.L_40dba2 ]
  %2222 = phi i64 [ %.pre68, %block_40dbff ], [ %2144, %block_.L_40dba2 ]
  %2223 = add i64 %2222, -64
  %2224 = add i64 %2221, 4
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i64*
  %2226 = load i64, i64* %2225, align 8
  store i64 %2226, i64* %RAX.i2535, align 8
  %2227 = add i64 %2222, -76
  %2228 = add i64 %2221, 7
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i32*
  %2230 = load i32, i32* %2229, align 4
  %2231 = add i32 %2230, -2
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RCX.i2514, align 8
  %2233 = icmp ult i32 %2230, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %14, align 1
  %2235 = and i32 %2231, 255
  %2236 = tail call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  store i8 %2239, i8* %21, align 1
  %2240 = xor i32 %2231, %2230
  %2241 = lshr i32 %2240, 4
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  store i8 %2243, i8* %26, align 1
  %2244 = icmp eq i32 %2231, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %29, align 1
  %2246 = lshr i32 %2231, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %32, align 1
  %2248 = lshr i32 %2230, 31
  %2249 = xor i32 %2246, %2248
  %2250 = add nuw nsw i32 %2249, %2248
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %38, align 1
  %2253 = sext i32 %2231 to i64
  store i64 %2253, i64* %RDX.i2517, align 8
  %2254 = shl nsw i64 %2253, 3
  %2255 = add i64 %2226, %2254
  %2256 = add i64 %2221, 17
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i64*
  %2258 = load i64, i64* %2257, align 8
  store i64 %2258, i64* %RAX.i2535, align 8
  %2259 = add i64 %2222, -80
  %2260 = add i64 %2221, 20
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = add i32 %2262, -1
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %RCX.i2514, align 8
  %2265 = icmp eq i32 %2262, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %14, align 1
  %2267 = and i32 %2263, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %21, align 1
  %2272 = xor i32 %2263, %2262
  %2273 = lshr i32 %2272, 4
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  store i8 %2275, i8* %26, align 1
  %2276 = icmp eq i32 %2263, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %29, align 1
  %2278 = lshr i32 %2263, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %32, align 1
  %2280 = lshr i32 %2262, 31
  %2281 = xor i32 %2278, %2280
  %2282 = add nuw nsw i32 %2281, %2280
  %2283 = icmp eq i32 %2282, 2
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %38, align 1
  %2285 = sext i32 %2263 to i64
  store i64 %2285, i64* %RDX.i2517, align 8
  %2286 = shl nsw i64 %2285, 2
  %2287 = add i64 %2258, %2286
  %2288 = add i64 %2221, 29
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %RCX.i2514, align 8
  %2292 = load i64, i64* %RBP.i, align 8
  %2293 = add i64 %2292, -24
  %2294 = add i64 %2221, 33
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i64*
  %2296 = load i64, i64* %2295, align 8
  store i64 %2296, i64* %RAX.i2535, align 8
  %2297 = add i64 %2296, 312
  %2298 = add i64 %2221, 40
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i64*
  %2300 = load i64, i64* %2299, align 8
  store i64 %2300, i64* %RAX.i2535, align 8
  %2301 = add i64 %2300, 24
  %2302 = add i64 %2221, 44
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i64*
  %2304 = load i64, i64* %2303, align 8
  store i64 %2304, i64* %RAX.i2535, align 8
  %2305 = add i64 %2292, -80
  %2306 = add i64 %2221, 47
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = add i32 %2308, -1
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RSI.i2511, align 8
  %2311 = icmp eq i32 %2308, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %14, align 1
  %2313 = and i32 %2309, 255
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %21, align 1
  %2318 = xor i32 %2309, %2308
  %2319 = lshr i32 %2318, 4
  %2320 = trunc i32 %2319 to i8
  %2321 = and i8 %2320, 1
  store i8 %2321, i8* %26, align 1
  %2322 = icmp eq i32 %2309, 0
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %29, align 1
  %2324 = lshr i32 %2309, 31
  %2325 = trunc i32 %2324 to i8
  store i8 %2325, i8* %32, align 1
  %2326 = lshr i32 %2308, 31
  %2327 = xor i32 %2324, %2326
  %2328 = add nuw nsw i32 %2327, %2326
  %2329 = icmp eq i32 %2328, 2
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %38, align 1
  %2331 = sext i32 %2309 to i64
  store i64 %2331, i64* %RDX.i2517, align 8
  %2332 = shl nsw i64 %2331, 2
  %2333 = add i64 %2304, %2332
  %2334 = add i64 %2221, 56
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = add i32 %2336, %2290
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RCX.i2514, align 8
  %2339 = icmp ult i32 %2337, %2290
  %2340 = icmp ult i32 %2337, %2336
  %2341 = or i1 %2339, %2340
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %14, align 1
  %2343 = and i32 %2337, 255
  %2344 = tail call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  store i8 %2347, i8* %21, align 1
  %2348 = xor i32 %2336, %2290
  %2349 = xor i32 %2348, %2337
  %2350 = lshr i32 %2349, 4
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  store i8 %2352, i8* %26, align 1
  %2353 = icmp eq i32 %2337, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %29, align 1
  %2355 = lshr i32 %2337, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %32, align 1
  %2357 = lshr i32 %2290, 31
  %2358 = lshr i32 %2336, 31
  %2359 = xor i32 %2355, %2357
  %2360 = xor i32 %2355, %2358
  %2361 = add nuw nsw i32 %2359, %2360
  %2362 = icmp eq i32 %2361, 2
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %38, align 1
  %2364 = load i64, i64* %RBP.i, align 8
  %2365 = add i64 %2364, -24
  %2366 = add i64 %2221, 60
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i64*
  %2368 = load i64, i64* %2367, align 8
  store i64 %2368, i64* %RAX.i2535, align 8
  %2369 = add i64 %2368, 440
  %2370 = add i64 %2221, 66
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = add i32 %2372, %2337
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RCX.i2514, align 8
  %2375 = icmp ult i32 %2373, %2337
  %2376 = icmp ult i32 %2373, %2372
  %2377 = or i1 %2375, %2376
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %14, align 1
  %2379 = and i32 %2373, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  %2384 = xor i32 %2372, %2337
  %2385 = xor i32 %2384, %2373
  %2386 = lshr i32 %2385, 4
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  store i8 %2388, i8* %26, align 1
  %2389 = icmp eq i32 %2373, 0
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %29, align 1
  %2391 = lshr i32 %2373, 31
  %2392 = trunc i32 %2391 to i8
  store i8 %2392, i8* %32, align 1
  %2393 = lshr i32 %2372, 31
  %2394 = xor i32 %2391, %2355
  %2395 = xor i32 %2391, %2393
  %2396 = add nuw nsw i32 %2394, %2395
  %2397 = icmp eq i32 %2396, 2
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %38, align 1
  %2399 = add i64 %2364, -84
  %2400 = add i64 %2221, 69
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  store i32 %2373, i32* %2401, align 4
  %2402 = load i64, i64* %RBP.i, align 8
  %2403 = add i64 %2402, -56
  %2404 = load i64, i64* %3, align 8
  %2405 = add i64 %2404, 4
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2403 to i64*
  %2407 = load i64, i64* %2406, align 8
  store i64 %2407, i64* %RAX.i2535, align 8
  %2408 = add i64 %2402, -76
  %2409 = add i64 %2404, 8
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i32*
  %2411 = load i32, i32* %2410, align 4
  %2412 = sext i32 %2411 to i64
  store i64 %2412, i64* %RDX.i2517, align 8
  %2413 = shl nsw i64 %2412, 3
  %2414 = add i64 %2413, %2407
  %2415 = add i64 %2404, 12
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i64*
  %2417 = load i64, i64* %2416, align 8
  store i64 %2417, i64* %RAX.i2535, align 8
  %2418 = add i64 %2402, -80
  %2419 = add i64 %2404, 16
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i32*
  %2421 = load i32, i32* %2420, align 4
  %2422 = sext i32 %2421 to i64
  store i64 %2422, i64* %RDX.i2517, align 8
  %2423 = load i32, i32* %ECX.i2367, align 4
  %2424 = shl nsw i64 %2422, 2
  %2425 = add i64 %2417, %2424
  %2426 = add i64 %2404, 19
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = sub i32 %2423, %2428
  %2430 = icmp ult i32 %2423, %2428
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %14, align 1
  %2432 = and i32 %2429, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %21, align 1
  %2437 = xor i32 %2428, %2423
  %2438 = xor i32 %2437, %2429
  %2439 = lshr i32 %2438, 4
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  store i8 %2441, i8* %26, align 1
  %2442 = icmp eq i32 %2429, 0
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %29, align 1
  %2444 = lshr i32 %2429, 31
  %2445 = trunc i32 %2444 to i8
  store i8 %2445, i8* %32, align 1
  %2446 = lshr i32 %2423, 31
  %2447 = lshr i32 %2428, 31
  %2448 = xor i32 %2447, %2446
  %2449 = xor i32 %2444, %2446
  %2450 = add nuw nsw i32 %2449, %2448
  %2451 = icmp eq i32 %2450, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %38, align 1
  %2453 = icmp ne i8 %2445, 0
  %2454 = xor i1 %2453, %2451
  %2455 = or i1 %2442, %2454
  %.v130 = select i1 %2455, i64 47, i64 25
  %2456 = add i64 %2404, %.v130
  store i64 %2456, i64* %3, align 8
  br i1 %2455, label %block_.L_40dc89, label %block_40dc73

block_40dc73:                                     ; preds = %block_.L_40dc15
  %2457 = add i64 %2402, -84
  %2458 = add i64 %2456, 3
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RAX.i2535, align 8
  %2462 = add i64 %2456, 7
  store i64 %2462, i64* %3, align 8
  %2463 = load i64, i64* %2406, align 8
  store i64 %2463, i64* %RCX.i2514, align 8
  %2464 = add i64 %2456, 11
  store i64 %2464, i64* %3, align 8
  %2465 = load i32, i32* %2410, align 4
  %2466 = sext i32 %2465 to i64
  store i64 %2466, i64* %RDX.i2517, align 8
  %2467 = shl nsw i64 %2466, 3
  %2468 = add i64 %2467, %2463
  %2469 = add i64 %2456, 15
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i64*
  %2471 = load i64, i64* %2470, align 8
  store i64 %2471, i64* %RCX.i2514, align 8
  %2472 = add i64 %2456, 19
  store i64 %2472, i64* %3, align 8
  %2473 = load i32, i32* %2420, align 4
  %2474 = sext i32 %2473 to i64
  store i64 %2474, i64* %RDX.i2517, align 8
  %2475 = shl nsw i64 %2474, 2
  %2476 = add i64 %2475, %2471
  %2477 = add i64 %2456, 22
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  store i32 %2460, i32* %2478, align 4
  %.pre70 = load i64, i64* %RBP.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_40dc89

block_.L_40dc89:                                  ; preds = %block_40dc73, %block_.L_40dc15
  %2479 = phi i64 [ %.pre71, %block_40dc73 ], [ %2456, %block_.L_40dc15 ]
  %2480 = phi i64 [ %.pre70, %block_40dc73 ], [ %2402, %block_.L_40dc15 ]
  %2481 = add i64 %2480, -48
  %2482 = add i64 %2479, 4
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i64*
  %2484 = load i64, i64* %2483, align 8
  store i64 %2484, i64* %RAX.i2535, align 8
  %2485 = add i64 %2480, -76
  %2486 = add i64 %2479, 7
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = add i32 %2488, -2
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RCX.i2514, align 8
  %2491 = icmp ult i32 %2488, 2
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %14, align 1
  %2493 = and i32 %2489, 255
  %2494 = tail call i32 @llvm.ctpop.i32(i32 %2493)
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  %2497 = xor i8 %2496, 1
  store i8 %2497, i8* %21, align 1
  %2498 = xor i32 %2489, %2488
  %2499 = lshr i32 %2498, 4
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %26, align 1
  %2502 = icmp eq i32 %2489, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %29, align 1
  %2504 = lshr i32 %2489, 31
  %2505 = trunc i32 %2504 to i8
  store i8 %2505, i8* %32, align 1
  %2506 = lshr i32 %2488, 31
  %2507 = xor i32 %2504, %2506
  %2508 = add nuw nsw i32 %2507, %2506
  %2509 = icmp eq i32 %2508, 2
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %38, align 1
  %2511 = sext i32 %2489 to i64
  store i64 %2511, i64* %RDX.i2517, align 8
  %2512 = shl nsw i64 %2511, 3
  %2513 = add i64 %2484, %2512
  %2514 = add i64 %2479, 17
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i64*
  %2516 = load i64, i64* %2515, align 8
  store i64 %2516, i64* %RAX.i2535, align 8
  %2517 = add i64 %2479, 19
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to i32*
  %2519 = load i32, i32* %2518, align 4
  %2520 = zext i32 %2519 to i64
  store i64 %2520, i64* %RCX.i2514, align 8
  %2521 = add i64 %2480, -24
  %2522 = add i64 %2479, 23
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i64*
  %2524 = load i64, i64* %2523, align 8
  store i64 %2524, i64* %RAX.i2535, align 8
  %2525 = add i64 %2524, 368
  %2526 = add i64 %2479, 30
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i64*
  %2528 = load i64, i64* %2527, align 8
  store i64 %2528, i64* %RAX.i2535, align 8
  %2529 = add i64 %2480, -80
  %2530 = add i64 %2479, 34
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = sext i32 %2532 to i64
  store i64 %2533, i64* %RDX.i2517, align 8
  %2534 = shl nsw i64 %2533, 2
  %2535 = add i64 %2528, %2534
  %2536 = add i64 %2479, 37
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i32*
  %2538 = load i32, i32* %2537, align 4
  %2539 = add i32 %2538, %2519
  %2540 = zext i32 %2539 to i64
  store i64 %2540, i64* %RCX.i2514, align 8
  %2541 = icmp ult i32 %2539, %2519
  %2542 = icmp ult i32 %2539, %2538
  %2543 = or i1 %2541, %2542
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %14, align 1
  %2545 = and i32 %2539, 255
  %2546 = tail call i32 @llvm.ctpop.i32(i32 %2545)
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  store i8 %2549, i8* %21, align 1
  %2550 = xor i32 %2538, %2519
  %2551 = xor i32 %2550, %2539
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %26, align 1
  %2555 = icmp eq i32 %2539, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %29, align 1
  %2557 = lshr i32 %2539, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %32, align 1
  %2559 = lshr i32 %2519, 31
  %2560 = lshr i32 %2538, 31
  %2561 = xor i32 %2557, %2559
  %2562 = xor i32 %2557, %2560
  %2563 = add nuw nsw i32 %2561, %2562
  %2564 = icmp eq i32 %2563, 2
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %38, align 1
  %2566 = load i64, i64* %RBP.i, align 8
  %2567 = add i64 %2566, -24
  %2568 = add i64 %2479, 41
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i64*
  %2570 = load i64, i64* %2569, align 8
  store i64 %2570, i64* %RAX.i2535, align 8
  %2571 = add i64 %2570, 440
  %2572 = add i64 %2479, 47
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = add i32 %2574, %2539
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RCX.i2514, align 8
  %2577 = icmp ult i32 %2575, %2539
  %2578 = icmp ult i32 %2575, %2574
  %2579 = or i1 %2577, %2578
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %14, align 1
  %2581 = and i32 %2575, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %21, align 1
  %2586 = xor i32 %2574, %2539
  %2587 = xor i32 %2586, %2575
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %26, align 1
  %2591 = icmp eq i32 %2575, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %29, align 1
  %2593 = lshr i32 %2575, 31
  %2594 = trunc i32 %2593 to i8
  store i8 %2594, i8* %32, align 1
  %2595 = lshr i32 %2574, 31
  %2596 = xor i32 %2593, %2557
  %2597 = xor i32 %2593, %2595
  %2598 = add nuw nsw i32 %2596, %2597
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %38, align 1
  %2601 = add i64 %2566, -84
  %2602 = add i64 %2479, 50
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  store i32 %2575, i32* %2603, align 4
  %2604 = load i64, i64* %RBP.i, align 8
  %2605 = add i64 %2604, -56
  %2606 = load i64, i64* %3, align 8
  %2607 = add i64 %2606, 4
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2605 to i64*
  %2609 = load i64, i64* %2608, align 8
  store i64 %2609, i64* %RAX.i2535, align 8
  %2610 = add i64 %2604, -76
  %2611 = add i64 %2606, 8
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i32*
  %2613 = load i32, i32* %2612, align 4
  %2614 = sext i32 %2613 to i64
  store i64 %2614, i64* %RDX.i2517, align 8
  %2615 = shl nsw i64 %2614, 3
  %2616 = add i64 %2615, %2609
  %2617 = add i64 %2606, 12
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i64*
  %2619 = load i64, i64* %2618, align 8
  store i64 %2619, i64* %RAX.i2535, align 8
  %2620 = add i64 %2604, -80
  %2621 = add i64 %2606, 16
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = sext i32 %2623 to i64
  store i64 %2624, i64* %RDX.i2517, align 8
  %2625 = load i32, i32* %ECX.i2367, align 4
  %2626 = shl nsw i64 %2624, 2
  %2627 = add i64 %2619, %2626
  %2628 = add i64 %2606, 19
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i32*
  %2630 = load i32, i32* %2629, align 4
  %2631 = sub i32 %2625, %2630
  %2632 = icmp ult i32 %2625, %2630
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %14, align 1
  %2634 = and i32 %2631, 255
  %2635 = tail call i32 @llvm.ctpop.i32(i32 %2634)
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = xor i8 %2637, 1
  store i8 %2638, i8* %21, align 1
  %2639 = xor i32 %2630, %2625
  %2640 = xor i32 %2639, %2631
  %2641 = lshr i32 %2640, 4
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  store i8 %2643, i8* %26, align 1
  %2644 = icmp eq i32 %2631, 0
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %29, align 1
  %2646 = lshr i32 %2631, 31
  %2647 = trunc i32 %2646 to i8
  store i8 %2647, i8* %32, align 1
  %2648 = lshr i32 %2625, 31
  %2649 = lshr i32 %2630, 31
  %2650 = xor i32 %2649, %2648
  %2651 = xor i32 %2646, %2648
  %2652 = add nuw nsw i32 %2651, %2650
  %2653 = icmp eq i32 %2652, 2
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %38, align 1
  %2655 = icmp ne i8 %2647, 0
  %2656 = xor i1 %2655, %2653
  %2657 = or i1 %2644, %2656
  %.v131 = select i1 %2657, i64 47, i64 25
  %2658 = add i64 %2606, %.v131
  store i64 %2658, i64* %3, align 8
  br i1 %2657, label %block_.L_40dcea, label %block_40dcd4

block_40dcd4:                                     ; preds = %block_.L_40dc89
  %2659 = add i64 %2604, -84
  %2660 = add i64 %2658, 3
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RAX.i2535, align 8
  %2664 = add i64 %2658, 7
  store i64 %2664, i64* %3, align 8
  %2665 = load i64, i64* %2608, align 8
  store i64 %2665, i64* %RCX.i2514, align 8
  %2666 = add i64 %2658, 11
  store i64 %2666, i64* %3, align 8
  %2667 = load i32, i32* %2612, align 4
  %2668 = sext i32 %2667 to i64
  store i64 %2668, i64* %RDX.i2517, align 8
  %2669 = shl nsw i64 %2668, 3
  %2670 = add i64 %2669, %2665
  %2671 = add i64 %2658, 15
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i64*
  %2673 = load i64, i64* %2672, align 8
  store i64 %2673, i64* %RCX.i2514, align 8
  %2674 = add i64 %2658, 19
  store i64 %2674, i64* %3, align 8
  %2675 = load i32, i32* %2622, align 4
  %2676 = sext i32 %2675 to i64
  store i64 %2676, i64* %RDX.i2517, align 8
  %2677 = shl nsw i64 %2676, 2
  %2678 = add i64 %2677, %2673
  %2679 = add i64 %2658, 22
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  store i32 %2662, i32* %2680, align 4
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_40dcea

block_.L_40dcea:                                  ; preds = %block_40dcd4, %block_.L_40dc89
  %2681 = phi i64 [ %.pre73, %block_40dcd4 ], [ %2658, %block_.L_40dc89 ]
  %2682 = phi i64 [ %.pre72, %block_40dcd4 ], [ %2604, %block_.L_40dc89 ]
  %2683 = add i64 %2682, -72
  %2684 = add i64 %2681, 4
  store i64 %2684, i64* %3, align 8
  %2685 = inttoptr i64 %2683 to i64*
  %2686 = load i64, i64* %2685, align 8
  store i64 %2686, i64* %RAX.i2535, align 8
  %2687 = add i64 %2682, -76
  %2688 = add i64 %2681, 7
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = add i32 %2690, -2
  %2692 = zext i32 %2691 to i64
  store i64 %2692, i64* %RCX.i2514, align 8
  %2693 = icmp ult i32 %2690, 2
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %14, align 1
  %2695 = and i32 %2691, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %21, align 1
  %2700 = xor i32 %2691, %2690
  %2701 = lshr i32 %2700, 4
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  store i8 %2703, i8* %26, align 1
  %2704 = icmp eq i32 %2691, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %29, align 1
  %2706 = lshr i32 %2691, 31
  %2707 = trunc i32 %2706 to i8
  store i8 %2707, i8* %32, align 1
  %2708 = lshr i32 %2690, 31
  %2709 = xor i32 %2706, %2708
  %2710 = add nuw nsw i32 %2709, %2708
  %2711 = icmp eq i32 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %38, align 1
  %2713 = sext i32 %2691 to i64
  store i64 %2713, i64* %RDX.i2517, align 8
  %2714 = shl nsw i64 %2713, 3
  %2715 = add i64 %2686, %2714
  %2716 = add i64 %2681, 17
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RAX.i2535, align 8
  %2719 = add i64 %2682, -80
  %2720 = add i64 %2681, 20
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = add i32 %2722, -1
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RCX.i2514, align 8
  %2725 = icmp eq i32 %2722, 0
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %14, align 1
  %2727 = and i32 %2723, 255
  %2728 = tail call i32 @llvm.ctpop.i32(i32 %2727)
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  store i8 %2731, i8* %21, align 1
  %2732 = xor i32 %2723, %2722
  %2733 = lshr i32 %2732, 4
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  store i8 %2735, i8* %26, align 1
  %2736 = icmp eq i32 %2723, 0
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %29, align 1
  %2738 = lshr i32 %2723, 31
  %2739 = trunc i32 %2738 to i8
  store i8 %2739, i8* %32, align 1
  %2740 = lshr i32 %2722, 31
  %2741 = xor i32 %2738, %2740
  %2742 = add nuw nsw i32 %2741, %2740
  %2743 = icmp eq i32 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %38, align 1
  %2745 = sext i32 %2723 to i64
  store i64 %2745, i64* %RDX.i2517, align 8
  %2746 = shl nsw i64 %2745, 2
  %2747 = add i64 %2718, %2746
  %2748 = add i64 %2681, 29
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RCX.i2514, align 8
  %2752 = load i64, i64* %RBP.i, align 8
  %2753 = add i64 %2752, -24
  %2754 = add i64 %2681, 33
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RAX.i2535, align 8
  %2757 = add i64 %2756, 312
  %2758 = add i64 %2681, 40
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i64*
  %2760 = load i64, i64* %2759, align 8
  store i64 %2760, i64* %RAX.i2535, align 8
  %2761 = add i64 %2760, 40
  %2762 = add i64 %2681, 44
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i64*
  %2764 = load i64, i64* %2763, align 8
  store i64 %2764, i64* %RAX.i2535, align 8
  %2765 = add i64 %2752, -80
  %2766 = add i64 %2681, 47
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2765 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = add i32 %2768, -1
  %2770 = zext i32 %2769 to i64
  store i64 %2770, i64* %RSI.i2511, align 8
  %2771 = icmp eq i32 %2768, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %14, align 1
  %2773 = and i32 %2769, 255
  %2774 = tail call i32 @llvm.ctpop.i32(i32 %2773)
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = xor i8 %2776, 1
  store i8 %2777, i8* %21, align 1
  %2778 = xor i32 %2769, %2768
  %2779 = lshr i32 %2778, 4
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %26, align 1
  %2782 = icmp eq i32 %2769, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %29, align 1
  %2784 = lshr i32 %2769, 31
  %2785 = trunc i32 %2784 to i8
  store i8 %2785, i8* %32, align 1
  %2786 = lshr i32 %2768, 31
  %2787 = xor i32 %2784, %2786
  %2788 = add nuw nsw i32 %2787, %2786
  %2789 = icmp eq i32 %2788, 2
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %38, align 1
  %2791 = sext i32 %2769 to i64
  store i64 %2791, i64* %RDX.i2517, align 8
  %2792 = shl nsw i64 %2791, 2
  %2793 = add i64 %2764, %2792
  %2794 = add i64 %2681, 56
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2793 to i32*
  %2796 = load i32, i32* %2795, align 4
  %2797 = add i32 %2796, %2750
  %2798 = zext i32 %2797 to i64
  store i64 %2798, i64* %RCX.i2514, align 8
  %2799 = icmp ult i32 %2797, %2750
  %2800 = icmp ult i32 %2797, %2796
  %2801 = or i1 %2799, %2800
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %14, align 1
  %2803 = and i32 %2797, 255
  %2804 = tail call i32 @llvm.ctpop.i32(i32 %2803)
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = xor i8 %2806, 1
  store i8 %2807, i8* %21, align 1
  %2808 = xor i32 %2796, %2750
  %2809 = xor i32 %2808, %2797
  %2810 = lshr i32 %2809, 4
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  store i8 %2812, i8* %26, align 1
  %2813 = icmp eq i32 %2797, 0
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %29, align 1
  %2815 = lshr i32 %2797, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %32, align 1
  %2817 = lshr i32 %2750, 31
  %2818 = lshr i32 %2796, 31
  %2819 = xor i32 %2815, %2817
  %2820 = xor i32 %2815, %2818
  %2821 = add nuw nsw i32 %2819, %2820
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %38, align 1
  %2824 = load i64, i64* %RBP.i, align 8
  %2825 = add i64 %2824, -24
  %2826 = add i64 %2681, 60
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i64*
  %2828 = load i64, i64* %2827, align 8
  store i64 %2828, i64* %RAX.i2535, align 8
  %2829 = add i64 %2828, 440
  %2830 = add i64 %2681, 66
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i32*
  %2832 = load i32, i32* %2831, align 4
  %2833 = add i32 %2832, %2797
  %2834 = zext i32 %2833 to i64
  store i64 %2834, i64* %RCX.i2514, align 8
  %2835 = icmp ult i32 %2833, %2797
  %2836 = icmp ult i32 %2833, %2832
  %2837 = or i1 %2835, %2836
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %14, align 1
  %2839 = and i32 %2833, 255
  %2840 = tail call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  store i8 %2843, i8* %21, align 1
  %2844 = xor i32 %2832, %2797
  %2845 = xor i32 %2844, %2833
  %2846 = lshr i32 %2845, 4
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  store i8 %2848, i8* %26, align 1
  %2849 = icmp eq i32 %2833, 0
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %29, align 1
  %2851 = lshr i32 %2833, 31
  %2852 = trunc i32 %2851 to i8
  store i8 %2852, i8* %32, align 1
  %2853 = lshr i32 %2832, 31
  %2854 = xor i32 %2851, %2815
  %2855 = xor i32 %2851, %2853
  %2856 = add nuw nsw i32 %2854, %2855
  %2857 = icmp eq i32 %2856, 2
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %38, align 1
  %2859 = add i64 %2824, -84
  %2860 = add i64 %2681, 69
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  store i32 %2833, i32* %2861, align 4
  %2862 = load i64, i64* %RBP.i, align 8
  %2863 = add i64 %2862, -56
  %2864 = load i64, i64* %3, align 8
  %2865 = add i64 %2864, 4
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2863 to i64*
  %2867 = load i64, i64* %2866, align 8
  store i64 %2867, i64* %RAX.i2535, align 8
  %2868 = add i64 %2862, -76
  %2869 = add i64 %2864, 8
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = sext i32 %2871 to i64
  store i64 %2872, i64* %RDX.i2517, align 8
  %2873 = shl nsw i64 %2872, 3
  %2874 = add i64 %2873, %2867
  %2875 = add i64 %2864, 12
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  %2877 = load i64, i64* %2876, align 8
  store i64 %2877, i64* %RAX.i2535, align 8
  %2878 = add i64 %2862, -80
  %2879 = add i64 %2864, 16
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = sext i32 %2881 to i64
  store i64 %2882, i64* %RDX.i2517, align 8
  %2883 = load i32, i32* %ECX.i2367, align 4
  %2884 = shl nsw i64 %2882, 2
  %2885 = add i64 %2877, %2884
  %2886 = add i64 %2864, 19
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i32*
  %2888 = load i32, i32* %2887, align 4
  %2889 = sub i32 %2883, %2888
  %2890 = icmp ult i32 %2883, %2888
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %14, align 1
  %2892 = and i32 %2889, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %21, align 1
  %2897 = xor i32 %2888, %2883
  %2898 = xor i32 %2897, %2889
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %26, align 1
  %2902 = icmp eq i32 %2889, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %29, align 1
  %2904 = lshr i32 %2889, 31
  %2905 = trunc i32 %2904 to i8
  store i8 %2905, i8* %32, align 1
  %2906 = lshr i32 %2883, 31
  %2907 = lshr i32 %2888, 31
  %2908 = xor i32 %2907, %2906
  %2909 = xor i32 %2904, %2906
  %2910 = add nuw nsw i32 %2909, %2908
  %2911 = icmp eq i32 %2910, 2
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %38, align 1
  %2913 = icmp ne i8 %2905, 0
  %2914 = xor i1 %2913, %2911
  %2915 = or i1 %2902, %2914
  %.v132 = select i1 %2915, i64 47, i64 25
  %2916 = add i64 %2864, %.v132
  store i64 %2916, i64* %3, align 8
  br i1 %2915, label %block_.L_40dd5e, label %block_40dd48

block_40dd48:                                     ; preds = %block_.L_40dcea
  %2917 = add i64 %2862, -84
  %2918 = add i64 %2916, 3
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i32*
  %2920 = load i32, i32* %2919, align 4
  %2921 = zext i32 %2920 to i64
  store i64 %2921, i64* %RAX.i2535, align 8
  %2922 = add i64 %2916, 7
  store i64 %2922, i64* %3, align 8
  %2923 = load i64, i64* %2866, align 8
  store i64 %2923, i64* %RCX.i2514, align 8
  %2924 = add i64 %2916, 11
  store i64 %2924, i64* %3, align 8
  %2925 = load i32, i32* %2870, align 4
  %2926 = sext i32 %2925 to i64
  store i64 %2926, i64* %RDX.i2517, align 8
  %2927 = shl nsw i64 %2926, 3
  %2928 = add i64 %2927, %2923
  %2929 = add i64 %2916, 15
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RCX.i2514, align 8
  %2932 = add i64 %2916, 19
  store i64 %2932, i64* %3, align 8
  %2933 = load i32, i32* %2880, align 4
  %2934 = sext i32 %2933 to i64
  store i64 %2934, i64* %RDX.i2517, align 8
  %2935 = shl nsw i64 %2934, 2
  %2936 = add i64 %2935, %2931
  %2937 = add i64 %2916, 22
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  store i32 %2920, i32* %2938, align 4
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_40dd5e

block_.L_40dd5e:                                  ; preds = %block_40dd48, %block_.L_40dcea
  %2939 = phi i64 [ %.pre75, %block_40dd48 ], [ %2916, %block_.L_40dcea ]
  %2940 = phi i64 [ %.pre74, %block_40dd48 ], [ %2862, %block_.L_40dcea ]
  %2941 = add i64 %2940, -76
  %2942 = add i64 %2939, 4
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = add i32 %2944, -3
  %2946 = icmp ult i32 %2944, 3
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %14, align 1
  %2948 = and i32 %2945, 255
  %2949 = tail call i32 @llvm.ctpop.i32(i32 %2948)
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  %2952 = xor i8 %2951, 1
  store i8 %2952, i8* %21, align 1
  %2953 = xor i32 %2945, %2944
  %2954 = lshr i32 %2953, 4
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  store i8 %2956, i8* %26, align 1
  %2957 = icmp eq i32 %2945, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %29, align 1
  %2959 = lshr i32 %2945, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %32, align 1
  %2961 = lshr i32 %2944, 31
  %2962 = xor i32 %2959, %2961
  %2963 = add nuw nsw i32 %2962, %2961
  %2964 = icmp eq i32 %2963, 2
  %2965 = zext i1 %2964 to i8
  store i8 %2965, i8* %38, align 1
  %2966 = icmp ne i8 %2960, 0
  %2967 = xor i1 %2966, %2964
  %2968 = or i1 %2957, %2967
  %.v133 = select i1 %2968, i64 459, i64 10
  %2969 = add i64 %2939, %.v133
  store i64 %2969, i64* %3, align 8
  br i1 %2968, label %block_.L_40df29, label %block_40dd68

block_40dd68:                                     ; preds = %block_.L_40dd5e
  %2970 = add i64 %2940, -56
  %2971 = add i64 %2969, 4
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i64*
  %2973 = load i64, i64* %2972, align 8
  store i64 %2973, i64* %RAX.i2535, align 8
  %2974 = add i64 %2969, 7
  store i64 %2974, i64* %3, align 8
  %2975 = load i32, i32* %2943, align 4
  %2976 = add i32 %2975, -4
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RCX.i2514, align 8
  %2978 = icmp ult i32 %2975, 4
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %14, align 1
  %2980 = and i32 %2976, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  store i8 %2984, i8* %21, align 1
  %2985 = xor i32 %2976, %2975
  %2986 = lshr i32 %2985, 4
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  store i8 %2988, i8* %26, align 1
  %2989 = icmp eq i32 %2976, 0
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %29, align 1
  %2991 = lshr i32 %2976, 31
  %2992 = trunc i32 %2991 to i8
  store i8 %2992, i8* %32, align 1
  %2993 = lshr i32 %2975, 31
  %2994 = xor i32 %2991, %2993
  %2995 = add nuw nsw i32 %2994, %2993
  %2996 = icmp eq i32 %2995, 2
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %38, align 1
  %2998 = sext i32 %2976 to i64
  store i64 %2998, i64* %RDX.i2517, align 8
  %2999 = shl nsw i64 %2998, 3
  %3000 = add i64 %2973, %2999
  %3001 = add i64 %2969, 17
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %3000 to i64*
  %3003 = load i64, i64* %3002, align 8
  store i64 %3003, i64* %RAX.i2535, align 8
  %3004 = add i64 %2940, -80
  %3005 = add i64 %2969, 20
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = add i32 %3007, -1
  %3009 = zext i32 %3008 to i64
  store i64 %3009, i64* %RCX.i2514, align 8
  %3010 = icmp eq i32 %3007, 0
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %14, align 1
  %3012 = and i32 %3008, 255
  %3013 = tail call i32 @llvm.ctpop.i32(i32 %3012)
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  %3016 = xor i8 %3015, 1
  store i8 %3016, i8* %21, align 1
  %3017 = xor i32 %3008, %3007
  %3018 = lshr i32 %3017, 4
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  store i8 %3020, i8* %26, align 1
  %3021 = icmp eq i32 %3008, 0
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %29, align 1
  %3023 = lshr i32 %3008, 31
  %3024 = trunc i32 %3023 to i8
  store i8 %3024, i8* %32, align 1
  %3025 = lshr i32 %3007, 31
  %3026 = xor i32 %3023, %3025
  %3027 = add nuw nsw i32 %3026, %3025
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %38, align 1
  %3030 = sext i32 %3008 to i64
  store i64 %3030, i64* %RDX.i2517, align 8
  %3031 = shl nsw i64 %3030, 2
  %3032 = add i64 %3003, %3031
  %3033 = add i64 %2969, 29
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i32*
  %3035 = load i32, i32* %3034, align 4
  %3036 = zext i32 %3035 to i64
  store i64 %3036, i64* %RCX.i2514, align 8
  %3037 = load i64, i64* %RBP.i, align 8
  %3038 = add i64 %3037, -24
  %3039 = add i64 %2969, 33
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i64*
  %3041 = load i64, i64* %3040, align 8
  store i64 %3041, i64* %RAX.i2535, align 8
  %3042 = add i64 %3041, 312
  %3043 = add i64 %2969, 40
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %RAX.i2535, align 8
  %3046 = add i64 %2969, 43
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3045 to i64*
  %3048 = load i64, i64* %3047, align 8
  store i64 %3048, i64* %RAX.i2535, align 8
  %3049 = add i64 %3037, -80
  %3050 = add i64 %2969, 46
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  %3052 = load i32, i32* %3051, align 4
  %3053 = add i32 %3052, -1
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RSI.i2511, align 8
  %3055 = icmp eq i32 %3052, 0
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %14, align 1
  %3057 = and i32 %3053, 255
  %3058 = tail call i32 @llvm.ctpop.i32(i32 %3057)
  %3059 = trunc i32 %3058 to i8
  %3060 = and i8 %3059, 1
  %3061 = xor i8 %3060, 1
  store i8 %3061, i8* %21, align 1
  %3062 = xor i32 %3053, %3052
  %3063 = lshr i32 %3062, 4
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  store i8 %3065, i8* %26, align 1
  %3066 = icmp eq i32 %3053, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %29, align 1
  %3068 = lshr i32 %3053, 31
  %3069 = trunc i32 %3068 to i8
  store i8 %3069, i8* %32, align 1
  %3070 = lshr i32 %3052, 31
  %3071 = xor i32 %3068, %3070
  %3072 = add nuw nsw i32 %3071, %3070
  %3073 = icmp eq i32 %3072, 2
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %38, align 1
  %3075 = sext i32 %3053 to i64
  store i64 %3075, i64* %RDX.i2517, align 8
  %3076 = shl nsw i64 %3075, 2
  %3077 = add i64 %3048, %3076
  %3078 = add i64 %2969, 55
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i32*
  %3080 = load i32, i32* %3079, align 4
  %3081 = add i32 %3080, %3035
  %3082 = zext i32 %3081 to i64
  store i64 %3082, i64* %RCX.i2514, align 8
  %3083 = icmp ult i32 %3081, %3035
  %3084 = icmp ult i32 %3081, %3080
  %3085 = or i1 %3083, %3084
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %14, align 1
  %3087 = and i32 %3081, 255
  %3088 = tail call i32 @llvm.ctpop.i32(i32 %3087)
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  %3091 = xor i8 %3090, 1
  store i8 %3091, i8* %21, align 1
  %3092 = xor i32 %3080, %3035
  %3093 = xor i32 %3092, %3081
  %3094 = lshr i32 %3093, 4
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  store i8 %3096, i8* %26, align 1
  %3097 = icmp eq i32 %3081, 0
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %29, align 1
  %3099 = lshr i32 %3081, 31
  %3100 = trunc i32 %3099 to i8
  store i8 %3100, i8* %32, align 1
  %3101 = lshr i32 %3035, 31
  %3102 = lshr i32 %3080, 31
  %3103 = xor i32 %3099, %3101
  %3104 = xor i32 %3099, %3102
  %3105 = add nuw nsw i32 %3103, %3104
  %3106 = icmp eq i32 %3105, 2
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %38, align 1
  %3108 = load i64, i64* %RBP.i, align 8
  %3109 = add i64 %3108, -24
  %3110 = add i64 %2969, 59
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3109 to i64*
  %3112 = load i64, i64* %3111, align 8
  store i64 %3112, i64* %RAX.i2535, align 8
  %3113 = add i64 %3112, 444
  %3114 = add i64 %2969, 65
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i32*
  %3116 = load i32, i32* %3115, align 4
  %3117 = add i32 %3116, %3081
  %3118 = zext i32 %3117 to i64
  store i64 %3118, i64* %RCX.i2514, align 8
  %3119 = icmp ult i32 %3117, %3081
  %3120 = icmp ult i32 %3117, %3116
  %3121 = or i1 %3119, %3120
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %14, align 1
  %3123 = and i32 %3117, 255
  %3124 = tail call i32 @llvm.ctpop.i32(i32 %3123)
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  %3127 = xor i8 %3126, 1
  store i8 %3127, i8* %21, align 1
  %3128 = xor i32 %3116, %3081
  %3129 = xor i32 %3128, %3117
  %3130 = lshr i32 %3129, 4
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  store i8 %3132, i8* %26, align 1
  %3133 = icmp eq i32 %3117, 0
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %29, align 1
  %3135 = lshr i32 %3117, 31
  %3136 = trunc i32 %3135 to i8
  store i8 %3136, i8* %32, align 1
  %3137 = lshr i32 %3116, 31
  %3138 = xor i32 %3135, %3099
  %3139 = xor i32 %3135, %3137
  %3140 = add nuw nsw i32 %3138, %3139
  %3141 = icmp eq i32 %3140, 2
  %3142 = zext i1 %3141 to i8
  store i8 %3142, i8* %38, align 1
  %3143 = add i64 %3108, -84
  %3144 = add i64 %2969, 68
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to i32*
  store i32 %3117, i32* %3145, align 4
  %3146 = load i64, i64* %RBP.i, align 8
  %3147 = add i64 %3146, -56
  %3148 = load i64, i64* %3, align 8
  %3149 = add i64 %3148, 4
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3147 to i64*
  %3151 = load i64, i64* %3150, align 8
  store i64 %3151, i64* %RAX.i2535, align 8
  %3152 = add i64 %3146, -76
  %3153 = add i64 %3148, 8
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3152 to i32*
  %3155 = load i32, i32* %3154, align 4
  %3156 = sext i32 %3155 to i64
  store i64 %3156, i64* %RDX.i2517, align 8
  %3157 = shl nsw i64 %3156, 3
  %3158 = add i64 %3157, %3151
  %3159 = add i64 %3148, 12
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3158 to i64*
  %3161 = load i64, i64* %3160, align 8
  store i64 %3161, i64* %RAX.i2535, align 8
  %3162 = add i64 %3146, -80
  %3163 = add i64 %3148, 16
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = sext i32 %3165 to i64
  store i64 %3166, i64* %RDX.i2517, align 8
  %3167 = load i32, i32* %ECX.i2367, align 4
  %3168 = shl nsw i64 %3166, 2
  %3169 = add i64 %3161, %3168
  %3170 = add i64 %3148, 19
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to i32*
  %3172 = load i32, i32* %3171, align 4
  %3173 = sub i32 %3167, %3172
  %3174 = icmp ult i32 %3167, %3172
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %14, align 1
  %3176 = and i32 %3173, 255
  %3177 = tail call i32 @llvm.ctpop.i32(i32 %3176)
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  %3180 = xor i8 %3179, 1
  store i8 %3180, i8* %21, align 1
  %3181 = xor i32 %3172, %3167
  %3182 = xor i32 %3181, %3173
  %3183 = lshr i32 %3182, 4
  %3184 = trunc i32 %3183 to i8
  %3185 = and i8 %3184, 1
  store i8 %3185, i8* %26, align 1
  %3186 = icmp eq i32 %3173, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %29, align 1
  %3188 = lshr i32 %3173, 31
  %3189 = trunc i32 %3188 to i8
  store i8 %3189, i8* %32, align 1
  %3190 = lshr i32 %3167, 31
  %3191 = lshr i32 %3172, 31
  %3192 = xor i32 %3191, %3190
  %3193 = xor i32 %3188, %3190
  %3194 = add nuw nsw i32 %3193, %3192
  %3195 = icmp eq i32 %3194, 2
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %38, align 1
  %3197 = icmp ne i8 %3189, 0
  %3198 = xor i1 %3197, %3195
  %3199 = or i1 %3186, %3198
  %.v134 = select i1 %3199, i64 47, i64 25
  %3200 = add i64 %3148, %.v134
  store i64 %3200, i64* %3, align 8
  br i1 %3199, label %block_.L_40dddb, label %block_40ddc5

block_40ddc5:                                     ; preds = %block_40dd68
  %3201 = add i64 %3146, -84
  %3202 = add i64 %3200, 3
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i32*
  %3204 = load i32, i32* %3203, align 4
  %3205 = zext i32 %3204 to i64
  store i64 %3205, i64* %RAX.i2535, align 8
  %3206 = add i64 %3200, 7
  store i64 %3206, i64* %3, align 8
  %3207 = load i64, i64* %3150, align 8
  store i64 %3207, i64* %RCX.i2514, align 8
  %3208 = add i64 %3200, 11
  store i64 %3208, i64* %3, align 8
  %3209 = load i32, i32* %3154, align 4
  %3210 = sext i32 %3209 to i64
  store i64 %3210, i64* %RDX.i2517, align 8
  %3211 = shl nsw i64 %3210, 3
  %3212 = add i64 %3211, %3207
  %3213 = add i64 %3200, 15
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i64*
  %3215 = load i64, i64* %3214, align 8
  store i64 %3215, i64* %RCX.i2514, align 8
  %3216 = add i64 %3200, 19
  store i64 %3216, i64* %3, align 8
  %3217 = load i32, i32* %3164, align 4
  %3218 = sext i32 %3217 to i64
  store i64 %3218, i64* %RDX.i2517, align 8
  %3219 = shl nsw i64 %3218, 2
  %3220 = add i64 %3219, %3215
  %3221 = add i64 %3200, 22
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i32*
  store i32 %3204, i32* %3222, align 4
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_40dddb

block_.L_40dddb:                                  ; preds = %block_40ddc5, %block_40dd68
  %3223 = phi i64 [ %.pre77, %block_40ddc5 ], [ %3200, %block_40dd68 ]
  %3224 = phi i64 [ %.pre76, %block_40ddc5 ], [ %3146, %block_40dd68 ]
  %3225 = add i64 %3224, -64
  %3226 = add i64 %3223, 4
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to i64*
  %3228 = load i64, i64* %3227, align 8
  store i64 %3228, i64* %RAX.i2535, align 8
  %3229 = add i64 %3224, -76
  %3230 = add i64 %3223, 7
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = add i32 %3232, -4
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RCX.i2514, align 8
  %3235 = icmp ult i32 %3232, 4
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %14, align 1
  %3237 = and i32 %3233, 255
  %3238 = tail call i32 @llvm.ctpop.i32(i32 %3237)
  %3239 = trunc i32 %3238 to i8
  %3240 = and i8 %3239, 1
  %3241 = xor i8 %3240, 1
  store i8 %3241, i8* %21, align 1
  %3242 = xor i32 %3233, %3232
  %3243 = lshr i32 %3242, 4
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  store i8 %3245, i8* %26, align 1
  %3246 = icmp eq i32 %3233, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %29, align 1
  %3248 = lshr i32 %3233, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %32, align 1
  %3250 = lshr i32 %3232, 31
  %3251 = xor i32 %3248, %3250
  %3252 = add nuw nsw i32 %3251, %3250
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %38, align 1
  %3255 = sext i32 %3233 to i64
  store i64 %3255, i64* %RDX.i2517, align 8
  %3256 = shl nsw i64 %3255, 3
  %3257 = add i64 %3228, %3256
  %3258 = add i64 %3223, 17
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i64*
  %3260 = load i64, i64* %3259, align 8
  store i64 %3260, i64* %RAX.i2535, align 8
  %3261 = add i64 %3224, -80
  %3262 = add i64 %3223, 20
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i32*
  %3264 = load i32, i32* %3263, align 4
  %3265 = add i32 %3264, -1
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RCX.i2514, align 8
  %3267 = icmp eq i32 %3264, 0
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %14, align 1
  %3269 = and i32 %3265, 255
  %3270 = tail call i32 @llvm.ctpop.i32(i32 %3269)
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  %3273 = xor i8 %3272, 1
  store i8 %3273, i8* %21, align 1
  %3274 = xor i32 %3265, %3264
  %3275 = lshr i32 %3274, 4
  %3276 = trunc i32 %3275 to i8
  %3277 = and i8 %3276, 1
  store i8 %3277, i8* %26, align 1
  %3278 = icmp eq i32 %3265, 0
  %3279 = zext i1 %3278 to i8
  store i8 %3279, i8* %29, align 1
  %3280 = lshr i32 %3265, 31
  %3281 = trunc i32 %3280 to i8
  store i8 %3281, i8* %32, align 1
  %3282 = lshr i32 %3264, 31
  %3283 = xor i32 %3280, %3282
  %3284 = add nuw nsw i32 %3283, %3282
  %3285 = icmp eq i32 %3284, 2
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %38, align 1
  %3287 = sext i32 %3265 to i64
  store i64 %3287, i64* %RDX.i2517, align 8
  %3288 = shl nsw i64 %3287, 2
  %3289 = add i64 %3260, %3288
  %3290 = add i64 %3223, 29
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to i32*
  %3292 = load i32, i32* %3291, align 4
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RCX.i2514, align 8
  %3294 = load i64, i64* %RBP.i, align 8
  %3295 = add i64 %3294, -24
  %3296 = add i64 %3223, 33
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i64*
  %3298 = load i64, i64* %3297, align 8
  store i64 %3298, i64* %RAX.i2535, align 8
  %3299 = add i64 %3298, 312
  %3300 = add i64 %3223, 40
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i64*
  %3302 = load i64, i64* %3301, align 8
  store i64 %3302, i64* %RAX.i2535, align 8
  %3303 = add i64 %3302, 24
  %3304 = add i64 %3223, 44
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i64*
  %3306 = load i64, i64* %3305, align 8
  store i64 %3306, i64* %RAX.i2535, align 8
  %3307 = add i64 %3294, -80
  %3308 = add i64 %3223, 47
  store i64 %3308, i64* %3, align 8
  %3309 = inttoptr i64 %3307 to i32*
  %3310 = load i32, i32* %3309, align 4
  %3311 = add i32 %3310, -1
  %3312 = zext i32 %3311 to i64
  store i64 %3312, i64* %RSI.i2511, align 8
  %3313 = icmp eq i32 %3310, 0
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %14, align 1
  %3315 = and i32 %3311, 255
  %3316 = tail call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  store i8 %3319, i8* %21, align 1
  %3320 = xor i32 %3311, %3310
  %3321 = lshr i32 %3320, 4
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  store i8 %3323, i8* %26, align 1
  %3324 = icmp eq i32 %3311, 0
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %29, align 1
  %3326 = lshr i32 %3311, 31
  %3327 = trunc i32 %3326 to i8
  store i8 %3327, i8* %32, align 1
  %3328 = lshr i32 %3310, 31
  %3329 = xor i32 %3326, %3328
  %3330 = add nuw nsw i32 %3329, %3328
  %3331 = icmp eq i32 %3330, 2
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %38, align 1
  %3333 = sext i32 %3311 to i64
  store i64 %3333, i64* %RDX.i2517, align 8
  %3334 = shl nsw i64 %3333, 2
  %3335 = add i64 %3306, %3334
  %3336 = add i64 %3223, 56
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = add i32 %3338, %3292
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RCX.i2514, align 8
  %3341 = icmp ult i32 %3339, %3292
  %3342 = icmp ult i32 %3339, %3338
  %3343 = or i1 %3341, %3342
  %3344 = zext i1 %3343 to i8
  store i8 %3344, i8* %14, align 1
  %3345 = and i32 %3339, 255
  %3346 = tail call i32 @llvm.ctpop.i32(i32 %3345)
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %21, align 1
  %3350 = xor i32 %3338, %3292
  %3351 = xor i32 %3350, %3339
  %3352 = lshr i32 %3351, 4
  %3353 = trunc i32 %3352 to i8
  %3354 = and i8 %3353, 1
  store i8 %3354, i8* %26, align 1
  %3355 = icmp eq i32 %3339, 0
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %29, align 1
  %3357 = lshr i32 %3339, 31
  %3358 = trunc i32 %3357 to i8
  store i8 %3358, i8* %32, align 1
  %3359 = lshr i32 %3292, 31
  %3360 = lshr i32 %3338, 31
  %3361 = xor i32 %3357, %3359
  %3362 = xor i32 %3357, %3360
  %3363 = add nuw nsw i32 %3361, %3362
  %3364 = icmp eq i32 %3363, 2
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %38, align 1
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -24
  %3368 = add i64 %3223, 60
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i64*
  %3370 = load i64, i64* %3369, align 8
  store i64 %3370, i64* %RAX.i2535, align 8
  %3371 = add i64 %3370, 444
  %3372 = add i64 %3223, 66
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3371 to i32*
  %3374 = load i32, i32* %3373, align 4
  %3375 = add i32 %3374, %3339
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i2514, align 8
  %3377 = icmp ult i32 %3375, %3339
  %3378 = icmp ult i32 %3375, %3374
  %3379 = or i1 %3377, %3378
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %14, align 1
  %3381 = and i32 %3375, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %21, align 1
  %3386 = xor i32 %3374, %3339
  %3387 = xor i32 %3386, %3375
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1
  %3391 = icmp eq i32 %3375, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1
  %3393 = lshr i32 %3375, 31
  %3394 = trunc i32 %3393 to i8
  store i8 %3394, i8* %32, align 1
  %3395 = lshr i32 %3374, 31
  %3396 = xor i32 %3393, %3357
  %3397 = xor i32 %3393, %3395
  %3398 = add nuw nsw i32 %3396, %3397
  %3399 = icmp eq i32 %3398, 2
  %3400 = zext i1 %3399 to i8
  store i8 %3400, i8* %38, align 1
  %3401 = add i64 %3366, -84
  %3402 = add i64 %3223, 69
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i32*
  store i32 %3375, i32* %3403, align 4
  %3404 = load i64, i64* %RBP.i, align 8
  %3405 = add i64 %3404, -56
  %3406 = load i64, i64* %3, align 8
  %3407 = add i64 %3406, 4
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3405 to i64*
  %3409 = load i64, i64* %3408, align 8
  store i64 %3409, i64* %RAX.i2535, align 8
  %3410 = add i64 %3404, -76
  %3411 = add i64 %3406, 8
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = sext i32 %3413 to i64
  store i64 %3414, i64* %RDX.i2517, align 8
  %3415 = shl nsw i64 %3414, 3
  %3416 = add i64 %3415, %3409
  %3417 = add i64 %3406, 12
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i64*
  %3419 = load i64, i64* %3418, align 8
  store i64 %3419, i64* %RAX.i2535, align 8
  %3420 = add i64 %3404, -80
  %3421 = add i64 %3406, 16
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = sext i32 %3423 to i64
  store i64 %3424, i64* %RDX.i2517, align 8
  %3425 = load i32, i32* %ECX.i2367, align 4
  %3426 = shl nsw i64 %3424, 2
  %3427 = add i64 %3419, %3426
  %3428 = add i64 %3406, 19
  store i64 %3428, i64* %3, align 8
  %3429 = inttoptr i64 %3427 to i32*
  %3430 = load i32, i32* %3429, align 4
  %3431 = sub i32 %3425, %3430
  %3432 = icmp ult i32 %3425, %3430
  %3433 = zext i1 %3432 to i8
  store i8 %3433, i8* %14, align 1
  %3434 = and i32 %3431, 255
  %3435 = tail call i32 @llvm.ctpop.i32(i32 %3434)
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  %3438 = xor i8 %3437, 1
  store i8 %3438, i8* %21, align 1
  %3439 = xor i32 %3430, %3425
  %3440 = xor i32 %3439, %3431
  %3441 = lshr i32 %3440, 4
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  store i8 %3443, i8* %26, align 1
  %3444 = icmp eq i32 %3431, 0
  %3445 = zext i1 %3444 to i8
  store i8 %3445, i8* %29, align 1
  %3446 = lshr i32 %3431, 31
  %3447 = trunc i32 %3446 to i8
  store i8 %3447, i8* %32, align 1
  %3448 = lshr i32 %3425, 31
  %3449 = lshr i32 %3430, 31
  %3450 = xor i32 %3449, %3448
  %3451 = xor i32 %3446, %3448
  %3452 = add nuw nsw i32 %3451, %3450
  %3453 = icmp eq i32 %3452, 2
  %3454 = zext i1 %3453 to i8
  store i8 %3454, i8* %38, align 1
  %3455 = icmp ne i8 %3447, 0
  %3456 = xor i1 %3455, %3453
  %3457 = or i1 %3444, %3456
  %.v135 = select i1 %3457, i64 47, i64 25
  %3458 = add i64 %3406, %.v135
  store i64 %3458, i64* %3, align 8
  br i1 %3457, label %block_.L_40de4f, label %block_40de39

block_40de39:                                     ; preds = %block_.L_40dddb
  %3459 = add i64 %3404, -84
  %3460 = add i64 %3458, 3
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3459 to i32*
  %3462 = load i32, i32* %3461, align 4
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RAX.i2535, align 8
  %3464 = add i64 %3458, 7
  store i64 %3464, i64* %3, align 8
  %3465 = load i64, i64* %3408, align 8
  store i64 %3465, i64* %RCX.i2514, align 8
  %3466 = add i64 %3458, 11
  store i64 %3466, i64* %3, align 8
  %3467 = load i32, i32* %3412, align 4
  %3468 = sext i32 %3467 to i64
  store i64 %3468, i64* %RDX.i2517, align 8
  %3469 = shl nsw i64 %3468, 3
  %3470 = add i64 %3469, %3465
  %3471 = add i64 %3458, 15
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i64*
  %3473 = load i64, i64* %3472, align 8
  store i64 %3473, i64* %RCX.i2514, align 8
  %3474 = add i64 %3458, 19
  store i64 %3474, i64* %3, align 8
  %3475 = load i32, i32* %3422, align 4
  %3476 = sext i32 %3475 to i64
  store i64 %3476, i64* %RDX.i2517, align 8
  %3477 = shl nsw i64 %3476, 2
  %3478 = add i64 %3477, %3473
  %3479 = add i64 %3458, 22
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  store i32 %3462, i32* %3480, align 4
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_40de4f

block_.L_40de4f:                                  ; preds = %block_40de39, %block_.L_40dddb
  %3481 = phi i64 [ %.pre79, %block_40de39 ], [ %3458, %block_.L_40dddb ]
  %3482 = phi i64 [ %.pre78, %block_40de39 ], [ %3404, %block_.L_40dddb ]
  %3483 = add i64 %3482, -48
  %3484 = add i64 %3481, 4
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i64*
  %3486 = load i64, i64* %3485, align 8
  store i64 %3486, i64* %RAX.i2535, align 8
  %3487 = add i64 %3482, -76
  %3488 = add i64 %3481, 7
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  %3491 = add i32 %3490, -4
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RCX.i2514, align 8
  %3493 = icmp ult i32 %3490, 4
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %14, align 1
  %3495 = and i32 %3491, 255
  %3496 = tail call i32 @llvm.ctpop.i32(i32 %3495)
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  %3499 = xor i8 %3498, 1
  store i8 %3499, i8* %21, align 1
  %3500 = xor i32 %3491, %3490
  %3501 = lshr i32 %3500, 4
  %3502 = trunc i32 %3501 to i8
  %3503 = and i8 %3502, 1
  store i8 %3503, i8* %26, align 1
  %3504 = icmp eq i32 %3491, 0
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %29, align 1
  %3506 = lshr i32 %3491, 31
  %3507 = trunc i32 %3506 to i8
  store i8 %3507, i8* %32, align 1
  %3508 = lshr i32 %3490, 31
  %3509 = xor i32 %3506, %3508
  %3510 = add nuw nsw i32 %3509, %3508
  %3511 = icmp eq i32 %3510, 2
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %38, align 1
  %3513 = sext i32 %3491 to i64
  store i64 %3513, i64* %RDX.i2517, align 8
  %3514 = shl nsw i64 %3513, 3
  %3515 = add i64 %3486, %3514
  %3516 = add i64 %3481, 17
  store i64 %3516, i64* %3, align 8
  %3517 = inttoptr i64 %3515 to i64*
  %3518 = load i64, i64* %3517, align 8
  store i64 %3518, i64* %RAX.i2535, align 8
  %3519 = add i64 %3481, 19
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RCX.i2514, align 8
  %3523 = add i64 %3482, -24
  %3524 = add i64 %3481, 23
  store i64 %3524, i64* %3, align 8
  %3525 = inttoptr i64 %3523 to i64*
  %3526 = load i64, i64* %3525, align 8
  store i64 %3526, i64* %RAX.i2535, align 8
  %3527 = add i64 %3526, 368
  %3528 = add i64 %3481, 30
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3527 to i64*
  %3530 = load i64, i64* %3529, align 8
  store i64 %3530, i64* %RAX.i2535, align 8
  %3531 = add i64 %3482, -80
  %3532 = add i64 %3481, 34
  store i64 %3532, i64* %3, align 8
  %3533 = inttoptr i64 %3531 to i32*
  %3534 = load i32, i32* %3533, align 4
  %3535 = sext i32 %3534 to i64
  store i64 %3535, i64* %RDX.i2517, align 8
  %3536 = shl nsw i64 %3535, 2
  %3537 = add i64 %3530, %3536
  %3538 = add i64 %3481, 37
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  %3540 = load i32, i32* %3539, align 4
  %3541 = add i32 %3540, %3521
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RCX.i2514, align 8
  %3543 = icmp ult i32 %3541, %3521
  %3544 = icmp ult i32 %3541, %3540
  %3545 = or i1 %3543, %3544
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %14, align 1
  %3547 = and i32 %3541, 255
  %3548 = tail call i32 @llvm.ctpop.i32(i32 %3547)
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = xor i8 %3550, 1
  store i8 %3551, i8* %21, align 1
  %3552 = xor i32 %3540, %3521
  %3553 = xor i32 %3552, %3541
  %3554 = lshr i32 %3553, 4
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  store i8 %3556, i8* %26, align 1
  %3557 = icmp eq i32 %3541, 0
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %29, align 1
  %3559 = lshr i32 %3541, 31
  %3560 = trunc i32 %3559 to i8
  store i8 %3560, i8* %32, align 1
  %3561 = lshr i32 %3521, 31
  %3562 = lshr i32 %3540, 31
  %3563 = xor i32 %3559, %3561
  %3564 = xor i32 %3559, %3562
  %3565 = add nuw nsw i32 %3563, %3564
  %3566 = icmp eq i32 %3565, 2
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %38, align 1
  %3568 = load i64, i64* %RBP.i, align 8
  %3569 = add i64 %3568, -24
  %3570 = add i64 %3481, 41
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i64*
  %3572 = load i64, i64* %3571, align 8
  store i64 %3572, i64* %RAX.i2535, align 8
  %3573 = add i64 %3572, 444
  %3574 = add i64 %3481, 47
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i32*
  %3576 = load i32, i32* %3575, align 4
  %3577 = add i32 %3576, %3541
  %3578 = zext i32 %3577 to i64
  store i64 %3578, i64* %RCX.i2514, align 8
  %3579 = icmp ult i32 %3577, %3541
  %3580 = icmp ult i32 %3577, %3576
  %3581 = or i1 %3579, %3580
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %14, align 1
  %3583 = and i32 %3577, 255
  %3584 = tail call i32 @llvm.ctpop.i32(i32 %3583)
  %3585 = trunc i32 %3584 to i8
  %3586 = and i8 %3585, 1
  %3587 = xor i8 %3586, 1
  store i8 %3587, i8* %21, align 1
  %3588 = xor i32 %3576, %3541
  %3589 = xor i32 %3588, %3577
  %3590 = lshr i32 %3589, 4
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  store i8 %3592, i8* %26, align 1
  %3593 = icmp eq i32 %3577, 0
  %3594 = zext i1 %3593 to i8
  store i8 %3594, i8* %29, align 1
  %3595 = lshr i32 %3577, 31
  %3596 = trunc i32 %3595 to i8
  store i8 %3596, i8* %32, align 1
  %3597 = lshr i32 %3576, 31
  %3598 = xor i32 %3595, %3559
  %3599 = xor i32 %3595, %3597
  %3600 = add nuw nsw i32 %3598, %3599
  %3601 = icmp eq i32 %3600, 2
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %38, align 1
  %3603 = add i64 %3568, -84
  %3604 = add i64 %3481, 50
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3603 to i32*
  store i32 %3577, i32* %3605, align 4
  %3606 = load i64, i64* %RBP.i, align 8
  %3607 = add i64 %3606, -56
  %3608 = load i64, i64* %3, align 8
  %3609 = add i64 %3608, 4
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3607 to i64*
  %3611 = load i64, i64* %3610, align 8
  store i64 %3611, i64* %RAX.i2535, align 8
  %3612 = add i64 %3606, -76
  %3613 = add i64 %3608, 8
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3612 to i32*
  %3615 = load i32, i32* %3614, align 4
  %3616 = sext i32 %3615 to i64
  store i64 %3616, i64* %RDX.i2517, align 8
  %3617 = shl nsw i64 %3616, 3
  %3618 = add i64 %3617, %3611
  %3619 = add i64 %3608, 12
  store i64 %3619, i64* %3, align 8
  %3620 = inttoptr i64 %3618 to i64*
  %3621 = load i64, i64* %3620, align 8
  store i64 %3621, i64* %RAX.i2535, align 8
  %3622 = add i64 %3606, -80
  %3623 = add i64 %3608, 16
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3622 to i32*
  %3625 = load i32, i32* %3624, align 4
  %3626 = sext i32 %3625 to i64
  store i64 %3626, i64* %RDX.i2517, align 8
  %3627 = load i32, i32* %ECX.i2367, align 4
  %3628 = shl nsw i64 %3626, 2
  %3629 = add i64 %3621, %3628
  %3630 = add i64 %3608, 19
  store i64 %3630, i64* %3, align 8
  %3631 = inttoptr i64 %3629 to i32*
  %3632 = load i32, i32* %3631, align 4
  %3633 = sub i32 %3627, %3632
  %3634 = icmp ult i32 %3627, %3632
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %14, align 1
  %3636 = and i32 %3633, 255
  %3637 = tail call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  store i8 %3640, i8* %21, align 1
  %3641 = xor i32 %3632, %3627
  %3642 = xor i32 %3641, %3633
  %3643 = lshr i32 %3642, 4
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  store i8 %3645, i8* %26, align 1
  %3646 = icmp eq i32 %3633, 0
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %29, align 1
  %3648 = lshr i32 %3633, 31
  %3649 = trunc i32 %3648 to i8
  store i8 %3649, i8* %32, align 1
  %3650 = lshr i32 %3627, 31
  %3651 = lshr i32 %3632, 31
  %3652 = xor i32 %3651, %3650
  %3653 = xor i32 %3648, %3650
  %3654 = add nuw nsw i32 %3653, %3652
  %3655 = icmp eq i32 %3654, 2
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %38, align 1
  %3657 = icmp ne i8 %3649, 0
  %3658 = xor i1 %3657, %3655
  %3659 = or i1 %3646, %3658
  %.v136 = select i1 %3659, i64 47, i64 25
  %3660 = add i64 %3608, %.v136
  store i64 %3660, i64* %3, align 8
  br i1 %3659, label %block_.L_40deb0, label %block_40de9a

block_40de9a:                                     ; preds = %block_.L_40de4f
  %3661 = add i64 %3606, -84
  %3662 = add i64 %3660, 3
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i32*
  %3664 = load i32, i32* %3663, align 4
  %3665 = zext i32 %3664 to i64
  store i64 %3665, i64* %RAX.i2535, align 8
  %3666 = add i64 %3660, 7
  store i64 %3666, i64* %3, align 8
  %3667 = load i64, i64* %3610, align 8
  store i64 %3667, i64* %RCX.i2514, align 8
  %3668 = add i64 %3660, 11
  store i64 %3668, i64* %3, align 8
  %3669 = load i32, i32* %3614, align 4
  %3670 = sext i32 %3669 to i64
  store i64 %3670, i64* %RDX.i2517, align 8
  %3671 = shl nsw i64 %3670, 3
  %3672 = add i64 %3671, %3667
  %3673 = add i64 %3660, 15
  store i64 %3673, i64* %3, align 8
  %3674 = inttoptr i64 %3672 to i64*
  %3675 = load i64, i64* %3674, align 8
  store i64 %3675, i64* %RCX.i2514, align 8
  %3676 = add i64 %3660, 19
  store i64 %3676, i64* %3, align 8
  %3677 = load i32, i32* %3624, align 4
  %3678 = sext i32 %3677 to i64
  store i64 %3678, i64* %RDX.i2517, align 8
  %3679 = shl nsw i64 %3678, 2
  %3680 = add i64 %3679, %3675
  %3681 = add i64 %3660, 22
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  store i32 %3664, i32* %3682, align 4
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_40deb0

block_.L_40deb0:                                  ; preds = %block_40de9a, %block_.L_40de4f
  %3683 = phi i64 [ %.pre81, %block_40de9a ], [ %3660, %block_.L_40de4f ]
  %3684 = phi i64 [ %.pre80, %block_40de9a ], [ %3606, %block_.L_40de4f ]
  %3685 = add i64 %3684, -72
  %3686 = add i64 %3683, 4
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i64*
  %3688 = load i64, i64* %3687, align 8
  store i64 %3688, i64* %RAX.i2535, align 8
  %3689 = add i64 %3684, -76
  %3690 = add i64 %3683, 7
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3689 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = add i32 %3692, -4
  %3694 = zext i32 %3693 to i64
  store i64 %3694, i64* %RCX.i2514, align 8
  %3695 = icmp ult i32 %3692, 4
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %14, align 1
  %3697 = and i32 %3693, 255
  %3698 = tail call i32 @llvm.ctpop.i32(i32 %3697)
  %3699 = trunc i32 %3698 to i8
  %3700 = and i8 %3699, 1
  %3701 = xor i8 %3700, 1
  store i8 %3701, i8* %21, align 1
  %3702 = xor i32 %3693, %3692
  %3703 = lshr i32 %3702, 4
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  store i8 %3705, i8* %26, align 1
  %3706 = icmp eq i32 %3693, 0
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %29, align 1
  %3708 = lshr i32 %3693, 31
  %3709 = trunc i32 %3708 to i8
  store i8 %3709, i8* %32, align 1
  %3710 = lshr i32 %3692, 31
  %3711 = xor i32 %3708, %3710
  %3712 = add nuw nsw i32 %3711, %3710
  %3713 = icmp eq i32 %3712, 2
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %38, align 1
  %3715 = sext i32 %3693 to i64
  store i64 %3715, i64* %RDX.i2517, align 8
  %3716 = shl nsw i64 %3715, 3
  %3717 = add i64 %3688, %3716
  %3718 = add i64 %3683, 17
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3717 to i64*
  %3720 = load i64, i64* %3719, align 8
  store i64 %3720, i64* %RAX.i2535, align 8
  %3721 = add i64 %3684, -80
  %3722 = add i64 %3683, 20
  store i64 %3722, i64* %3, align 8
  %3723 = inttoptr i64 %3721 to i32*
  %3724 = load i32, i32* %3723, align 4
  %3725 = add i32 %3724, -1
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RCX.i2514, align 8
  %3727 = icmp eq i32 %3724, 0
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %14, align 1
  %3729 = and i32 %3725, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %21, align 1
  %3734 = xor i32 %3725, %3724
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  store i8 %3737, i8* %26, align 1
  %3738 = icmp eq i32 %3725, 0
  %3739 = zext i1 %3738 to i8
  store i8 %3739, i8* %29, align 1
  %3740 = lshr i32 %3725, 31
  %3741 = trunc i32 %3740 to i8
  store i8 %3741, i8* %32, align 1
  %3742 = lshr i32 %3724, 31
  %3743 = xor i32 %3740, %3742
  %3744 = add nuw nsw i32 %3743, %3742
  %3745 = icmp eq i32 %3744, 2
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %38, align 1
  %3747 = sext i32 %3725 to i64
  store i64 %3747, i64* %RDX.i2517, align 8
  %3748 = shl nsw i64 %3747, 2
  %3749 = add i64 %3720, %3748
  %3750 = add i64 %3683, 29
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3749 to i32*
  %3752 = load i32, i32* %3751, align 4
  %3753 = zext i32 %3752 to i64
  store i64 %3753, i64* %RCX.i2514, align 8
  %3754 = load i64, i64* %RBP.i, align 8
  %3755 = add i64 %3754, -24
  %3756 = add i64 %3683, 33
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i64*
  %3758 = load i64, i64* %3757, align 8
  store i64 %3758, i64* %RAX.i2535, align 8
  %3759 = add i64 %3758, 312
  %3760 = add i64 %3683, 40
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i64*
  %3762 = load i64, i64* %3761, align 8
  store i64 %3762, i64* %RAX.i2535, align 8
  %3763 = add i64 %3762, 40
  %3764 = add i64 %3683, 44
  store i64 %3764, i64* %3, align 8
  %3765 = inttoptr i64 %3763 to i64*
  %3766 = load i64, i64* %3765, align 8
  store i64 %3766, i64* %RAX.i2535, align 8
  %3767 = add i64 %3754, -80
  %3768 = add i64 %3683, 47
  store i64 %3768, i64* %3, align 8
  %3769 = inttoptr i64 %3767 to i32*
  %3770 = load i32, i32* %3769, align 4
  %3771 = add i32 %3770, -1
  %3772 = zext i32 %3771 to i64
  store i64 %3772, i64* %RSI.i2511, align 8
  %3773 = icmp eq i32 %3770, 0
  %3774 = zext i1 %3773 to i8
  store i8 %3774, i8* %14, align 1
  %3775 = and i32 %3771, 255
  %3776 = tail call i32 @llvm.ctpop.i32(i32 %3775)
  %3777 = trunc i32 %3776 to i8
  %3778 = and i8 %3777, 1
  %3779 = xor i8 %3778, 1
  store i8 %3779, i8* %21, align 1
  %3780 = xor i32 %3771, %3770
  %3781 = lshr i32 %3780, 4
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  store i8 %3783, i8* %26, align 1
  %3784 = icmp eq i32 %3771, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %29, align 1
  %3786 = lshr i32 %3771, 31
  %3787 = trunc i32 %3786 to i8
  store i8 %3787, i8* %32, align 1
  %3788 = lshr i32 %3770, 31
  %3789 = xor i32 %3786, %3788
  %3790 = add nuw nsw i32 %3789, %3788
  %3791 = icmp eq i32 %3790, 2
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %38, align 1
  %3793 = sext i32 %3771 to i64
  store i64 %3793, i64* %RDX.i2517, align 8
  %3794 = shl nsw i64 %3793, 2
  %3795 = add i64 %3766, %3794
  %3796 = add i64 %3683, 56
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3795 to i32*
  %3798 = load i32, i32* %3797, align 4
  %3799 = add i32 %3798, %3752
  %3800 = zext i32 %3799 to i64
  store i64 %3800, i64* %RCX.i2514, align 8
  %3801 = icmp ult i32 %3799, %3752
  %3802 = icmp ult i32 %3799, %3798
  %3803 = or i1 %3801, %3802
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %14, align 1
  %3805 = and i32 %3799, 255
  %3806 = tail call i32 @llvm.ctpop.i32(i32 %3805)
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  %3809 = xor i8 %3808, 1
  store i8 %3809, i8* %21, align 1
  %3810 = xor i32 %3798, %3752
  %3811 = xor i32 %3810, %3799
  %3812 = lshr i32 %3811, 4
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  store i8 %3814, i8* %26, align 1
  %3815 = icmp eq i32 %3799, 0
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %29, align 1
  %3817 = lshr i32 %3799, 31
  %3818 = trunc i32 %3817 to i8
  store i8 %3818, i8* %32, align 1
  %3819 = lshr i32 %3752, 31
  %3820 = lshr i32 %3798, 31
  %3821 = xor i32 %3817, %3819
  %3822 = xor i32 %3817, %3820
  %3823 = add nuw nsw i32 %3821, %3822
  %3824 = icmp eq i32 %3823, 2
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %38, align 1
  %3826 = load i64, i64* %RBP.i, align 8
  %3827 = add i64 %3826, -24
  %3828 = add i64 %3683, 60
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i64*
  %3830 = load i64, i64* %3829, align 8
  store i64 %3830, i64* %RAX.i2535, align 8
  %3831 = add i64 %3830, 444
  %3832 = add i64 %3683, 66
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i32*
  %3834 = load i32, i32* %3833, align 4
  %3835 = add i32 %3834, %3799
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RCX.i2514, align 8
  %3837 = icmp ult i32 %3835, %3799
  %3838 = icmp ult i32 %3835, %3834
  %3839 = or i1 %3837, %3838
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %14, align 1
  %3841 = and i32 %3835, 255
  %3842 = tail call i32 @llvm.ctpop.i32(i32 %3841)
  %3843 = trunc i32 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = xor i8 %3844, 1
  store i8 %3845, i8* %21, align 1
  %3846 = xor i32 %3834, %3799
  %3847 = xor i32 %3846, %3835
  %3848 = lshr i32 %3847, 4
  %3849 = trunc i32 %3848 to i8
  %3850 = and i8 %3849, 1
  store i8 %3850, i8* %26, align 1
  %3851 = icmp eq i32 %3835, 0
  %3852 = zext i1 %3851 to i8
  store i8 %3852, i8* %29, align 1
  %3853 = lshr i32 %3835, 31
  %3854 = trunc i32 %3853 to i8
  store i8 %3854, i8* %32, align 1
  %3855 = lshr i32 %3834, 31
  %3856 = xor i32 %3853, %3817
  %3857 = xor i32 %3853, %3855
  %3858 = add nuw nsw i32 %3856, %3857
  %3859 = icmp eq i32 %3858, 2
  %3860 = zext i1 %3859 to i8
  store i8 %3860, i8* %38, align 1
  %3861 = add i64 %3826, -84
  %3862 = add i64 %3683, 69
  store i64 %3862, i64* %3, align 8
  %3863 = inttoptr i64 %3861 to i32*
  store i32 %3835, i32* %3863, align 4
  %3864 = load i64, i64* %RBP.i, align 8
  %3865 = add i64 %3864, -56
  %3866 = load i64, i64* %3, align 8
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %3, align 8
  %3868 = inttoptr i64 %3865 to i64*
  %3869 = load i64, i64* %3868, align 8
  store i64 %3869, i64* %RAX.i2535, align 8
  %3870 = add i64 %3864, -76
  %3871 = add i64 %3866, 8
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i32*
  %3873 = load i32, i32* %3872, align 4
  %3874 = sext i32 %3873 to i64
  store i64 %3874, i64* %RDX.i2517, align 8
  %3875 = shl nsw i64 %3874, 3
  %3876 = add i64 %3875, %3869
  %3877 = add i64 %3866, 12
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3876 to i64*
  %3879 = load i64, i64* %3878, align 8
  store i64 %3879, i64* %RAX.i2535, align 8
  %3880 = add i64 %3864, -80
  %3881 = add i64 %3866, 16
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3883 to i64
  store i64 %3884, i64* %RDX.i2517, align 8
  %3885 = load i32, i32* %ECX.i2367, align 4
  %3886 = shl nsw i64 %3884, 2
  %3887 = add i64 %3879, %3886
  %3888 = add i64 %3866, 19
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3887 to i32*
  %3890 = load i32, i32* %3889, align 4
  %3891 = sub i32 %3885, %3890
  %3892 = icmp ult i32 %3885, %3890
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %14, align 1
  %3894 = and i32 %3891, 255
  %3895 = tail call i32 @llvm.ctpop.i32(i32 %3894)
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  %3898 = xor i8 %3897, 1
  store i8 %3898, i8* %21, align 1
  %3899 = xor i32 %3890, %3885
  %3900 = xor i32 %3899, %3891
  %3901 = lshr i32 %3900, 4
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  store i8 %3903, i8* %26, align 1
  %3904 = icmp eq i32 %3891, 0
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %29, align 1
  %3906 = lshr i32 %3891, 31
  %3907 = trunc i32 %3906 to i8
  store i8 %3907, i8* %32, align 1
  %3908 = lshr i32 %3885, 31
  %3909 = lshr i32 %3890, 31
  %3910 = xor i32 %3909, %3908
  %3911 = xor i32 %3906, %3908
  %3912 = add nuw nsw i32 %3911, %3910
  %3913 = icmp eq i32 %3912, 2
  %3914 = zext i1 %3913 to i8
  store i8 %3914, i8* %38, align 1
  %3915 = icmp ne i8 %3907, 0
  %3916 = xor i1 %3915, %3913
  %3917 = or i1 %3904, %3916
  %.v137 = select i1 %3917, i64 47, i64 25
  %3918 = add i64 %3866, %.v137
  store i64 %3918, i64* %3, align 8
  br i1 %3917, label %block_.L_40df24, label %block_40df0e

block_40df0e:                                     ; preds = %block_.L_40deb0
  %3919 = add i64 %3864, -84
  %3920 = add i64 %3918, 3
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i32*
  %3922 = load i32, i32* %3921, align 4
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RAX.i2535, align 8
  %3924 = add i64 %3918, 7
  store i64 %3924, i64* %3, align 8
  %3925 = load i64, i64* %3868, align 8
  store i64 %3925, i64* %RCX.i2514, align 8
  %3926 = add i64 %3918, 11
  store i64 %3926, i64* %3, align 8
  %3927 = load i32, i32* %3872, align 4
  %3928 = sext i32 %3927 to i64
  store i64 %3928, i64* %RDX.i2517, align 8
  %3929 = shl nsw i64 %3928, 3
  %3930 = add i64 %3929, %3925
  %3931 = add i64 %3918, 15
  store i64 %3931, i64* %3, align 8
  %3932 = inttoptr i64 %3930 to i64*
  %3933 = load i64, i64* %3932, align 8
  store i64 %3933, i64* %RCX.i2514, align 8
  %3934 = add i64 %3918, 19
  store i64 %3934, i64* %3, align 8
  %3935 = load i32, i32* %3882, align 4
  %3936 = sext i32 %3935 to i64
  store i64 %3936, i64* %RDX.i2517, align 8
  %3937 = shl nsw i64 %3936, 2
  %3938 = add i64 %3937, %3933
  %3939 = add i64 %3918, 22
  store i64 %3939, i64* %3, align 8
  %3940 = inttoptr i64 %3938 to i32*
  store i32 %3922, i32* %3940, align 4
  %.pre82 = load i64, i64* %3, align 8
  %.pre83.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40df24

block_.L_40df24:                                  ; preds = %block_40df0e, %block_.L_40deb0
  %.pre83 = phi i64 [ %.pre83.pre, %block_40df0e ], [ %3864, %block_.L_40deb0 ]
  %3941 = phi i64 [ %.pre82, %block_40df0e ], [ %3918, %block_.L_40deb0 ]
  %3942 = add i64 %3941, 5
  store i64 %3942, i64* %3, align 8
  br label %block_.L_40df29

block_.L_40df29:                                  ; preds = %block_.L_40df24, %block_.L_40dd5e
  %3943 = phi i64 [ %3942, %block_.L_40df24 ], [ %2969, %block_.L_40dd5e ]
  %3944 = phi i64 [ %.pre83, %block_.L_40df24 ], [ %2940, %block_.L_40dd5e ]
  %3945 = add i64 %3944, -56
  %3946 = add i64 %3943, 4
  store i64 %3946, i64* %3, align 8
  %3947 = inttoptr i64 %3945 to i64*
  %3948 = load i64, i64* %3947, align 8
  store i64 %3948, i64* %RAX.i2535, align 8
  %3949 = add i64 %3944, -76
  %3950 = add i64 %3943, 8
  store i64 %3950, i64* %3, align 8
  %3951 = inttoptr i64 %3949 to i32*
  %3952 = load i32, i32* %3951, align 4
  %3953 = sext i32 %3952 to i64
  store i64 %3953, i64* %RCX.i2514, align 8
  %3954 = shl nsw i64 %3953, 3
  %3955 = add i64 %3954, %3948
  %3956 = add i64 %3943, 12
  store i64 %3956, i64* %3, align 8
  %3957 = inttoptr i64 %3955 to i64*
  %3958 = load i64, i64* %3957, align 8
  store i64 %3958, i64* %RAX.i2535, align 8
  %3959 = add i64 %3944, -80
  %3960 = add i64 %3943, 15
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i32*
  %3962 = load i32, i32* %3961, align 4
  %3963 = add i32 %3962, -1
  %3964 = zext i32 %3963 to i64
  store i64 %3964, i64* %RDX.i2517, align 8
  %3965 = icmp eq i32 %3962, 0
  %3966 = zext i1 %3965 to i8
  store i8 %3966, i8* %14, align 1
  %3967 = and i32 %3963, 255
  %3968 = tail call i32 @llvm.ctpop.i32(i32 %3967)
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = xor i8 %3970, 1
  store i8 %3971, i8* %21, align 1
  %3972 = xor i32 %3963, %3962
  %3973 = lshr i32 %3972, 4
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  store i8 %3975, i8* %26, align 1
  %3976 = icmp eq i32 %3963, 0
  %3977 = zext i1 %3976 to i8
  store i8 %3977, i8* %29, align 1
  %3978 = lshr i32 %3963, 31
  %3979 = trunc i32 %3978 to i8
  store i8 %3979, i8* %32, align 1
  %3980 = lshr i32 %3962, 31
  %3981 = xor i32 %3978, %3980
  %3982 = add nuw nsw i32 %3981, %3980
  %3983 = icmp eq i32 %3982, 2
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %38, align 1
  %3985 = sext i32 %3963 to i64
  store i64 %3985, i64* %RCX.i2514, align 8
  %3986 = shl nsw i64 %3985, 2
  %3987 = add i64 %3958, %3986
  %3988 = add i64 %3943, 24
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to i32*
  %3990 = load i32, i32* %3989, align 4
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RDX.i2517, align 8
  %3992 = add i64 %3944, -24
  %3993 = add i64 %3943, 28
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to i64*
  %3995 = load i64, i64* %3994, align 8
  store i64 %3995, i64* %RAX.i2535, align 8
  %3996 = add i64 %3995, 312
  %3997 = add i64 %3943, 35
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i64*
  %3999 = load i64, i64* %3998, align 8
  store i64 %3999, i64* %RAX.i2535, align 8
  %4000 = add i64 %3999, 16
  %4001 = add i64 %3943, 39
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i64*
  %4003 = load i64, i64* %4002, align 8
  store i64 %4003, i64* %RAX.i2535, align 8
  %4004 = add i64 %3943, 42
  store i64 %4004, i64* %3, align 8
  %4005 = load i32, i32* %3961, align 4
  %4006 = add i32 %4005, -1
  %4007 = zext i32 %4006 to i64
  store i64 %4007, i64* %RSI.i2511, align 8
  %4008 = icmp eq i32 %4005, 0
  %4009 = zext i1 %4008 to i8
  store i8 %4009, i8* %14, align 1
  %4010 = and i32 %4006, 255
  %4011 = tail call i32 @llvm.ctpop.i32(i32 %4010)
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  %4014 = xor i8 %4013, 1
  store i8 %4014, i8* %21, align 1
  %4015 = xor i32 %4006, %4005
  %4016 = lshr i32 %4015, 4
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  store i8 %4018, i8* %26, align 1
  %4019 = icmp eq i32 %4006, 0
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %29, align 1
  %4021 = lshr i32 %4006, 31
  %4022 = trunc i32 %4021 to i8
  store i8 %4022, i8* %32, align 1
  %4023 = lshr i32 %4005, 31
  %4024 = xor i32 %4021, %4023
  %4025 = add nuw nsw i32 %4024, %4023
  %4026 = icmp eq i32 %4025, 2
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %38, align 1
  %4028 = sext i32 %4006 to i64
  store i64 %4028, i64* %RCX.i2514, align 8
  %4029 = shl nsw i64 %4028, 2
  %4030 = add i64 %4003, %4029
  %4031 = add i64 %3943, 51
  store i64 %4031, i64* %3, align 8
  %4032 = inttoptr i64 %4030 to i32*
  %4033 = load i32, i32* %4032, align 4
  %4034 = add i32 %4033, %3990
  %4035 = zext i32 %4034 to i64
  store i64 %4035, i64* %RDX.i2517, align 8
  %4036 = icmp ult i32 %4034, %3990
  %4037 = icmp ult i32 %4034, %4033
  %4038 = or i1 %4036, %4037
  %4039 = zext i1 %4038 to i8
  store i8 %4039, i8* %14, align 1
  %4040 = and i32 %4034, 255
  %4041 = tail call i32 @llvm.ctpop.i32(i32 %4040)
  %4042 = trunc i32 %4041 to i8
  %4043 = and i8 %4042, 1
  %4044 = xor i8 %4043, 1
  store i8 %4044, i8* %21, align 1
  %4045 = xor i32 %4033, %3990
  %4046 = xor i32 %4045, %4034
  %4047 = lshr i32 %4046, 4
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  store i8 %4049, i8* %26, align 1
  %4050 = icmp eq i32 %4034, 0
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %29, align 1
  %4052 = lshr i32 %4034, 31
  %4053 = trunc i32 %4052 to i8
  store i8 %4053, i8* %32, align 1
  %4054 = lshr i32 %3990, 31
  %4055 = lshr i32 %4033, 31
  %4056 = xor i32 %4052, %4054
  %4057 = xor i32 %4052, %4055
  %4058 = add nuw nsw i32 %4056, %4057
  %4059 = icmp eq i32 %4058, 2
  %4060 = zext i1 %4059 to i8
  store i8 %4060, i8* %38, align 1
  %4061 = load i64, i64* %RBP.i, align 8
  %4062 = add i64 %4061, -72
  %4063 = add i64 %3943, 55
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i64*
  %4065 = load i64, i64* %4064, align 8
  store i64 %4065, i64* %RAX.i2535, align 8
  %4066 = add i64 %4061, -76
  %4067 = add i64 %3943, 59
  store i64 %4067, i64* %3, align 8
  %4068 = inttoptr i64 %4066 to i32*
  %4069 = load i32, i32* %4068, align 4
  %4070 = sext i32 %4069 to i64
  store i64 %4070, i64* %RCX.i2514, align 8
  %4071 = shl nsw i64 %4070, 3
  %4072 = add i64 %4071, %4065
  %4073 = add i64 %3943, 63
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4072 to i64*
  %4075 = load i64, i64* %4074, align 8
  store i64 %4075, i64* %RAX.i2535, align 8
  %4076 = add i64 %4061, -80
  %4077 = add i64 %3943, 67
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i32*
  %4079 = load i32, i32* %4078, align 4
  %4080 = sext i32 %4079 to i64
  store i64 %4080, i64* %RCX.i2514, align 8
  %4081 = shl nsw i64 %4080, 2
  %4082 = add i64 %4081, %4075
  %4083 = add i64 %3943, 70
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i32*
  store i32 %4034, i32* %4084, align 4
  %4085 = load i64, i64* %RBP.i, align 8
  %4086 = add i64 %4085, -72
  %4087 = load i64, i64* %3, align 8
  %4088 = add i64 %4087, 4
  store i64 %4088, i64* %3, align 8
  %4089 = inttoptr i64 %4086 to i64*
  %4090 = load i64, i64* %4089, align 8
  store i64 %4090, i64* %RAX.i2535, align 8
  %4091 = add i64 %4085, -76
  %4092 = add i64 %4087, 8
  store i64 %4092, i64* %3, align 8
  %4093 = inttoptr i64 %4091 to i32*
  %4094 = load i32, i32* %4093, align 4
  %4095 = sext i32 %4094 to i64
  store i64 %4095, i64* %RCX.i2514, align 8
  %4096 = shl nsw i64 %4095, 3
  %4097 = add i64 %4096, %4090
  %4098 = add i64 %4087, 12
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i64*
  %4100 = load i64, i64* %4099, align 8
  store i64 %4100, i64* %RAX.i2535, align 8
  %4101 = add i64 %4085, -80
  %4102 = add i64 %4087, 15
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = add i32 %4104, -1
  %4106 = zext i32 %4105 to i64
  store i64 %4106, i64* %RDX.i2517, align 8
  %4107 = icmp eq i32 %4104, 0
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %14, align 1
  %4109 = and i32 %4105, 255
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109)
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %21, align 1
  %4114 = xor i32 %4105, %4104
  %4115 = lshr i32 %4114, 4
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  store i8 %4117, i8* %26, align 1
  %4118 = icmp eq i32 %4105, 0
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %29, align 1
  %4120 = lshr i32 %4105, 31
  %4121 = trunc i32 %4120 to i8
  store i8 %4121, i8* %32, align 1
  %4122 = lshr i32 %4104, 31
  %4123 = xor i32 %4120, %4122
  %4124 = add nuw nsw i32 %4123, %4122
  %4125 = icmp eq i32 %4124, 2
  %4126 = zext i1 %4125 to i8
  store i8 %4126, i8* %38, align 1
  %4127 = sext i32 %4105 to i64
  store i64 %4127, i64* %RCX.i2514, align 8
  %4128 = shl nsw i64 %4127, 2
  %4129 = add i64 %4100, %4128
  %4130 = add i64 %4087, 24
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i32*
  %4132 = load i32, i32* %4131, align 4
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RDX.i2517, align 8
  %4134 = add i64 %4085, -24
  %4135 = add i64 %4087, 28
  store i64 %4135, i64* %3, align 8
  %4136 = inttoptr i64 %4134 to i64*
  %4137 = load i64, i64* %4136, align 8
  store i64 %4137, i64* %RAX.i2535, align 8
  %4138 = add i64 %4137, 312
  %4139 = add i64 %4087, 35
  store i64 %4139, i64* %3, align 8
  %4140 = inttoptr i64 %4138 to i64*
  %4141 = load i64, i64* %4140, align 8
  store i64 %4141, i64* %RAX.i2535, align 8
  %4142 = add i64 %4141, 48
  %4143 = add i64 %4087, 39
  store i64 %4143, i64* %3, align 8
  %4144 = inttoptr i64 %4142 to i64*
  %4145 = load i64, i64* %4144, align 8
  store i64 %4145, i64* %RAX.i2535, align 8
  %4146 = add i64 %4087, 42
  store i64 %4146, i64* %3, align 8
  %4147 = load i32, i32* %4103, align 4
  %4148 = add i32 %4147, -1
  %4149 = zext i32 %4148 to i64
  store i64 %4149, i64* %RSI.i2511, align 8
  %4150 = icmp eq i32 %4147, 0
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %14, align 1
  %4152 = and i32 %4148, 255
  %4153 = tail call i32 @llvm.ctpop.i32(i32 %4152)
  %4154 = trunc i32 %4153 to i8
  %4155 = and i8 %4154, 1
  %4156 = xor i8 %4155, 1
  store i8 %4156, i8* %21, align 1
  %4157 = xor i32 %4148, %4147
  %4158 = lshr i32 %4157, 4
  %4159 = trunc i32 %4158 to i8
  %4160 = and i8 %4159, 1
  store i8 %4160, i8* %26, align 1
  %4161 = icmp eq i32 %4148, 0
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %29, align 1
  %4163 = lshr i32 %4148, 31
  %4164 = trunc i32 %4163 to i8
  store i8 %4164, i8* %32, align 1
  %4165 = lshr i32 %4147, 31
  %4166 = xor i32 %4163, %4165
  %4167 = add nuw nsw i32 %4166, %4165
  %4168 = icmp eq i32 %4167, 2
  %4169 = zext i1 %4168 to i8
  store i8 %4169, i8* %38, align 1
  %4170 = sext i32 %4148 to i64
  store i64 %4170, i64* %RCX.i2514, align 8
  %4171 = shl nsw i64 %4170, 2
  %4172 = add i64 %4145, %4171
  %4173 = add i64 %4087, 51
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4172 to i32*
  %4175 = load i32, i32* %4174, align 4
  %4176 = add i32 %4175, %4132
  %4177 = zext i32 %4176 to i64
  store i64 %4177, i64* %RDX.i2517, align 8
  %4178 = icmp ult i32 %4176, %4132
  %4179 = icmp ult i32 %4176, %4175
  %4180 = or i1 %4178, %4179
  %4181 = zext i1 %4180 to i8
  store i8 %4181, i8* %14, align 1
  %4182 = and i32 %4176, 255
  %4183 = tail call i32 @llvm.ctpop.i32(i32 %4182)
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = xor i8 %4185, 1
  store i8 %4186, i8* %21, align 1
  %4187 = xor i32 %4175, %4132
  %4188 = xor i32 %4187, %4176
  %4189 = lshr i32 %4188, 4
  %4190 = trunc i32 %4189 to i8
  %4191 = and i8 %4190, 1
  store i8 %4191, i8* %26, align 1
  %4192 = icmp eq i32 %4176, 0
  %4193 = zext i1 %4192 to i8
  store i8 %4193, i8* %29, align 1
  %4194 = lshr i32 %4176, 31
  %4195 = trunc i32 %4194 to i8
  store i8 %4195, i8* %32, align 1
  %4196 = lshr i32 %4132, 31
  %4197 = lshr i32 %4175, 31
  %4198 = xor i32 %4194, %4196
  %4199 = xor i32 %4194, %4197
  %4200 = add nuw nsw i32 %4198, %4199
  %4201 = icmp eq i32 %4200, 2
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %38, align 1
  %4203 = load i64, i64* %RBP.i, align 8
  %4204 = add i64 %4203, -84
  %4205 = add i64 %4087, 54
  store i64 %4205, i64* %3, align 8
  %4206 = inttoptr i64 %4204 to i32*
  store i32 %4176, i32* %4206, align 4
  %4207 = load i64, i64* %RBP.i, align 8
  %4208 = add i64 %4207, -72
  %4209 = load i64, i64* %3, align 8
  %4210 = add i64 %4209, 4
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4208 to i64*
  %4212 = load i64, i64* %4211, align 8
  store i64 %4212, i64* %RAX.i2535, align 8
  %4213 = add i64 %4207, -76
  %4214 = add i64 %4209, 8
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %RCX.i2514, align 8
  %4218 = shl nsw i64 %4217, 3
  %4219 = add i64 %4218, %4212
  %4220 = add i64 %4209, 12
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i64*
  %4222 = load i64, i64* %4221, align 8
  store i64 %4222, i64* %RAX.i2535, align 8
  %4223 = add i64 %4207, -80
  %4224 = add i64 %4209, 16
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i32*
  %4226 = load i32, i32* %4225, align 4
  %4227 = sext i32 %4226 to i64
  store i64 %4227, i64* %RCX.i2514, align 8
  %4228 = load i32, i32* %EDX.i1060, align 4
  %4229 = shl nsw i64 %4227, 2
  %4230 = add i64 %4222, %4229
  %4231 = add i64 %4209, 19
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i32*
  %4233 = load i32, i32* %4232, align 4
  %4234 = sub i32 %4228, %4233
  %4235 = icmp ult i32 %4228, %4233
  %4236 = zext i1 %4235 to i8
  store i8 %4236, i8* %14, align 1
  %4237 = and i32 %4234, 255
  %4238 = tail call i32 @llvm.ctpop.i32(i32 %4237)
  %4239 = trunc i32 %4238 to i8
  %4240 = and i8 %4239, 1
  %4241 = xor i8 %4240, 1
  store i8 %4241, i8* %21, align 1
  %4242 = xor i32 %4233, %4228
  %4243 = xor i32 %4242, %4234
  %4244 = lshr i32 %4243, 4
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  store i8 %4246, i8* %26, align 1
  %4247 = icmp eq i32 %4234, 0
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %29, align 1
  %4249 = lshr i32 %4234, 31
  %4250 = trunc i32 %4249 to i8
  store i8 %4250, i8* %32, align 1
  %4251 = lshr i32 %4228, 31
  %4252 = lshr i32 %4233, 31
  %4253 = xor i32 %4252, %4251
  %4254 = xor i32 %4249, %4251
  %4255 = add nuw nsw i32 %4254, %4253
  %4256 = icmp eq i32 %4255, 2
  %4257 = zext i1 %4256 to i8
  store i8 %4257, i8* %38, align 1
  %4258 = icmp ne i8 %4250, 0
  %4259 = xor i1 %4258, %4256
  %4260 = or i1 %4247, %4259
  %.v138 = select i1 %4260, i64 47, i64 25
  %4261 = add i64 %4209, %.v138
  store i64 %4261, i64* %3, align 8
  br i1 %4260, label %block_.L_40dfd4, label %block_40dfbe

block_40dfbe:                                     ; preds = %block_.L_40df29
  %4262 = add i64 %4207, -84
  %4263 = add i64 %4261, 3
  store i64 %4263, i64* %3, align 8
  %4264 = inttoptr i64 %4262 to i32*
  %4265 = load i32, i32* %4264, align 4
  %4266 = zext i32 %4265 to i64
  store i64 %4266, i64* %RAX.i2535, align 8
  %4267 = add i64 %4261, 7
  store i64 %4267, i64* %3, align 8
  %4268 = load i64, i64* %4211, align 8
  store i64 %4268, i64* %RCX.i2514, align 8
  %4269 = add i64 %4261, 11
  store i64 %4269, i64* %3, align 8
  %4270 = load i32, i32* %4215, align 4
  %4271 = sext i32 %4270 to i64
  store i64 %4271, i64* %RDX.i2517, align 8
  %4272 = shl nsw i64 %4271, 3
  %4273 = add i64 %4272, %4268
  %4274 = add i64 %4261, 15
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i64*
  %4276 = load i64, i64* %4275, align 8
  store i64 %4276, i64* %RCX.i2514, align 8
  %4277 = add i64 %4261, 19
  store i64 %4277, i64* %3, align 8
  %4278 = load i32, i32* %4225, align 4
  %4279 = sext i32 %4278 to i64
  store i64 %4279, i64* %RDX.i2517, align 8
  %4280 = shl nsw i64 %4279, 2
  %4281 = add i64 %4280, %4276
  %4282 = add i64 %4261, 22
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i32*
  store i32 %4265, i32* %4283, align 4
  %.pre84 = load i64, i64* %RBP.i, align 8
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_40dfd4

block_.L_40dfd4:                                  ; preds = %block_40dfbe, %block_.L_40df29
  %4284 = phi i64 [ %.pre85, %block_40dfbe ], [ %4261, %block_.L_40df29 ]
  %4285 = phi i64 [ %.pre84, %block_40dfbe ], [ %4207, %block_.L_40df29 ]
  %4286 = add i64 %4285, -76
  %4287 = add i64 %4284, 4
  store i64 %4287, i64* %3, align 8
  %4288 = inttoptr i64 %4286 to i32*
  %4289 = load i32, i32* %4288, align 4
  %4290 = add i32 %4289, -2
  %4291 = icmp ult i32 %4289, 2
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %14, align 1
  %4293 = and i32 %4290, 255
  %4294 = tail call i32 @llvm.ctpop.i32(i32 %4293)
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  %4297 = xor i8 %4296, 1
  store i8 %4297, i8* %21, align 1
  %4298 = xor i32 %4290, %4289
  %4299 = lshr i32 %4298, 4
  %4300 = trunc i32 %4299 to i8
  %4301 = and i8 %4300, 1
  store i8 %4301, i8* %26, align 1
  %4302 = icmp eq i32 %4290, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %29, align 1
  %4304 = lshr i32 %4290, 31
  %4305 = trunc i32 %4304 to i8
  store i8 %4305, i8* %32, align 1
  %4306 = lshr i32 %4289, 31
  %4307 = xor i32 %4304, %4306
  %4308 = add nuw nsw i32 %4307, %4306
  %4309 = icmp eq i32 %4308, 2
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %38, align 1
  %4311 = icmp ne i8 %4305, 0
  %4312 = xor i1 %4311, %4309
  %4313 = or i1 %4302, %4312
  %.v139 = select i1 %4313, i64 219, i64 10
  %4314 = add i64 %4284, %.v139
  store i64 %4314, i64* %3, align 8
  br i1 %4313, label %block_.L_40e0af, label %block_40dfde

block_40dfde:                                     ; preds = %block_.L_40dfd4
  %4315 = add i64 %4285, -56
  %4316 = add i64 %4314, 4
  store i64 %4316, i64* %3, align 8
  %4317 = inttoptr i64 %4315 to i64*
  %4318 = load i64, i64* %4317, align 8
  store i64 %4318, i64* %RAX.i2535, align 8
  %4319 = add i64 %4314, 7
  store i64 %4319, i64* %3, align 8
  %4320 = load i32, i32* %4288, align 4
  %4321 = add i32 %4320, -3
  %4322 = zext i32 %4321 to i64
  store i64 %4322, i64* %RCX.i2514, align 8
  %4323 = icmp ult i32 %4320, 3
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %14, align 1
  %4325 = and i32 %4321, 255
  %4326 = tail call i32 @llvm.ctpop.i32(i32 %4325)
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  %4329 = xor i8 %4328, 1
  store i8 %4329, i8* %21, align 1
  %4330 = xor i32 %4321, %4320
  %4331 = lshr i32 %4330, 4
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  store i8 %4333, i8* %26, align 1
  %4334 = icmp eq i32 %4321, 0
  %4335 = zext i1 %4334 to i8
  store i8 %4335, i8* %29, align 1
  %4336 = lshr i32 %4321, 31
  %4337 = trunc i32 %4336 to i8
  store i8 %4337, i8* %32, align 1
  %4338 = lshr i32 %4320, 31
  %4339 = xor i32 %4336, %4338
  %4340 = add nuw nsw i32 %4339, %4338
  %4341 = icmp eq i32 %4340, 2
  %4342 = zext i1 %4341 to i8
  store i8 %4342, i8* %38, align 1
  %4343 = sext i32 %4321 to i64
  store i64 %4343, i64* %RDX.i2517, align 8
  %4344 = shl nsw i64 %4343, 3
  %4345 = add i64 %4318, %4344
  %4346 = add i64 %4314, 17
  store i64 %4346, i64* %3, align 8
  %4347 = inttoptr i64 %4345 to i64*
  %4348 = load i64, i64* %4347, align 8
  store i64 %4348, i64* %RAX.i2535, align 8
  %4349 = add i64 %4285, -80
  %4350 = add i64 %4314, 21
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4349 to i32*
  %4352 = load i32, i32* %4351, align 4
  %4353 = sext i32 %4352 to i64
  store i64 %4353, i64* %RDX.i2517, align 8
  %4354 = shl nsw i64 %4353, 2
  %4355 = add i64 %4354, %4348
  %4356 = add i64 %4314, 24
  store i64 %4356, i64* %3, align 8
  %4357 = inttoptr i64 %4355 to i32*
  %4358 = load i32, i32* %4357, align 4
  %4359 = zext i32 %4358 to i64
  store i64 %4359, i64* %RCX.i2514, align 8
  %4360 = add i64 %4285, -24
  %4361 = add i64 %4314, 28
  store i64 %4361, i64* %3, align 8
  %4362 = inttoptr i64 %4360 to i64*
  %4363 = load i64, i64* %4362, align 8
  store i64 %4363, i64* %RAX.i2535, align 8
  %4364 = add i64 %4363, 312
  %4365 = add i64 %4314, 35
  store i64 %4365, i64* %3, align 8
  %4366 = inttoptr i64 %4364 to i64*
  %4367 = load i64, i64* %4366, align 8
  store i64 %4367, i64* %RAX.i2535, align 8
  %4368 = add i64 %4367, 8
  %4369 = add i64 %4314, 39
  store i64 %4369, i64* %3, align 8
  %4370 = inttoptr i64 %4368 to i64*
  %4371 = load i64, i64* %4370, align 8
  store i64 %4371, i64* %RAX.i2535, align 8
  %4372 = add i64 %4314, 43
  store i64 %4372, i64* %3, align 8
  %4373 = load i32, i32* %4351, align 4
  %4374 = sext i32 %4373 to i64
  store i64 %4374, i64* %RDX.i2517, align 8
  %4375 = shl nsw i64 %4374, 2
  %4376 = add i64 %4371, %4375
  %4377 = add i64 %4314, 46
  store i64 %4377, i64* %3, align 8
  %4378 = inttoptr i64 %4376 to i32*
  %4379 = load i32, i32* %4378, align 4
  %4380 = add i32 %4379, %4358
  %4381 = zext i32 %4380 to i64
  store i64 %4381, i64* %RCX.i2514, align 8
  %4382 = icmp ult i32 %4380, %4358
  %4383 = icmp ult i32 %4380, %4379
  %4384 = or i1 %4382, %4383
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %14, align 1
  %4386 = and i32 %4380, 255
  %4387 = tail call i32 @llvm.ctpop.i32(i32 %4386)
  %4388 = trunc i32 %4387 to i8
  %4389 = and i8 %4388, 1
  %4390 = xor i8 %4389, 1
  store i8 %4390, i8* %21, align 1
  %4391 = xor i32 %4379, %4358
  %4392 = xor i32 %4391, %4380
  %4393 = lshr i32 %4392, 4
  %4394 = trunc i32 %4393 to i8
  %4395 = and i8 %4394, 1
  store i8 %4395, i8* %26, align 1
  %4396 = icmp eq i32 %4380, 0
  %4397 = zext i1 %4396 to i8
  store i8 %4397, i8* %29, align 1
  %4398 = lshr i32 %4380, 31
  %4399 = trunc i32 %4398 to i8
  store i8 %4399, i8* %32, align 1
  %4400 = lshr i32 %4358, 31
  %4401 = lshr i32 %4379, 31
  %4402 = xor i32 %4398, %4400
  %4403 = xor i32 %4398, %4401
  %4404 = add nuw nsw i32 %4402, %4403
  %4405 = icmp eq i32 %4404, 2
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %38, align 1
  %4407 = load i64, i64* %RBP.i, align 8
  %4408 = add i64 %4407, -64
  %4409 = add i64 %4314, 50
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410, align 8
  store i64 %4411, i64* %RAX.i2535, align 8
  %4412 = add i64 %4407, -76
  %4413 = add i64 %4314, 54
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i32*
  %4415 = load i32, i32* %4414, align 4
  %4416 = sext i32 %4415 to i64
  store i64 %4416, i64* %RDX.i2517, align 8
  %4417 = shl nsw i64 %4416, 3
  %4418 = add i64 %4417, %4411
  %4419 = add i64 %4314, 58
  store i64 %4419, i64* %3, align 8
  %4420 = inttoptr i64 %4418 to i64*
  %4421 = load i64, i64* %4420, align 8
  store i64 %4421, i64* %RAX.i2535, align 8
  %4422 = add i64 %4407, -80
  %4423 = add i64 %4314, 62
  store i64 %4423, i64* %3, align 8
  %4424 = inttoptr i64 %4422 to i32*
  %4425 = load i32, i32* %4424, align 4
  %4426 = sext i32 %4425 to i64
  store i64 %4426, i64* %RDX.i2517, align 8
  %4427 = shl nsw i64 %4426, 2
  %4428 = add i64 %4427, %4421
  %4429 = add i64 %4314, 65
  store i64 %4429, i64* %3, align 8
  %4430 = inttoptr i64 %4428 to i32*
  store i32 %4380, i32* %4430, align 4
  %4431 = load i64, i64* %RBP.i, align 8
  %4432 = add i64 %4431, -64
  %4433 = load i64, i64* %3, align 8
  %4434 = add i64 %4433, 4
  store i64 %4434, i64* %3, align 8
  %4435 = inttoptr i64 %4432 to i64*
  %4436 = load i64, i64* %4435, align 8
  store i64 %4436, i64* %RAX.i2535, align 8
  %4437 = add i64 %4431, -76
  %4438 = add i64 %4433, 7
  store i64 %4438, i64* %3, align 8
  %4439 = inttoptr i64 %4437 to i32*
  %4440 = load i32, i32* %4439, align 4
  %4441 = add i32 %4440, -3
  %4442 = zext i32 %4441 to i64
  store i64 %4442, i64* %RCX.i2514, align 8
  %4443 = icmp ult i32 %4440, 3
  %4444 = zext i1 %4443 to i8
  store i8 %4444, i8* %14, align 1
  %4445 = and i32 %4441, 255
  %4446 = tail call i32 @llvm.ctpop.i32(i32 %4445)
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  %4449 = xor i8 %4448, 1
  store i8 %4449, i8* %21, align 1
  %4450 = xor i32 %4441, %4440
  %4451 = lshr i32 %4450, 4
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  store i8 %4453, i8* %26, align 1
  %4454 = icmp eq i32 %4441, 0
  %4455 = zext i1 %4454 to i8
  store i8 %4455, i8* %29, align 1
  %4456 = lshr i32 %4441, 31
  %4457 = trunc i32 %4456 to i8
  store i8 %4457, i8* %32, align 1
  %4458 = lshr i32 %4440, 31
  %4459 = xor i32 %4456, %4458
  %4460 = add nuw nsw i32 %4459, %4458
  %4461 = icmp eq i32 %4460, 2
  %4462 = zext i1 %4461 to i8
  store i8 %4462, i8* %38, align 1
  %4463 = sext i32 %4441 to i64
  store i64 %4463, i64* %RDX.i2517, align 8
  %4464 = shl nsw i64 %4463, 3
  %4465 = add i64 %4436, %4464
  %4466 = add i64 %4433, 17
  store i64 %4466, i64* %3, align 8
  %4467 = inttoptr i64 %4465 to i64*
  %4468 = load i64, i64* %4467, align 8
  store i64 %4468, i64* %RAX.i2535, align 8
  %4469 = add i64 %4431, -80
  %4470 = add i64 %4433, 21
  store i64 %4470, i64* %3, align 8
  %4471 = inttoptr i64 %4469 to i32*
  %4472 = load i32, i32* %4471, align 4
  %4473 = sext i32 %4472 to i64
  store i64 %4473, i64* %RDX.i2517, align 8
  %4474 = shl nsw i64 %4473, 2
  %4475 = add i64 %4474, %4468
  %4476 = add i64 %4433, 24
  store i64 %4476, i64* %3, align 8
  %4477 = inttoptr i64 %4475 to i32*
  %4478 = load i32, i32* %4477, align 4
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RCX.i2514, align 8
  %4480 = add i64 %4431, -24
  %4481 = add i64 %4433, 28
  store i64 %4481, i64* %3, align 8
  %4482 = inttoptr i64 %4480 to i64*
  %4483 = load i64, i64* %4482, align 8
  store i64 %4483, i64* %RAX.i2535, align 8
  %4484 = add i64 %4483, 312
  %4485 = add i64 %4433, 35
  store i64 %4485, i64* %3, align 8
  %4486 = inttoptr i64 %4484 to i64*
  %4487 = load i64, i64* %4486, align 8
  store i64 %4487, i64* %RAX.i2535, align 8
  %4488 = add i64 %4487, 32
  %4489 = add i64 %4433, 39
  store i64 %4489, i64* %3, align 8
  %4490 = inttoptr i64 %4488 to i64*
  %4491 = load i64, i64* %4490, align 8
  store i64 %4491, i64* %RAX.i2535, align 8
  %4492 = add i64 %4433, 43
  store i64 %4492, i64* %3, align 8
  %4493 = load i32, i32* %4471, align 4
  %4494 = sext i32 %4493 to i64
  store i64 %4494, i64* %RDX.i2517, align 8
  %4495 = shl nsw i64 %4494, 2
  %4496 = add i64 %4491, %4495
  %4497 = add i64 %4433, 46
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i32*
  %4499 = load i32, i32* %4498, align 4
  %4500 = add i32 %4499, %4478
  %4501 = zext i32 %4500 to i64
  store i64 %4501, i64* %RCX.i2514, align 8
  %4502 = icmp ult i32 %4500, %4478
  %4503 = icmp ult i32 %4500, %4499
  %4504 = or i1 %4502, %4503
  %4505 = zext i1 %4504 to i8
  store i8 %4505, i8* %14, align 1
  %4506 = and i32 %4500, 255
  %4507 = tail call i32 @llvm.ctpop.i32(i32 %4506)
  %4508 = trunc i32 %4507 to i8
  %4509 = and i8 %4508, 1
  %4510 = xor i8 %4509, 1
  store i8 %4510, i8* %21, align 1
  %4511 = xor i32 %4499, %4478
  %4512 = xor i32 %4511, %4500
  %4513 = lshr i32 %4512, 4
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  store i8 %4515, i8* %26, align 1
  %4516 = icmp eq i32 %4500, 0
  %4517 = zext i1 %4516 to i8
  store i8 %4517, i8* %29, align 1
  %4518 = lshr i32 %4500, 31
  %4519 = trunc i32 %4518 to i8
  store i8 %4519, i8* %32, align 1
  %4520 = lshr i32 %4478, 31
  %4521 = lshr i32 %4499, 31
  %4522 = xor i32 %4518, %4520
  %4523 = xor i32 %4518, %4521
  %4524 = add nuw nsw i32 %4522, %4523
  %4525 = icmp eq i32 %4524, 2
  %4526 = zext i1 %4525 to i8
  store i8 %4526, i8* %38, align 1
  %4527 = load i64, i64* %RBP.i, align 8
  %4528 = add i64 %4527, -84
  %4529 = add i64 %4433, 49
  store i64 %4529, i64* %3, align 8
  %4530 = inttoptr i64 %4528 to i32*
  store i32 %4500, i32* %4530, align 4
  %4531 = load i64, i64* %RBP.i, align 8
  %4532 = add i64 %4531, -64
  %4533 = load i64, i64* %3, align 8
  %4534 = add i64 %4533, 4
  store i64 %4534, i64* %3, align 8
  %4535 = inttoptr i64 %4532 to i64*
  %4536 = load i64, i64* %4535, align 8
  store i64 %4536, i64* %RAX.i2535, align 8
  %4537 = add i64 %4531, -76
  %4538 = add i64 %4533, 8
  store i64 %4538, i64* %3, align 8
  %4539 = inttoptr i64 %4537 to i32*
  %4540 = load i32, i32* %4539, align 4
  %4541 = sext i32 %4540 to i64
  store i64 %4541, i64* %RDX.i2517, align 8
  %4542 = shl nsw i64 %4541, 3
  %4543 = add i64 %4542, %4536
  %4544 = add i64 %4533, 12
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4543 to i64*
  %4546 = load i64, i64* %4545, align 8
  store i64 %4546, i64* %RAX.i2535, align 8
  %4547 = add i64 %4531, -80
  %4548 = add i64 %4533, 16
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to i32*
  %4550 = load i32, i32* %4549, align 4
  %4551 = sext i32 %4550 to i64
  store i64 %4551, i64* %RDX.i2517, align 8
  %4552 = load i32, i32* %ECX.i2367, align 4
  %4553 = shl nsw i64 %4551, 2
  %4554 = add i64 %4546, %4553
  %4555 = add i64 %4533, 19
  store i64 %4555, i64* %3, align 8
  %4556 = inttoptr i64 %4554 to i32*
  %4557 = load i32, i32* %4556, align 4
  %4558 = sub i32 %4552, %4557
  %4559 = icmp ult i32 %4552, %4557
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %14, align 1
  %4561 = and i32 %4558, 255
  %4562 = tail call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  store i8 %4565, i8* %21, align 1
  %4566 = xor i32 %4557, %4552
  %4567 = xor i32 %4566, %4558
  %4568 = lshr i32 %4567, 4
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  store i8 %4570, i8* %26, align 1
  %4571 = icmp eq i32 %4558, 0
  %4572 = zext i1 %4571 to i8
  store i8 %4572, i8* %29, align 1
  %4573 = lshr i32 %4558, 31
  %4574 = trunc i32 %4573 to i8
  store i8 %4574, i8* %32, align 1
  %4575 = lshr i32 %4552, 31
  %4576 = lshr i32 %4557, 31
  %4577 = xor i32 %4576, %4575
  %4578 = xor i32 %4573, %4575
  %4579 = add nuw nsw i32 %4578, %4577
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %38, align 1
  %4582 = icmp ne i8 %4574, 0
  %4583 = xor i1 %4582, %4580
  %4584 = or i1 %4571, %4583
  %.v140 = select i1 %4584, i64 47, i64 25
  %4585 = add i64 %4533, %.v140
  store i64 %4585, i64* %3, align 8
  br i1 %4584, label %block_.L_40e07f, label %block_40e069

block_40e069:                                     ; preds = %block_40dfde
  %4586 = add i64 %4531, -84
  %4587 = add i64 %4585, 3
  store i64 %4587, i64* %3, align 8
  %4588 = inttoptr i64 %4586 to i32*
  %4589 = load i32, i32* %4588, align 4
  %4590 = zext i32 %4589 to i64
  store i64 %4590, i64* %RAX.i2535, align 8
  %4591 = add i64 %4585, 7
  store i64 %4591, i64* %3, align 8
  %4592 = load i64, i64* %4535, align 8
  store i64 %4592, i64* %RCX.i2514, align 8
  %4593 = add i64 %4585, 11
  store i64 %4593, i64* %3, align 8
  %4594 = load i32, i32* %4539, align 4
  %4595 = sext i32 %4594 to i64
  store i64 %4595, i64* %RDX.i2517, align 8
  %4596 = shl nsw i64 %4595, 3
  %4597 = add i64 %4596, %4592
  %4598 = add i64 %4585, 15
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i64*
  %4600 = load i64, i64* %4599, align 8
  store i64 %4600, i64* %RCX.i2514, align 8
  %4601 = add i64 %4585, 19
  store i64 %4601, i64* %3, align 8
  %4602 = load i32, i32* %4549, align 4
  %4603 = sext i32 %4602 to i64
  store i64 %4603, i64* %RDX.i2517, align 8
  %4604 = shl nsw i64 %4603, 2
  %4605 = add i64 %4604, %4600
  %4606 = add i64 %4585, 22
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i32*
  store i32 %4589, i32* %4607, align 4
  %.pre86 = load i64, i64* %RBP.i, align 8
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_40e07f

block_.L_40e07f:                                  ; preds = %block_40e069, %block_40dfde
  %4608 = phi i64 [ %.pre87, %block_40e069 ], [ %4585, %block_40dfde ]
  %4609 = phi i64 [ %.pre86, %block_40e069 ], [ %4531, %block_40dfde ]
  %4610 = add i64 %4609, -24
  %4611 = add i64 %4608, 4
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to i64*
  %4613 = load i64, i64* %4612, align 8
  store i64 %4613, i64* %RAX.i2535, align 8
  %4614 = add i64 %4613, 432
  %4615 = add i64 %4608, 11
  store i64 %4615, i64* %3, align 8
  %4616 = inttoptr i64 %4614 to i64*
  %4617 = load i64, i64* %4616, align 8
  store i64 %4617, i64* %RAX.i2535, align 8
  %4618 = add i64 %4609, -88
  %4619 = add i64 %4608, 15
  store i64 %4619, i64* %3, align 8
  %4620 = inttoptr i64 %4618 to i32*
  %4621 = load i32, i32* %4620, align 4
  %4622 = sext i32 %4621 to i64
  store i64 %4622, i64* %RCX.i2514, align 8
  %4623 = shl nsw i64 %4622, 3
  %4624 = add i64 %4623, %4617
  %4625 = add i64 %4608, 19
  store i64 %4625, i64* %3, align 8
  %4626 = inttoptr i64 %4624 to i64*
  %4627 = load i64, i64* %4626, align 8
  store i64 %4627, i64* %RAX.i2535, align 8
  %4628 = add i64 %4609, -80
  %4629 = add i64 %4608, 23
  store i64 %4629, i64* %3, align 8
  %4630 = inttoptr i64 %4628 to i32*
  %4631 = load i32, i32* %4630, align 4
  %4632 = sext i32 %4631 to i64
  store i64 %4632, i64* %RCX.i2514, align 8
  %4633 = shl nsw i64 %4632, 2
  %4634 = add i64 %4633, %4627
  %4635 = add i64 %4608, 26
  store i64 %4635, i64* %3, align 8
  %4636 = inttoptr i64 %4634 to i32*
  %4637 = load i32, i32* %4636, align 4
  %4638 = zext i32 %4637 to i64
  store i64 %4638, i64* %RDX.i2517, align 8
  %4639 = add i64 %4609, -64
  %4640 = add i64 %4608, 30
  store i64 %4640, i64* %3, align 8
  %4641 = inttoptr i64 %4639 to i64*
  %4642 = load i64, i64* %4641, align 8
  store i64 %4642, i64* %RAX.i2535, align 8
  %4643 = add i64 %4609, -76
  %4644 = add i64 %4608, 34
  store i64 %4644, i64* %3, align 8
  %4645 = inttoptr i64 %4643 to i32*
  %4646 = load i32, i32* %4645, align 4
  %4647 = sext i32 %4646 to i64
  store i64 %4647, i64* %RCX.i2514, align 8
  %4648 = shl nsw i64 %4647, 3
  %4649 = add i64 %4648, %4642
  %4650 = add i64 %4608, 38
  store i64 %4650, i64* %3, align 8
  %4651 = inttoptr i64 %4649 to i64*
  %4652 = load i64, i64* %4651, align 8
  store i64 %4652, i64* %RAX.i2535, align 8
  %4653 = add i64 %4608, 42
  store i64 %4653, i64* %3, align 8
  %4654 = load i32, i32* %4630, align 4
  %4655 = sext i32 %4654 to i64
  store i64 %4655, i64* %RCX.i2514, align 8
  %4656 = shl nsw i64 %4655, 2
  %4657 = add i64 %4652, %4656
  %4658 = add i64 %4608, 45
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4657 to i32*
  %4660 = load i32, i32* %4659, align 4
  %4661 = add i32 %4660, %4637
  %4662 = zext i32 %4661 to i64
  store i64 %4662, i64* %RDX.i2517, align 8
  %4663 = icmp ult i32 %4661, %4637
  %4664 = icmp ult i32 %4661, %4660
  %4665 = or i1 %4663, %4664
  %4666 = zext i1 %4665 to i8
  store i8 %4666, i8* %14, align 1
  %4667 = and i32 %4661, 255
  %4668 = tail call i32 @llvm.ctpop.i32(i32 %4667)
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  %4671 = xor i8 %4670, 1
  store i8 %4671, i8* %21, align 1
  %4672 = xor i32 %4660, %4637
  %4673 = xor i32 %4672, %4661
  %4674 = lshr i32 %4673, 4
  %4675 = trunc i32 %4674 to i8
  %4676 = and i8 %4675, 1
  store i8 %4676, i8* %26, align 1
  %4677 = icmp eq i32 %4661, 0
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %29, align 1
  %4679 = lshr i32 %4661, 31
  %4680 = trunc i32 %4679 to i8
  store i8 %4680, i8* %32, align 1
  %4681 = lshr i32 %4637, 31
  %4682 = lshr i32 %4660, 31
  %4683 = xor i32 %4679, %4681
  %4684 = xor i32 %4679, %4682
  %4685 = add nuw nsw i32 %4683, %4684
  %4686 = icmp eq i32 %4685, 2
  %4687 = zext i1 %4686 to i8
  store i8 %4687, i8* %38, align 1
  %4688 = add i64 %4608, 48
  store i64 %4688, i64* %3, align 8
  store i32 %4661, i32* %4659, align 4
  %.pre88 = load i64, i64* %RBP.i, align 8
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_40e0af

block_.L_40e0af:                                  ; preds = %block_.L_40e07f, %block_.L_40dfd4
  %4689 = phi i64 [ %.pre89, %block_.L_40e07f ], [ %4314, %block_.L_40dfd4 ]
  %4690 = phi i64 [ %.pre88, %block_.L_40e07f ], [ %4285, %block_.L_40dfd4 ]
  %4691 = add i64 %4690, -56
  %4692 = add i64 %4689, 4
  store i64 %4692, i64* %3, align 8
  %4693 = inttoptr i64 %4691 to i64*
  %4694 = load i64, i64* %4693, align 8
  store i64 %4694, i64* %RAX.i2535, align 8
  %4695 = add i64 %4690, -76
  %4696 = add i64 %4689, 7
  store i64 %4696, i64* %3, align 8
  %4697 = inttoptr i64 %4695 to i32*
  %4698 = load i32, i32* %4697, align 4
  %4699 = add i32 %4698, -2
  %4700 = zext i32 %4699 to i64
  store i64 %4700, i64* %RCX.i2514, align 8
  %4701 = icmp ult i32 %4698, 2
  %4702 = zext i1 %4701 to i8
  store i8 %4702, i8* %14, align 1
  %4703 = and i32 %4699, 255
  %4704 = tail call i32 @llvm.ctpop.i32(i32 %4703)
  %4705 = trunc i32 %4704 to i8
  %4706 = and i8 %4705, 1
  %4707 = xor i8 %4706, 1
  store i8 %4707, i8* %21, align 1
  %4708 = xor i32 %4699, %4698
  %4709 = lshr i32 %4708, 4
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  store i8 %4711, i8* %26, align 1
  %4712 = icmp eq i32 %4699, 0
  %4713 = zext i1 %4712 to i8
  store i8 %4713, i8* %29, align 1
  %4714 = lshr i32 %4699, 31
  %4715 = trunc i32 %4714 to i8
  store i8 %4715, i8* %32, align 1
  %4716 = lshr i32 %4698, 31
  %4717 = xor i32 %4714, %4716
  %4718 = add nuw nsw i32 %4717, %4716
  %4719 = icmp eq i32 %4718, 2
  %4720 = zext i1 %4719 to i8
  store i8 %4720, i8* %38, align 1
  %4721 = sext i32 %4699 to i64
  store i64 %4721, i64* %RDX.i2517, align 8
  %4722 = shl nsw i64 %4721, 3
  %4723 = add i64 %4694, %4722
  %4724 = add i64 %4689, 17
  store i64 %4724, i64* %3, align 8
  %4725 = inttoptr i64 %4723 to i64*
  %4726 = load i64, i64* %4725, align 8
  store i64 %4726, i64* %RAX.i2535, align 8
  %4727 = add i64 %4690, -80
  %4728 = add i64 %4689, 21
  store i64 %4728, i64* %3, align 8
  %4729 = inttoptr i64 %4727 to i32*
  %4730 = load i32, i32* %4729, align 4
  %4731 = sext i32 %4730 to i64
  store i64 %4731, i64* %RDX.i2517, align 8
  %4732 = shl nsw i64 %4731, 2
  %4733 = add i64 %4732, %4726
  %4734 = add i64 %4689, 24
  store i64 %4734, i64* %3, align 8
  %4735 = inttoptr i64 %4733 to i32*
  %4736 = load i32, i32* %4735, align 4
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %RCX.i2514, align 8
  %4738 = add i64 %4690, -24
  %4739 = add i64 %4689, 28
  store i64 %4739, i64* %3, align 8
  %4740 = inttoptr i64 %4738 to i64*
  %4741 = load i64, i64* %4740, align 8
  store i64 %4741, i64* %RAX.i2535, align 8
  %4742 = add i64 %4741, 312
  %4743 = add i64 %4689, 35
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i64*
  %4745 = load i64, i64* %4744, align 8
  store i64 %4745, i64* %RAX.i2535, align 8
  %4746 = add i64 %4745, 8
  %4747 = add i64 %4689, 39
  store i64 %4747, i64* %3, align 8
  %4748 = inttoptr i64 %4746 to i64*
  %4749 = load i64, i64* %4748, align 8
  store i64 %4749, i64* %RAX.i2535, align 8
  %4750 = add i64 %4689, 43
  store i64 %4750, i64* %3, align 8
  %4751 = load i32, i32* %4729, align 4
  %4752 = sext i32 %4751 to i64
  store i64 %4752, i64* %RDX.i2517, align 8
  %4753 = shl nsw i64 %4752, 2
  %4754 = add i64 %4749, %4753
  %4755 = add i64 %4689, 46
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4754 to i32*
  %4757 = load i32, i32* %4756, align 4
  %4758 = add i32 %4757, %4736
  %4759 = zext i32 %4758 to i64
  store i64 %4759, i64* %RCX.i2514, align 8
  %4760 = icmp ult i32 %4758, %4736
  %4761 = icmp ult i32 %4758, %4757
  %4762 = or i1 %4760, %4761
  %4763 = zext i1 %4762 to i8
  store i8 %4763, i8* %14, align 1
  %4764 = and i32 %4758, 255
  %4765 = tail call i32 @llvm.ctpop.i32(i32 %4764)
  %4766 = trunc i32 %4765 to i8
  %4767 = and i8 %4766, 1
  %4768 = xor i8 %4767, 1
  store i8 %4768, i8* %21, align 1
  %4769 = xor i32 %4757, %4736
  %4770 = xor i32 %4769, %4758
  %4771 = lshr i32 %4770, 4
  %4772 = trunc i32 %4771 to i8
  %4773 = and i8 %4772, 1
  store i8 %4773, i8* %26, align 1
  %4774 = icmp eq i32 %4758, 0
  %4775 = zext i1 %4774 to i8
  store i8 %4775, i8* %29, align 1
  %4776 = lshr i32 %4758, 31
  %4777 = trunc i32 %4776 to i8
  store i8 %4777, i8* %32, align 1
  %4778 = lshr i32 %4736, 31
  %4779 = lshr i32 %4757, 31
  %4780 = xor i32 %4776, %4778
  %4781 = xor i32 %4776, %4779
  %4782 = add nuw nsw i32 %4780, %4781
  %4783 = icmp eq i32 %4782, 2
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %38, align 1
  %4785 = load i64, i64* %RBP.i, align 8
  %4786 = add i64 %4785, -24
  %4787 = add i64 %4689, 50
  store i64 %4787, i64* %3, align 8
  %4788 = inttoptr i64 %4786 to i64*
  %4789 = load i64, i64* %4788, align 8
  store i64 %4789, i64* %RAX.i2535, align 8
  %4790 = add i64 %4789, 440
  %4791 = add i64 %4689, 56
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i32*
  %4793 = load i32, i32* %4792, align 4
  %4794 = add i32 %4793, %4758
  %4795 = zext i32 %4794 to i64
  store i64 %4795, i64* %RCX.i2514, align 8
  %4796 = icmp ult i32 %4794, %4758
  %4797 = icmp ult i32 %4794, %4793
  %4798 = or i1 %4796, %4797
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %14, align 1
  %4800 = and i32 %4794, 255
  %4801 = tail call i32 @llvm.ctpop.i32(i32 %4800)
  %4802 = trunc i32 %4801 to i8
  %4803 = and i8 %4802, 1
  %4804 = xor i8 %4803, 1
  store i8 %4804, i8* %21, align 1
  %4805 = xor i32 %4793, %4758
  %4806 = xor i32 %4805, %4794
  %4807 = lshr i32 %4806, 4
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  store i8 %4809, i8* %26, align 1
  %4810 = icmp eq i32 %4794, 0
  %4811 = zext i1 %4810 to i8
  store i8 %4811, i8* %29, align 1
  %4812 = lshr i32 %4794, 31
  %4813 = trunc i32 %4812 to i8
  store i8 %4813, i8* %32, align 1
  %4814 = lshr i32 %4793, 31
  %4815 = xor i32 %4812, %4776
  %4816 = xor i32 %4812, %4814
  %4817 = add nuw nsw i32 %4815, %4816
  %4818 = icmp eq i32 %4817, 2
  %4819 = zext i1 %4818 to i8
  store i8 %4819, i8* %38, align 1
  %4820 = add i64 %4785, -84
  %4821 = add i64 %4689, 59
  store i64 %4821, i64* %3, align 8
  %4822 = inttoptr i64 %4820 to i32*
  store i32 %4794, i32* %4822, align 4
  %4823 = load i64, i64* %RBP.i, align 8
  %4824 = add i64 %4823, -64
  %4825 = load i64, i64* %3, align 8
  %4826 = add i64 %4825, 4
  store i64 %4826, i64* %3, align 8
  %4827 = inttoptr i64 %4824 to i64*
  %4828 = load i64, i64* %4827, align 8
  store i64 %4828, i64* %RAX.i2535, align 8
  %4829 = add i64 %4823, -76
  %4830 = add i64 %4825, 8
  store i64 %4830, i64* %3, align 8
  %4831 = inttoptr i64 %4829 to i32*
  %4832 = load i32, i32* %4831, align 4
  %4833 = sext i32 %4832 to i64
  store i64 %4833, i64* %RDX.i2517, align 8
  %4834 = shl nsw i64 %4833, 3
  %4835 = add i64 %4834, %4828
  %4836 = add i64 %4825, 12
  store i64 %4836, i64* %3, align 8
  %4837 = inttoptr i64 %4835 to i64*
  %4838 = load i64, i64* %4837, align 8
  store i64 %4838, i64* %RAX.i2535, align 8
  %4839 = add i64 %4823, -80
  %4840 = add i64 %4825, 16
  store i64 %4840, i64* %3, align 8
  %4841 = inttoptr i64 %4839 to i32*
  %4842 = load i32, i32* %4841, align 4
  %4843 = sext i32 %4842 to i64
  store i64 %4843, i64* %RDX.i2517, align 8
  %4844 = load i32, i32* %ECX.i2367, align 4
  %4845 = shl nsw i64 %4843, 2
  %4846 = add i64 %4838, %4845
  %4847 = add i64 %4825, 19
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  %4849 = load i32, i32* %4848, align 4
  %4850 = sub i32 %4844, %4849
  %4851 = icmp ult i32 %4844, %4849
  %4852 = zext i1 %4851 to i8
  store i8 %4852, i8* %14, align 1
  %4853 = and i32 %4850, 255
  %4854 = tail call i32 @llvm.ctpop.i32(i32 %4853)
  %4855 = trunc i32 %4854 to i8
  %4856 = and i8 %4855, 1
  %4857 = xor i8 %4856, 1
  store i8 %4857, i8* %21, align 1
  %4858 = xor i32 %4849, %4844
  %4859 = xor i32 %4858, %4850
  %4860 = lshr i32 %4859, 4
  %4861 = trunc i32 %4860 to i8
  %4862 = and i8 %4861, 1
  store i8 %4862, i8* %26, align 1
  %4863 = icmp eq i32 %4850, 0
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %29, align 1
  %4865 = lshr i32 %4850, 31
  %4866 = trunc i32 %4865 to i8
  store i8 %4866, i8* %32, align 1
  %4867 = lshr i32 %4844, 31
  %4868 = lshr i32 %4849, 31
  %4869 = xor i32 %4868, %4867
  %4870 = xor i32 %4865, %4867
  %4871 = add nuw nsw i32 %4870, %4869
  %4872 = icmp eq i32 %4871, 2
  %4873 = zext i1 %4872 to i8
  store i8 %4873, i8* %38, align 1
  %4874 = icmp ne i8 %4866, 0
  %4875 = xor i1 %4874, %4872
  %4876 = or i1 %4863, %4875
  %.v141 = select i1 %4876, i64 47, i64 25
  %4877 = add i64 %4825, %.v141
  store i64 %4877, i64* %3, align 8
  br i1 %4876, label %block_.L_40e119, label %block_40e103

block_40e103:                                     ; preds = %block_.L_40e0af
  %4878 = add i64 %4823, -84
  %4879 = add i64 %4877, 3
  store i64 %4879, i64* %3, align 8
  %4880 = inttoptr i64 %4878 to i32*
  %4881 = load i32, i32* %4880, align 4
  %4882 = zext i32 %4881 to i64
  store i64 %4882, i64* %RAX.i2535, align 8
  %4883 = add i64 %4877, 7
  store i64 %4883, i64* %3, align 8
  %4884 = load i64, i64* %4827, align 8
  store i64 %4884, i64* %RCX.i2514, align 8
  %4885 = add i64 %4877, 11
  store i64 %4885, i64* %3, align 8
  %4886 = load i32, i32* %4831, align 4
  %4887 = sext i32 %4886 to i64
  store i64 %4887, i64* %RDX.i2517, align 8
  %4888 = shl nsw i64 %4887, 3
  %4889 = add i64 %4888, %4884
  %4890 = add i64 %4877, 15
  store i64 %4890, i64* %3, align 8
  %4891 = inttoptr i64 %4889 to i64*
  %4892 = load i64, i64* %4891, align 8
  store i64 %4892, i64* %RCX.i2514, align 8
  %4893 = add i64 %4877, 19
  store i64 %4893, i64* %3, align 8
  %4894 = load i32, i32* %4841, align 4
  %4895 = sext i32 %4894 to i64
  store i64 %4895, i64* %RDX.i2517, align 8
  %4896 = shl nsw i64 %4895, 2
  %4897 = add i64 %4896, %4892
  %4898 = add i64 %4877, 22
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i32*
  store i32 %4881, i32* %4899, align 4
  %.pre90 = load i64, i64* %RBP.i, align 8
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_40e119

block_.L_40e119:                                  ; preds = %block_40e103, %block_.L_40e0af
  %4900 = phi i64 [ %.pre91, %block_40e103 ], [ %4877, %block_.L_40e0af ]
  %4901 = phi i64 [ %.pre90, %block_40e103 ], [ %4823, %block_.L_40e0af ]
  %4902 = add i64 %4901, -64
  %4903 = add i64 %4900, 4
  store i64 %4903, i64* %3, align 8
  %4904 = inttoptr i64 %4902 to i64*
  %4905 = load i64, i64* %4904, align 8
  store i64 %4905, i64* %RAX.i2535, align 8
  %4906 = add i64 %4901, -76
  %4907 = add i64 %4900, 7
  store i64 %4907, i64* %3, align 8
  %4908 = inttoptr i64 %4906 to i32*
  %4909 = load i32, i32* %4908, align 4
  %4910 = add i32 %4909, -2
  %4911 = zext i32 %4910 to i64
  store i64 %4911, i64* %RCX.i2514, align 8
  %4912 = icmp ult i32 %4909, 2
  %4913 = zext i1 %4912 to i8
  store i8 %4913, i8* %14, align 1
  %4914 = and i32 %4910, 255
  %4915 = tail call i32 @llvm.ctpop.i32(i32 %4914)
  %4916 = trunc i32 %4915 to i8
  %4917 = and i8 %4916, 1
  %4918 = xor i8 %4917, 1
  store i8 %4918, i8* %21, align 1
  %4919 = xor i32 %4910, %4909
  %4920 = lshr i32 %4919, 4
  %4921 = trunc i32 %4920 to i8
  %4922 = and i8 %4921, 1
  store i8 %4922, i8* %26, align 1
  %4923 = icmp eq i32 %4910, 0
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %29, align 1
  %4925 = lshr i32 %4910, 31
  %4926 = trunc i32 %4925 to i8
  store i8 %4926, i8* %32, align 1
  %4927 = lshr i32 %4909, 31
  %4928 = xor i32 %4925, %4927
  %4929 = add nuw nsw i32 %4928, %4927
  %4930 = icmp eq i32 %4929, 2
  %4931 = zext i1 %4930 to i8
  store i8 %4931, i8* %38, align 1
  %4932 = sext i32 %4910 to i64
  store i64 %4932, i64* %RDX.i2517, align 8
  %4933 = shl nsw i64 %4932, 3
  %4934 = add i64 %4905, %4933
  %4935 = add i64 %4900, 17
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i64*
  %4937 = load i64, i64* %4936, align 8
  store i64 %4937, i64* %RAX.i2535, align 8
  %4938 = add i64 %4901, -80
  %4939 = add i64 %4900, 21
  store i64 %4939, i64* %3, align 8
  %4940 = inttoptr i64 %4938 to i32*
  %4941 = load i32, i32* %4940, align 4
  %4942 = sext i32 %4941 to i64
  store i64 %4942, i64* %RDX.i2517, align 8
  %4943 = shl nsw i64 %4942, 2
  %4944 = add i64 %4943, %4937
  %4945 = add i64 %4900, 24
  store i64 %4945, i64* %3, align 8
  %4946 = inttoptr i64 %4944 to i32*
  %4947 = load i32, i32* %4946, align 4
  %4948 = zext i32 %4947 to i64
  store i64 %4948, i64* %RCX.i2514, align 8
  %4949 = add i64 %4901, -24
  %4950 = add i64 %4900, 28
  store i64 %4950, i64* %3, align 8
  %4951 = inttoptr i64 %4949 to i64*
  %4952 = load i64, i64* %4951, align 8
  store i64 %4952, i64* %RAX.i2535, align 8
  %4953 = add i64 %4952, 312
  %4954 = add i64 %4900, 35
  store i64 %4954, i64* %3, align 8
  %4955 = inttoptr i64 %4953 to i64*
  %4956 = load i64, i64* %4955, align 8
  store i64 %4956, i64* %RAX.i2535, align 8
  %4957 = add i64 %4956, 32
  %4958 = add i64 %4900, 39
  store i64 %4958, i64* %3, align 8
  %4959 = inttoptr i64 %4957 to i64*
  %4960 = load i64, i64* %4959, align 8
  store i64 %4960, i64* %RAX.i2535, align 8
  %4961 = add i64 %4900, 43
  store i64 %4961, i64* %3, align 8
  %4962 = load i32, i32* %4940, align 4
  %4963 = sext i32 %4962 to i64
  store i64 %4963, i64* %RDX.i2517, align 8
  %4964 = shl nsw i64 %4963, 2
  %4965 = add i64 %4960, %4964
  %4966 = add i64 %4900, 46
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i32*
  %4968 = load i32, i32* %4967, align 4
  %4969 = add i32 %4968, %4947
  %4970 = zext i32 %4969 to i64
  store i64 %4970, i64* %RCX.i2514, align 8
  %4971 = icmp ult i32 %4969, %4947
  %4972 = icmp ult i32 %4969, %4968
  %4973 = or i1 %4971, %4972
  %4974 = zext i1 %4973 to i8
  store i8 %4974, i8* %14, align 1
  %4975 = and i32 %4969, 255
  %4976 = tail call i32 @llvm.ctpop.i32(i32 %4975)
  %4977 = trunc i32 %4976 to i8
  %4978 = and i8 %4977, 1
  %4979 = xor i8 %4978, 1
  store i8 %4979, i8* %21, align 1
  %4980 = xor i32 %4968, %4947
  %4981 = xor i32 %4980, %4969
  %4982 = lshr i32 %4981, 4
  %4983 = trunc i32 %4982 to i8
  %4984 = and i8 %4983, 1
  store i8 %4984, i8* %26, align 1
  %4985 = icmp eq i32 %4969, 0
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %29, align 1
  %4987 = lshr i32 %4969, 31
  %4988 = trunc i32 %4987 to i8
  store i8 %4988, i8* %32, align 1
  %4989 = lshr i32 %4947, 31
  %4990 = lshr i32 %4968, 31
  %4991 = xor i32 %4987, %4989
  %4992 = xor i32 %4987, %4990
  %4993 = add nuw nsw i32 %4991, %4992
  %4994 = icmp eq i32 %4993, 2
  %4995 = zext i1 %4994 to i8
  store i8 %4995, i8* %38, align 1
  %4996 = load i64, i64* %RBP.i, align 8
  %4997 = add i64 %4996, -24
  %4998 = add i64 %4900, 50
  store i64 %4998, i64* %3, align 8
  %4999 = inttoptr i64 %4997 to i64*
  %5000 = load i64, i64* %4999, align 8
  store i64 %5000, i64* %RAX.i2535, align 8
  %5001 = add i64 %5000, 440
  %5002 = add i64 %4900, 56
  store i64 %5002, i64* %3, align 8
  %5003 = inttoptr i64 %5001 to i32*
  %5004 = load i32, i32* %5003, align 4
  %5005 = add i32 %5004, %4969
  %5006 = zext i32 %5005 to i64
  store i64 %5006, i64* %RCX.i2514, align 8
  %5007 = icmp ult i32 %5005, %4969
  %5008 = icmp ult i32 %5005, %5004
  %5009 = or i1 %5007, %5008
  %5010 = zext i1 %5009 to i8
  store i8 %5010, i8* %14, align 1
  %5011 = and i32 %5005, 255
  %5012 = tail call i32 @llvm.ctpop.i32(i32 %5011)
  %5013 = trunc i32 %5012 to i8
  %5014 = and i8 %5013, 1
  %5015 = xor i8 %5014, 1
  store i8 %5015, i8* %21, align 1
  %5016 = xor i32 %5004, %4969
  %5017 = xor i32 %5016, %5005
  %5018 = lshr i32 %5017, 4
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  store i8 %5020, i8* %26, align 1
  %5021 = icmp eq i32 %5005, 0
  %5022 = zext i1 %5021 to i8
  store i8 %5022, i8* %29, align 1
  %5023 = lshr i32 %5005, 31
  %5024 = trunc i32 %5023 to i8
  store i8 %5024, i8* %32, align 1
  %5025 = lshr i32 %5004, 31
  %5026 = xor i32 %5023, %4987
  %5027 = xor i32 %5023, %5025
  %5028 = add nuw nsw i32 %5026, %5027
  %5029 = icmp eq i32 %5028, 2
  %5030 = zext i1 %5029 to i8
  store i8 %5030, i8* %38, align 1
  %5031 = add i64 %4996, -84
  %5032 = add i64 %4900, 59
  store i64 %5032, i64* %3, align 8
  %5033 = inttoptr i64 %5031 to i32*
  store i32 %5005, i32* %5033, align 4
  %5034 = load i64, i64* %RBP.i, align 8
  %5035 = add i64 %5034, -64
  %5036 = load i64, i64* %3, align 8
  %5037 = add i64 %5036, 4
  store i64 %5037, i64* %3, align 8
  %5038 = inttoptr i64 %5035 to i64*
  %5039 = load i64, i64* %5038, align 8
  store i64 %5039, i64* %RAX.i2535, align 8
  %5040 = add i64 %5034, -76
  %5041 = add i64 %5036, 8
  store i64 %5041, i64* %3, align 8
  %5042 = inttoptr i64 %5040 to i32*
  %5043 = load i32, i32* %5042, align 4
  %5044 = sext i32 %5043 to i64
  store i64 %5044, i64* %RDX.i2517, align 8
  %5045 = shl nsw i64 %5044, 3
  %5046 = add i64 %5045, %5039
  %5047 = add i64 %5036, 12
  store i64 %5047, i64* %3, align 8
  %5048 = inttoptr i64 %5046 to i64*
  %5049 = load i64, i64* %5048, align 8
  store i64 %5049, i64* %RAX.i2535, align 8
  %5050 = add i64 %5034, -80
  %5051 = add i64 %5036, 16
  store i64 %5051, i64* %3, align 8
  %5052 = inttoptr i64 %5050 to i32*
  %5053 = load i32, i32* %5052, align 4
  %5054 = sext i32 %5053 to i64
  store i64 %5054, i64* %RDX.i2517, align 8
  %5055 = load i32, i32* %ECX.i2367, align 4
  %5056 = shl nsw i64 %5054, 2
  %5057 = add i64 %5049, %5056
  %5058 = add i64 %5036, 19
  store i64 %5058, i64* %3, align 8
  %5059 = inttoptr i64 %5057 to i32*
  %5060 = load i32, i32* %5059, align 4
  %5061 = sub i32 %5055, %5060
  %5062 = icmp ult i32 %5055, %5060
  %5063 = zext i1 %5062 to i8
  store i8 %5063, i8* %14, align 1
  %5064 = and i32 %5061, 255
  %5065 = tail call i32 @llvm.ctpop.i32(i32 %5064)
  %5066 = trunc i32 %5065 to i8
  %5067 = and i8 %5066, 1
  %5068 = xor i8 %5067, 1
  store i8 %5068, i8* %21, align 1
  %5069 = xor i32 %5060, %5055
  %5070 = xor i32 %5069, %5061
  %5071 = lshr i32 %5070, 4
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  store i8 %5073, i8* %26, align 1
  %5074 = icmp eq i32 %5061, 0
  %5075 = zext i1 %5074 to i8
  store i8 %5075, i8* %29, align 1
  %5076 = lshr i32 %5061, 31
  %5077 = trunc i32 %5076 to i8
  store i8 %5077, i8* %32, align 1
  %5078 = lshr i32 %5055, 31
  %5079 = lshr i32 %5060, 31
  %5080 = xor i32 %5079, %5078
  %5081 = xor i32 %5076, %5078
  %5082 = add nuw nsw i32 %5081, %5080
  %5083 = icmp eq i32 %5082, 2
  %5084 = zext i1 %5083 to i8
  store i8 %5084, i8* %38, align 1
  %5085 = icmp ne i8 %5077, 0
  %5086 = xor i1 %5085, %5083
  %5087 = or i1 %5074, %5086
  %.v142 = select i1 %5087, i64 47, i64 25
  %5088 = add i64 %5036, %.v142
  store i64 %5088, i64* %3, align 8
  br i1 %5087, label %block_.L_40e183, label %block_40e16d

block_40e16d:                                     ; preds = %block_.L_40e119
  %5089 = add i64 %5034, -84
  %5090 = add i64 %5088, 3
  store i64 %5090, i64* %3, align 8
  %5091 = inttoptr i64 %5089 to i32*
  %5092 = load i32, i32* %5091, align 4
  %5093 = zext i32 %5092 to i64
  store i64 %5093, i64* %RAX.i2535, align 8
  %5094 = add i64 %5088, 7
  store i64 %5094, i64* %3, align 8
  %5095 = load i64, i64* %5038, align 8
  store i64 %5095, i64* %RCX.i2514, align 8
  %5096 = add i64 %5088, 11
  store i64 %5096, i64* %3, align 8
  %5097 = load i32, i32* %5042, align 4
  %5098 = sext i32 %5097 to i64
  store i64 %5098, i64* %RDX.i2517, align 8
  %5099 = shl nsw i64 %5098, 3
  %5100 = add i64 %5099, %5095
  %5101 = add i64 %5088, 15
  store i64 %5101, i64* %3, align 8
  %5102 = inttoptr i64 %5100 to i64*
  %5103 = load i64, i64* %5102, align 8
  store i64 %5103, i64* %RCX.i2514, align 8
  %5104 = add i64 %5088, 19
  store i64 %5104, i64* %3, align 8
  %5105 = load i32, i32* %5052, align 4
  %5106 = sext i32 %5105 to i64
  store i64 %5106, i64* %RDX.i2517, align 8
  %5107 = shl nsw i64 %5106, 2
  %5108 = add i64 %5107, %5103
  %5109 = add i64 %5088, 22
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5108 to i32*
  store i32 %5092, i32* %5110, align 4
  %.pre92 = load i64, i64* %RBP.i, align 8
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_40e183

block_.L_40e183:                                  ; preds = %block_40e16d, %block_.L_40e119
  %5111 = phi i64 [ %.pre93, %block_40e16d ], [ %5088, %block_.L_40e119 ]
  %5112 = phi i64 [ %.pre92, %block_40e16d ], [ %5034, %block_.L_40e119 ]
  %5113 = add i64 %5112, -76
  %5114 = add i64 %5111, 4
  store i64 %5114, i64* %3, align 8
  %5115 = inttoptr i64 %5113 to i32*
  %5116 = load i32, i32* %5115, align 4
  %5117 = add i32 %5116, -4
  %5118 = icmp ult i32 %5116, 4
  %5119 = zext i1 %5118 to i8
  store i8 %5119, i8* %14, align 1
  %5120 = and i32 %5117, 255
  %5121 = tail call i32 @llvm.ctpop.i32(i32 %5120)
  %5122 = trunc i32 %5121 to i8
  %5123 = and i8 %5122, 1
  %5124 = xor i8 %5123, 1
  store i8 %5124, i8* %21, align 1
  %5125 = xor i32 %5117, %5116
  %5126 = lshr i32 %5125, 4
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  store i8 %5128, i8* %26, align 1
  %5129 = icmp eq i32 %5117, 0
  %5130 = zext i1 %5129 to i8
  store i8 %5130, i8* %29, align 1
  %5131 = lshr i32 %5117, 31
  %5132 = trunc i32 %5131 to i8
  store i8 %5132, i8* %32, align 1
  %5133 = lshr i32 %5116, 31
  %5134 = xor i32 %5131, %5133
  %5135 = add nuw nsw i32 %5134, %5133
  %5136 = icmp eq i32 %5135, 2
  %5137 = zext i1 %5136 to i8
  store i8 %5137, i8* %38, align 1
  %5138 = icmp ne i8 %5132, 0
  %5139 = xor i1 %5138, %5136
  %5140 = or i1 %5129, %5139
  %.v143 = select i1 %5140, i64 227, i64 10
  %5141 = add i64 %5111, %.v143
  store i64 %5141, i64* %3, align 8
  br i1 %5140, label %block_.L_40e266, label %block_40e18d

block_40e18d:                                     ; preds = %block_.L_40e183
  %5142 = add i64 %5112, -56
  %5143 = add i64 %5141, 4
  store i64 %5143, i64* %3, align 8
  %5144 = inttoptr i64 %5142 to i64*
  %5145 = load i64, i64* %5144, align 8
  store i64 %5145, i64* %RAX.i2535, align 8
  %5146 = add i64 %5141, 7
  store i64 %5146, i64* %3, align 8
  %5147 = load i32, i32* %5115, align 4
  %5148 = add i32 %5147, -4
  %5149 = zext i32 %5148 to i64
  store i64 %5149, i64* %RCX.i2514, align 8
  %5150 = icmp ult i32 %5147, 4
  %5151 = zext i1 %5150 to i8
  store i8 %5151, i8* %14, align 1
  %5152 = and i32 %5148, 255
  %5153 = tail call i32 @llvm.ctpop.i32(i32 %5152)
  %5154 = trunc i32 %5153 to i8
  %5155 = and i8 %5154, 1
  %5156 = xor i8 %5155, 1
  store i8 %5156, i8* %21, align 1
  %5157 = xor i32 %5148, %5147
  %5158 = lshr i32 %5157, 4
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  store i8 %5160, i8* %26, align 1
  %5161 = icmp eq i32 %5148, 0
  %5162 = zext i1 %5161 to i8
  store i8 %5162, i8* %29, align 1
  %5163 = lshr i32 %5148, 31
  %5164 = trunc i32 %5163 to i8
  store i8 %5164, i8* %32, align 1
  %5165 = lshr i32 %5147, 31
  %5166 = xor i32 %5163, %5165
  %5167 = add nuw nsw i32 %5166, %5165
  %5168 = icmp eq i32 %5167, 2
  %5169 = zext i1 %5168 to i8
  store i8 %5169, i8* %38, align 1
  %5170 = sext i32 %5148 to i64
  store i64 %5170, i64* %RDX.i2517, align 8
  %5171 = shl nsw i64 %5170, 3
  %5172 = add i64 %5145, %5171
  %5173 = add i64 %5141, 17
  store i64 %5173, i64* %3, align 8
  %5174 = inttoptr i64 %5172 to i64*
  %5175 = load i64, i64* %5174, align 8
  store i64 %5175, i64* %RAX.i2535, align 8
  %5176 = add i64 %5112, -80
  %5177 = add i64 %5141, 21
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i32*
  %5179 = load i32, i32* %5178, align 4
  %5180 = sext i32 %5179 to i64
  store i64 %5180, i64* %RDX.i2517, align 8
  %5181 = shl nsw i64 %5180, 2
  %5182 = add i64 %5181, %5175
  %5183 = add i64 %5141, 24
  store i64 %5183, i64* %3, align 8
  %5184 = inttoptr i64 %5182 to i32*
  %5185 = load i32, i32* %5184, align 4
  %5186 = zext i32 %5185 to i64
  store i64 %5186, i64* %RCX.i2514, align 8
  %5187 = add i64 %5112, -24
  %5188 = add i64 %5141, 28
  store i64 %5188, i64* %3, align 8
  %5189 = inttoptr i64 %5187 to i64*
  %5190 = load i64, i64* %5189, align 8
  store i64 %5190, i64* %RAX.i2535, align 8
  %5191 = add i64 %5190, 312
  %5192 = add i64 %5141, 35
  store i64 %5192, i64* %3, align 8
  %5193 = inttoptr i64 %5191 to i64*
  %5194 = load i64, i64* %5193, align 8
  store i64 %5194, i64* %RAX.i2535, align 8
  %5195 = add i64 %5194, 8
  %5196 = add i64 %5141, 39
  store i64 %5196, i64* %3, align 8
  %5197 = inttoptr i64 %5195 to i64*
  %5198 = load i64, i64* %5197, align 8
  store i64 %5198, i64* %RAX.i2535, align 8
  %5199 = add i64 %5141, 43
  store i64 %5199, i64* %3, align 8
  %5200 = load i32, i32* %5178, align 4
  %5201 = sext i32 %5200 to i64
  store i64 %5201, i64* %RDX.i2517, align 8
  %5202 = shl nsw i64 %5201, 2
  %5203 = add i64 %5198, %5202
  %5204 = add i64 %5141, 46
  store i64 %5204, i64* %3, align 8
  %5205 = inttoptr i64 %5203 to i32*
  %5206 = load i32, i32* %5205, align 4
  %5207 = add i32 %5206, %5185
  %5208 = zext i32 %5207 to i64
  store i64 %5208, i64* %RCX.i2514, align 8
  %5209 = icmp ult i32 %5207, %5185
  %5210 = icmp ult i32 %5207, %5206
  %5211 = or i1 %5209, %5210
  %5212 = zext i1 %5211 to i8
  store i8 %5212, i8* %14, align 1
  %5213 = and i32 %5207, 255
  %5214 = tail call i32 @llvm.ctpop.i32(i32 %5213)
  %5215 = trunc i32 %5214 to i8
  %5216 = and i8 %5215, 1
  %5217 = xor i8 %5216, 1
  store i8 %5217, i8* %21, align 1
  %5218 = xor i32 %5206, %5185
  %5219 = xor i32 %5218, %5207
  %5220 = lshr i32 %5219, 4
  %5221 = trunc i32 %5220 to i8
  %5222 = and i8 %5221, 1
  store i8 %5222, i8* %26, align 1
  %5223 = icmp eq i32 %5207, 0
  %5224 = zext i1 %5223 to i8
  store i8 %5224, i8* %29, align 1
  %5225 = lshr i32 %5207, 31
  %5226 = trunc i32 %5225 to i8
  store i8 %5226, i8* %32, align 1
  %5227 = lshr i32 %5185, 31
  %5228 = lshr i32 %5206, 31
  %5229 = xor i32 %5225, %5227
  %5230 = xor i32 %5225, %5228
  %5231 = add nuw nsw i32 %5229, %5230
  %5232 = icmp eq i32 %5231, 2
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %38, align 1
  %5234 = load i64, i64* %RBP.i, align 8
  %5235 = add i64 %5234, -24
  %5236 = add i64 %5141, 50
  store i64 %5236, i64* %3, align 8
  %5237 = inttoptr i64 %5235 to i64*
  %5238 = load i64, i64* %5237, align 8
  store i64 %5238, i64* %RAX.i2535, align 8
  %5239 = add i64 %5238, 444
  %5240 = add i64 %5141, 56
  store i64 %5240, i64* %3, align 8
  %5241 = inttoptr i64 %5239 to i32*
  %5242 = load i32, i32* %5241, align 4
  %5243 = add i32 %5242, %5207
  %5244 = zext i32 %5243 to i64
  store i64 %5244, i64* %RCX.i2514, align 8
  %5245 = icmp ult i32 %5243, %5207
  %5246 = icmp ult i32 %5243, %5242
  %5247 = or i1 %5245, %5246
  %5248 = zext i1 %5247 to i8
  store i8 %5248, i8* %14, align 1
  %5249 = and i32 %5243, 255
  %5250 = tail call i32 @llvm.ctpop.i32(i32 %5249)
  %5251 = trunc i32 %5250 to i8
  %5252 = and i8 %5251, 1
  %5253 = xor i8 %5252, 1
  store i8 %5253, i8* %21, align 1
  %5254 = xor i32 %5242, %5207
  %5255 = xor i32 %5254, %5243
  %5256 = lshr i32 %5255, 4
  %5257 = trunc i32 %5256 to i8
  %5258 = and i8 %5257, 1
  store i8 %5258, i8* %26, align 1
  %5259 = icmp eq i32 %5243, 0
  %5260 = zext i1 %5259 to i8
  store i8 %5260, i8* %29, align 1
  %5261 = lshr i32 %5243, 31
  %5262 = trunc i32 %5261 to i8
  store i8 %5262, i8* %32, align 1
  %5263 = lshr i32 %5242, 31
  %5264 = xor i32 %5261, %5225
  %5265 = xor i32 %5261, %5263
  %5266 = add nuw nsw i32 %5264, %5265
  %5267 = icmp eq i32 %5266, 2
  %5268 = zext i1 %5267 to i8
  store i8 %5268, i8* %38, align 1
  %5269 = add i64 %5234, -84
  %5270 = add i64 %5141, 59
  store i64 %5270, i64* %3, align 8
  %5271 = inttoptr i64 %5269 to i32*
  store i32 %5243, i32* %5271, align 4
  %5272 = load i64, i64* %RBP.i, align 8
  %5273 = add i64 %5272, -64
  %5274 = load i64, i64* %3, align 8
  %5275 = add i64 %5274, 4
  store i64 %5275, i64* %3, align 8
  %5276 = inttoptr i64 %5273 to i64*
  %5277 = load i64, i64* %5276, align 8
  store i64 %5277, i64* %RAX.i2535, align 8
  %5278 = add i64 %5272, -76
  %5279 = add i64 %5274, 8
  store i64 %5279, i64* %3, align 8
  %5280 = inttoptr i64 %5278 to i32*
  %5281 = load i32, i32* %5280, align 4
  %5282 = sext i32 %5281 to i64
  store i64 %5282, i64* %RDX.i2517, align 8
  %5283 = shl nsw i64 %5282, 3
  %5284 = add i64 %5283, %5277
  %5285 = add i64 %5274, 12
  store i64 %5285, i64* %3, align 8
  %5286 = inttoptr i64 %5284 to i64*
  %5287 = load i64, i64* %5286, align 8
  store i64 %5287, i64* %RAX.i2535, align 8
  %5288 = add i64 %5272, -80
  %5289 = add i64 %5274, 16
  store i64 %5289, i64* %3, align 8
  %5290 = inttoptr i64 %5288 to i32*
  %5291 = load i32, i32* %5290, align 4
  %5292 = sext i32 %5291 to i64
  store i64 %5292, i64* %RDX.i2517, align 8
  %5293 = load i32, i32* %ECX.i2367, align 4
  %5294 = shl nsw i64 %5292, 2
  %5295 = add i64 %5287, %5294
  %5296 = add i64 %5274, 19
  store i64 %5296, i64* %3, align 8
  %5297 = inttoptr i64 %5295 to i32*
  %5298 = load i32, i32* %5297, align 4
  %5299 = sub i32 %5293, %5298
  %5300 = icmp ult i32 %5293, %5298
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %14, align 1
  %5302 = and i32 %5299, 255
  %5303 = tail call i32 @llvm.ctpop.i32(i32 %5302)
  %5304 = trunc i32 %5303 to i8
  %5305 = and i8 %5304, 1
  %5306 = xor i8 %5305, 1
  store i8 %5306, i8* %21, align 1
  %5307 = xor i32 %5298, %5293
  %5308 = xor i32 %5307, %5299
  %5309 = lshr i32 %5308, 4
  %5310 = trunc i32 %5309 to i8
  %5311 = and i8 %5310, 1
  store i8 %5311, i8* %26, align 1
  %5312 = icmp eq i32 %5299, 0
  %5313 = zext i1 %5312 to i8
  store i8 %5313, i8* %29, align 1
  %5314 = lshr i32 %5299, 31
  %5315 = trunc i32 %5314 to i8
  store i8 %5315, i8* %32, align 1
  %5316 = lshr i32 %5293, 31
  %5317 = lshr i32 %5298, 31
  %5318 = xor i32 %5317, %5316
  %5319 = xor i32 %5314, %5316
  %5320 = add nuw nsw i32 %5319, %5318
  %5321 = icmp eq i32 %5320, 2
  %5322 = zext i1 %5321 to i8
  store i8 %5322, i8* %38, align 1
  %5323 = icmp ne i8 %5315, 0
  %5324 = xor i1 %5323, %5321
  %5325 = or i1 %5312, %5324
  %.v144 = select i1 %5325, i64 47, i64 25
  %5326 = add i64 %5274, %.v144
  store i64 %5326, i64* %3, align 8
  br i1 %5325, label %block_.L_40e1f7, label %block_40e1e1

block_40e1e1:                                     ; preds = %block_40e18d
  %5327 = add i64 %5272, -84
  %5328 = add i64 %5326, 3
  store i64 %5328, i64* %3, align 8
  %5329 = inttoptr i64 %5327 to i32*
  %5330 = load i32, i32* %5329, align 4
  %5331 = zext i32 %5330 to i64
  store i64 %5331, i64* %RAX.i2535, align 8
  %5332 = add i64 %5326, 7
  store i64 %5332, i64* %3, align 8
  %5333 = load i64, i64* %5276, align 8
  store i64 %5333, i64* %RCX.i2514, align 8
  %5334 = add i64 %5326, 11
  store i64 %5334, i64* %3, align 8
  %5335 = load i32, i32* %5280, align 4
  %5336 = sext i32 %5335 to i64
  store i64 %5336, i64* %RDX.i2517, align 8
  %5337 = shl nsw i64 %5336, 3
  %5338 = add i64 %5337, %5333
  %5339 = add i64 %5326, 15
  store i64 %5339, i64* %3, align 8
  %5340 = inttoptr i64 %5338 to i64*
  %5341 = load i64, i64* %5340, align 8
  store i64 %5341, i64* %RCX.i2514, align 8
  %5342 = add i64 %5326, 19
  store i64 %5342, i64* %3, align 8
  %5343 = load i32, i32* %5290, align 4
  %5344 = sext i32 %5343 to i64
  store i64 %5344, i64* %RDX.i2517, align 8
  %5345 = shl nsw i64 %5344, 2
  %5346 = add i64 %5345, %5341
  %5347 = add i64 %5326, 22
  store i64 %5347, i64* %3, align 8
  %5348 = inttoptr i64 %5346 to i32*
  store i32 %5330, i32* %5348, align 4
  %.pre94 = load i64, i64* %RBP.i, align 8
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_40e1f7

block_.L_40e1f7:                                  ; preds = %block_40e1e1, %block_40e18d
  %5349 = phi i64 [ %.pre95, %block_40e1e1 ], [ %5326, %block_40e18d ]
  %5350 = phi i64 [ %.pre94, %block_40e1e1 ], [ %5272, %block_40e18d ]
  %5351 = add i64 %5350, -64
  %5352 = add i64 %5349, 4
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5351 to i64*
  %5354 = load i64, i64* %5353, align 8
  store i64 %5354, i64* %RAX.i2535, align 8
  %5355 = add i64 %5350, -76
  %5356 = add i64 %5349, 7
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i32*
  %5358 = load i32, i32* %5357, align 4
  %5359 = add i32 %5358, -4
  %5360 = zext i32 %5359 to i64
  store i64 %5360, i64* %RCX.i2514, align 8
  %5361 = icmp ult i32 %5358, 4
  %5362 = zext i1 %5361 to i8
  store i8 %5362, i8* %14, align 1
  %5363 = and i32 %5359, 255
  %5364 = tail call i32 @llvm.ctpop.i32(i32 %5363)
  %5365 = trunc i32 %5364 to i8
  %5366 = and i8 %5365, 1
  %5367 = xor i8 %5366, 1
  store i8 %5367, i8* %21, align 1
  %5368 = xor i32 %5359, %5358
  %5369 = lshr i32 %5368, 4
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  store i8 %5371, i8* %26, align 1
  %5372 = icmp eq i32 %5359, 0
  %5373 = zext i1 %5372 to i8
  store i8 %5373, i8* %29, align 1
  %5374 = lshr i32 %5359, 31
  %5375 = trunc i32 %5374 to i8
  store i8 %5375, i8* %32, align 1
  %5376 = lshr i32 %5358, 31
  %5377 = xor i32 %5374, %5376
  %5378 = add nuw nsw i32 %5377, %5376
  %5379 = icmp eq i32 %5378, 2
  %5380 = zext i1 %5379 to i8
  store i8 %5380, i8* %38, align 1
  %5381 = sext i32 %5359 to i64
  store i64 %5381, i64* %RDX.i2517, align 8
  %5382 = shl nsw i64 %5381, 3
  %5383 = add i64 %5354, %5382
  %5384 = add i64 %5349, 17
  store i64 %5384, i64* %3, align 8
  %5385 = inttoptr i64 %5383 to i64*
  %5386 = load i64, i64* %5385, align 8
  store i64 %5386, i64* %RAX.i2535, align 8
  %5387 = add i64 %5350, -80
  %5388 = add i64 %5349, 21
  store i64 %5388, i64* %3, align 8
  %5389 = inttoptr i64 %5387 to i32*
  %5390 = load i32, i32* %5389, align 4
  %5391 = sext i32 %5390 to i64
  store i64 %5391, i64* %RDX.i2517, align 8
  %5392 = shl nsw i64 %5391, 2
  %5393 = add i64 %5392, %5386
  %5394 = add i64 %5349, 24
  store i64 %5394, i64* %3, align 8
  %5395 = inttoptr i64 %5393 to i32*
  %5396 = load i32, i32* %5395, align 4
  %5397 = zext i32 %5396 to i64
  store i64 %5397, i64* %RCX.i2514, align 8
  %5398 = add i64 %5350, -24
  %5399 = add i64 %5349, 28
  store i64 %5399, i64* %3, align 8
  %5400 = inttoptr i64 %5398 to i64*
  %5401 = load i64, i64* %5400, align 8
  store i64 %5401, i64* %RAX.i2535, align 8
  %5402 = add i64 %5401, 312
  %5403 = add i64 %5349, 35
  store i64 %5403, i64* %3, align 8
  %5404 = inttoptr i64 %5402 to i64*
  %5405 = load i64, i64* %5404, align 8
  store i64 %5405, i64* %RAX.i2535, align 8
  %5406 = add i64 %5405, 32
  %5407 = add i64 %5349, 39
  store i64 %5407, i64* %3, align 8
  %5408 = inttoptr i64 %5406 to i64*
  %5409 = load i64, i64* %5408, align 8
  store i64 %5409, i64* %RAX.i2535, align 8
  %5410 = add i64 %5349, 43
  store i64 %5410, i64* %3, align 8
  %5411 = load i32, i32* %5389, align 4
  %5412 = sext i32 %5411 to i64
  store i64 %5412, i64* %RDX.i2517, align 8
  %5413 = shl nsw i64 %5412, 2
  %5414 = add i64 %5409, %5413
  %5415 = add i64 %5349, 46
  store i64 %5415, i64* %3, align 8
  %5416 = inttoptr i64 %5414 to i32*
  %5417 = load i32, i32* %5416, align 4
  %5418 = add i32 %5417, %5396
  %5419 = zext i32 %5418 to i64
  store i64 %5419, i64* %RCX.i2514, align 8
  %5420 = icmp ult i32 %5418, %5396
  %5421 = icmp ult i32 %5418, %5417
  %5422 = or i1 %5420, %5421
  %5423 = zext i1 %5422 to i8
  store i8 %5423, i8* %14, align 1
  %5424 = and i32 %5418, 255
  %5425 = tail call i32 @llvm.ctpop.i32(i32 %5424)
  %5426 = trunc i32 %5425 to i8
  %5427 = and i8 %5426, 1
  %5428 = xor i8 %5427, 1
  store i8 %5428, i8* %21, align 1
  %5429 = xor i32 %5417, %5396
  %5430 = xor i32 %5429, %5418
  %5431 = lshr i32 %5430, 4
  %5432 = trunc i32 %5431 to i8
  %5433 = and i8 %5432, 1
  store i8 %5433, i8* %26, align 1
  %5434 = icmp eq i32 %5418, 0
  %5435 = zext i1 %5434 to i8
  store i8 %5435, i8* %29, align 1
  %5436 = lshr i32 %5418, 31
  %5437 = trunc i32 %5436 to i8
  store i8 %5437, i8* %32, align 1
  %5438 = lshr i32 %5396, 31
  %5439 = lshr i32 %5417, 31
  %5440 = xor i32 %5436, %5438
  %5441 = xor i32 %5436, %5439
  %5442 = add nuw nsw i32 %5440, %5441
  %5443 = icmp eq i32 %5442, 2
  %5444 = zext i1 %5443 to i8
  store i8 %5444, i8* %38, align 1
  %5445 = load i64, i64* %RBP.i, align 8
  %5446 = add i64 %5445, -24
  %5447 = add i64 %5349, 50
  store i64 %5447, i64* %3, align 8
  %5448 = inttoptr i64 %5446 to i64*
  %5449 = load i64, i64* %5448, align 8
  store i64 %5449, i64* %RAX.i2535, align 8
  %5450 = add i64 %5449, 444
  %5451 = add i64 %5349, 56
  store i64 %5451, i64* %3, align 8
  %5452 = inttoptr i64 %5450 to i32*
  %5453 = load i32, i32* %5452, align 4
  %5454 = add i32 %5453, %5418
  %5455 = zext i32 %5454 to i64
  store i64 %5455, i64* %RCX.i2514, align 8
  %5456 = icmp ult i32 %5454, %5418
  %5457 = icmp ult i32 %5454, %5453
  %5458 = or i1 %5456, %5457
  %5459 = zext i1 %5458 to i8
  store i8 %5459, i8* %14, align 1
  %5460 = and i32 %5454, 255
  %5461 = tail call i32 @llvm.ctpop.i32(i32 %5460)
  %5462 = trunc i32 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = xor i8 %5463, 1
  store i8 %5464, i8* %21, align 1
  %5465 = xor i32 %5453, %5418
  %5466 = xor i32 %5465, %5454
  %5467 = lshr i32 %5466, 4
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  store i8 %5469, i8* %26, align 1
  %5470 = icmp eq i32 %5454, 0
  %5471 = zext i1 %5470 to i8
  store i8 %5471, i8* %29, align 1
  %5472 = lshr i32 %5454, 31
  %5473 = trunc i32 %5472 to i8
  store i8 %5473, i8* %32, align 1
  %5474 = lshr i32 %5453, 31
  %5475 = xor i32 %5472, %5436
  %5476 = xor i32 %5472, %5474
  %5477 = add nuw nsw i32 %5475, %5476
  %5478 = icmp eq i32 %5477, 2
  %5479 = zext i1 %5478 to i8
  store i8 %5479, i8* %38, align 1
  %5480 = add i64 %5445, -84
  %5481 = add i64 %5349, 59
  store i64 %5481, i64* %3, align 8
  %5482 = inttoptr i64 %5480 to i32*
  store i32 %5454, i32* %5482, align 4
  %5483 = load i64, i64* %RBP.i, align 8
  %5484 = add i64 %5483, -64
  %5485 = load i64, i64* %3, align 8
  %5486 = add i64 %5485, 4
  store i64 %5486, i64* %3, align 8
  %5487 = inttoptr i64 %5484 to i64*
  %5488 = load i64, i64* %5487, align 8
  store i64 %5488, i64* %RAX.i2535, align 8
  %5489 = add i64 %5483, -76
  %5490 = add i64 %5485, 8
  store i64 %5490, i64* %3, align 8
  %5491 = inttoptr i64 %5489 to i32*
  %5492 = load i32, i32* %5491, align 4
  %5493 = sext i32 %5492 to i64
  store i64 %5493, i64* %RDX.i2517, align 8
  %5494 = shl nsw i64 %5493, 3
  %5495 = add i64 %5494, %5488
  %5496 = add i64 %5485, 12
  store i64 %5496, i64* %3, align 8
  %5497 = inttoptr i64 %5495 to i64*
  %5498 = load i64, i64* %5497, align 8
  store i64 %5498, i64* %RAX.i2535, align 8
  %5499 = add i64 %5483, -80
  %5500 = add i64 %5485, 16
  store i64 %5500, i64* %3, align 8
  %5501 = inttoptr i64 %5499 to i32*
  %5502 = load i32, i32* %5501, align 4
  %5503 = sext i32 %5502 to i64
  store i64 %5503, i64* %RDX.i2517, align 8
  %5504 = load i32, i32* %ECX.i2367, align 4
  %5505 = shl nsw i64 %5503, 2
  %5506 = add i64 %5498, %5505
  %5507 = add i64 %5485, 19
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = sub i32 %5504, %5509
  %5511 = icmp ult i32 %5504, %5509
  %5512 = zext i1 %5511 to i8
  store i8 %5512, i8* %14, align 1
  %5513 = and i32 %5510, 255
  %5514 = tail call i32 @llvm.ctpop.i32(i32 %5513)
  %5515 = trunc i32 %5514 to i8
  %5516 = and i8 %5515, 1
  %5517 = xor i8 %5516, 1
  store i8 %5517, i8* %21, align 1
  %5518 = xor i32 %5509, %5504
  %5519 = xor i32 %5518, %5510
  %5520 = lshr i32 %5519, 4
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  store i8 %5522, i8* %26, align 1
  %5523 = icmp eq i32 %5510, 0
  %5524 = zext i1 %5523 to i8
  store i8 %5524, i8* %29, align 1
  %5525 = lshr i32 %5510, 31
  %5526 = trunc i32 %5525 to i8
  store i8 %5526, i8* %32, align 1
  %5527 = lshr i32 %5504, 31
  %5528 = lshr i32 %5509, 31
  %5529 = xor i32 %5528, %5527
  %5530 = xor i32 %5525, %5527
  %5531 = add nuw nsw i32 %5530, %5529
  %5532 = icmp eq i32 %5531, 2
  %5533 = zext i1 %5532 to i8
  store i8 %5533, i8* %38, align 1
  %5534 = icmp ne i8 %5526, 0
  %5535 = xor i1 %5534, %5532
  %5536 = or i1 %5523, %5535
  %.v145 = select i1 %5536, i64 47, i64 25
  %5537 = add i64 %5485, %.v145
  store i64 %5537, i64* %3, align 8
  br i1 %5536, label %block_.L_40e261, label %block_40e24b

block_40e24b:                                     ; preds = %block_.L_40e1f7
  %5538 = add i64 %5483, -84
  %5539 = add i64 %5537, 3
  store i64 %5539, i64* %3, align 8
  %5540 = inttoptr i64 %5538 to i32*
  %5541 = load i32, i32* %5540, align 4
  %5542 = zext i32 %5541 to i64
  store i64 %5542, i64* %RAX.i2535, align 8
  %5543 = add i64 %5537, 7
  store i64 %5543, i64* %3, align 8
  %5544 = load i64, i64* %5487, align 8
  store i64 %5544, i64* %RCX.i2514, align 8
  %5545 = add i64 %5537, 11
  store i64 %5545, i64* %3, align 8
  %5546 = load i32, i32* %5491, align 4
  %5547 = sext i32 %5546 to i64
  store i64 %5547, i64* %RDX.i2517, align 8
  %5548 = shl nsw i64 %5547, 3
  %5549 = add i64 %5548, %5544
  %5550 = add i64 %5537, 15
  store i64 %5550, i64* %3, align 8
  %5551 = inttoptr i64 %5549 to i64*
  %5552 = load i64, i64* %5551, align 8
  store i64 %5552, i64* %RCX.i2514, align 8
  %5553 = add i64 %5537, 19
  store i64 %5553, i64* %3, align 8
  %5554 = load i32, i32* %5501, align 4
  %5555 = sext i32 %5554 to i64
  store i64 %5555, i64* %RDX.i2517, align 8
  %5556 = shl nsw i64 %5555, 2
  %5557 = add i64 %5556, %5552
  %5558 = add i64 %5537, 22
  store i64 %5558, i64* %3, align 8
  %5559 = inttoptr i64 %5557 to i32*
  store i32 %5541, i32* %5559, align 4
  %.pre96 = load i64, i64* %3, align 8
  %.pre97.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40e261

block_.L_40e261:                                  ; preds = %block_40e24b, %block_.L_40e1f7
  %.pre97 = phi i64 [ %.pre97.pre, %block_40e24b ], [ %5483, %block_.L_40e1f7 ]
  %5560 = phi i64 [ %.pre96, %block_40e24b ], [ %5537, %block_.L_40e1f7 ]
  %5561 = add i64 %5560, 5
  store i64 %5561, i64* %3, align 8
  br label %block_.L_40e266

block_.L_40e266:                                  ; preds = %block_.L_40e261, %block_.L_40e183
  %5562 = phi i64 [ %.pre97, %block_.L_40e261 ], [ %5112, %block_.L_40e183 ]
  %5563 = phi i64 [ %5561, %block_.L_40e261 ], [ %5141, %block_.L_40e183 ]
  %5564 = add i64 %5562, -80
  %5565 = add i64 %5563, 8
  store i64 %5565, i64* %3, align 8
  %5566 = inttoptr i64 %5564 to i32*
  %5567 = load i32, i32* %5566, align 4
  %5568 = add i32 %5567, 1
  %5569 = zext i32 %5568 to i64
  store i64 %5569, i64* %RAX.i2535, align 8
  %5570 = icmp eq i32 %5567, -1
  %5571 = icmp eq i32 %5568, 0
  %5572 = or i1 %5570, %5571
  %5573 = zext i1 %5572 to i8
  store i8 %5573, i8* %14, align 1
  %5574 = and i32 %5568, 255
  %5575 = tail call i32 @llvm.ctpop.i32(i32 %5574)
  %5576 = trunc i32 %5575 to i8
  %5577 = and i8 %5576, 1
  %5578 = xor i8 %5577, 1
  store i8 %5578, i8* %21, align 1
  %5579 = xor i32 %5568, %5567
  %5580 = lshr i32 %5579, 4
  %5581 = trunc i32 %5580 to i8
  %5582 = and i8 %5581, 1
  store i8 %5582, i8* %26, align 1
  %5583 = zext i1 %5571 to i8
  store i8 %5583, i8* %29, align 1
  %5584 = lshr i32 %5568, 31
  %5585 = trunc i32 %5584 to i8
  store i8 %5585, i8* %32, align 1
  %5586 = lshr i32 %5567, 31
  %5587 = xor i32 %5584, %5586
  %5588 = add nuw nsw i32 %5587, %5584
  %5589 = icmp eq i32 %5588, 2
  %5590 = zext i1 %5589 to i8
  store i8 %5590, i8* %38, align 1
  %5591 = add i64 %5563, 14
  store i64 %5591, i64* %3, align 8
  store i32 %5568, i32* %5566, align 4
  %5592 = load i64, i64* %3, align 8
  %5593 = add i64 %5592, -2196
  store i64 %5593, i64* %3, align 8
  br label %block_.L_40d9e0

block_.L_40e279:                                  ; preds = %block_.L_40d9e0
  %5594 = add i64 %1037, -48
  %5595 = add i64 %1077, 4
  store i64 %5595, i64* %3, align 8
  %5596 = inttoptr i64 %5594 to i64*
  %5597 = load i64, i64* %5596, align 8
  store i64 %5597, i64* %RAX.i2535, align 8
  %5598 = add i64 %1037, -76
  %5599 = add i64 %1077, 7
  store i64 %5599, i64* %3, align 8
  %5600 = inttoptr i64 %5598 to i32*
  %5601 = load i32, i32* %5600, align 4
  %5602 = add i32 %5601, -1
  %5603 = zext i32 %5602 to i64
  store i64 %5603, i64* %RCX.i2514, align 8
  %5604 = icmp eq i32 %5601, 0
  %5605 = zext i1 %5604 to i8
  store i8 %5605, i8* %14, align 1
  %5606 = and i32 %5602, 255
  %5607 = tail call i32 @llvm.ctpop.i32(i32 %5606)
  %5608 = trunc i32 %5607 to i8
  %5609 = and i8 %5608, 1
  %5610 = xor i8 %5609, 1
  store i8 %5610, i8* %21, align 1
  %5611 = xor i32 %5602, %5601
  %5612 = lshr i32 %5611, 4
  %5613 = trunc i32 %5612 to i8
  %5614 = and i8 %5613, 1
  store i8 %5614, i8* %26, align 1
  %5615 = icmp eq i32 %5602, 0
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %29, align 1
  %5617 = lshr i32 %5602, 31
  %5618 = trunc i32 %5617 to i8
  store i8 %5618, i8* %32, align 1
  %5619 = lshr i32 %5601, 31
  %5620 = xor i32 %5617, %5619
  %5621 = add nuw nsw i32 %5620, %5619
  %5622 = icmp eq i32 %5621, 2
  %5623 = zext i1 %5622 to i8
  store i8 %5623, i8* %38, align 1
  %5624 = sext i32 %5602 to i64
  store i64 %5624, i64* %RDX.i2517, align 8
  %5625 = shl nsw i64 %5624, 3
  %5626 = add i64 %5597, %5625
  %5627 = add i64 %1077, 17
  store i64 %5627, i64* %3, align 8
  %5628 = inttoptr i64 %5626 to i64*
  %5629 = load i64, i64* %5628, align 8
  store i64 %5629, i64* %RAX.i2535, align 8
  %5630 = add i64 %5629, 16
  %5631 = add i64 %1077, 20
  store i64 %5631, i64* %3, align 8
  %5632 = inttoptr i64 %5630 to i32*
  %5633 = load i32, i32* %5632, align 4
  %5634 = zext i32 %5633 to i64
  store i64 %5634, i64* %RCX.i2514, align 8
  %5635 = add i64 %1077, 24
  store i64 %5635, i64* %3, align 8
  %5636 = load i64, i64* %1045, align 8
  store i64 %5636, i64* %RAX.i2535, align 8
  %5637 = add i64 %5636, 340
  %5638 = add i64 %1077, 30
  store i64 %5638, i64* %3, align 8
  %5639 = inttoptr i64 %5637 to i32*
  %5640 = load i32, i32* %5639, align 4
  %5641 = add i32 %5640, %5633
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RCX.i2514, align 8
  %5643 = icmp ult i32 %5641, %5633
  %5644 = icmp ult i32 %5641, %5640
  %5645 = or i1 %5643, %5644
  %5646 = zext i1 %5645 to i8
  store i8 %5646, i8* %14, align 1
  %5647 = and i32 %5641, 255
  %5648 = tail call i32 @llvm.ctpop.i32(i32 %5647)
  %5649 = trunc i32 %5648 to i8
  %5650 = and i8 %5649, 1
  %5651 = xor i8 %5650, 1
  store i8 %5651, i8* %21, align 1
  %5652 = xor i32 %5640, %5633
  %5653 = xor i32 %5652, %5641
  %5654 = lshr i32 %5653, 4
  %5655 = trunc i32 %5654 to i8
  %5656 = and i8 %5655, 1
  store i8 %5656, i8* %26, align 1
  %5657 = icmp eq i32 %5641, 0
  %5658 = zext i1 %5657 to i8
  store i8 %5658, i8* %29, align 1
  %5659 = lshr i32 %5641, 31
  %5660 = trunc i32 %5659 to i8
  store i8 %5660, i8* %32, align 1
  %5661 = lshr i32 %5633, 31
  %5662 = lshr i32 %5640, 31
  %5663 = xor i32 %5659, %5661
  %5664 = xor i32 %5659, %5662
  %5665 = add nuw nsw i32 %5663, %5664
  %5666 = icmp eq i32 %5665, 2
  %5667 = zext i1 %5666 to i8
  store i8 %5667, i8* %38, align 1
  %5668 = load i64, i64* %RBP.i, align 8
  %5669 = add i64 %5668, -48
  %5670 = add i64 %1077, 34
  store i64 %5670, i64* %3, align 8
  %5671 = inttoptr i64 %5669 to i64*
  %5672 = load i64, i64* %5671, align 8
  store i64 %5672, i64* %RAX.i2535, align 8
  %5673 = add i64 %5668, -76
  %5674 = add i64 %1077, 38
  store i64 %5674, i64* %3, align 8
  %5675 = inttoptr i64 %5673 to i32*
  %5676 = load i32, i32* %5675, align 4
  %5677 = sext i32 %5676 to i64
  store i64 %5677, i64* %RDX.i2517, align 8
  %5678 = shl nsw i64 %5677, 3
  %5679 = add i64 %5678, %5672
  %5680 = add i64 %1077, 42
  store i64 %5680, i64* %3, align 8
  %5681 = inttoptr i64 %5679 to i64*
  %5682 = load i64, i64* %5681, align 8
  store i64 %5682, i64* %RAX.i2535, align 8
  %5683 = add i64 %5682, 16
  %5684 = add i64 %1077, 45
  store i64 %5684, i64* %3, align 8
  %5685 = inttoptr i64 %5683 to i32*
  store i32 %5641, i32* %5685, align 4
  %5686 = load i64, i64* %RBP.i, align 8
  %5687 = add i64 %5686, -72
  %5688 = load i64, i64* %3, align 8
  %5689 = add i64 %5688, 4
  store i64 %5689, i64* %3, align 8
  %5690 = inttoptr i64 %5687 to i64*
  %5691 = load i64, i64* %5690, align 8
  store i64 %5691, i64* %RAX.i2535, align 8
  %5692 = add i64 %5686, -76
  %5693 = add i64 %5688, 8
  store i64 %5693, i64* %3, align 8
  %5694 = inttoptr i64 %5692 to i32*
  %5695 = load i32, i32* %5694, align 4
  %5696 = sext i32 %5695 to i64
  store i64 %5696, i64* %RDX.i2517, align 8
  %5697 = shl nsw i64 %5696, 3
  %5698 = add i64 %5697, %5691
  %5699 = add i64 %5688, 12
  store i64 %5699, i64* %3, align 8
  %5700 = inttoptr i64 %5698 to i64*
  %5701 = load i64, i64* %5700, align 8
  store i64 %5701, i64* %RAX.i2535, align 8
  %5702 = add i64 %5686, -24
  %5703 = add i64 %5688, 16
  store i64 %5703, i64* %3, align 8
  %5704 = inttoptr i64 %5702 to i64*
  %5705 = load i64, i64* %5704, align 8
  store i64 %5705, i64* %RDX.i2517, align 8
  %5706 = add i64 %5705, 136
  %5707 = add i64 %5688, 23
  store i64 %5707, i64* %3, align 8
  %5708 = inttoptr i64 %5706 to i32*
  %5709 = load i32, i32* %5708, align 4
  %5710 = sext i32 %5709 to i64
  store i64 %5710, i64* %RDX.i2517, align 8
  %5711 = shl nsw i64 %5710, 2
  %5712 = add i64 %5711, %5701
  %5713 = add i64 %5688, 26
  store i64 %5713, i64* %3, align 8
  %5714 = inttoptr i64 %5712 to i32*
  %5715 = load i32, i32* %5714, align 4
  %5716 = zext i32 %5715 to i64
  store i64 %5716, i64* %RCX.i2514, align 8
  %5717 = add i64 %5686, -48
  %5718 = add i64 %5688, 30
  store i64 %5718, i64* %3, align 8
  %5719 = inttoptr i64 %5717 to i64*
  %5720 = load i64, i64* %5719, align 8
  store i64 %5720, i64* %RAX.i2535, align 8
  %5721 = add i64 %5688, 34
  store i64 %5721, i64* %3, align 8
  %5722 = load i32, i32* %5694, align 4
  %5723 = sext i32 %5722 to i64
  store i64 %5723, i64* %RDX.i2517, align 8
  %5724 = shl nsw i64 %5723, 3
  %5725 = add i64 %5724, %5720
  %5726 = add i64 %5688, 38
  store i64 %5726, i64* %3, align 8
  %5727 = inttoptr i64 %5725 to i64*
  %5728 = load i64, i64* %5727, align 8
  store i64 %5728, i64* %RAX.i2535, align 8
  %5729 = add i64 %5728, 4
  %5730 = add i64 %5688, 41
  store i64 %5730, i64* %3, align 8
  %5731 = inttoptr i64 %5729 to i32*
  store i32 %5715, i32* %5731, align 4
  %5732 = load i64, i64* %RBP.i, align 8
  %5733 = add i64 %5732, -80
  %5734 = load i64, i64* %3, align 8
  %5735 = add i64 %5734, 7
  store i64 %5735, i64* %3, align 8
  %5736 = inttoptr i64 %5733 to i32*
  store i32 1, i32* %5736, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_40e2d6

block_.L_40e2d6:                                  ; preds = %block_.L_40e338, %block_.L_40e279
  %5737 = phi i64 [ %5944, %block_.L_40e338 ], [ %.pre98, %block_.L_40e279 ]
  %5738 = load i64, i64* %RBP.i, align 8
  %5739 = add i64 %5738, -80
  %5740 = add i64 %5737, 3
  store i64 %5740, i64* %3, align 8
  %5741 = inttoptr i64 %5739 to i32*
  %5742 = load i32, i32* %5741, align 4
  %5743 = zext i32 %5742 to i64
  store i64 %5743, i64* %RAX.i2535, align 8
  %5744 = add i64 %5738, -24
  %5745 = add i64 %5737, 7
  store i64 %5745, i64* %3, align 8
  %5746 = inttoptr i64 %5744 to i64*
  %5747 = load i64, i64* %5746, align 8
  store i64 %5747, i64* %RCX.i2514, align 8
  %5748 = add i64 %5747, 136
  %5749 = add i64 %5737, 13
  store i64 %5749, i64* %3, align 8
  %5750 = inttoptr i64 %5748 to i32*
  %5751 = load i32, i32* %5750, align 4
  %5752 = sub i32 %5742, %5751
  %5753 = icmp ult i32 %5742, %5751
  %5754 = zext i1 %5753 to i8
  store i8 %5754, i8* %14, align 1
  %5755 = and i32 %5752, 255
  %5756 = tail call i32 @llvm.ctpop.i32(i32 %5755)
  %5757 = trunc i32 %5756 to i8
  %5758 = and i8 %5757, 1
  %5759 = xor i8 %5758, 1
  store i8 %5759, i8* %21, align 1
  %5760 = xor i32 %5751, %5742
  %5761 = xor i32 %5760, %5752
  %5762 = lshr i32 %5761, 4
  %5763 = trunc i32 %5762 to i8
  %5764 = and i8 %5763, 1
  store i8 %5764, i8* %26, align 1
  %5765 = icmp eq i32 %5752, 0
  %5766 = zext i1 %5765 to i8
  store i8 %5766, i8* %29, align 1
  %5767 = lshr i32 %5752, 31
  %5768 = trunc i32 %5767 to i8
  store i8 %5768, i8* %32, align 1
  %5769 = lshr i32 %5742, 31
  %5770 = lshr i32 %5751, 31
  %5771 = xor i32 %5770, %5769
  %5772 = xor i32 %5767, %5769
  %5773 = add nuw nsw i32 %5772, %5771
  %5774 = icmp eq i32 %5773, 2
  %5775 = zext i1 %5774 to i8
  store i8 %5775, i8* %38, align 1
  %5776 = icmp ne i8 %5768, 0
  %5777 = xor i1 %5776, %5774
  %.demorgan113 = or i1 %5765, %5777
  %.v120 = select i1 %.demorgan113, i64 19, i64 117
  %5778 = add i64 %5737, %.v120
  store i64 %5778, i64* %3, align 8
  br i1 %.demorgan113, label %block_40e2e9, label %block_.L_40e34b

block_40e2e9:                                     ; preds = %block_.L_40e2d6
  %5779 = add i64 %5738, -56
  %5780 = add i64 %5778, 4
  store i64 %5780, i64* %3, align 8
  %5781 = inttoptr i64 %5779 to i64*
  %5782 = load i64, i64* %5781, align 8
  store i64 %5782, i64* %RAX.i2535, align 8
  %5783 = add i64 %5738, -76
  %5784 = add i64 %5778, 8
  store i64 %5784, i64* %3, align 8
  %5785 = inttoptr i64 %5783 to i32*
  %5786 = load i32, i32* %5785, align 4
  %5787 = sext i32 %5786 to i64
  store i64 %5787, i64* %RCX.i2514, align 8
  %5788 = shl nsw i64 %5787, 3
  %5789 = add i64 %5788, %5782
  %5790 = add i64 %5778, 12
  store i64 %5790, i64* %3, align 8
  %5791 = inttoptr i64 %5789 to i64*
  %5792 = load i64, i64* %5791, align 8
  store i64 %5792, i64* %RAX.i2535, align 8
  %5793 = add i64 %5778, 16
  store i64 %5793, i64* %3, align 8
  %5794 = load i32, i32* %5741, align 4
  %5795 = sext i32 %5794 to i64
  store i64 %5795, i64* %RCX.i2514, align 8
  %5796 = shl nsw i64 %5795, 2
  %5797 = add i64 %5796, %5792
  %5798 = add i64 %5778, 19
  store i64 %5798, i64* %3, align 8
  %5799 = inttoptr i64 %5797 to i32*
  %5800 = load i32, i32* %5799, align 4
  %5801 = zext i32 %5800 to i64
  store i64 %5801, i64* %RDX.i2517, align 8
  %5802 = add i64 %5778, 23
  store i64 %5802, i64* %3, align 8
  %5803 = load i64, i64* %5746, align 8
  store i64 %5803, i64* %RAX.i2535, align 8
  %5804 = add i64 %5803, 376
  %5805 = add i64 %5778, 30
  store i64 %5805, i64* %3, align 8
  %5806 = inttoptr i64 %5804 to i64*
  %5807 = load i64, i64* %5806, align 8
  store i64 %5807, i64* %RAX.i2535, align 8
  %5808 = add i64 %5778, 34
  store i64 %5808, i64* %3, align 8
  %5809 = load i32, i32* %5741, align 4
  %5810 = sext i32 %5809 to i64
  store i64 %5810, i64* %RCX.i2514, align 8
  %5811 = shl nsw i64 %5810, 2
  %5812 = add i64 %5807, %5811
  %5813 = add i64 %5778, 37
  store i64 %5813, i64* %3, align 8
  %5814 = inttoptr i64 %5812 to i32*
  %5815 = load i32, i32* %5814, align 4
  %5816 = add i32 %5815, %5800
  %5817 = zext i32 %5816 to i64
  store i64 %5817, i64* %RDX.i2517, align 8
  %5818 = icmp ult i32 %5816, %5800
  %5819 = icmp ult i32 %5816, %5815
  %5820 = or i1 %5818, %5819
  %5821 = zext i1 %5820 to i8
  store i8 %5821, i8* %14, align 1
  %5822 = and i32 %5816, 255
  %5823 = tail call i32 @llvm.ctpop.i32(i32 %5822)
  %5824 = trunc i32 %5823 to i8
  %5825 = and i8 %5824, 1
  %5826 = xor i8 %5825, 1
  store i8 %5826, i8* %21, align 1
  %5827 = xor i32 %5815, %5800
  %5828 = xor i32 %5827, %5816
  %5829 = lshr i32 %5828, 4
  %5830 = trunc i32 %5829 to i8
  %5831 = and i8 %5830, 1
  store i8 %5831, i8* %26, align 1
  %5832 = icmp eq i32 %5816, 0
  %5833 = zext i1 %5832 to i8
  store i8 %5833, i8* %29, align 1
  %5834 = lshr i32 %5816, 31
  %5835 = trunc i32 %5834 to i8
  store i8 %5835, i8* %32, align 1
  %5836 = lshr i32 %5800, 31
  %5837 = lshr i32 %5815, 31
  %5838 = xor i32 %5834, %5836
  %5839 = xor i32 %5834, %5837
  %5840 = add nuw nsw i32 %5838, %5839
  %5841 = icmp eq i32 %5840, 2
  %5842 = zext i1 %5841 to i8
  store i8 %5842, i8* %38, align 1
  %5843 = add i64 %5738, -84
  %5844 = add i64 %5778, 40
  store i64 %5844, i64* %3, align 8
  %5845 = inttoptr i64 %5843 to i32*
  store i32 %5816, i32* %5845, align 4
  %5846 = load i64, i64* %RBP.i, align 8
  %5847 = add i64 %5846, -48
  %5848 = load i64, i64* %3, align 8
  %5849 = add i64 %5848, 4
  store i64 %5849, i64* %3, align 8
  %5850 = inttoptr i64 %5847 to i64*
  %5851 = load i64, i64* %5850, align 8
  store i64 %5851, i64* %RAX.i2535, align 8
  %5852 = add i64 %5846, -76
  %5853 = add i64 %5848, 8
  store i64 %5853, i64* %3, align 8
  %5854 = inttoptr i64 %5852 to i32*
  %5855 = load i32, i32* %5854, align 4
  %5856 = sext i32 %5855 to i64
  store i64 %5856, i64* %RCX.i2514, align 8
  %5857 = shl nsw i64 %5856, 3
  %5858 = add i64 %5857, %5851
  %5859 = add i64 %5848, 12
  store i64 %5859, i64* %3, align 8
  %5860 = inttoptr i64 %5858 to i64*
  %5861 = load i64, i64* %5860, align 8
  store i64 %5861, i64* %RAX.i2535, align 8
  %5862 = load i32, i32* %EDX.i1060, align 4
  %5863 = add i64 %5861, 4
  %5864 = add i64 %5848, 15
  store i64 %5864, i64* %3, align 8
  %5865 = inttoptr i64 %5863 to i32*
  %5866 = load i32, i32* %5865, align 4
  %5867 = sub i32 %5862, %5866
  %5868 = icmp ult i32 %5862, %5866
  %5869 = zext i1 %5868 to i8
  store i8 %5869, i8* %14, align 1
  %5870 = and i32 %5867, 255
  %5871 = tail call i32 @llvm.ctpop.i32(i32 %5870)
  %5872 = trunc i32 %5871 to i8
  %5873 = and i8 %5872, 1
  %5874 = xor i8 %5873, 1
  store i8 %5874, i8* %21, align 1
  %5875 = xor i32 %5866, %5862
  %5876 = xor i32 %5875, %5867
  %5877 = lshr i32 %5876, 4
  %5878 = trunc i32 %5877 to i8
  %5879 = and i8 %5878, 1
  store i8 %5879, i8* %26, align 1
  %5880 = icmp eq i32 %5867, 0
  %5881 = zext i1 %5880 to i8
  store i8 %5881, i8* %29, align 1
  %5882 = lshr i32 %5867, 31
  %5883 = trunc i32 %5882 to i8
  store i8 %5883, i8* %32, align 1
  %5884 = lshr i32 %5862, 31
  %5885 = lshr i32 %5866, 31
  %5886 = xor i32 %5885, %5884
  %5887 = xor i32 %5882, %5884
  %5888 = add nuw nsw i32 %5887, %5886
  %5889 = icmp eq i32 %5888, 2
  %5890 = zext i1 %5889 to i8
  store i8 %5890, i8* %38, align 1
  %5891 = icmp ne i8 %5883, 0
  %5892 = xor i1 %5891, %5889
  %5893 = or i1 %5880, %5892
  %.v124 = select i1 %5893, i64 39, i64 21
  %5894 = add i64 %5848, %.v124
  store i64 %5894, i64* %3, align 8
  br i1 %5893, label %block_.L_40e338, label %block_40e326

block_40e326:                                     ; preds = %block_40e2e9
  %5895 = add i64 %5846, -84
  %5896 = add i64 %5894, 3
  store i64 %5896, i64* %3, align 8
  %5897 = inttoptr i64 %5895 to i32*
  %5898 = load i32, i32* %5897, align 4
  %5899 = zext i32 %5898 to i64
  store i64 %5899, i64* %RAX.i2535, align 8
  %5900 = add i64 %5894, 7
  store i64 %5900, i64* %3, align 8
  %5901 = load i64, i64* %5850, align 8
  store i64 %5901, i64* %RCX.i2514, align 8
  %5902 = add i64 %5894, 11
  store i64 %5902, i64* %3, align 8
  %5903 = load i32, i32* %5854, align 4
  %5904 = sext i32 %5903 to i64
  store i64 %5904, i64* %RDX.i2517, align 8
  %5905 = shl nsw i64 %5904, 3
  %5906 = add i64 %5905, %5901
  %5907 = add i64 %5894, 15
  store i64 %5907, i64* %3, align 8
  %5908 = inttoptr i64 %5906 to i64*
  %5909 = load i64, i64* %5908, align 8
  store i64 %5909, i64* %RCX.i2514, align 8
  %5910 = add i64 %5909, 4
  %5911 = add i64 %5894, 18
  store i64 %5911, i64* %3, align 8
  %5912 = inttoptr i64 %5910 to i32*
  store i32 %5898, i32* %5912, align 4
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40e338

block_.L_40e338:                                  ; preds = %block_40e326, %block_40e2e9
  %5913 = phi i64 [ %.pre100, %block_40e326 ], [ %5846, %block_40e2e9 ]
  %5914 = phi i64 [ %.pre99, %block_40e326 ], [ %5894, %block_40e2e9 ]
  %5915 = add i64 %5913, -80
  %5916 = add i64 %5914, 8
  store i64 %5916, i64* %3, align 8
  %5917 = inttoptr i64 %5915 to i32*
  %5918 = load i32, i32* %5917, align 4
  %5919 = add i32 %5918, 1
  %5920 = zext i32 %5919 to i64
  store i64 %5920, i64* %RAX.i2535, align 8
  %5921 = icmp eq i32 %5918, -1
  %5922 = icmp eq i32 %5919, 0
  %5923 = or i1 %5921, %5922
  %5924 = zext i1 %5923 to i8
  store i8 %5924, i8* %14, align 1
  %5925 = and i32 %5919, 255
  %5926 = tail call i32 @llvm.ctpop.i32(i32 %5925)
  %5927 = trunc i32 %5926 to i8
  %5928 = and i8 %5927, 1
  %5929 = xor i8 %5928, 1
  store i8 %5929, i8* %21, align 1
  %5930 = xor i32 %5919, %5918
  %5931 = lshr i32 %5930, 4
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  store i8 %5933, i8* %26, align 1
  %5934 = zext i1 %5922 to i8
  store i8 %5934, i8* %29, align 1
  %5935 = lshr i32 %5919, 31
  %5936 = trunc i32 %5935 to i8
  store i8 %5936, i8* %32, align 1
  %5937 = lshr i32 %5918, 31
  %5938 = xor i32 %5935, %5937
  %5939 = add nuw nsw i32 %5938, %5935
  %5940 = icmp eq i32 %5939, 2
  %5941 = zext i1 %5940 to i8
  store i8 %5941, i8* %38, align 1
  %5942 = add i64 %5914, 14
  store i64 %5942, i64* %3, align 8
  store i32 %5919, i32* %5917, align 4
  %5943 = load i64, i64* %3, align 8
  %5944 = add i64 %5943, -112
  store i64 %5944, i64* %3, align 8
  br label %block_.L_40e2d6

block_.L_40e34b:                                  ; preds = %block_.L_40e2d6
  %5945 = add i64 %5738, -48
  %5946 = add i64 %5778, 4
  store i64 %5946, i64* %3, align 8
  %5947 = inttoptr i64 %5945 to i64*
  %5948 = load i64, i64* %5947, align 8
  store i64 %5948, i64* %RAX.i2535, align 8
  %5949 = add i64 %5738, -76
  %5950 = add i64 %5778, 7
  store i64 %5950, i64* %3, align 8
  %5951 = inttoptr i64 %5949 to i32*
  %5952 = load i32, i32* %5951, align 4
  %5953 = add i32 %5952, -1
  %5954 = zext i32 %5953 to i64
  store i64 %5954, i64* %RCX.i2514, align 8
  %5955 = icmp eq i32 %5952, 0
  %5956 = zext i1 %5955 to i8
  store i8 %5956, i8* %14, align 1
  %5957 = and i32 %5953, 255
  %5958 = tail call i32 @llvm.ctpop.i32(i32 %5957)
  %5959 = trunc i32 %5958 to i8
  %5960 = and i8 %5959, 1
  %5961 = xor i8 %5960, 1
  store i8 %5961, i8* %21, align 1
  %5962 = xor i32 %5953, %5952
  %5963 = lshr i32 %5962, 4
  %5964 = trunc i32 %5963 to i8
  %5965 = and i8 %5964, 1
  store i8 %5965, i8* %26, align 1
  %5966 = icmp eq i32 %5953, 0
  %5967 = zext i1 %5966 to i8
  store i8 %5967, i8* %29, align 1
  %5968 = lshr i32 %5953, 31
  %5969 = trunc i32 %5968 to i8
  store i8 %5969, i8* %32, align 1
  %5970 = lshr i32 %5952, 31
  %5971 = xor i32 %5968, %5970
  %5972 = add nuw nsw i32 %5971, %5970
  %5973 = icmp eq i32 %5972, 2
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %38, align 1
  %5975 = sext i32 %5953 to i64
  store i64 %5975, i64* %RDX.i2517, align 8
  %5976 = shl nsw i64 %5975, 3
  %5977 = add i64 %5948, %5976
  %5978 = add i64 %5778, 17
  store i64 %5978, i64* %3, align 8
  %5979 = inttoptr i64 %5977 to i64*
  %5980 = load i64, i64* %5979, align 8
  store i64 %5980, i64* %RAX.i2535, align 8
  %5981 = add i64 %5980, 12
  %5982 = add i64 %5778, 20
  store i64 %5982, i64* %3, align 8
  %5983 = inttoptr i64 %5981 to i32*
  %5984 = load i32, i32* %5983, align 4
  %5985 = zext i32 %5984 to i64
  store i64 %5985, i64* %RCX.i2514, align 8
  %5986 = add i64 %5778, 24
  store i64 %5986, i64* %3, align 8
  %5987 = load i64, i64* %5746, align 8
  store i64 %5987, i64* %RAX.i2535, align 8
  %5988 = add i64 %5987, 364
  %5989 = add i64 %5778, 30
  store i64 %5989, i64* %3, align 8
  %5990 = inttoptr i64 %5988 to i32*
  %5991 = load i32, i32* %5990, align 4
  %5992 = add i32 %5991, %5984
  %5993 = zext i32 %5992 to i64
  store i64 %5993, i64* %RCX.i2514, align 8
  %5994 = icmp ult i32 %5992, %5984
  %5995 = icmp ult i32 %5992, %5991
  %5996 = or i1 %5994, %5995
  %5997 = zext i1 %5996 to i8
  store i8 %5997, i8* %14, align 1
  %5998 = and i32 %5992, 255
  %5999 = tail call i32 @llvm.ctpop.i32(i32 %5998)
  %6000 = trunc i32 %5999 to i8
  %6001 = and i8 %6000, 1
  %6002 = xor i8 %6001, 1
  store i8 %6002, i8* %21, align 1
  %6003 = xor i32 %5991, %5984
  %6004 = xor i32 %6003, %5992
  %6005 = lshr i32 %6004, 4
  %6006 = trunc i32 %6005 to i8
  %6007 = and i8 %6006, 1
  store i8 %6007, i8* %26, align 1
  %6008 = icmp eq i32 %5992, 0
  %6009 = zext i1 %6008 to i8
  store i8 %6009, i8* %29, align 1
  %6010 = lshr i32 %5992, 31
  %6011 = trunc i32 %6010 to i8
  store i8 %6011, i8* %32, align 1
  %6012 = lshr i32 %5984, 31
  %6013 = lshr i32 %5991, 31
  %6014 = xor i32 %6010, %6012
  %6015 = xor i32 %6010, %6013
  %6016 = add nuw nsw i32 %6014, %6015
  %6017 = icmp eq i32 %6016, 2
  %6018 = zext i1 %6017 to i8
  store i8 %6018, i8* %38, align 1
  %6019 = load i64, i64* %RBP.i, align 8
  %6020 = add i64 %6019, -48
  %6021 = add i64 %5778, 34
  store i64 %6021, i64* %3, align 8
  %6022 = inttoptr i64 %6020 to i64*
  %6023 = load i64, i64* %6022, align 8
  store i64 %6023, i64* %RAX.i2535, align 8
  %6024 = add i64 %6019, -76
  %6025 = add i64 %5778, 38
  store i64 %6025, i64* %3, align 8
  %6026 = inttoptr i64 %6024 to i32*
  %6027 = load i32, i32* %6026, align 4
  %6028 = sext i32 %6027 to i64
  store i64 %6028, i64* %RDX.i2517, align 8
  %6029 = shl nsw i64 %6028, 3
  %6030 = add i64 %6029, %6023
  %6031 = add i64 %5778, 42
  store i64 %6031, i64* %3, align 8
  %6032 = inttoptr i64 %6030 to i64*
  %6033 = load i64, i64* %6032, align 8
  store i64 %6033, i64* %RAX.i2535, align 8
  %6034 = add i64 %6033, 12
  %6035 = add i64 %5778, 45
  store i64 %6035, i64* %3, align 8
  %6036 = inttoptr i64 %6034 to i32*
  store i32 %5992, i32* %6036, align 4
  %6037 = load i64, i64* %RBP.i, align 8
  %6038 = add i64 %6037, -48
  %6039 = load i64, i64* %3, align 8
  %6040 = add i64 %6039, 4
  store i64 %6040, i64* %3, align 8
  %6041 = inttoptr i64 %6038 to i64*
  %6042 = load i64, i64* %6041, align 8
  store i64 %6042, i64* %RAX.i2535, align 8
  %6043 = add i64 %6037, -76
  %6044 = add i64 %6039, 8
  store i64 %6044, i64* %3, align 8
  %6045 = inttoptr i64 %6043 to i32*
  %6046 = load i32, i32* %6045, align 4
  %6047 = sext i32 %6046 to i64
  store i64 %6047, i64* %RDX.i2517, align 8
  %6048 = shl nsw i64 %6047, 3
  %6049 = add i64 %6048, %6042
  %6050 = add i64 %6039, 12
  store i64 %6050, i64* %3, align 8
  %6051 = inttoptr i64 %6049 to i64*
  %6052 = load i64, i64* %6051, align 8
  store i64 %6052, i64* %RAX.i2535, align 8
  %6053 = add i64 %6052, 4
  %6054 = add i64 %6039, 15
  store i64 %6054, i64* %3, align 8
  %6055 = inttoptr i64 %6053 to i32*
  %6056 = load i32, i32* %6055, align 4
  %6057 = zext i32 %6056 to i64
  store i64 %6057, i64* %RCX.i2514, align 8
  %6058 = add i64 %6037, -24
  %6059 = add i64 %6039, 19
  store i64 %6059, i64* %3, align 8
  %6060 = inttoptr i64 %6058 to i64*
  %6061 = load i64, i64* %6060, align 8
  store i64 %6061, i64* %RAX.i2535, align 8
  %6062 = add i64 %6061, 348
  %6063 = add i64 %6039, 25
  store i64 %6063, i64* %3, align 8
  %6064 = inttoptr i64 %6062 to i32*
  %6065 = load i32, i32* %6064, align 4
  %6066 = add i32 %6065, %6056
  %6067 = zext i32 %6066 to i64
  store i64 %6067, i64* %RCX.i2514, align 8
  %6068 = icmp ult i32 %6066, %6056
  %6069 = icmp ult i32 %6066, %6065
  %6070 = or i1 %6068, %6069
  %6071 = zext i1 %6070 to i8
  store i8 %6071, i8* %14, align 1
  %6072 = and i32 %6066, 255
  %6073 = tail call i32 @llvm.ctpop.i32(i32 %6072)
  %6074 = trunc i32 %6073 to i8
  %6075 = and i8 %6074, 1
  %6076 = xor i8 %6075, 1
  store i8 %6076, i8* %21, align 1
  %6077 = xor i32 %6065, %6056
  %6078 = xor i32 %6077, %6066
  %6079 = lshr i32 %6078, 4
  %6080 = trunc i32 %6079 to i8
  %6081 = and i8 %6080, 1
  store i8 %6081, i8* %26, align 1
  %6082 = icmp eq i32 %6066, 0
  %6083 = zext i1 %6082 to i8
  store i8 %6083, i8* %29, align 1
  %6084 = lshr i32 %6066, 31
  %6085 = trunc i32 %6084 to i8
  store i8 %6085, i8* %32, align 1
  %6086 = lshr i32 %6056, 31
  %6087 = lshr i32 %6065, 31
  %6088 = xor i32 %6084, %6086
  %6089 = xor i32 %6084, %6087
  %6090 = add nuw nsw i32 %6088, %6089
  %6091 = icmp eq i32 %6090, 2
  %6092 = zext i1 %6091 to i8
  store i8 %6092, i8* %38, align 1
  %6093 = add i64 %6037, -84
  %6094 = add i64 %6039, 28
  store i64 %6094, i64* %3, align 8
  %6095 = inttoptr i64 %6093 to i32*
  store i32 %6066, i32* %6095, align 4
  %6096 = load i64, i64* %RBP.i, align 8
  %6097 = add i64 %6096, -48
  %6098 = load i64, i64* %3, align 8
  %6099 = add i64 %6098, 4
  store i64 %6099, i64* %3, align 8
  %6100 = inttoptr i64 %6097 to i64*
  %6101 = load i64, i64* %6100, align 8
  store i64 %6101, i64* %RAX.i2535, align 8
  %6102 = add i64 %6096, -76
  %6103 = add i64 %6098, 8
  store i64 %6103, i64* %3, align 8
  %6104 = inttoptr i64 %6102 to i32*
  %6105 = load i32, i32* %6104, align 4
  %6106 = sext i32 %6105 to i64
  store i64 %6106, i64* %RDX.i2517, align 8
  %6107 = shl nsw i64 %6106, 3
  %6108 = add i64 %6107, %6101
  %6109 = add i64 %6098, 12
  store i64 %6109, i64* %3, align 8
  %6110 = inttoptr i64 %6108 to i64*
  %6111 = load i64, i64* %6110, align 8
  store i64 %6111, i64* %RAX.i2535, align 8
  %6112 = load i32, i32* %ECX.i2367, align 4
  %6113 = add i64 %6111, 12
  %6114 = add i64 %6098, 15
  store i64 %6114, i64* %3, align 8
  %6115 = inttoptr i64 %6113 to i32*
  %6116 = load i32, i32* %6115, align 4
  %6117 = sub i32 %6112, %6116
  %6118 = icmp ult i32 %6112, %6116
  %6119 = zext i1 %6118 to i8
  store i8 %6119, i8* %14, align 1
  %6120 = and i32 %6117, 255
  %6121 = tail call i32 @llvm.ctpop.i32(i32 %6120)
  %6122 = trunc i32 %6121 to i8
  %6123 = and i8 %6122, 1
  %6124 = xor i8 %6123, 1
  store i8 %6124, i8* %21, align 1
  %6125 = xor i32 %6116, %6112
  %6126 = xor i32 %6125, %6117
  %6127 = lshr i32 %6126, 4
  %6128 = trunc i32 %6127 to i8
  %6129 = and i8 %6128, 1
  store i8 %6129, i8* %26, align 1
  %6130 = icmp eq i32 %6117, 0
  %6131 = zext i1 %6130 to i8
  store i8 %6131, i8* %29, align 1
  %6132 = lshr i32 %6117, 31
  %6133 = trunc i32 %6132 to i8
  store i8 %6133, i8* %32, align 1
  %6134 = lshr i32 %6112, 31
  %6135 = lshr i32 %6116, 31
  %6136 = xor i32 %6135, %6134
  %6137 = xor i32 %6132, %6134
  %6138 = add nuw nsw i32 %6137, %6136
  %6139 = icmp eq i32 %6138, 2
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %38, align 1
  %6141 = icmp ne i8 %6133, 0
  %6142 = xor i1 %6141, %6139
  %6143 = or i1 %6130, %6142
  %.v121 = select i1 %6143, i64 39, i64 21
  %6144 = add i64 %6098, %.v121
  store i64 %6144, i64* %3, align 8
  br i1 %6143, label %block_.L_40e3bb, label %block_40e3a9

block_40e3a9:                                     ; preds = %block_.L_40e34b
  %6145 = add i64 %6096, -84
  %6146 = add i64 %6144, 3
  store i64 %6146, i64* %3, align 8
  %6147 = inttoptr i64 %6145 to i32*
  %6148 = load i32, i32* %6147, align 4
  %6149 = zext i32 %6148 to i64
  store i64 %6149, i64* %RAX.i2535, align 8
  %6150 = add i64 %6144, 7
  store i64 %6150, i64* %3, align 8
  %6151 = load i64, i64* %6100, align 8
  store i64 %6151, i64* %RCX.i2514, align 8
  %6152 = add i64 %6144, 11
  store i64 %6152, i64* %3, align 8
  %6153 = load i32, i32* %6104, align 4
  %6154 = sext i32 %6153 to i64
  store i64 %6154, i64* %RDX.i2517, align 8
  %6155 = shl nsw i64 %6154, 3
  %6156 = add i64 %6155, %6151
  %6157 = add i64 %6144, 15
  store i64 %6157, i64* %3, align 8
  %6158 = inttoptr i64 %6156 to i64*
  %6159 = load i64, i64* %6158, align 8
  store i64 %6159, i64* %RCX.i2514, align 8
  %6160 = add i64 %6159, 12
  %6161 = add i64 %6144, 18
  store i64 %6161, i64* %3, align 8
  %6162 = inttoptr i64 %6160 to i32*
  store i32 %6148, i32* %6162, align 4
  %.pre101 = load i64, i64* %RBP.i, align 8
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_40e3bb

block_.L_40e3bb:                                  ; preds = %block_40e3a9, %block_.L_40e34b
  %6163 = phi i64 [ %.pre102, %block_40e3a9 ], [ %6144, %block_.L_40e34b ]
  %6164 = phi i64 [ %.pre101, %block_40e3a9 ], [ %6096, %block_.L_40e34b ]
  %6165 = add i64 %6164, -48
  %6166 = add i64 %6163, 4
  store i64 %6166, i64* %3, align 8
  %6167 = inttoptr i64 %6165 to i64*
  %6168 = load i64, i64* %6167, align 8
  store i64 %6168, i64* %RAX.i2535, align 8
  %6169 = add i64 %6164, -76
  %6170 = add i64 %6163, 8
  store i64 %6170, i64* %3, align 8
  %6171 = inttoptr i64 %6169 to i32*
  %6172 = load i32, i32* %6171, align 4
  %6173 = sext i32 %6172 to i64
  store i64 %6173, i64* %RCX.i2514, align 8
  %6174 = shl nsw i64 %6173, 3
  %6175 = add i64 %6174, %6168
  %6176 = add i64 %6163, 12
  store i64 %6176, i64* %3, align 8
  %6177 = inttoptr i64 %6175 to i64*
  %6178 = load i64, i64* %6177, align 8
  store i64 %6178, i64* %RAX.i2535, align 8
  %6179 = add i64 %6178, 16
  %6180 = add i64 %6163, 15
  store i64 %6180, i64* %3, align 8
  %6181 = inttoptr i64 %6179 to i32*
  %6182 = load i32, i32* %6181, align 4
  %6183 = zext i32 %6182 to i64
  store i64 %6183, i64* %RDX.i2517, align 8
  %6184 = add i64 %6164, -24
  %6185 = add i64 %6163, 19
  store i64 %6185, i64* %3, align 8
  %6186 = inttoptr i64 %6184 to i64*
  %6187 = load i64, i64* %6186, align 8
  store i64 %6187, i64* %RAX.i2535, align 8
  %6188 = add i64 %6187, 336
  %6189 = add i64 %6163, 25
  store i64 %6189, i64* %3, align 8
  %6190 = inttoptr i64 %6188 to i32*
  %6191 = load i32, i32* %6190, align 4
  %6192 = add i32 %6191, %6182
  %6193 = zext i32 %6192 to i64
  store i64 %6193, i64* %RDX.i2517, align 8
  %6194 = icmp ult i32 %6192, %6182
  %6195 = icmp ult i32 %6192, %6191
  %6196 = or i1 %6194, %6195
  %6197 = zext i1 %6196 to i8
  store i8 %6197, i8* %14, align 1
  %6198 = and i32 %6192, 255
  %6199 = tail call i32 @llvm.ctpop.i32(i32 %6198)
  %6200 = trunc i32 %6199 to i8
  %6201 = and i8 %6200, 1
  %6202 = xor i8 %6201, 1
  store i8 %6202, i8* %21, align 1
  %6203 = xor i32 %6191, %6182
  %6204 = xor i32 %6203, %6192
  %6205 = lshr i32 %6204, 4
  %6206 = trunc i32 %6205 to i8
  %6207 = and i8 %6206, 1
  store i8 %6207, i8* %26, align 1
  %6208 = icmp eq i32 %6192, 0
  %6209 = zext i1 %6208 to i8
  store i8 %6209, i8* %29, align 1
  %6210 = lshr i32 %6192, 31
  %6211 = trunc i32 %6210 to i8
  store i8 %6211, i8* %32, align 1
  %6212 = lshr i32 %6182, 31
  %6213 = lshr i32 %6191, 31
  %6214 = xor i32 %6210, %6212
  %6215 = xor i32 %6210, %6213
  %6216 = add nuw nsw i32 %6214, %6215
  %6217 = icmp eq i32 %6216, 2
  %6218 = zext i1 %6217 to i8
  store i8 %6218, i8* %38, align 1
  %6219 = add i64 %6163, 29
  store i64 %6219, i64* %3, align 8
  %6220 = load i64, i64* %6167, align 8
  store i64 %6220, i64* %RAX.i2535, align 8
  %6221 = add i64 %6163, 33
  store i64 %6221, i64* %3, align 8
  %6222 = load i32, i32* %6171, align 4
  %6223 = sext i32 %6222 to i64
  store i64 %6223, i64* %RCX.i2514, align 8
  %6224 = shl nsw i64 %6223, 3
  %6225 = add i64 %6224, %6220
  %6226 = add i64 %6163, 37
  store i64 %6226, i64* %3, align 8
  %6227 = inttoptr i64 %6225 to i64*
  %6228 = load i64, i64* %6227, align 8
  store i64 %6228, i64* %RAX.i2535, align 8
  %6229 = add i64 %6163, 39
  store i64 %6229, i64* %3, align 8
  %6230 = inttoptr i64 %6228 to i32*
  store i32 %6192, i32* %6230, align 4
  %6231 = load i64, i64* %RBP.i, align 8
  %6232 = add i64 %6231, -48
  %6233 = load i64, i64* %3, align 8
  %6234 = add i64 %6233, 4
  store i64 %6234, i64* %3, align 8
  %6235 = inttoptr i64 %6232 to i64*
  %6236 = load i64, i64* %6235, align 8
  store i64 %6236, i64* %RAX.i2535, align 8
  %6237 = add i64 %6231, -76
  %6238 = add i64 %6233, 8
  store i64 %6238, i64* %3, align 8
  %6239 = inttoptr i64 %6237 to i32*
  %6240 = load i32, i32* %6239, align 4
  %6241 = sext i32 %6240 to i64
  store i64 %6241, i64* %RCX.i2514, align 8
  %6242 = shl nsw i64 %6241, 3
  %6243 = add i64 %6242, %6236
  %6244 = add i64 %6233, 12
  store i64 %6244, i64* %3, align 8
  %6245 = inttoptr i64 %6243 to i64*
  %6246 = load i64, i64* %6245, align 8
  store i64 %6246, i64* %RAX.i2535, align 8
  %6247 = add i64 %6246, 12
  %6248 = add i64 %6233, 15
  store i64 %6248, i64* %3, align 8
  %6249 = inttoptr i64 %6247 to i32*
  %6250 = load i32, i32* %6249, align 4
  %6251 = zext i32 %6250 to i64
  store i64 %6251, i64* %RDX.i2517, align 8
  %6252 = add i64 %6231, -24
  %6253 = add i64 %6233, 19
  store i64 %6253, i64* %3, align 8
  %6254 = inttoptr i64 %6252 to i64*
  %6255 = load i64, i64* %6254, align 8
  store i64 %6255, i64* %RAX.i2535, align 8
  %6256 = add i64 %6255, 360
  %6257 = add i64 %6233, 25
  store i64 %6257, i64* %3, align 8
  %6258 = inttoptr i64 %6256 to i32*
  %6259 = load i32, i32* %6258, align 4
  %6260 = add i32 %6259, %6250
  %6261 = zext i32 %6260 to i64
  store i64 %6261, i64* %RDX.i2517, align 8
  %6262 = icmp ult i32 %6260, %6250
  %6263 = icmp ult i32 %6260, %6259
  %6264 = or i1 %6262, %6263
  %6265 = zext i1 %6264 to i8
  store i8 %6265, i8* %14, align 1
  %6266 = and i32 %6260, 255
  %6267 = tail call i32 @llvm.ctpop.i32(i32 %6266)
  %6268 = trunc i32 %6267 to i8
  %6269 = and i8 %6268, 1
  %6270 = xor i8 %6269, 1
  store i8 %6270, i8* %21, align 1
  %6271 = xor i32 %6259, %6250
  %6272 = xor i32 %6271, %6260
  %6273 = lshr i32 %6272, 4
  %6274 = trunc i32 %6273 to i8
  %6275 = and i8 %6274, 1
  store i8 %6275, i8* %26, align 1
  %6276 = icmp eq i32 %6260, 0
  %6277 = zext i1 %6276 to i8
  store i8 %6277, i8* %29, align 1
  %6278 = lshr i32 %6260, 31
  %6279 = trunc i32 %6278 to i8
  store i8 %6279, i8* %32, align 1
  %6280 = lshr i32 %6250, 31
  %6281 = lshr i32 %6259, 31
  %6282 = xor i32 %6278, %6280
  %6283 = xor i32 %6278, %6281
  %6284 = add nuw nsw i32 %6282, %6283
  %6285 = icmp eq i32 %6284, 2
  %6286 = zext i1 %6285 to i8
  store i8 %6286, i8* %38, align 1
  %6287 = add i64 %6231, -84
  %6288 = add i64 %6233, 28
  store i64 %6288, i64* %3, align 8
  %6289 = inttoptr i64 %6287 to i32*
  store i32 %6260, i32* %6289, align 4
  %6290 = load i64, i64* %RBP.i, align 8
  %6291 = add i64 %6290, -48
  %6292 = load i64, i64* %3, align 8
  %6293 = add i64 %6292, 4
  store i64 %6293, i64* %3, align 8
  %6294 = inttoptr i64 %6291 to i64*
  %6295 = load i64, i64* %6294, align 8
  store i64 %6295, i64* %RAX.i2535, align 8
  %6296 = add i64 %6290, -76
  %6297 = add i64 %6292, 8
  store i64 %6297, i64* %3, align 8
  %6298 = inttoptr i64 %6296 to i32*
  %6299 = load i32, i32* %6298, align 4
  %6300 = sext i32 %6299 to i64
  store i64 %6300, i64* %RCX.i2514, align 8
  %6301 = shl nsw i64 %6300, 3
  %6302 = add i64 %6301, %6295
  %6303 = add i64 %6292, 12
  store i64 %6303, i64* %3, align 8
  %6304 = inttoptr i64 %6302 to i64*
  %6305 = load i64, i64* %6304, align 8
  store i64 %6305, i64* %RAX.i2535, align 8
  %6306 = load i32, i32* %EDX.i1060, align 4
  %6307 = add i64 %6292, 14
  store i64 %6307, i64* %3, align 8
  %6308 = inttoptr i64 %6305 to i32*
  %6309 = load i32, i32* %6308, align 4
  %6310 = sub i32 %6306, %6309
  %6311 = icmp ult i32 %6306, %6309
  %6312 = zext i1 %6311 to i8
  store i8 %6312, i8* %14, align 1
  %6313 = and i32 %6310, 255
  %6314 = tail call i32 @llvm.ctpop.i32(i32 %6313)
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  %6317 = xor i8 %6316, 1
  store i8 %6317, i8* %21, align 1
  %6318 = xor i32 %6309, %6306
  %6319 = xor i32 %6318, %6310
  %6320 = lshr i32 %6319, 4
  %6321 = trunc i32 %6320 to i8
  %6322 = and i8 %6321, 1
  store i8 %6322, i8* %26, align 1
  %6323 = icmp eq i32 %6310, 0
  %6324 = zext i1 %6323 to i8
  store i8 %6324, i8* %29, align 1
  %6325 = lshr i32 %6310, 31
  %6326 = trunc i32 %6325 to i8
  store i8 %6326, i8* %32, align 1
  %6327 = lshr i32 %6306, 31
  %6328 = lshr i32 %6309, 31
  %6329 = xor i32 %6328, %6327
  %6330 = xor i32 %6325, %6327
  %6331 = add nuw nsw i32 %6330, %6329
  %6332 = icmp eq i32 %6331, 2
  %6333 = zext i1 %6332 to i8
  store i8 %6333, i8* %38, align 1
  %6334 = icmp ne i8 %6326, 0
  %6335 = xor i1 %6334, %6332
  %6336 = or i1 %6323, %6335
  %.v122 = select i1 %6336, i64 37, i64 20
  %6337 = add i64 %6292, %.v122
  store i64 %6337, i64* %3, align 8
  br i1 %6336, label %block_.L_40e423, label %block_40e412

block_40e412:                                     ; preds = %block_.L_40e3bb
  %6338 = add i64 %6290, -84
  %6339 = add i64 %6337, 3
  store i64 %6339, i64* %3, align 8
  %6340 = inttoptr i64 %6338 to i32*
  %6341 = load i32, i32* %6340, align 4
  %6342 = zext i32 %6341 to i64
  store i64 %6342, i64* %RAX.i2535, align 8
  %6343 = add i64 %6337, 7
  store i64 %6343, i64* %3, align 8
  %6344 = load i64, i64* %6294, align 8
  store i64 %6344, i64* %RCX.i2514, align 8
  %6345 = add i64 %6337, 11
  store i64 %6345, i64* %3, align 8
  %6346 = load i32, i32* %6298, align 4
  %6347 = sext i32 %6346 to i64
  store i64 %6347, i64* %RDX.i2517, align 8
  %6348 = shl nsw i64 %6347, 3
  %6349 = add i64 %6348, %6344
  %6350 = add i64 %6337, 15
  store i64 %6350, i64* %3, align 8
  %6351 = inttoptr i64 %6349 to i64*
  %6352 = load i64, i64* %6351, align 8
  store i64 %6352, i64* %RCX.i2514, align 8
  %6353 = add i64 %6337, 17
  store i64 %6353, i64* %3, align 8
  %6354 = inttoptr i64 %6352 to i32*
  store i32 %6341, i32* %6354, align 4
  %.pre103 = load i64, i64* %RBP.i, align 8
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_40e423

block_.L_40e423:                                  ; preds = %block_40e412, %block_.L_40e3bb
  %6355 = phi i64 [ %.pre104, %block_40e412 ], [ %6337, %block_.L_40e3bb ]
  %6356 = phi i64 [ %.pre103, %block_40e412 ], [ %6290, %block_.L_40e3bb ]
  %6357 = add i64 %6356, -48
  %6358 = add i64 %6355, 4
  store i64 %6358, i64* %3, align 8
  %6359 = inttoptr i64 %6357 to i64*
  %6360 = load i64, i64* %6359, align 8
  store i64 %6360, i64* %RAX.i2535, align 8
  %6361 = add i64 %6356, -76
  %6362 = add i64 %6355, 7
  store i64 %6362, i64* %3, align 8
  %6363 = inttoptr i64 %6361 to i32*
  %6364 = load i32, i32* %6363, align 4
  %6365 = add i32 %6364, -1
  %6366 = zext i32 %6365 to i64
  store i64 %6366, i64* %RCX.i2514, align 8
  %6367 = icmp eq i32 %6364, 0
  %6368 = zext i1 %6367 to i8
  store i8 %6368, i8* %14, align 1
  %6369 = and i32 %6365, 255
  %6370 = tail call i32 @llvm.ctpop.i32(i32 %6369)
  %6371 = trunc i32 %6370 to i8
  %6372 = and i8 %6371, 1
  %6373 = xor i8 %6372, 1
  store i8 %6373, i8* %21, align 1
  %6374 = xor i32 %6365, %6364
  %6375 = lshr i32 %6374, 4
  %6376 = trunc i32 %6375 to i8
  %6377 = and i8 %6376, 1
  store i8 %6377, i8* %26, align 1
  %6378 = icmp eq i32 %6365, 0
  %6379 = zext i1 %6378 to i8
  store i8 %6379, i8* %29, align 1
  %6380 = lshr i32 %6365, 31
  %6381 = trunc i32 %6380 to i8
  store i8 %6381, i8* %32, align 1
  %6382 = lshr i32 %6364, 31
  %6383 = xor i32 %6380, %6382
  %6384 = add nuw nsw i32 %6383, %6382
  %6385 = icmp eq i32 %6384, 2
  %6386 = zext i1 %6385 to i8
  store i8 %6386, i8* %38, align 1
  %6387 = sext i32 %6365 to i64
  store i64 %6387, i64* %RDX.i2517, align 8
  %6388 = shl nsw i64 %6387, 3
  %6389 = add i64 %6360, %6388
  %6390 = add i64 %6355, 17
  store i64 %6390, i64* %3, align 8
  %6391 = inttoptr i64 %6389 to i64*
  %6392 = load i64, i64* %6391, align 8
  store i64 %6392, i64* %RAX.i2535, align 8
  %6393 = add i64 %6392, 8
  %6394 = add i64 %6355, 20
  store i64 %6394, i64* %3, align 8
  %6395 = inttoptr i64 %6393 to i32*
  %6396 = load i32, i32* %6395, align 4
  %6397 = zext i32 %6396 to i64
  store i64 %6397, i64* %RCX.i2514, align 8
  %6398 = add i64 %6356, -24
  %6399 = add i64 %6355, 24
  store i64 %6399, i64* %3, align 8
  %6400 = inttoptr i64 %6398 to i64*
  %6401 = load i64, i64* %6400, align 8
  store i64 %6401, i64* %RAX.i2535, align 8
  %6402 = add i64 %6401, 356
  %6403 = add i64 %6355, 30
  store i64 %6403, i64* %3, align 8
  %6404 = inttoptr i64 %6402 to i32*
  %6405 = load i32, i32* %6404, align 4
  %6406 = add i32 %6405, %6396
  %6407 = zext i32 %6406 to i64
  store i64 %6407, i64* %RCX.i2514, align 8
  %6408 = icmp ult i32 %6406, %6396
  %6409 = icmp ult i32 %6406, %6405
  %6410 = or i1 %6408, %6409
  %6411 = zext i1 %6410 to i8
  store i8 %6411, i8* %14, align 1
  %6412 = and i32 %6406, 255
  %6413 = tail call i32 @llvm.ctpop.i32(i32 %6412)
  %6414 = trunc i32 %6413 to i8
  %6415 = and i8 %6414, 1
  %6416 = xor i8 %6415, 1
  store i8 %6416, i8* %21, align 1
  %6417 = xor i32 %6405, %6396
  %6418 = xor i32 %6417, %6406
  %6419 = lshr i32 %6418, 4
  %6420 = trunc i32 %6419 to i8
  %6421 = and i8 %6420, 1
  store i8 %6421, i8* %26, align 1
  %6422 = icmp eq i32 %6406, 0
  %6423 = zext i1 %6422 to i8
  store i8 %6423, i8* %29, align 1
  %6424 = lshr i32 %6406, 31
  %6425 = trunc i32 %6424 to i8
  store i8 %6425, i8* %32, align 1
  %6426 = lshr i32 %6396, 31
  %6427 = lshr i32 %6405, 31
  %6428 = xor i32 %6424, %6426
  %6429 = xor i32 %6424, %6427
  %6430 = add nuw nsw i32 %6428, %6429
  %6431 = icmp eq i32 %6430, 2
  %6432 = zext i1 %6431 to i8
  store i8 %6432, i8* %38, align 1
  %6433 = load i64, i64* %RBP.i, align 8
  %6434 = add i64 %6433, -48
  %6435 = add i64 %6355, 34
  store i64 %6435, i64* %3, align 8
  %6436 = inttoptr i64 %6434 to i64*
  %6437 = load i64, i64* %6436, align 8
  store i64 %6437, i64* %RAX.i2535, align 8
  %6438 = add i64 %6433, -76
  %6439 = add i64 %6355, 38
  store i64 %6439, i64* %3, align 8
  %6440 = inttoptr i64 %6438 to i32*
  %6441 = load i32, i32* %6440, align 4
  %6442 = sext i32 %6441 to i64
  store i64 %6442, i64* %RDX.i2517, align 8
  %6443 = shl nsw i64 %6442, 3
  %6444 = add i64 %6443, %6437
  %6445 = add i64 %6355, 42
  store i64 %6445, i64* %3, align 8
  %6446 = inttoptr i64 %6444 to i64*
  %6447 = load i64, i64* %6446, align 8
  store i64 %6447, i64* %RAX.i2535, align 8
  %6448 = add i64 %6447, 8
  %6449 = add i64 %6355, 45
  store i64 %6449, i64* %3, align 8
  %6450 = inttoptr i64 %6448 to i32*
  store i32 %6406, i32* %6450, align 4
  %6451 = load i64, i64* %RBP.i, align 8
  %6452 = add i64 %6451, -48
  %6453 = load i64, i64* %3, align 8
  %6454 = add i64 %6453, 4
  store i64 %6454, i64* %3, align 8
  %6455 = inttoptr i64 %6452 to i64*
  %6456 = load i64, i64* %6455, align 8
  store i64 %6456, i64* %RAX.i2535, align 8
  %6457 = add i64 %6451, -76
  %6458 = add i64 %6453, 8
  store i64 %6458, i64* %3, align 8
  %6459 = inttoptr i64 %6457 to i32*
  %6460 = load i32, i32* %6459, align 4
  %6461 = sext i32 %6460 to i64
  store i64 %6461, i64* %RDX.i2517, align 8
  %6462 = shl nsw i64 %6461, 3
  %6463 = add i64 %6462, %6456
  %6464 = add i64 %6453, 12
  store i64 %6464, i64* %3, align 8
  %6465 = inttoptr i64 %6463 to i64*
  %6466 = load i64, i64* %6465, align 8
  store i64 %6466, i64* %RAX.i2535, align 8
  %6467 = add i64 %6466, 4
  %6468 = add i64 %6453, 15
  store i64 %6468, i64* %3, align 8
  %6469 = inttoptr i64 %6467 to i32*
  %6470 = load i32, i32* %6469, align 4
  %6471 = zext i32 %6470 to i64
  store i64 %6471, i64* %RCX.i2514, align 8
  %6472 = add i64 %6451, -24
  %6473 = add i64 %6453, 19
  store i64 %6473, i64* %3, align 8
  %6474 = inttoptr i64 %6472 to i64*
  %6475 = load i64, i64* %6474, align 8
  store i64 %6475, i64* %RAX.i2535, align 8
  %6476 = add i64 %6475, 344
  %6477 = add i64 %6453, 25
  store i64 %6477, i64* %3, align 8
  %6478 = inttoptr i64 %6476 to i32*
  %6479 = load i32, i32* %6478, align 4
  %6480 = add i32 %6479, %6470
  %6481 = zext i32 %6480 to i64
  store i64 %6481, i64* %RCX.i2514, align 8
  %6482 = icmp ult i32 %6480, %6470
  %6483 = icmp ult i32 %6480, %6479
  %6484 = or i1 %6482, %6483
  %6485 = zext i1 %6484 to i8
  store i8 %6485, i8* %14, align 1
  %6486 = and i32 %6480, 255
  %6487 = tail call i32 @llvm.ctpop.i32(i32 %6486)
  %6488 = trunc i32 %6487 to i8
  %6489 = and i8 %6488, 1
  %6490 = xor i8 %6489, 1
  store i8 %6490, i8* %21, align 1
  %6491 = xor i32 %6479, %6470
  %6492 = xor i32 %6491, %6480
  %6493 = lshr i32 %6492, 4
  %6494 = trunc i32 %6493 to i8
  %6495 = and i8 %6494, 1
  store i8 %6495, i8* %26, align 1
  %6496 = icmp eq i32 %6480, 0
  %6497 = zext i1 %6496 to i8
  store i8 %6497, i8* %29, align 1
  %6498 = lshr i32 %6480, 31
  %6499 = trunc i32 %6498 to i8
  store i8 %6499, i8* %32, align 1
  %6500 = lshr i32 %6470, 31
  %6501 = lshr i32 %6479, 31
  %6502 = xor i32 %6498, %6500
  %6503 = xor i32 %6498, %6501
  %6504 = add nuw nsw i32 %6502, %6503
  %6505 = icmp eq i32 %6504, 2
  %6506 = zext i1 %6505 to i8
  store i8 %6506, i8* %38, align 1
  %6507 = add i64 %6451, -84
  %6508 = add i64 %6453, 28
  store i64 %6508, i64* %3, align 8
  %6509 = inttoptr i64 %6507 to i32*
  store i32 %6480, i32* %6509, align 4
  %6510 = load i64, i64* %RBP.i, align 8
  %6511 = add i64 %6510, -48
  %6512 = load i64, i64* %3, align 8
  %6513 = add i64 %6512, 4
  store i64 %6513, i64* %3, align 8
  %6514 = inttoptr i64 %6511 to i64*
  %6515 = load i64, i64* %6514, align 8
  store i64 %6515, i64* %RAX.i2535, align 8
  %6516 = add i64 %6510, -76
  %6517 = add i64 %6512, 8
  store i64 %6517, i64* %3, align 8
  %6518 = inttoptr i64 %6516 to i32*
  %6519 = load i32, i32* %6518, align 4
  %6520 = sext i32 %6519 to i64
  store i64 %6520, i64* %RDX.i2517, align 8
  %6521 = shl nsw i64 %6520, 3
  %6522 = add i64 %6521, %6515
  %6523 = add i64 %6512, 12
  store i64 %6523, i64* %3, align 8
  %6524 = inttoptr i64 %6522 to i64*
  %6525 = load i64, i64* %6524, align 8
  store i64 %6525, i64* %RAX.i2535, align 8
  %6526 = load i32, i32* %ECX.i2367, align 4
  %6527 = add i64 %6525, 8
  %6528 = add i64 %6512, 15
  store i64 %6528, i64* %3, align 8
  %6529 = inttoptr i64 %6527 to i32*
  %6530 = load i32, i32* %6529, align 4
  %6531 = sub i32 %6526, %6530
  %6532 = icmp ult i32 %6526, %6530
  %6533 = zext i1 %6532 to i8
  store i8 %6533, i8* %14, align 1
  %6534 = and i32 %6531, 255
  %6535 = tail call i32 @llvm.ctpop.i32(i32 %6534)
  %6536 = trunc i32 %6535 to i8
  %6537 = and i8 %6536, 1
  %6538 = xor i8 %6537, 1
  store i8 %6538, i8* %21, align 1
  %6539 = xor i32 %6530, %6526
  %6540 = xor i32 %6539, %6531
  %6541 = lshr i32 %6540, 4
  %6542 = trunc i32 %6541 to i8
  %6543 = and i8 %6542, 1
  store i8 %6543, i8* %26, align 1
  %6544 = icmp eq i32 %6531, 0
  %6545 = zext i1 %6544 to i8
  store i8 %6545, i8* %29, align 1
  %6546 = lshr i32 %6531, 31
  %6547 = trunc i32 %6546 to i8
  store i8 %6547, i8* %32, align 1
  %6548 = lshr i32 %6526, 31
  %6549 = lshr i32 %6530, 31
  %6550 = xor i32 %6549, %6548
  %6551 = xor i32 %6546, %6548
  %6552 = add nuw nsw i32 %6551, %6550
  %6553 = icmp eq i32 %6552, 2
  %6554 = zext i1 %6553 to i8
  store i8 %6554, i8* %38, align 1
  %6555 = icmp ne i8 %6547, 0
  %6556 = xor i1 %6555, %6553
  %6557 = or i1 %6544, %6556
  %.v123 = select i1 %6557, i64 39, i64 21
  %6558 = add i64 %6512, %.v123
  store i64 %6558, i64* %3, align 8
  br i1 %6557, label %block_.L_40e493, label %block_40e481

block_40e481:                                     ; preds = %block_.L_40e423
  %6559 = add i64 %6510, -84
  %6560 = add i64 %6558, 3
  store i64 %6560, i64* %3, align 8
  %6561 = inttoptr i64 %6559 to i32*
  %6562 = load i32, i32* %6561, align 4
  %6563 = zext i32 %6562 to i64
  store i64 %6563, i64* %RAX.i2535, align 8
  %6564 = add i64 %6558, 7
  store i64 %6564, i64* %3, align 8
  %6565 = load i64, i64* %6514, align 8
  store i64 %6565, i64* %RCX.i2514, align 8
  %6566 = add i64 %6558, 11
  store i64 %6566, i64* %3, align 8
  %6567 = load i32, i32* %6518, align 4
  %6568 = sext i32 %6567 to i64
  store i64 %6568, i64* %RDX.i2517, align 8
  %6569 = shl nsw i64 %6568, 3
  %6570 = add i64 %6569, %6565
  %6571 = add i64 %6558, 15
  store i64 %6571, i64* %3, align 8
  %6572 = inttoptr i64 %6570 to i64*
  %6573 = load i64, i64* %6572, align 8
  store i64 %6573, i64* %RCX.i2514, align 8
  %6574 = add i64 %6573, 8
  %6575 = add i64 %6558, 18
  store i64 %6575, i64* %3, align 8
  %6576 = inttoptr i64 %6574 to i32*
  store i32 %6562, i32* %6576, align 4
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40e493

block_.L_40e493:                                  ; preds = %block_40e481, %block_.L_40e423
  %6577 = phi i64 [ %.pre106, %block_40e481 ], [ %6510, %block_.L_40e423 ]
  %6578 = phi i64 [ %.pre105, %block_40e481 ], [ %6558, %block_.L_40e423 ]
  %6579 = add i64 %6577, -76
  %6580 = add i64 %6578, 8
  store i64 %6580, i64* %3, align 8
  %6581 = inttoptr i64 %6579 to i32*
  %6582 = load i32, i32* %6581, align 4
  %6583 = add i32 %6582, 1
  %6584 = zext i32 %6583 to i64
  store i64 %6584, i64* %RAX.i2535, align 8
  %6585 = icmp eq i32 %6582, -1
  %6586 = icmp eq i32 %6583, 0
  %6587 = or i1 %6585, %6586
  %6588 = zext i1 %6587 to i8
  store i8 %6588, i8* %14, align 1
  %6589 = and i32 %6583, 255
  %6590 = tail call i32 @llvm.ctpop.i32(i32 %6589)
  %6591 = trunc i32 %6590 to i8
  %6592 = and i8 %6591, 1
  %6593 = xor i8 %6592, 1
  store i8 %6593, i8* %21, align 1
  %6594 = xor i32 %6583, %6582
  %6595 = lshr i32 %6594, 4
  %6596 = trunc i32 %6595 to i8
  %6597 = and i8 %6596, 1
  store i8 %6597, i8* %26, align 1
  %6598 = zext i1 %6586 to i8
  store i8 %6598, i8* %29, align 1
  %6599 = lshr i32 %6583, 31
  %6600 = trunc i32 %6599 to i8
  store i8 %6600, i8* %32, align 1
  %6601 = lshr i32 %6582, 31
  %6602 = xor i32 %6599, %6601
  %6603 = add nuw nsw i32 %6602, %6599
  %6604 = icmp eq i32 %6603, 2
  %6605 = zext i1 %6604 to i8
  store i8 %6605, i8* %38, align 1
  %6606 = add i64 %6578, 14
  store i64 %6606, i64* %3, align 8
  store i32 %6583, i32* %6581, align 4
  %6607 = load i64, i64* %3, align 8
  %6608 = add i64 %6607, -2985
  store i64 %6608, i64* %3, align 8
  br label %block_.L_40d8f8

block_.L_40e4a6:                                  ; preds = %block_.L_40d8f8
  %6609 = add i64 %600, -48
  %6610 = add i64 %636, 4
  store i64 %6610, i64* %3, align 8
  %6611 = inttoptr i64 %6609 to i64*
  %6612 = load i64, i64* %6611, align 8
  store i64 %6612, i64* %RAX.i2535, align 8
  %6613 = add i64 %636, 8
  store i64 %6613, i64* %3, align 8
  %6614 = load i32, i32* %608, align 4
  %6615 = sext i32 %6614 to i64
  store i64 %6615, i64* %RCX.i2514, align 8
  %6616 = shl nsw i64 %6615, 3
  %6617 = add i64 %6616, %6612
  %6618 = add i64 %636, 12
  store i64 %6618, i64* %3, align 8
  %6619 = inttoptr i64 %6617 to i64*
  %6620 = load i64, i64* %6619, align 8
  store i64 %6620, i64* %RAX.i2535, align 8
  %6621 = add i64 %6620, 8
  %6622 = add i64 %636, 15
  store i64 %6622, i64* %3, align 8
  %6623 = inttoptr i64 %6621 to i32*
  %6624 = load i32, i32* %6623, align 4
  %6625 = zext i32 %6624 to i64
  store i64 %6625, i64* %RDX.i2517, align 8
  %6626 = add i64 %600, -24
  %6627 = add i64 %636, 19
  store i64 %6627, i64* %3, align 8
  %6628 = inttoptr i64 %6626 to i64*
  %6629 = load i64, i64* %6628, align 8
  store i64 %6629, i64* %RAX.i2535, align 8
  %6630 = add i64 %6629, 352
  %6631 = add i64 %636, 25
  store i64 %6631, i64* %3, align 8
  %6632 = inttoptr i64 %6630 to i32*
  %6633 = load i32, i32* %6632, align 4
  %6634 = add i32 %6633, %6624
  %6635 = zext i32 %6634 to i64
  store i64 %6635, i64* %RDX.i2517, align 8
  %6636 = icmp ult i32 %6634, %6624
  %6637 = icmp ult i32 %6634, %6633
  %6638 = or i1 %6636, %6637
  %6639 = zext i1 %6638 to i8
  store i8 %6639, i8* %14, align 1
  %6640 = and i32 %6634, 255
  %6641 = tail call i32 @llvm.ctpop.i32(i32 %6640)
  %6642 = trunc i32 %6641 to i8
  %6643 = and i8 %6642, 1
  %6644 = xor i8 %6643, 1
  store i8 %6644, i8* %21, align 1
  %6645 = xor i32 %6633, %6624
  %6646 = xor i32 %6645, %6634
  %6647 = lshr i32 %6646, 4
  %6648 = trunc i32 %6647 to i8
  %6649 = and i8 %6648, 1
  store i8 %6649, i8* %26, align 1
  %6650 = icmp eq i32 %6634, 0
  %6651 = zext i1 %6650 to i8
  store i8 %6651, i8* %29, align 1
  %6652 = lshr i32 %6634, 31
  %6653 = trunc i32 %6652 to i8
  store i8 %6653, i8* %32, align 1
  %6654 = lshr i32 %6624, 31
  %6655 = lshr i32 %6633, 31
  %6656 = xor i32 %6652, %6654
  %6657 = xor i32 %6652, %6655
  %6658 = add nuw nsw i32 %6656, %6657
  %6659 = icmp eq i32 %6658, 2
  %6660 = zext i1 %6659 to i8
  store i8 %6660, i8* %38, align 1
  %6661 = add i64 %600, -84
  %6662 = add i64 %636, 28
  store i64 %6662, i64* %3, align 8
  %6663 = inttoptr i64 %6661 to i32*
  store i32 %6634, i32* %6663, align 4
  %6664 = load i64, i64* %RBP.i, align 8
  %6665 = add i64 %6664, -32
  %6666 = load i64, i64* %3, align 8
  %6667 = add i64 %6666, 5
  store i64 %6667, i64* %3, align 8
  %6668 = inttoptr i64 %6665 to i64*
  %6669 = load i64, i64* %6668, align 8
  store i8 0, i8* %14, align 1
  %6670 = trunc i64 %6669 to i32
  %6671 = and i32 %6670, 255
  %6672 = tail call i32 @llvm.ctpop.i32(i32 %6671)
  %6673 = trunc i32 %6672 to i8
  %6674 = and i8 %6673, 1
  %6675 = xor i8 %6674, 1
  store i8 %6675, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6676 = icmp eq i64 %6669, 0
  %6677 = zext i1 %6676 to i8
  store i8 %6677, i8* %29, align 1
  %6678 = lshr i64 %6669, 63
  %6679 = trunc i64 %6678 to i8
  store i8 %6679, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %6676, i64 27, i64 11
  %6680 = add i64 %6666, %.v
  %6681 = add i64 %6664, -40
  %6682 = add i64 %6680, 4
  store i64 %6682, i64* %3, align 8
  %6683 = inttoptr i64 %6681 to i64*
  %6684 = load i64, i64* %6683, align 8
  br i1 %6676, label %block_.L_40e4dd, label %block_40e4cd

block_40e4cd:                                     ; preds = %block_.L_40e4a6
  store i64 %6684, i64* %RAX.i2535, align 8
  %6685 = add i64 %6680, 8
  store i64 %6685, i64* %3, align 8
  %6686 = load i64, i64* %6668, align 8
  store i64 %6686, i64* %RCX.i2514, align 8
  %6687 = add i64 %6680, 11
  store i64 %6687, i64* %3, align 8
  %6688 = inttoptr i64 %6686 to i64*
  store i64 %6684, i64* %6688, align 8
  %6689 = load i64, i64* %3, align 8
  %6690 = add i64 %6689, 14
  store i64 %6690, i64* %3, align 8
  br label %block_.L_40e4e6

block_.L_40e4dd:                                  ; preds = %block_.L_40e4a6
  store i64 %6684, i64* %RDI.i2523, align 8
  %6691 = add i64 %6680, -27549
  %6692 = add i64 %6680, 9
  %6693 = load i64, i64* %6, align 8
  %6694 = add i64 %6693, -8
  %6695 = inttoptr i64 %6694 to i64*
  store i64 %6692, i64* %6695, align 8
  store i64 %6694, i64* %6, align 8
  store i64 %6691, i64* %3, align 8
  %call2_40e4e1 = tail call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* nonnull %0, i64 %6691, %struct.Memory* %call2_40d779)
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_40e4e6

block_.L_40e4e6:                                  ; preds = %block_.L_40e4dd, %block_40e4cd
  %6696 = phi i64 [ %.pre107, %block_.L_40e4dd ], [ %6690, %block_40e4cd ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_40e4e1, %block_.L_40e4dd ], [ %call2_40d779, %block_40e4cd ]
  %6697 = load i64, i64* %RBP.i, align 8
  %6698 = add i64 %6697, -84
  %6699 = add i64 %6696, 3
  store i64 %6699, i64* %3, align 8
  %6700 = inttoptr i64 %6698 to i32*
  %6701 = load i32, i32* %6700, align 4
  %6702 = zext i32 %6701 to i64
  store i64 %6702, i64* %RDI.i2523, align 8
  %6703 = add i64 %6696, 104970
  %6704 = add i64 %6696, 8
  %6705 = load i64, i64* %6, align 8
  %6706 = add i64 %6705, -8
  %6707 = inttoptr i64 %6706 to i64*
  store i64 %6704, i64* %6707, align 8
  store i64 %6706, i64* %6, align 8
  store i64 %6703, i64* %3, align 8
  %call2_40e4e9 = tail call %struct.Memory* @sub_427ef0.Scorify(%struct.State* nonnull %0, i64 %6703, %struct.Memory* %MEMORY.33)
  %6708 = load i64, i64* %6, align 8
  %6709 = load i64, i64* %3, align 8
  %6710 = add i64 %6708, 96
  store i64 %6710, i64* %6, align 8
  %6711 = icmp ugt i64 %6708, -97
  %6712 = zext i1 %6711 to i8
  store i8 %6712, i8* %14, align 1
  %6713 = trunc i64 %6710 to i32
  %6714 = and i32 %6713, 255
  %6715 = tail call i32 @llvm.ctpop.i32(i32 %6714)
  %6716 = trunc i32 %6715 to i8
  %6717 = and i8 %6716, 1
  %6718 = xor i8 %6717, 1
  store i8 %6718, i8* %21, align 1
  %6719 = xor i64 %6710, %6708
  %6720 = lshr i64 %6719, 4
  %6721 = trunc i64 %6720 to i8
  %6722 = and i8 %6721, 1
  store i8 %6722, i8* %26, align 1
  %6723 = icmp eq i64 %6710, 0
  %6724 = zext i1 %6723 to i8
  store i8 %6724, i8* %29, align 1
  %6725 = lshr i64 %6710, 63
  %6726 = trunc i64 %6725 to i8
  store i8 %6726, i8* %32, align 1
  %6727 = lshr i64 %6708, 63
  %6728 = xor i64 %6725, %6727
  %6729 = add nuw nsw i64 %6728, %6725
  %6730 = icmp eq i64 %6729, 2
  %6731 = zext i1 %6730 to i8
  store i8 %6731, i8* %38, align 1
  %6732 = add i64 %6709, 5
  store i64 %6732, i64* %3, align 8
  %6733 = add i64 %6708, 104
  %6734 = inttoptr i64 %6710 to i64*
  %6735 = load i64, i64* %6734, align 8
  store i64 %6735, i64* %RBP.i, align 8
  store i64 %6733, i64* %6, align 8
  %6736 = add i64 %6709, 6
  store i64 %6736, i64* %3, align 8
  %6737 = inttoptr i64 %6733 to i64*
  %6738 = load i64, i64* %6737, align 8
  store i64 %6738, i64* %3, align 8
  %6739 = add i64 %6708, 112
  store i64 %6739, i64* %6, align 8
  ret %struct.Memory* %call2_40e4e9
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 136
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
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
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
define %struct.Memory* @routine_movl__esi____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jg_.L_40d82b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 -987654321, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d7d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x154__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 340
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
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
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x150__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40d8f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d89a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jg_.L_40e4a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40d9d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 2
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -4
  %8 = icmp ult i32 %4, 4
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
define %struct.Memory* @routine_jge_.L_40d9cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -4
  %8 = icmp ult i32 %4, 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 4
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 28
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 27
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d9d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 64, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d9d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40e279(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40dba2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 3
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dab1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40db08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40db72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 440
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dc15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dc89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dcea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dd5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40df29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 4
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 444
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dddb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40de4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40deb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40df24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40df29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40dfd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e0af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e07f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1b0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e119(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e183(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e266(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e1f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40e261(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e266(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e26b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x88__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40e34b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jle_.L_40e338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e33d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e2d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 364
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_0x15c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 348
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jle_.L_40e3bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 360
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_jle_.L_40e423(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 356
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x158__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 344
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jle_.L_40e493(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e498(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d8f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 352
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_40e4dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e4e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_callq_.Scorify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
