; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x72531c_type = type <{ [1 x i8] }>
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
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x72531c = local_unnamed_addr global %G_0x72531c_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44a2d0.get_mb_block_pos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @GetStrength(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -344
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 336
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
  %RDI.i190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i190, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i248, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i320 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %EDX.i320, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i32, i32* %ECX.i, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %64 to i32*
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -28
  %67 = load i32, i32* %R8D.i, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %71 to i32*
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -32
  %74 = load i32, i32* %R9D.i, align 4
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %79, i64* %RSI.i248, align 8
  %80 = add i64 %79, 6504
  %81 = add i64 %78, 15
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %RSI.i248, align 8
  %84 = add i64 %78, 18
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -72
  %89 = add i64 %78, 22
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  store i64 %86, i64* %90, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %92, i64* %RSI.i248, align 8
  %93 = add i64 %92, 6504
  %94 = add i64 %91, 15
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RSI.i248, align 8
  %97 = add i64 %96, 8
  %98 = add i64 %91, 19
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -80
  %103 = add i64 %91, 23
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i64*
  store i64 %100, i64* %104, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %106, i64* %RSI.i248, align 8
  %107 = add i64 %106, 6480
  %108 = add i64 %105, 15
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RSI.i248, align 8
  %111 = add i64 %105, 18
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -88
  %116 = add i64 %105, 22
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %119, i64* %RSI.i248, align 8
  %120 = add i64 %119, 6480
  %121 = add i64 %118, 15
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RSI.i248, align 8
  %124 = add i64 %123, 8
  %125 = add i64 %118, 19
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -96
  %130 = add i64 %118, 23
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %131, align 8
  %132 = load i64, i64* %3, align 8
  %133 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %133, i64* %RSI.i248, align 8
  %134 = add i64 %133, 6488
  %135 = add i64 %132, 15
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RSI.i248, align 8
  %138 = add i64 %132, 18
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -104
  %143 = add i64 %132, 22
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i64*
  store i64 %140, i64* %144, align 8
  %145 = load i64, i64* %3, align 8
  %146 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %146, i64* %RSI.i248, align 8
  %147 = add i64 %146, 6488
  %148 = add i64 %145, 15
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RSI.i248, align 8
  %151 = add i64 %150, 8
  %152 = add i64 %145, 19
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %RSI.i248, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -112
  %157 = add i64 %145, 23
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %158, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -16
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 4
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RSI.i248, align 8
  %165 = add i64 %164, 14168
  %166 = add i64 %161, 11
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RSI.i248, align 8
  %169 = add i64 %159, -20
  %170 = add i64 %161, 15
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, 632
  store i64 %174, i64* %RDI.i190, align 8
  %175 = lshr i64 %174, 63
  %176 = add i64 %174, %168
  store i64 %176, i64* %RSI.i248, align 8
  %177 = icmp ult i64 %176, %168
  %178 = icmp ult i64 %176, %174
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %14, align 1
  %181 = trunc i64 %176 to i32
  %182 = and i32 %181, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %21, align 1
  %187 = xor i64 %174, %168
  %188 = xor i64 %187, %176
  %189 = lshr i64 %188, 4
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %27, align 1
  %192 = icmp eq i64 %176, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %30, align 1
  %194 = lshr i64 %176, 63
  %195 = trunc i64 %194 to i8
  store i8 %195, i8* %33, align 1
  %196 = lshr i64 %168, 63
  %197 = xor i64 %194, %196
  %198 = xor i64 %194, %175
  %199 = add nuw nsw i64 %197, %198
  %200 = icmp eq i64 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %39, align 1
  %202 = add i64 %159, -144
  %203 = add i64 %161, 32
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  store i64 %176, i64* %204, align 8
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -44
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, 7
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %206 to i32*
  store i32 0, i32* %209, align 4
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1926 = getelementptr inbounds %union.anon, %union.anon* %210, i64 0, i32 0
  %EAX.i1921 = bitcast %union.anon* %210 to i32*
  %RCX.i1876 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %R8.i1874 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %RDX.i1862 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %R9.i1826 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B.i1803 = bitcast %union.anon* %211 to i8*
  %AL.i1795 = bitcast %union.anon* %210 to i8*
  %CL.i1741 = bitcast %union.anon* %57 to i8*
  %R8B.i501 = bitcast %union.anon* %64 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43963f

block_.L_43963f:                                  ; preds = %block_.L_43a288, %entry
  %212 = phi i64 [ %.pre, %entry ], [ %4564, %block_.L_43a288 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.32, %block_.L_43a288 ]
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -44
  %215 = add i64 %212, 4
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, -16
  %219 = icmp ult i32 %217, 16
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %14, align 1
  %221 = and i32 %218, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %21, align 1
  %226 = xor i32 %217, 16
  %227 = xor i32 %226, %218
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %27, align 1
  %231 = icmp eq i32 %218, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %30, align 1
  %233 = lshr i32 %218, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %33, align 1
  %235 = lshr i32 %217, 31
  %236 = xor i32 %233, %235
  %237 = add nuw nsw i32 %236, %235
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %39, align 1
  %240 = icmp ne i8 %234, 0
  %241 = xor i1 %240, %238
  %.v85 = select i1 %241, i64 10, i64 3164
  %242 = add i64 %212, %.v85
  store i64 %242, i64* %3, align 8
  br i1 %241, label %block_439649, label %block_.L_43a29b

block_439649:                                     ; preds = %block_.L_43963f
  %243 = add i64 %213, -24
  %244 = add i64 %242, 4
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  store i8 0, i8* %14, align 1
  %247 = and i32 %246, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %252 = icmp eq i32 %246, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %30, align 1
  %254 = lshr i32 %246, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v86 = select i1 %252, i64 24, i64 10
  %256 = add i64 %242, %.v86
  store i64 %256, i64* %3, align 8
  br i1 %252, label %block_.L_439661, label %block_439653

block_439653:                                     ; preds = %block_439649
  %257 = add i64 %256, 3
  store i64 %257, i64* %3, align 8
  %258 = load i32, i32* %216, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX.i1926, align 8
  %260 = add i64 %213, -212
  %261 = add i64 %256, 9
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  store i32 %258, i32* %262, align 4
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 17
  store i64 %264, i64* %3, align 8
  br label %block_.L_43966d

block_.L_439661:                                  ; preds = %block_439649
  %265 = add i64 %213, -28
  %266 = add i64 %256, 3
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 2
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i1926, align 8
  %271 = lshr i32 %268, 30
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %14, align 1
  %274 = and i32 %269, 252
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %279 = icmp eq i32 %269, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %30, align 1
  %281 = lshr i32 %268, 29
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %284 = add i64 %213, -212
  %285 = add i64 %256, 12
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  store i32 %269, i32* %286, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_43966d

block_.L_43966d:                                  ; preds = %block_.L_439661, %block_439653
  %287 = phi i64 [ %.pre53, %block_.L_439661 ], [ %264, %block_439653 ]
  %288 = load i64, i64* %RBP.i, align 8
  %289 = add i64 %288, -212
  %290 = add i64 %287, 6
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RAX.i1926, align 8
  %294 = add i64 %288, -116
  %295 = add i64 %287, 9
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  store i32 %292, i32* %296, align 4
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -24
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, 4
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301, align 4
  store i8 0, i8* %14, align 1
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %308 = icmp eq i32 %302, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %30, align 1
  %310 = lshr i32 %302, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v87 = select i1 %308, i64 70, i64 10
  %312 = add i64 %299, %.v87
  store i64 %312, i64* %3, align 8
  br i1 %308, label %block_.L_4396bc, label %block_439680

block_439680:                                     ; preds = %block_.L_43966d
  %313 = add i64 %297, -28
  %314 = add i64 %312, 4
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, -4
  %318 = icmp ult i32 %316, 4
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %14, align 1
  %320 = and i32 %317, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %21, align 1
  %325 = xor i32 %317, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %27, align 1
  %329 = icmp eq i32 %317, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i32 %317, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %33, align 1
  %333 = lshr i32 %316, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %39, align 1
  %338 = icmp ne i8 %332, 0
  %339 = xor i1 %338, %336
  %.v88 = select i1 %339, i64 10, i64 27
  %340 = add i64 %312, %.v88
  store i64 %340, i64* %3, align 8
  br i1 %339, label %block_43968a, label %block_.L_43969b

block_43968a:                                     ; preds = %block_439680
  %341 = add i64 %340, 3
  store i64 %341, i64* %3, align 8
  %342 = load i32, i32* %315, align 4
  %343 = shl i32 %342, 2
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX.i1926, align 8
  %345 = lshr i32 %342, 30
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %14, align 1
  %348 = and i32 %343, 252
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %353 = icmp eq i32 %343, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %30, align 1
  %355 = lshr i32 %342, 29
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %358 = add i64 %297, -216
  %359 = add i64 %340, 12
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  store i32 %343, i32* %360, align 4
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 21
  br label %block_.L_4396ab

block_.L_43969b:                                  ; preds = %block_439680
  store i64 1, i64* %RAX.i1926, align 8
  %363 = add i64 %297, -216
  %364 = add i64 %340, 11
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 1, i32* %365, align 4
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 5
  store i64 %367, i64* %3, align 8
  br label %block_.L_4396ab

block_.L_4396ab:                                  ; preds = %block_.L_43969b, %block_43968a
  %storemerge = phi i64 [ %362, %block_43968a ], [ %367, %block_.L_43969b ]
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -216
  %370 = add i64 %storemerge, 6
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX.i1926, align 8
  %374 = add i64 %368, -220
  %375 = add i64 %storemerge, 12
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  store i32 %372, i32* %376, align 4
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 14
  store i64 %378, i64* %3, align 8
  br label %block_.L_4396c5

block_.L_4396bc:                                  ; preds = %block_.L_43966d
  %379 = add i64 %297, -44
  %380 = add i64 %312, 3
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RAX.i1926, align 8
  %384 = add i64 %297, -220
  %385 = add i64 %312, 9
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  store i32 %382, i32* %386, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_4396c5

block_.L_4396c5:                                  ; preds = %block_.L_4396bc, %block_.L_4396ab
  %387 = phi i64 [ %.pre54, %block_.L_4396bc ], [ %378, %block_.L_4396ab ]
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -220
  %390 = add i64 %387, 6
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX.i1926, align 8
  store i64 1, i64* %RCX.i1876, align 8
  %394 = add i64 %388, -176
  store i64 %394, i64* %R8.i1874, align 8
  %395 = add i64 %388, -124
  %396 = add i64 %387, 21
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  store i32 %392, i32* %397, align 4
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -20
  %400 = load i64, i64* %3, align 8
  %401 = add i64 %400, 3
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %399 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RDI.i190, align 8
  %405 = add i64 %398, -116
  %406 = add i64 %400, 6
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RAX.i1926, align 8
  %410 = load i32, i32* %ECX.i, align 4
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RDX.i1862, align 8
  %412 = add i64 %398, -24
  %413 = add i64 %400, 11
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = sub i32 %410, %415
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RDX.i1862, align 8
  %418 = lshr i32 %416, 31
  %419 = sub i32 %408, %416
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i1926, align 8
  %421 = icmp ult i32 %408, %416
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %14, align 1
  %423 = and i32 %419, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %21, align 1
  %428 = xor i32 %416, %408
  %429 = xor i32 %428, %419
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %27, align 1
  %433 = icmp eq i32 %419, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %30, align 1
  %435 = lshr i32 %419, 31
  %436 = trunc i32 %435 to i8
  store i8 %436, i8* %33, align 1
  %437 = lshr i32 %408, 31
  %438 = xor i32 %418, %437
  %439 = xor i32 %435, %437
  %440 = add nuw nsw i32 %439, %438
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %39, align 1
  %443 = add i64 %398, -124
  %444 = add i64 %400, 16
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RDX.i1862, align 8
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -24
  %450 = add i64 %400, 19
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = sub i32 %446, %452
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RDX.i1862, align 8
  %455 = icmp ult i32 %446, %452
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %14, align 1
  %457 = and i32 %453, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i32 %452, %446
  %463 = xor i32 %462, %453
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %27, align 1
  %467 = icmp eq i32 %453, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %30, align 1
  %469 = lshr i32 %453, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %33, align 1
  %471 = lshr i32 %446, 31
  %472 = lshr i32 %452, 31
  %473 = xor i32 %472, %471
  %474 = xor i32 %469, %471
  %475 = add nuw nsw i32 %474, %473
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %39, align 1
  store i64 %420, i64* %RSI.i248, align 8
  %478 = add i64 %400, 72406
  %479 = add i64 %400, 26
  %480 = load i64, i64* %6, align 8
  %481 = add i64 %480, -8
  %482 = inttoptr i64 %481 to i64*
  store i64 %479, i64* %482, align 8
  store i64 %481, i64* %6, align 8
  store i64 %478, i64* %3, align 8
  %call2_4396ef = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %478, %struct.Memory* %MEMORY.0)
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -168
  %485 = load i64, i64* %3, align 8
  %486 = add i64 %485, 6
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %484 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RAX.i1926, align 8
  %490 = add i64 %483, -120
  %491 = add i64 %485, 9
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  store i32 %488, i32* %492, align 4
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -164
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, 6
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %494 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i1926, align 8
  %500 = add i64 %493, -128
  %501 = add i64 %495, 9
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  store i32 %498, i32* %502, align 4
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -16
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 4
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %R8.i1874, align 8
  %509 = add i64 %508, 14168
  %510 = add i64 %505, 11
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %R8.i1874, align 8
  %513 = add i64 %503, -172
  %514 = add i64 %505, 18
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sext i32 %516 to i64
  %518 = mul nsw i64 %517, 632
  store i64 %518, i64* %R9.i1826, align 8
  %519 = lshr i64 %518, 63
  %520 = add i64 %518, %512
  store i64 %520, i64* %R8.i1874, align 8
  %521 = icmp ult i64 %520, %512
  %522 = icmp ult i64 %520, %518
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %14, align 1
  %525 = trunc i64 %520 to i32
  %526 = and i32 %525, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %21, align 1
  %531 = xor i64 %518, %512
  %532 = xor i64 %531, %520
  %533 = lshr i64 %532, 4
  %534 = trunc i64 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %27, align 1
  %536 = icmp eq i64 %520, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %30, align 1
  %538 = lshr i64 %520, 63
  %539 = trunc i64 %538 to i8
  store i8 %539, i8* %33, align 1
  %540 = lshr i64 %512, 63
  %541 = xor i64 %538, %540
  %542 = xor i64 %538, %519
  %543 = add nuw nsw i64 %541, %542
  %544 = icmp eq i64 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %39, align 1
  %546 = add i64 %503, -152
  %547 = add i64 %505, 35
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  store i64 %520, i64* %548, align 8
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -144
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 7
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %550 to i64*
  %554 = load i64, i64* %553, align 8
  store i64 %554, i64* %R8.i1874, align 8
  %555 = add i64 %554, 532
  %556 = add i64 %551, 14
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX.i1926, align 8
  %560 = add i64 %549, -152
  %561 = add i64 %551, 21
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %R8.i1874, align 8
  %564 = add i64 %563, 532
  %565 = add i64 %551, 28
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = icmp eq i32 %558, %567
  %569 = xor i1 %568, true
  %570 = zext i1 %569 to i8
  store i8 0, i8* %14, align 1
  %571 = zext i1 %569 to i32
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = xor i8 %573, 1
  store i8 %574, i8* %21, align 1
  %575 = zext i1 %568 to i8
  store i8 %575, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %576 = zext i1 %569 to i64
  store i64 %576, i64* %RAX.i1926, align 8
  store i8 %570, i8* %R10B.i1803, align 1
  store i8 %570, i8* getelementptr inbounds (%G_0x72531c_type, %G_0x72531c_type* @G_0x72531c, i64 0, i32 0, i64 0), align 8
  %577 = add i64 %549, -124
  %578 = add i64 %551, 54
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = sext i32 %580 to i64
  %582 = ashr i64 %581, 1
  %583 = lshr i64 %582, 1
  %584 = shl i64 %583, 2
  %585 = trunc i64 %584 to i32
  %586 = and i64 %584, 4294967292
  store i64 %586, i64* %RAX.i1926, align 8
  %587 = lshr i64 %582, 31
  %588 = trunc i64 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %14, align 1
  %590 = and i32 %585, 252
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %595 = icmp eq i32 %585, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %30, align 1
  %597 = lshr i64 %582, 30
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -116
  %602 = add i64 %551, 63
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = sext i32 %604 to i64
  %606 = ashr i64 %605, 1
  %607 = lshr i64 %606, 1
  %608 = and i64 %607, 4294967295
  store i64 %608, i64* %RCX.i1876, align 8
  %609 = trunc i64 %607 to i32
  %610 = add i32 %609, %585
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i1926, align 8
  %612 = icmp ult i32 %610, %585
  %613 = icmp ult i32 %610, %609
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %14, align 1
  %616 = and i32 %610, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %21, align 1
  %621 = xor i64 %607, %584
  %622 = trunc i64 %621 to i32
  %623 = xor i32 %622, %610
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %27, align 1
  %627 = icmp eq i32 %610, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %30, align 1
  %629 = lshr i32 %610, 31
  %630 = trunc i32 %629 to i8
  store i8 %630, i8* %33, align 1
  %631 = lshr i64 %582, 30
  %632 = trunc i64 %631 to i32
  %633 = and i32 %632, 1
  %634 = lshr i64 %606, 32
  %635 = trunc i64 %634 to i32
  %636 = and i32 %635, 1
  %637 = xor i32 %629, %633
  %638 = xor i32 %629, %636
  %639 = add nuw nsw i32 %637, %638
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %39, align 1
  %642 = add i64 %600, -40
  %643 = add i64 %551, 71
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  store i32 %610, i32* %644, align 4
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -128
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, 3
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = ashr i64 %651, 1
  %653 = lshr i64 %652, 1
  %654 = shl i64 %653, 2
  %655 = trunc i64 %654 to i32
  %656 = and i64 %654, 4294967292
  store i64 %656, i64* %RAX.i1926, align 8
  %657 = lshr i64 %652, 31
  %658 = trunc i64 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %14, align 1
  %660 = and i32 %655, 252
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %665 = icmp eq i32 %655, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %30, align 1
  %667 = lshr i64 %652, 30
  %668 = trunc i64 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %670 = add i64 %645, -120
  %671 = add i64 %647, 12
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = sext i32 %673 to i64
  %675 = ashr i64 %674, 1
  %676 = lshr i64 %675, 1
  %677 = and i64 %676, 4294967295
  store i64 %677, i64* %RCX.i1876, align 8
  %678 = trunc i64 %676 to i32
  %679 = add i32 %678, %655
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RAX.i1926, align 8
  %681 = icmp ult i32 %679, %655
  %682 = icmp ult i32 %679, %678
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %14, align 1
  %685 = and i32 %679, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %21, align 1
  %690 = xor i64 %676, %654
  %691 = trunc i64 %690 to i32
  %692 = xor i32 %691, %679
  %693 = lshr i32 %692, 4
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %27, align 1
  %696 = icmp eq i32 %679, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %30, align 1
  %698 = lshr i32 %679, 31
  %699 = trunc i32 %698 to i8
  store i8 %699, i8* %33, align 1
  %700 = lshr i64 %652, 30
  %701 = trunc i64 %700 to i32
  %702 = and i32 %701, 1
  %703 = lshr i64 %675, 32
  %704 = trunc i64 %703 to i32
  %705 = and i32 %704, 1
  %706 = xor i32 %698, %702
  %707 = xor i32 %698, %705
  %708 = add nuw nsw i32 %706, %707
  %709 = icmp eq i32 %708, 2
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %39, align 1
  %711 = load i64, i64* %RBP.i, align 8
  %712 = add i64 %711, -36
  %713 = add i64 %647, 20
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  store i32 %679, i32* %714, align 4
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -16
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, 4
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %R8.i1874, align 8
  %721 = add i64 %720, 24
  %722 = add i64 %717, 9
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = add i32 %724, -3
  %726 = icmp ult i32 %724, 3
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %14, align 1
  %728 = and i32 %725, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %21, align 1
  %733 = xor i32 %725, %724
  %734 = lshr i32 %733, 4
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %27, align 1
  %737 = icmp eq i32 %725, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %30, align 1
  %739 = lshr i32 %725, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %33, align 1
  %741 = lshr i32 %724, 31
  %742 = xor i32 %739, %741
  %743 = add nuw nsw i32 %742, %741
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %39, align 1
  %.v89 = select i1 %737, i64 29, i64 15
  %746 = add i64 %717, %.v89
  store i64 %746, i64* %3, align 8
  br i1 %737, label %block_.L_4397a1, label %block_439793

block_439793:                                     ; preds = %block_.L_4396c5
  %747 = add i64 %746, 4
  store i64 %747, i64* %3, align 8
  %748 = load i64, i64* %719, align 8
  store i64 %748, i64* %RAX.i1926, align 8
  %749 = add i64 %748, 24
  %750 = add i64 %746, 8
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, -4
  %754 = icmp ult i32 %752, 4
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %14, align 1
  %756 = and i32 %753, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %21, align 1
  %761 = xor i32 %753, %752
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %27, align 1
  %765 = icmp eq i32 %753, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %30, align 1
  %767 = lshr i32 %753, 31
  %768 = trunc i32 %767 to i8
  store i8 %768, i8* %33, align 1
  %769 = lshr i32 %752, 31
  %770 = xor i32 %767, %769
  %771 = add nuw nsw i32 %770, %769
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %39, align 1
  %.v90 = select i1 %765, i64 14, i64 257
  %774 = add i64 %746, %.v90
  store i64 %774, i64* %3, align 8
  br i1 %765, label %block_.L_4397a1, label %block_.L_439894

block_.L_4397a1:                                  ; preds = %block_.L_4396c5, %block_439793
  %775 = phi i64 [ %774, %block_439793 ], [ %746, %block_.L_4396c5 ]
  store i64 0, i64* %RAX.i1926, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1741, align 1
  %776 = add i64 %715, -28
  %777 = add i64 %775, 8
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  store i8 0, i8* %14, align 1
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %785 = icmp eq i32 %779, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %30, align 1
  %787 = lshr i32 %779, 31
  %788 = trunc i32 %787 to i8
  store i8 %788, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %789 = add i64 %715, -221
  %790 = add i64 %775, 14
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i8*
  store i8 0, i8* %791, align 1
  %792 = load i64, i64* %3, align 8
  %793 = add i64 %792, 190
  %794 = add i64 %792, 6
  %795 = load i8, i8* %30, align 1
  %796 = icmp eq i8 %795, 0
  %797 = select i1 %796, i64 %793, i64 %794
  store i64 %797, i64* %3, align 8
  br i1 %796, label %block_.L_43986d, label %block_4397b5

block_4397b5:                                     ; preds = %block_.L_4397a1
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -16
  %800 = add i64 %797, 4
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i1926, align 8
  %803 = add i64 %802, 72400
  %804 = add i64 %797, 11
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  store i8 0, i8* %14, align 1
  %807 = and i32 %806, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %812 = icmp eq i32 %806, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %30, align 1
  %814 = lshr i32 %806, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v110 = select i1 %812, i64 17, i64 39
  %816 = add i64 %797, %.v110
  store i64 %816, i64* %3, align 8
  br i1 %812, label %block_4397c6, label %block_.L_4397dc

block_4397c6:                                     ; preds = %block_4397b5
  store i8 1, i8* %AL.i1795, align 1
  %817 = add i64 %816, 6
  store i64 %817, i64* %3, align 8
  %818 = load i64, i64* %801, align 8
  store i64 %818, i64* %RCX.i1876, align 8
  %819 = add i64 %818, 28
  %820 = add i64 %816, 10
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  store i8 0, i8* %14, align 1
  %823 = and i32 %822, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %828 = icmp eq i32 %822, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %30, align 1
  %830 = lshr i32 %822, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %832 = add i64 %798, -222
  %833 = add i64 %816, 16
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i8*
  store i8 1, i8* %834, align 1
  %835 = load i64, i64* %3, align 8
  %836 = load i8, i8* %30, align 1
  %837 = icmp ne i8 %836, 0
  %.v120 = select i1 %837, i64 139, i64 6
  %838 = add i64 %835, %.v120
  store i64 %838, i64* %3, align 8
  %cmpBr_4397d6 = icmp eq i8 %836, 1
  br i1 %cmpBr_4397d6, label %block_.L_439861, label %block_4397c6.block_.L_4397dc_crit_edge

block_4397c6.block_.L_4397dc_crit_edge:           ; preds = %block_4397c6
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4397dc

block_.L_4397dc:                                  ; preds = %block_4397b5, %block_4397c6.block_.L_4397dc_crit_edge
  %839 = phi i64 [ %838, %block_4397c6.block_.L_4397dc_crit_edge ], [ %816, %block_4397b5 ]
  %840 = phi i64 [ %.pre70, %block_4397c6.block_.L_4397dc_crit_edge ], [ %798, %block_4397b5 ]
  %841 = add i64 %840, -16
  %842 = add i64 %839, 4
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RAX.i1926, align 8
  %845 = add i64 %844, 72400
  %846 = add i64 %839, 11
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  store i8 0, i8* %14, align 1
  %849 = and i32 %848, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %854 = icmp eq i32 %848, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %30, align 1
  %856 = lshr i32 %848, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v111 = select i1 %854, i64 65, i64 17
  %858 = add i64 %839, %.v111
  store i64 %858, i64* %3, align 8
  br i1 %854, label %block_.L_43981d, label %block_4397ed

block_4397ed:                                     ; preds = %block_.L_4397dc
  %859 = add i64 %840, -152
  %860 = add i64 %858, 7
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RAX.i1926, align 8
  %863 = add i64 %862, 532
  %864 = add i64 %858, 14
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  store i8 0, i8* %14, align 1
  %867 = and i32 %866, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %872 = icmp eq i32 %866, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %30, align 1
  %874 = lshr i32 %866, 31
  %875 = trunc i32 %874 to i8
  store i8 %875, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v112 = select i1 %872, i64 20, i64 48
  %876 = add i64 %858, %.v112
  store i64 %876, i64* %3, align 8
  br i1 %872, label %block_439801, label %block_.L_43981d

block_439801:                                     ; preds = %block_4397ed
  store i8 1, i8* %AL.i1795, align 1
  %877 = add i64 %840, -144
  %878 = add i64 %876, 9
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i64*
  %880 = load i64, i64* %879, align 8
  store i64 %880, i64* %RCX.i1876, align 8
  %881 = add i64 %880, 532
  %882 = add i64 %876, 16
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  store i8 0, i8* %14, align 1
  %885 = and i32 %884, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %890 = icmp eq i32 %884, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %30, align 1
  %892 = lshr i32 %884, 31
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %894 = add i64 %840, -222
  %895 = add i64 %876, 22
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i8*
  store i8 1, i8* %896, align 1
  %897 = load i64, i64* %3, align 8
  %898 = load i8, i8* %30, align 1
  %899 = icmp ne i8 %898, 0
  %.v119 = select i1 %899, i64 74, i64 6
  %900 = add i64 %897, %.v119
  store i64 %900, i64* %3, align 8
  %cmpBr_439817 = icmp eq i8 %898, 1
  br i1 %cmpBr_439817, label %block_.L_439861, label %block_439801.block_.L_43981d_crit_edge

block_439801.block_.L_43981d_crit_edge:           ; preds = %block_439801
  %.pre71 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43981d

block_.L_43981d:                                  ; preds = %block_4397ed, %block_439801.block_.L_43981d_crit_edge, %block_.L_4397dc
  %901 = phi i64 [ %900, %block_439801.block_.L_43981d_crit_edge ], [ %876, %block_4397ed ], [ %858, %block_.L_4397dc ]
  %902 = phi i64 [ %.pre71, %block_439801.block_.L_43981d_crit_edge ], [ %840, %block_4397ed ], [ %840, %block_.L_4397dc ]
  %903 = add i64 %902, -16
  %904 = add i64 %901, 4
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RAX.i1926, align 8
  %907 = add i64 %906, 72400
  %908 = add i64 %901, 11
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  store i8 0, i8* %14, align 1
  %911 = and i32 %910, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %916 = icmp eq i32 %910, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %30, align 1
  %918 = lshr i32 %910, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v113 = select i1 %916, i64 17, i64 41
  %920 = add i64 %901, %.v113
  store i64 %920, i64* %3, align 8
  br i1 %916, label %block_43982e, label %block_.L_439846

block_43982e:                                     ; preds = %block_.L_43981d
  store i64 0, i64* %RAX.i1926, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1741, align 1
  %921 = add i64 %920, 8
  store i64 %921, i64* %3, align 8
  %922 = load i64, i64* %905, align 8
  store i64 %922, i64* %RDX.i1862, align 8
  %923 = add i64 %922, 28
  %924 = add i64 %920, 12
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  store i8 0, i8* %14, align 1
  %927 = and i32 %926, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %932 = icmp eq i32 %926, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %30, align 1
  %934 = lshr i32 %926, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %936 = add i64 %902, -223
  %937 = add i64 %920, 18
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i8*
  store i8 0, i8* %938, align 1
  %939 = load i64, i64* %3, align 8
  %940 = load i8, i8* %30, align 1
  %941 = icmp ne i8 %940, 0
  %.v118 = select i1 %941, i64 21, i64 6
  %942 = add i64 %939, %.v118
  store i64 %942, i64* %3, align 8
  %cmpBr_439840 = icmp eq i8 %940, 1
  br i1 %cmpBr_439840, label %block_.L_439855, label %block_43982e.block_.L_439846_crit_edge

block_43982e.block_.L_439846_crit_edge:           ; preds = %block_43982e
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %block_.L_439846

block_.L_439846:                                  ; preds = %block_.L_43981d, %block_43982e.block_.L_439846_crit_edge
  %943 = phi i64 [ %942, %block_43982e.block_.L_439846_crit_edge ], [ %920, %block_.L_43981d ]
  %944 = phi i64 [ %.pre72, %block_43982e.block_.L_439846_crit_edge ], [ %902, %block_.L_43981d ]
  %945 = add i64 %944, -24
  %946 = add i64 %943, 4
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = icmp ne i32 %948, 0
  %950 = zext i1 %949 to i64
  %951 = xor i64 %950, 255
  %952 = trunc i64 %951 to i8
  store i8 %952, i8* %AL.i1795, align 1
  store i8 0, i8* %14, align 1
  %953 = trunc i64 %951 to i32
  %954 = tail call i32 @llvm.ctpop.i32(i32 %953)
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  store i8 %957, i8* %21, align 1
  store i8 0, i8* %30, align 1
  store i8 1, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %958 = add i64 %944, -223
  %959 = add i64 %943, 15
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i8*
  store i8 %952, i8* %960, align 1
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_439855

block_.L_439855:                                  ; preds = %block_.L_439846, %block_43982e
  %961 = phi i64 [ %.pre73, %block_.L_439846 ], [ %942, %block_43982e ]
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -223
  %964 = add i64 %961, 6
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i8*
  %966 = load i8, i8* %965, align 1
  store i8 %966, i8* %AL.i1795, align 1
  %967 = add i64 %962, -222
  %968 = add i64 %961, 12
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i8*
  store i8 %966, i8* %969, align 1
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_439861

block_.L_439861:                                  ; preds = %block_.L_439855, %block_439801, %block_4397c6
  %970 = phi i64 [ %.pre74, %block_.L_439855 ], [ %900, %block_439801 ], [ %838, %block_4397c6 ]
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -222
  %973 = add i64 %970, 6
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i8*
  %975 = load i8, i8* %974, align 1
  store i8 %975, i8* %AL.i1795, align 1
  %976 = add i64 %971, -221
  %977 = add i64 %970, 12
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i8*
  store i8 %975, i8* %978, align 1
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_43986d

block_.L_43986d:                                  ; preds = %block_.L_439861, %block_.L_4397a1
  %979 = phi i64 [ %.pre75, %block_.L_439861 ], [ %793, %block_.L_4397a1 ]
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -221
  %982 = add i64 %979, 6
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i8*
  %984 = load i8, i8* %983, align 1
  store i64 4, i64* %RDX.i1862, align 8
  %985 = and i8 %984, 1
  store i8 0, i8* %14, align 1
  %986 = zext i8 %985 to i32
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = xor i8 %988, 1
  store i8 %989, i8* %21, align 1
  %990 = xor i8 %985, 1
  store i8 %990, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %991 = icmp eq i8 %990, 0
  %992 = select i1 %991, i64 4, i64 3
  store i64 %992, i64* %RCX.i1876, align 8
  %993 = trunc i64 %992 to i8
  store i8 %993, i8* %AL.i1795, align 1
  %994 = add i64 %980, -8
  %995 = add i64 %979, 27
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i64*
  %997 = load i64, i64* %996, align 8
  store i64 %997, i64* %RSI.i248, align 8
  %998 = add i64 %980, -44
  %999 = add i64 %979, 31
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = sext i32 %1001 to i64
  store i64 %1002, i64* %RDI.i190, align 8
  %1003 = add i64 %997, %1002
  %1004 = add i64 %979, 34
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i8*
  store i8 %993, i8* %1005, align 1
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 2553
  br label %block_.L_43a288

block_.L_439894:                                  ; preds = %block_439793
  store i64 0, i64* %RAX.i1926, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1741, align 1
  %1008 = add i64 %715, -28
  %1009 = add i64 %774, 8
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  store i8 0, i8* %14, align 1
  %1012 = and i32 %1011, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1017 = icmp eq i32 %1011, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %30, align 1
  %1019 = lshr i32 %1011, 31
  %1020 = trunc i32 %1019 to i8
  store i8 %1020, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1021 = add i64 %715, -224
  %1022 = add i64 %774, 14
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i8*
  store i8 0, i8* %1023, align 1
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, 190
  %1026 = add i64 %1024, 6
  %1027 = load i8, i8* %30, align 1
  %1028 = icmp eq i8 %1027, 0
  %1029 = select i1 %1028, i64 %1025, i64 %1026
  store i64 %1029, i64* %3, align 8
  br i1 %1028, label %block_.L_439960, label %block_4398a8

block_4398a8:                                     ; preds = %block_.L_439894
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -16
  %1032 = add i64 %1029, 4
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %RAX.i1926, align 8
  %1035 = add i64 %1034, 72400
  %1036 = add i64 %1029, 11
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  store i8 0, i8* %14, align 1
  %1039 = and i32 %1038, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1044 = icmp eq i32 %1038, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %30, align 1
  %1046 = lshr i32 %1038, 31
  %1047 = trunc i32 %1046 to i8
  store i8 %1047, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v91 = select i1 %1044, i64 17, i64 39
  %1048 = add i64 %1029, %.v91
  store i64 %1048, i64* %3, align 8
  br i1 %1044, label %block_4398b9, label %block_.L_4398cf

block_4398b9:                                     ; preds = %block_4398a8
  store i8 1, i8* %AL.i1795, align 1
  %1049 = add i64 %1048, 6
  store i64 %1049, i64* %3, align 8
  %1050 = load i64, i64* %1033, align 8
  store i64 %1050, i64* %RCX.i1876, align 8
  %1051 = add i64 %1050, 28
  %1052 = add i64 %1048, 10
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  store i8 0, i8* %14, align 1
  %1055 = and i32 %1054, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1060 = icmp eq i32 %1054, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %30, align 1
  %1062 = lshr i32 %1054, 31
  %1063 = trunc i32 %1062 to i8
  store i8 %1063, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1064 = add i64 %1030, -225
  %1065 = add i64 %1048, 16
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i8*
  store i8 1, i8* %1066, align 1
  %1067 = load i64, i64* %3, align 8
  %1068 = load i8, i8* %30, align 1
  %1069 = icmp ne i8 %1068, 0
  %.v117 = select i1 %1069, i64 139, i64 6
  %1070 = add i64 %1067, %.v117
  store i64 %1070, i64* %3, align 8
  %cmpBr_4398c9 = icmp eq i8 %1068, 1
  br i1 %cmpBr_4398c9, label %block_.L_439954, label %block_4398b9.block_.L_4398cf_crit_edge

block_4398b9.block_.L_4398cf_crit_edge:           ; preds = %block_4398b9
  %.pre55 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4398cf

block_.L_4398cf:                                  ; preds = %block_4398a8, %block_4398b9.block_.L_4398cf_crit_edge
  %1071 = phi i64 [ %1070, %block_4398b9.block_.L_4398cf_crit_edge ], [ %1048, %block_4398a8 ]
  %1072 = phi i64 [ %.pre55, %block_4398b9.block_.L_4398cf_crit_edge ], [ %1030, %block_4398a8 ]
  %1073 = add i64 %1072, -16
  %1074 = add i64 %1071, 4
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  store i64 %1076, i64* %RAX.i1926, align 8
  %1077 = add i64 %1076, 72400
  %1078 = add i64 %1071, 11
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  store i8 0, i8* %14, align 1
  %1081 = and i32 %1080, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1086 = icmp eq i32 %1080, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %30, align 1
  %1088 = lshr i32 %1080, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v92 = select i1 %1086, i64 65, i64 17
  %1090 = add i64 %1071, %.v92
  store i64 %1090, i64* %3, align 8
  br i1 %1086, label %block_.L_439910, label %block_4398e0

block_4398e0:                                     ; preds = %block_.L_4398cf
  %1091 = add i64 %1072, -152
  %1092 = add i64 %1090, 7
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RAX.i1926, align 8
  %1095 = add i64 %1094, 532
  %1096 = add i64 %1090, 14
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  store i8 0, i8* %14, align 1
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1104 = icmp eq i32 %1098, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %30, align 1
  %1106 = lshr i32 %1098, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v93 = select i1 %1104, i64 20, i64 48
  %1108 = add i64 %1090, %.v93
  store i64 %1108, i64* %3, align 8
  br i1 %1104, label %block_4398f4, label %block_.L_439910

block_4398f4:                                     ; preds = %block_4398e0
  store i8 1, i8* %AL.i1795, align 1
  %1109 = add i64 %1072, -144
  %1110 = add i64 %1108, 9
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RCX.i1876, align 8
  %1113 = add i64 %1112, 532
  %1114 = add i64 %1108, 16
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  store i8 0, i8* %14, align 1
  %1117 = and i32 %1116, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1122 = icmp eq i32 %1116, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1116, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1126 = add i64 %1072, -225
  %1127 = add i64 %1108, 22
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i8*
  store i8 1, i8* %1128, align 1
  %1129 = load i64, i64* %3, align 8
  %1130 = load i8, i8* %30, align 1
  %1131 = icmp ne i8 %1130, 0
  %.v116 = select i1 %1131, i64 74, i64 6
  %1132 = add i64 %1129, %.v116
  store i64 %1132, i64* %3, align 8
  %cmpBr_43990a = icmp eq i8 %1130, 1
  br i1 %cmpBr_43990a, label %block_.L_439954, label %block_4398f4.block_.L_439910_crit_edge

block_4398f4.block_.L_439910_crit_edge:           ; preds = %block_4398f4
  %.pre56 = load i64, i64* %RBP.i, align 8
  br label %block_.L_439910

block_.L_439910:                                  ; preds = %block_4398e0, %block_4398f4.block_.L_439910_crit_edge, %block_.L_4398cf
  %1133 = phi i64 [ %1132, %block_4398f4.block_.L_439910_crit_edge ], [ %1108, %block_4398e0 ], [ %1090, %block_.L_4398cf ]
  %1134 = phi i64 [ %.pre56, %block_4398f4.block_.L_439910_crit_edge ], [ %1072, %block_4398e0 ], [ %1072, %block_.L_4398cf ]
  %1135 = add i64 %1134, -16
  %1136 = add i64 %1133, 4
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  store i64 %1138, i64* %RAX.i1926, align 8
  %1139 = add i64 %1138, 72400
  %1140 = add i64 %1133, 11
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  store i8 0, i8* %14, align 1
  %1143 = and i32 %1142, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1148 = icmp eq i32 %1142, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %30, align 1
  %1150 = lshr i32 %1142, 31
  %1151 = trunc i32 %1150 to i8
  store i8 %1151, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v94 = select i1 %1148, i64 17, i64 41
  %1152 = add i64 %1133, %.v94
  store i64 %1152, i64* %3, align 8
  br i1 %1148, label %block_439921, label %block_.L_439939

block_439921:                                     ; preds = %block_.L_439910
  store i64 0, i64* %RAX.i1926, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1741, align 1
  %1153 = add i64 %1152, 8
  store i64 %1153, i64* %3, align 8
  %1154 = load i64, i64* %1137, align 8
  store i64 %1154, i64* %RDX.i1862, align 8
  %1155 = add i64 %1154, 28
  %1156 = add i64 %1152, 12
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  store i8 0, i8* %14, align 1
  %1159 = and i32 %1158, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1164 = icmp eq i32 %1158, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %30, align 1
  %1166 = lshr i32 %1158, 31
  %1167 = trunc i32 %1166 to i8
  store i8 %1167, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1168 = add i64 %1134, -226
  %1169 = add i64 %1152, 18
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i8*
  store i8 0, i8* %1170, align 1
  %1171 = load i64, i64* %3, align 8
  %1172 = load i8, i8* %30, align 1
  %1173 = icmp ne i8 %1172, 0
  %.v115 = select i1 %1173, i64 21, i64 6
  %1174 = add i64 %1171, %.v115
  store i64 %1174, i64* %3, align 8
  %cmpBr_439933 = icmp eq i8 %1172, 1
  br i1 %cmpBr_439933, label %block_.L_439948, label %block_439921.block_.L_439939_crit_edge

block_439921.block_.L_439939_crit_edge:           ; preds = %block_439921
  %.pre57 = load i64, i64* %RBP.i, align 8
  br label %block_.L_439939

block_.L_439939:                                  ; preds = %block_.L_439910, %block_439921.block_.L_439939_crit_edge
  %1175 = phi i64 [ %1174, %block_439921.block_.L_439939_crit_edge ], [ %1152, %block_.L_439910 ]
  %1176 = phi i64 [ %.pre57, %block_439921.block_.L_439939_crit_edge ], [ %1134, %block_.L_439910 ]
  %1177 = add i64 %1176, -24
  %1178 = add i64 %1175, 4
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = icmp ne i32 %1180, 0
  %1182 = zext i1 %1181 to i64
  %1183 = xor i64 %1182, 255
  %1184 = trunc i64 %1183 to i8
  store i8 %1184, i8* %AL.i1795, align 1
  store i8 0, i8* %14, align 1
  %1185 = trunc i64 %1183 to i32
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %21, align 1
  store i8 0, i8* %30, align 1
  store i8 1, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1190 = add i64 %1176, -226
  %1191 = add i64 %1175, 15
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i8*
  store i8 %1184, i8* %1192, align 1
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_439948

block_.L_439948:                                  ; preds = %block_.L_439939, %block_439921
  %1193 = phi i64 [ %.pre58, %block_.L_439939 ], [ %1174, %block_439921 ]
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -226
  %1196 = add i64 %1193, 6
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i8*
  %1198 = load i8, i8* %1197, align 1
  store i8 %1198, i8* %AL.i1795, align 1
  %1199 = add i64 %1194, -225
  %1200 = add i64 %1193, 12
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i8*
  store i8 %1198, i8* %1201, align 1
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_439954

block_.L_439954:                                  ; preds = %block_.L_439948, %block_4398f4, %block_4398b9
  %1202 = phi i64 [ %.pre59, %block_.L_439948 ], [ %1132, %block_4398f4 ], [ %1070, %block_4398b9 ]
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -225
  %1205 = add i64 %1202, 6
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i8*
  %1207 = load i8, i8* %1206, align 1
  store i8 %1207, i8* %AL.i1795, align 1
  %1208 = add i64 %1203, -224
  %1209 = add i64 %1202, 12
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i8*
  store i8 %1207, i8* %1210, align 1
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_439960

block_.L_439960:                                  ; preds = %block_.L_439954, %block_.L_439894
  %1211 = phi i64 [ %.pre60, %block_.L_439954 ], [ %1025, %block_.L_439894 ]
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -224
  %1214 = add i64 %1211, 6
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i8*
  %1216 = load i8, i8* %1215, align 1
  store i64 4, i64* %RDX.i1862, align 8
  %1217 = and i8 %1216, 1
  store i8 0, i8* %14, align 1
  %1218 = zext i8 %1217 to i32
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = xor i8 %1220, 1
  store i8 %1221, i8* %21, align 1
  %1222 = xor i8 %1217, 1
  store i8 %1222, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1223 = icmp eq i8 %1222, 0
  %1224 = select i1 %1223, i64 4, i64 3
  store i64 %1224, i64* %RCX.i1876, align 8
  %1225 = trunc i64 %1224 to i8
  store i8 %1225, i8* %AL.i1795, align 1
  %1226 = add i64 %1212, -8
  %1227 = add i64 %1211, 27
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RSI.i248, align 8
  %1230 = add i64 %1212, -44
  %1231 = add i64 %1211, 31
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = sext i32 %1233 to i64
  store i64 %1234, i64* %RDI.i190, align 8
  %1235 = add i64 %1229, %1234
  %1236 = add i64 %1211, 34
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i8*
  store i8 %1225, i8* %1237, align 1
  %1238 = load i64, i64* %RBP.i, align 8
  %1239 = add i64 %1238, -152
  %1240 = load i64, i64* %3, align 8
  %1241 = add i64 %1240, 7
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1239 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RSI.i248, align 8
  %1244 = add i64 %1243, 72
  %1245 = add i64 %1240, 11
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = add i32 %1247, -9
  %1249 = icmp ult i32 %1247, 9
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %14, align 1
  %1251 = and i32 %1248, 255
  %1252 = tail call i32 @llvm.ctpop.i32(i32 %1251)
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  store i8 %1255, i8* %21, align 1
  %1256 = xor i32 %1248, %1247
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %27, align 1
  %1260 = icmp eq i32 %1248, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %30, align 1
  %1262 = lshr i32 %1248, 31
  %1263 = trunc i32 %1262 to i8
  store i8 %1263, i8* %33, align 1
  %1264 = lshr i32 %1247, 31
  %1265 = xor i32 %1262, %1264
  %1266 = add nuw nsw i32 %1265, %1264
  %1267 = icmp eq i32 %1266, 2
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %39, align 1
  %.v95 = select i1 %1260, i64 2305, i64 17
  %1269 = add i64 %1240, %.v95
  store i64 %1269, i64* %3, align 8
  br i1 %1260, label %block_.L_43a283, label %block_439993

block_439993:                                     ; preds = %block_.L_439960
  %1270 = add i64 %1269, 7
  store i64 %1270, i64* %3, align 8
  %1271 = load i64, i64* %1242, align 8
  store i64 %1271, i64* %RAX.i1926, align 8
  %1272 = add i64 %1271, 72
  %1273 = add i64 %1269, 11
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = add i32 %1275, -10
  %1277 = icmp ult i32 %1275, 10
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %14, align 1
  %1279 = and i32 %1276, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %21, align 1
  %1284 = xor i32 %1276, %1275
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %27, align 1
  %1288 = icmp eq i32 %1276, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1276, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  %1292 = lshr i32 %1275, 31
  %1293 = xor i32 %1290, %1292
  %1294 = add nuw nsw i32 %1293, %1292
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %39, align 1
  %.v96 = select i1 %1288, i64 2288, i64 17
  %1297 = add i64 %1269, %.v96
  store i64 %1297, i64* %3, align 8
  br i1 %1288, label %block_.L_43a283, label %block_4399a4

block_4399a4:                                     ; preds = %block_439993
  %1298 = add i64 %1297, 7
  store i64 %1298, i64* %3, align 8
  %1299 = load i64, i64* %1242, align 8
  store i64 %1299, i64* %RAX.i1926, align 8
  %1300 = add i64 %1299, 72
  %1301 = add i64 %1297, 11
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = add i32 %1303, -14
  %1305 = icmp ult i32 %1303, 14
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %14, align 1
  %1307 = and i32 %1304, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  %1312 = xor i32 %1304, %1303
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %27, align 1
  %1316 = icmp eq i32 %1304, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %30, align 1
  %1318 = lshr i32 %1304, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %33, align 1
  %1320 = lshr i32 %1303, 31
  %1321 = xor i32 %1318, %1320
  %1322 = add nuw nsw i32 %1321, %1320
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %39, align 1
  %.v97 = select i1 %1316, i64 2271, i64 17
  %1325 = add i64 %1297, %.v97
  store i64 %1325, i64* %3, align 8
  br i1 %1316, label %block_.L_43a283, label %block_4399b5

block_4399b5:                                     ; preds = %block_4399a4
  %1326 = add i64 %1325, 7
  store i64 %1326, i64* %3, align 8
  %1327 = load i64, i64* %1242, align 8
  store i64 %1327, i64* %RAX.i1926, align 8
  %1328 = add i64 %1327, 72
  %1329 = add i64 %1325, 11
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = add i32 %1331, -13
  %1333 = icmp ult i32 %1331, 13
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %14, align 1
  %1335 = and i32 %1332, 255
  %1336 = tail call i32 @llvm.ctpop.i32(i32 %1335)
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %21, align 1
  %1340 = xor i32 %1332, %1331
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %27, align 1
  %1344 = icmp eq i32 %1332, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %30, align 1
  %1346 = lshr i32 %1332, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %33, align 1
  %1348 = lshr i32 %1331, 31
  %1349 = xor i32 %1346, %1348
  %1350 = add nuw nsw i32 %1349, %1348
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %39, align 1
  %.v98 = select i1 %1344, i64 2254, i64 17
  %1353 = add i64 %1325, %.v98
  store i64 %1353, i64* %3, align 8
  br i1 %1344, label %block_.L_43a283, label %block_4399c6

block_4399c6:                                     ; preds = %block_4399b5
  %1354 = add i64 %1238, -144
  %1355 = add i64 %1353, 7
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RAX.i1926, align 8
  %1358 = add i64 %1357, 72
  %1359 = add i64 %1353, 11
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = add i32 %1361, -9
  %1363 = icmp ult i32 %1361, 9
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %14, align 1
  %1365 = and i32 %1362, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %21, align 1
  %1370 = xor i32 %1362, %1361
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %27, align 1
  %1374 = icmp eq i32 %1362, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %30, align 1
  %1376 = lshr i32 %1362, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %33, align 1
  %1378 = lshr i32 %1361, 31
  %1379 = xor i32 %1376, %1378
  %1380 = add nuw nsw i32 %1379, %1378
  %1381 = icmp eq i32 %1380, 2
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %39, align 1
  %.v99 = select i1 %1374, i64 2237, i64 17
  %1383 = add i64 %1353, %.v99
  store i64 %1383, i64* %3, align 8
  br i1 %1374, label %block_.L_43a283, label %block_4399d7

block_4399d7:                                     ; preds = %block_4399c6
  %1384 = add i64 %1383, 7
  store i64 %1384, i64* %3, align 8
  %1385 = load i64, i64* %1356, align 8
  store i64 %1385, i64* %RAX.i1926, align 8
  %1386 = add i64 %1385, 72
  %1387 = add i64 %1383, 11
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = add i32 %1389, -10
  %1391 = icmp ult i32 %1389, 10
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %14, align 1
  %1393 = and i32 %1390, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %21, align 1
  %1398 = xor i32 %1390, %1389
  %1399 = lshr i32 %1398, 4
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %27, align 1
  %1402 = icmp eq i32 %1390, 0
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %30, align 1
  %1404 = lshr i32 %1390, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %33, align 1
  %1406 = lshr i32 %1389, 31
  %1407 = xor i32 %1404, %1406
  %1408 = add nuw nsw i32 %1407, %1406
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %39, align 1
  %.v100 = select i1 %1402, i64 2220, i64 17
  %1411 = add i64 %1383, %.v100
  store i64 %1411, i64* %3, align 8
  br i1 %1402, label %block_.L_43a283, label %block_4399e8

block_4399e8:                                     ; preds = %block_4399d7
  %1412 = add i64 %1411, 7
  store i64 %1412, i64* %3, align 8
  %1413 = load i64, i64* %1356, align 8
  store i64 %1413, i64* %RAX.i1926, align 8
  %1414 = add i64 %1413, 72
  %1415 = add i64 %1411, 11
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = add i32 %1417, -14
  %1419 = icmp ult i32 %1417, 14
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %14, align 1
  %1421 = and i32 %1418, 255
  %1422 = tail call i32 @llvm.ctpop.i32(i32 %1421)
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  store i8 %1425, i8* %21, align 1
  %1426 = xor i32 %1418, %1417
  %1427 = lshr i32 %1426, 4
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %27, align 1
  %1430 = icmp eq i32 %1418, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %30, align 1
  %1432 = lshr i32 %1418, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %33, align 1
  %1434 = lshr i32 %1417, 31
  %1435 = xor i32 %1432, %1434
  %1436 = add nuw nsw i32 %1435, %1434
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %39, align 1
  %.v101 = select i1 %1430, i64 2203, i64 17
  %1439 = add i64 %1411, %.v101
  store i64 %1439, i64* %3, align 8
  br i1 %1430, label %block_.L_43a283, label %block_4399f9

block_4399f9:                                     ; preds = %block_4399e8
  %1440 = add i64 %1439, 7
  store i64 %1440, i64* %3, align 8
  %1441 = load i64, i64* %1356, align 8
  store i64 %1441, i64* %RAX.i1926, align 8
  %1442 = add i64 %1441, 72
  %1443 = add i64 %1439, 11
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = add i32 %1445, -13
  %1447 = icmp ult i32 %1445, 13
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %14, align 1
  %1449 = and i32 %1446, 255
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %21, align 1
  %1454 = xor i32 %1446, %1445
  %1455 = lshr i32 %1454, 4
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %27, align 1
  %1458 = icmp eq i32 %1446, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %30, align 1
  %1460 = lshr i32 %1446, 31
  %1461 = trunc i32 %1460 to i8
  store i8 %1461, i8* %33, align 1
  %1462 = lshr i32 %1445, 31
  %1463 = xor i32 %1460, %1462
  %1464 = add nuw nsw i32 %1463, %1462
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %39, align 1
  %.v102 = select i1 %1458, i64 2186, i64 17
  %1467 = add i64 %1439, %.v102
  store i64 %1467, i64* %3, align 8
  br i1 %1458, label %block_.L_43a283, label %block_439a0a

block_439a0a:                                     ; preds = %block_4399f9
  store i64 1, i64* %RAX.i1926, align 8
  %1468 = add i64 %1467, 12
  store i64 %1468, i64* %3, align 8
  %1469 = load i64, i64* %1356, align 8
  store i64 %1469, i64* %RCX.i1876, align 8
  %1470 = add i64 %1469, 464
  %1471 = add i64 %1467, 19
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i64*
  %1473 = load i64, i64* %1472, align 8
  store i64 %1473, i64* %RCX.i1876, align 8
  %1474 = add i64 %1238, -40
  %1475 = add i64 %1467, 22
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RDX.i1862, align 8
  %1479 = add i64 %1238, -240
  %1480 = add i64 %1467, 29
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i64*
  store i64 %1473, i64* %1481, align 8
  %1482 = load i32, i32* %EDX.i320, align 4
  %1483 = zext i32 %1482 to i64
  %1484 = load i64, i64* %3, align 8
  store i64 %1483, i64* %RCX.i1876, align 8
  %1485 = load i64, i64* %RAX.i1926, align 8
  %1486 = add i64 %1484, 4
  store i64 %1486, i64* %3, align 8
  %1487 = trunc i32 %1482 to i5
  %1488 = trunc i64 %1485 to i32
  switch i5 %1487, label %1494 [
    i5 0, label %routine_shll__cl___eax.exit1441
    i5 1, label %1489
  ]

; <label>:1489:                                   ; preds = %block_439a0a
  %1490 = shl i32 %1488, 1
  %1491 = icmp slt i32 %1488, 0
  %1492 = icmp slt i32 %1490, 0
  %1493 = xor i1 %1491, %1492
  br label %1504

; <label>:1494:                                   ; preds = %block_439a0a
  %1495 = and i32 %1482, 31
  %1496 = zext i32 %1495 to i64
  %1497 = add nuw nsw i64 %1496, 4294967295
  %1498 = and i64 %1485, 4294967295
  %1499 = and i64 %1497, 4294967295
  %1500 = shl i64 %1498, %1499
  %1501 = trunc i64 %1500 to i32
  %1502 = icmp slt i32 %1501, 0
  %1503 = shl i32 %1501, 1
  br label %1504

; <label>:1504:                                   ; preds = %1494, %1489
  %1505 = phi i1 [ %1491, %1489 ], [ %1502, %1494 ]
  %1506 = phi i1 [ %1493, %1489 ], [ false, %1494 ]
  %1507 = phi i32 [ %1490, %1489 ], [ %1503, %1494 ]
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RAX.i1926, align 8
  %1509 = zext i1 %1505 to i8
  store i8 %1509, i8* %14, align 1
  %1510 = and i32 %1507, 254
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510)
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1515 = icmp eq i32 %1507, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %30, align 1
  %1517 = lshr i32 %1507, 31
  %1518 = trunc i32 %1517 to i8
  store i8 %1518, i8* %33, align 1
  %1519 = zext i1 %1506 to i8
  store i8 %1519, i8* %39, align 1
  br label %routine_shll__cl___eax.exit1441

routine_shll__cl___eax.exit1441:                  ; preds = %1504, %block_439a0a
  %1520 = phi i32 [ %1507, %1504 ], [ %1488, %block_439a0a ]
  %1521 = sext i32 %1520 to i64
  store i64 %1521, i64* %RSI.i248, align 8
  %1522 = load i64, i64* %RBP.i, align 8
  %1523 = add i64 %1522, -240
  %1524 = add i64 %1484, 14
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  %1527 = and i64 %1521, %1526
  store i64 %1527, i64* %RDI.i190, align 8
  %1528 = trunc i64 %1527 to i32
  %1529 = and i32 %1528, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  %1534 = icmp eq i64 %1527, 0
  %1535 = zext i1 %1534 to i8
  %1536 = lshr i64 %1527, 63
  %1537 = trunc i64 %1536 to i8
  store i8 0, i8* %14, align 1
  store i8 %1533, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %1535, i8* %30, align 1
  store i8 %1537, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v103 = select i1 %1534, i64 27, i64 83
  %1538 = add i64 %1484, %.v103
  store i64 %1538, i64* %3, align 8
  br i1 %1534, label %block_439a42, label %block_.L_439a7a

block_439a42:                                     ; preds = %routine_shll__cl___eax.exit1441
  store i64 1, i64* %RAX.i1926, align 8
  %1539 = add i64 %1522, -152
  %1540 = add i64 %1538, 12
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RCX.i1876, align 8
  %1543 = add i64 %1542, 464
  %1544 = add i64 %1538, 19
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i64*
  %1546 = load i64, i64* %1545, align 8
  store i64 %1546, i64* %RCX.i1876, align 8
  %1547 = add i64 %1522, -36
  %1548 = add i64 %1538, 22
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RDX.i1862, align 8
  %1552 = add i64 %1522, -248
  %1553 = add i64 %1538, 29
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i64*
  store i64 %1546, i64* %1554, align 8
  %1555 = load i32, i32* %EDX.i320, align 4
  %1556 = zext i32 %1555 to i64
  %1557 = load i64, i64* %3, align 8
  store i64 %1556, i64* %RCX.i1876, align 8
  %1558 = load i64, i64* %RAX.i1926, align 8
  %1559 = add i64 %1557, 4
  store i64 %1559, i64* %3, align 8
  %1560 = trunc i32 %1555 to i5
  %1561 = trunc i64 %1558 to i32
  switch i5 %1560, label %1567 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %1562
  ]

; <label>:1562:                                   ; preds = %block_439a42
  %1563 = shl i32 %1561, 1
  %1564 = icmp slt i32 %1561, 0
  %1565 = icmp slt i32 %1563, 0
  %1566 = xor i1 %1564, %1565
  br label %1577

; <label>:1567:                                   ; preds = %block_439a42
  %1568 = and i32 %1555, 31
  %1569 = zext i32 %1568 to i64
  %1570 = add nuw nsw i64 %1569, 4294967295
  %1571 = and i64 %1558, 4294967295
  %1572 = and i64 %1570, 4294967295
  %1573 = shl i64 %1571, %1572
  %1574 = trunc i64 %1573 to i32
  %1575 = icmp slt i32 %1574, 0
  %1576 = shl i32 %1574, 1
  br label %1577

; <label>:1577:                                   ; preds = %1567, %1562
  %1578 = phi i1 [ %1564, %1562 ], [ %1575, %1567 ]
  %1579 = phi i1 [ %1566, %1562 ], [ false, %1567 ]
  %1580 = phi i32 [ %1563, %1562 ], [ %1576, %1567 ]
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RAX.i1926, align 8
  %1582 = zext i1 %1578 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1580, 254
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1588 = icmp eq i32 %1580, 0
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %30, align 1
  %1590 = lshr i32 %1580, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %33, align 1
  %1592 = zext i1 %1579 to i8
  store i8 %1592, i8* %39, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %1577, %block_439a42
  %1593 = phi i32 [ %1580, %1577 ], [ %1561, %block_439a42 ]
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RSI.i248, align 8
  %1595 = load i64, i64* %RBP.i, align 8
  %1596 = add i64 %1595, -248
  %1597 = add i64 %1557, 14
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  %1599 = load i64, i64* %1598, align 8
  %1600 = and i64 %1594, %1599
  store i64 %1600, i64* %RDI.i190, align 8
  %1601 = trunc i64 %1600 to i32
  %1602 = and i32 %1601, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  %1607 = icmp eq i64 %1600, 0
  %1608 = zext i1 %1607 to i8
  %1609 = lshr i64 %1600, 63
  %1610 = trunc i64 %1609 to i8
  store i8 0, i8* %14, align 1
  store i8 %1606, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %1608, i8* %30, align 1
  store i8 %1610, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v104 = select i1 %1607, i64 44, i64 27
  %1611 = add i64 %1557, %.v104
  store i64 %1611, i64* %3, align 8
  br i1 %1607, label %block_.L_439a8b, label %block_.L_439a7a

block_.L_439a7a:                                  ; preds = %routine_shll__cl___eax.exit1441, %routine_shll__cl___eax.exit
  %1612 = phi i64 [ %1611, %routine_shll__cl___eax.exit ], [ %1538, %routine_shll__cl___eax.exit1441 ]
  %1613 = phi i64 [ %1595, %routine_shll__cl___eax.exit ], [ %1522, %routine_shll__cl___eax.exit1441 ]
  %1614 = add i64 %1613, -8
  %1615 = add i64 %1612, 4
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RAX.i1926, align 8
  %1618 = add i64 %1613, -44
  %1619 = add i64 %1612, 8
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i32*
  %1621 = load i32, i32* %1620, align 4
  %1622 = sext i32 %1621 to i64
  store i64 %1622, i64* %RCX.i1876, align 8
  %1623 = add i64 %1617, %1622
  %1624 = add i64 %1612, 12
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i8*
  store i8 2, i8* %1625, align 1
  %1626 = load i64, i64* %3, align 8
  %1627 = add i64 %1626, 2040
  br label %block_.L_43a27e

block_.L_439a8b:                                  ; preds = %routine_shll__cl___eax.exit
  %1628 = load i8, i8* getelementptr inbounds (%G_0x72531c_type, %G_0x72531c_type* @G_0x72531c, i64 0, i32 0, i64 0), align 8
  store i8 0, i8* %14, align 1
  %1629 = zext i8 %1628 to i32
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1634 = icmp eq i8 %1628, 0
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %30, align 1
  %1636 = lshr i8 %1628, 7
  store i8 %1636, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v105 = select i1 %1634, i64 31, i64 14
  %1637 = add i64 %1611, %.v105
  store i64 %1637, i64* %3, align 8
  br i1 %1634, label %block_.L_439aaa, label %block_439a99

block_439a99:                                     ; preds = %block_.L_439a8b
  %1638 = add i64 %1595, -8
  %1639 = add i64 %1637, 4
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %RAX.i1926, align 8
  %1642 = add i64 %1595, -44
  %1643 = add i64 %1637, 8
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = sext i32 %1645 to i64
  store i64 %1646, i64* %RCX.i1876, align 8
  %1647 = add i64 %1641, %1646
  %1648 = add i64 %1637, 12
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i8*
  store i8 1, i8* %1649, align 1
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, 2004
  br label %block_.L_43a279

block_.L_439aaa:                                  ; preds = %block_.L_439a8b
  %1652 = add i64 %1595, -132
  store i64 %1652, i64* %RSI.i248, align 8
  %1653 = add i64 %1595, -136
  store i64 %1653, i64* %RDX.i1862, align 8
  %1654 = add i64 %1595, -20
  %1655 = add i64 %1637, 17
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RDI.i190, align 8
  %1659 = add i64 %1637, 67622
  %1660 = add i64 %1637, 22
  %1661 = load i64, i64* %6, align 8
  %1662 = add i64 %1661, -8
  %1663 = inttoptr i64 %1662 to i64*
  store i64 %1660, i64* %1663, align 8
  store i64 %1662, i64* %6, align 8
  store i64 %1659, i64* %3, align 8
  %call2_439abb = tail call %struct.Memory* @sub_44a2d0.get_mb_block_pos(%struct.State* nonnull %0, i64 %1659, %struct.Memory* %MEMORY.0)
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -136
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 6
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1665 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = shl i32 %1669, 2
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDI.i190, align 8
  %1672 = lshr i32 %1669, 30
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %14, align 1
  %1675 = and i32 %1670, 252
  %1676 = tail call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  store i8 %1679, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1680 = icmp eq i32 %1670, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %30, align 1
  %1682 = lshr i32 %1669, 29
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  store i8 %1684, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1685 = add i64 %1664, -40
  %1686 = add i64 %1666, 12
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i32*
  %1688 = load i32, i32* %1687, align 4
  %1689 = sext i32 %1688 to i64
  %1690 = ashr i64 %1689, 1
  %1691 = lshr i64 %1690, 1
  %1692 = and i64 %1691, 4294967295
  store i64 %1692, i64* %RAX.i1926, align 8
  %1693 = trunc i64 %1691 to i32
  %1694 = add i32 %1693, %1670
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RDI.i190, align 8
  %1696 = icmp ult i32 %1694, %1670
  %1697 = icmp ult i32 %1694, %1693
  %1698 = or i1 %1696, %1697
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %14, align 1
  %1700 = and i32 %1694, 255
  %1701 = tail call i32 @llvm.ctpop.i32(i32 %1700)
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = xor i8 %1703, 1
  store i8 %1704, i8* %21, align 1
  %1705 = xor i64 %1691, %1671
  %1706 = trunc i64 %1705 to i32
  %1707 = xor i32 %1706, %1694
  %1708 = lshr i32 %1707, 4
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  store i8 %1710, i8* %27, align 1
  %1711 = icmp eq i32 %1694, 0
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %30, align 1
  %1713 = lshr i32 %1694, 31
  %1714 = trunc i32 %1713 to i8
  store i8 %1714, i8* %33, align 1
  %1715 = lshr i32 %1669, 29
  %1716 = and i32 %1715, 1
  %1717 = lshr i64 %1690, 32
  %1718 = trunc i64 %1717 to i32
  %1719 = and i32 %1718, 1
  %1720 = xor i32 %1713, %1716
  %1721 = xor i32 %1713, %1719
  %1722 = add nuw nsw i32 %1720, %1721
  %1723 = icmp eq i32 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %39, align 1
  %1725 = load i64, i64* %RBP.i, align 8
  %1726 = add i64 %1725, -56
  %1727 = add i64 %1666, 20
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  store i32 %1694, i32* %1728, align 4
  %1729 = load i64, i64* %RBP.i, align 8
  %1730 = add i64 %1729, -132
  %1731 = load i64, i64* %3, align 8
  %1732 = add i64 %1731, 6
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1730 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = shl i32 %1734, 2
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RAX.i1926, align 8
  %1737 = lshr i32 %1734, 30
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %14, align 1
  %1740 = and i32 %1735, 252
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1745 = icmp eq i32 %1735, 0
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %30, align 1
  %1747 = lshr i32 %1734, 29
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1750 = add i64 %1729, -40
  %1751 = add i64 %1731, 12
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = and i32 %1753, 3
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RDI.i190, align 8
  %1756 = or i32 %1754, %1735
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i1926, align 8
  store i8 0, i8* %14, align 1
  %1758 = and i32 %1756, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1763 = icmp eq i32 %1756, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %30, align 1
  %1765 = lshr i32 %1734, 29
  %1766 = and i32 %1765, 1
  %1767 = trunc i32 %1766 to i8
  store i8 %1767, i8* %33, align 1
  %1768 = lshr i32 %1734, 29
  %1769 = and i32 %1768, 1
  %1770 = xor i32 %1766, %1769
  %1771 = add nuw nsw i32 %1770, %1766
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %39, align 1
  %1774 = add i64 %1729, -48
  %1775 = add i64 %1731, 20
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i32*
  store i32 %1756, i32* %1776, align 4
  %1777 = load i64, i64* %RBP.i, align 8
  %1778 = add i64 %1777, -156
  %1779 = load i64, i64* %3, align 8
  %1780 = add i64 %1779, 6
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1778 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = sext i32 %1782 to i64
  %1784 = ashr i64 %1783, 1
  %1785 = lshr i64 %1784, 1
  %1786 = trunc i64 %1784 to i8
  %1787 = and i8 %1786, 1
  %1788 = trunc i64 %1785 to i32
  %1789 = and i64 %1785, 4294967295
  store i64 %1789, i64* %RAX.i1926, align 8
  store i8 %1787, i8* %14, align 1
  %1790 = and i32 %1788, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1795 = icmp eq i32 %1788, 0
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %30, align 1
  %1797 = lshr i64 %1784, 32
  %1798 = trunc i64 %1797 to i8
  %1799 = and i8 %1798, 1
  store i8 %1799, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1800 = add i64 %1777, -60
  %1801 = trunc i64 %1785 to i32
  %1802 = add i64 %1779, 12
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1800 to i32*
  store i32 %1801, i32* %1803, align 4
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -160
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1806, 6
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1805 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = sext i32 %1809 to i64
  %1811 = ashr i64 %1810, 1
  %1812 = lshr i64 %1811, 1
  %1813 = trunc i64 %1811 to i8
  %1814 = and i8 %1813, 1
  %1815 = trunc i64 %1812 to i32
  %1816 = and i64 %1812, 4294967295
  store i64 %1816, i64* %RAX.i1926, align 8
  store i8 %1814, i8* %14, align 1
  %1817 = and i32 %1815, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1822 = icmp eq i32 %1815, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %30, align 1
  %1824 = lshr i64 %1811, 32
  %1825 = trunc i64 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1827 = add i64 %1804, -52
  %1828 = trunc i64 %1812 to i32
  %1829 = add i64 %1806, 12
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1827 to i32*
  store i32 %1828, i32* %1830, align 4
  %1831 = load i64, i64* %RBP.i, align 8
  %1832 = add i64 %1831, -88
  %1833 = load i64, i64* %3, align 8
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1832 to i64*
  %1836 = load i64, i64* %1835, align 8
  store i64 %1836, i64* %RDX.i1862, align 8
  %1837 = add i64 %1831, -48
  %1838 = add i64 %1833, 8
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = sext i32 %1840 to i64
  store i64 %1841, i64* %RSI.i248, align 8
  %1842 = shl nsw i64 %1841, 3
  %1843 = add i64 %1842, %1836
  %1844 = add i64 %1833, 12
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i64*
  %1846 = load i64, i64* %1845, align 8
  store i64 %1846, i64* %RDX.i1862, align 8
  %1847 = add i64 %1831, -56
  %1848 = add i64 %1833, 16
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = sext i32 %1850 to i64
  store i64 %1851, i64* %RSI.i248, align 8
  %1852 = shl nsw i64 %1851, 1
  %1853 = add i64 %1852, %1846
  %1854 = add i64 %1833, 20
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i16*
  %1856 = load i16, i16* %1855, align 2
  %1857 = sext i16 %1856 to i64
  %1858 = and i64 %1857, 4294967295
  store i64 %1858, i64* %RAX.i1926, align 8
  %1859 = sext i16 %1856 to i32
  %1860 = add i64 %1833, 23
  store i8 0, i8* %14, align 1
  %1861 = and i32 %1859, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1866 = icmp eq i16 %1856, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %30, align 1
  %1868 = lshr i32 %1859, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1870 = icmp ne i8 %1869, 0
  %.v = select i1 %1870, i64 6, i64 25
  %1871 = add i64 %1860, %.v
  store i64 %1871, i64* %3, align 8
  br i1 %1870, label %block_439b1d, label %block_.L_439b30

block_439b1d:                                     ; preds = %block_.L_439aaa
  store i64 -1, i64* %RAX.i1926, align 8
  %1872 = add i64 %1831, -256
  %1873 = add i64 %1871, 14
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i64*
  store i64 -1, i64* %1874, align 8
  %1875 = load i64, i64* %3, align 8
  %1876 = add i64 %1875, 32
  store i64 %1876, i64* %3, align 8
  br label %block_.L_439b4b

block_.L_439b30:                                  ; preds = %block_.L_439aaa
  %1877 = add i64 %1831, -104
  %1878 = add i64 %1871, 4
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i64*
  %1880 = load i64, i64* %1879, align 8
  store i64 %1880, i64* %RAX.i1926, align 8
  %1881 = add i64 %1871, 8
  store i64 %1881, i64* %3, align 8
  %1882 = load i32, i32* %1839, align 4
  %1883 = sext i32 %1882 to i64
  store i64 %1883, i64* %RCX.i1876, align 8
  %1884 = shl nsw i64 %1883, 3
  %1885 = add i64 %1884, %1880
  %1886 = add i64 %1871, 12
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i64*
  %1888 = load i64, i64* %1887, align 8
  store i64 %1888, i64* %RAX.i1926, align 8
  %1889 = add i64 %1871, 16
  store i64 %1889, i64* %3, align 8
  %1890 = load i32, i32* %1849, align 4
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RCX.i1876, align 8
  %1892 = shl nsw i64 %1891, 3
  %1893 = add i64 %1892, %1888
  %1894 = add i64 %1871, 20
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i64*
  %1896 = load i64, i64* %1895, align 8
  store i64 %1896, i64* %RAX.i1926, align 8
  %1897 = add i64 %1831, -256
  %1898 = add i64 %1871, 27
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i64*
  store i64 %1896, i64* %1899, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_439b4b

block_.L_439b4b:                                  ; preds = %block_.L_439b30, %block_439b1d
  %1900 = phi i64 [ %.pre61, %block_.L_439b30 ], [ %1876, %block_439b1d ]
  %1901 = load i64, i64* %RBP.i, align 8
  %1902 = add i64 %1901, -256
  %1903 = add i64 %1900, 7
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i64*
  %1905 = load i64, i64* %1904, align 8
  store i64 %1905, i64* %RAX.i1926, align 8
  %1906 = add i64 %1901, -184
  %1907 = add i64 %1900, 14
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i64*
  store i64 %1905, i64* %1908, align 8
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -88
  %1911 = load i64, i64* %3, align 8
  %1912 = add i64 %1911, 4
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1910 to i64*
  %1914 = load i64, i64* %1913, align 8
  store i64 %1914, i64* %RAX.i1926, align 8
  %1915 = add i64 %1909, -52
  %1916 = add i64 %1911, 8
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = sext i32 %1918 to i64
  store i64 %1919, i64* %RCX.i1876, align 8
  %1920 = shl nsw i64 %1919, 3
  %1921 = add i64 %1920, %1914
  %1922 = add i64 %1911, 12
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i64*
  %1924 = load i64, i64* %1923, align 8
  store i64 %1924, i64* %RAX.i1926, align 8
  %1925 = add i64 %1909, -60
  %1926 = add i64 %1911, 16
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = sext i32 %1928 to i64
  store i64 %1929, i64* %RCX.i1876, align 8
  %1930 = shl nsw i64 %1929, 1
  %1931 = add i64 %1930, %1924
  %1932 = add i64 %1911, 20
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i16*
  %1934 = load i16, i16* %1933, align 2
  %1935 = sext i16 %1934 to i64
  %1936 = and i64 %1935, 4294967295
  store i64 %1936, i64* %RDX.i1862, align 8
  %1937 = sext i16 %1934 to i32
  %1938 = add i64 %1911, 23
  store i8 0, i8* %14, align 1
  %1939 = and i32 %1937, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1944 = icmp eq i16 %1934, 0
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %30, align 1
  %1946 = lshr i32 %1937, 31
  %1947 = trunc i32 %1946 to i8
  store i8 %1947, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1948 = icmp ne i8 %1947, 0
  %.v50 = select i1 %1948, i64 6, i64 25
  %1949 = add i64 %1938, %.v50
  store i64 %1949, i64* %3, align 8
  br i1 %1948, label %block_439b76, label %block_.L_439b89

block_439b76:                                     ; preds = %block_.L_439b4b
  store i64 -1, i64* %RAX.i1926, align 8
  %1950 = add i64 %1909, -264
  %1951 = add i64 %1949, 14
  store i64 %1951, i64* %3, align 8
  %1952 = inttoptr i64 %1950 to i64*
  store i64 -1, i64* %1952, align 8
  %1953 = load i64, i64* %3, align 8
  %1954 = add i64 %1953, 32
  store i64 %1954, i64* %3, align 8
  br label %block_.L_439ba4

block_.L_439b89:                                  ; preds = %block_.L_439b4b
  %1955 = add i64 %1909, -104
  %1956 = add i64 %1949, 4
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i64*
  %1958 = load i64, i64* %1957, align 8
  store i64 %1958, i64* %RAX.i1926, align 8
  %1959 = add i64 %1949, 8
  store i64 %1959, i64* %3, align 8
  %1960 = load i32, i32* %1917, align 4
  %1961 = sext i32 %1960 to i64
  store i64 %1961, i64* %RCX.i1876, align 8
  %1962 = shl nsw i64 %1961, 3
  %1963 = add i64 %1962, %1958
  %1964 = add i64 %1949, 12
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i64*
  %1966 = load i64, i64* %1965, align 8
  store i64 %1966, i64* %RAX.i1926, align 8
  %1967 = add i64 %1949, 16
  store i64 %1967, i64* %3, align 8
  %1968 = load i32, i32* %1927, align 4
  %1969 = sext i32 %1968 to i64
  store i64 %1969, i64* %RCX.i1876, align 8
  %1970 = shl nsw i64 %1969, 3
  %1971 = add i64 %1970, %1966
  %1972 = add i64 %1949, 20
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i64*
  %1974 = load i64, i64* %1973, align 8
  store i64 %1974, i64* %RAX.i1926, align 8
  %1975 = add i64 %1909, -264
  %1976 = add i64 %1949, 27
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  store i64 %1974, i64* %1977, align 8
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_439ba4

block_.L_439ba4:                                  ; preds = %block_.L_439b89, %block_439b76
  %1978 = phi i64 [ %.pre62, %block_.L_439b89 ], [ %1954, %block_439b76 ]
  %1979 = load i64, i64* %RBP.i, align 8
  %1980 = add i64 %1979, -264
  %1981 = add i64 %1978, 7
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i64*
  %1983 = load i64, i64* %1982, align 8
  store i64 %1983, i64* %RAX.i1926, align 8
  %1984 = add i64 %1979, -200
  %1985 = add i64 %1978, 14
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i64*
  store i64 %1983, i64* %1986, align 8
  %1987 = load i64, i64* %RBP.i, align 8
  %1988 = add i64 %1987, -96
  %1989 = load i64, i64* %3, align 8
  %1990 = add i64 %1989, 4
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1988 to i64*
  %1992 = load i64, i64* %1991, align 8
  store i64 %1992, i64* %RAX.i1926, align 8
  %1993 = add i64 %1987, -48
  %1994 = add i64 %1989, 8
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  %1997 = sext i32 %1996 to i64
  store i64 %1997, i64* %RCX.i1876, align 8
  %1998 = shl nsw i64 %1997, 3
  %1999 = add i64 %1998, %1992
  %2000 = add i64 %1989, 12
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %RAX.i1926, align 8
  %2003 = add i64 %1987, -56
  %2004 = add i64 %1989, 16
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = sext i32 %2006 to i64
  store i64 %2007, i64* %RCX.i1876, align 8
  %2008 = shl nsw i64 %2007, 1
  %2009 = add i64 %2008, %2002
  %2010 = add i64 %1989, 20
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i16*
  %2012 = load i16, i16* %2011, align 2
  %2013 = sext i16 %2012 to i64
  %2014 = and i64 %2013, 4294967295
  store i64 %2014, i64* %RDX.i1862, align 8
  %2015 = sext i16 %2012 to i32
  %2016 = add i64 %1989, 23
  store i8 0, i8* %14, align 1
  %2017 = and i32 %2015, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2022 = icmp eq i16 %2012, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %30, align 1
  %2024 = lshr i32 %2015, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2026 = icmp ne i8 %2025, 0
  %.v51 = select i1 %2026, i64 6, i64 25
  %2027 = add i64 %2016, %.v51
  store i64 %2027, i64* %3, align 8
  br i1 %2026, label %block_439bcf, label %block_.L_439be2

block_439bcf:                                     ; preds = %block_.L_439ba4
  store i64 -1, i64* %RAX.i1926, align 8
  %2028 = add i64 %1987, -272
  %2029 = add i64 %2027, 14
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i64*
  store i64 -1, i64* %2030, align 8
  %2031 = load i64, i64* %3, align 8
  %2032 = add i64 %2031, 32
  store i64 %2032, i64* %3, align 8
  br label %block_.L_439bfd

block_.L_439be2:                                  ; preds = %block_.L_439ba4
  %2033 = add i64 %1987, -112
  %2034 = add i64 %2027, 4
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %RAX.i1926, align 8
  %2037 = add i64 %2027, 8
  store i64 %2037, i64* %3, align 8
  %2038 = load i32, i32* %1995, align 4
  %2039 = sext i32 %2038 to i64
  store i64 %2039, i64* %RCX.i1876, align 8
  %2040 = shl nsw i64 %2039, 3
  %2041 = add i64 %2040, %2036
  %2042 = add i64 %2027, 12
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i64*
  %2044 = load i64, i64* %2043, align 8
  store i64 %2044, i64* %RAX.i1926, align 8
  %2045 = add i64 %2027, 16
  store i64 %2045, i64* %3, align 8
  %2046 = load i32, i32* %2005, align 4
  %2047 = sext i32 %2046 to i64
  store i64 %2047, i64* %RCX.i1876, align 8
  %2048 = shl nsw i64 %2047, 3
  %2049 = add i64 %2048, %2044
  %2050 = add i64 %2027, 20
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i64*
  %2052 = load i64, i64* %2051, align 8
  store i64 %2052, i64* %RAX.i1926, align 8
  %2053 = add i64 %1987, -272
  %2054 = add i64 %2027, 27
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i64*
  store i64 %2052, i64* %2055, align 8
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_439bfd

block_.L_439bfd:                                  ; preds = %block_.L_439be2, %block_439bcf
  %2056 = phi i64 [ %.pre63, %block_.L_439be2 ], [ %2032, %block_439bcf ]
  %2057 = load i64, i64* %RBP.i, align 8
  %2058 = add i64 %2057, -272
  %2059 = add i64 %2056, 7
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i64*
  %2061 = load i64, i64* %2060, align 8
  store i64 %2061, i64* %RAX.i1926, align 8
  %2062 = add i64 %2057, -192
  %2063 = add i64 %2056, 14
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i64*
  store i64 %2061, i64* %2064, align 8
  %2065 = load i64, i64* %RBP.i, align 8
  %2066 = add i64 %2065, -96
  %2067 = load i64, i64* %3, align 8
  %2068 = add i64 %2067, 4
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2066 to i64*
  %2070 = load i64, i64* %2069, align 8
  store i64 %2070, i64* %RAX.i1926, align 8
  %2071 = add i64 %2065, -52
  %2072 = add i64 %2067, 8
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = sext i32 %2074 to i64
  store i64 %2075, i64* %RCX.i1876, align 8
  %2076 = shl nsw i64 %2075, 3
  %2077 = add i64 %2076, %2070
  %2078 = add i64 %2067, 12
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i64*
  %2080 = load i64, i64* %2079, align 8
  store i64 %2080, i64* %RAX.i1926, align 8
  %2081 = add i64 %2065, -60
  %2082 = add i64 %2067, 16
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i32*
  %2084 = load i32, i32* %2083, align 4
  %2085 = sext i32 %2084 to i64
  store i64 %2085, i64* %RCX.i1876, align 8
  %2086 = shl nsw i64 %2085, 1
  %2087 = add i64 %2086, %2080
  %2088 = add i64 %2067, 20
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i16*
  %2090 = load i16, i16* %2089, align 2
  %2091 = sext i16 %2090 to i64
  %2092 = and i64 %2091, 4294967295
  store i64 %2092, i64* %RDX.i1862, align 8
  %2093 = sext i16 %2090 to i32
  %2094 = add i64 %2067, 23
  store i8 0, i8* %14, align 1
  %2095 = and i32 %2093, 255
  %2096 = tail call i32 @llvm.ctpop.i32(i32 %2095)
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  store i8 %2099, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2100 = icmp eq i16 %2090, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %30, align 1
  %2102 = lshr i32 %2093, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2104 = icmp ne i8 %2103, 0
  %.v52 = select i1 %2104, i64 6, i64 25
  %2105 = add i64 %2094, %.v52
  store i64 %2105, i64* %3, align 8
  br i1 %2104, label %block_439c28, label %block_.L_439c3b

block_439c28:                                     ; preds = %block_.L_439bfd
  store i64 -1, i64* %RAX.i1926, align 8
  %2106 = add i64 %2065, -280
  %2107 = add i64 %2105, 14
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i64*
  store i64 -1, i64* %2108, align 8
  %2109 = load i64, i64* %3, align 8
  %2110 = add i64 %2109, 32
  store i64 %2110, i64* %3, align 8
  br label %block_.L_439c56

block_.L_439c3b:                                  ; preds = %block_.L_439bfd
  %2111 = add i64 %2065, -112
  %2112 = add i64 %2105, 4
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i64*
  %2114 = load i64, i64* %2113, align 8
  store i64 %2114, i64* %RAX.i1926, align 8
  %2115 = add i64 %2105, 8
  store i64 %2115, i64* %3, align 8
  %2116 = load i32, i32* %2073, align 4
  %2117 = sext i32 %2116 to i64
  store i64 %2117, i64* %RCX.i1876, align 8
  %2118 = shl nsw i64 %2117, 3
  %2119 = add i64 %2118, %2114
  %2120 = add i64 %2105, 12
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i64*
  %2122 = load i64, i64* %2121, align 8
  store i64 %2122, i64* %RAX.i1926, align 8
  %2123 = add i64 %2105, 16
  store i64 %2123, i64* %3, align 8
  %2124 = load i32, i32* %2083, align 4
  %2125 = sext i32 %2124 to i64
  store i64 %2125, i64* %RCX.i1876, align 8
  %2126 = shl nsw i64 %2125, 3
  %2127 = add i64 %2126, %2122
  %2128 = add i64 %2105, 20
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i64*
  %2130 = load i64, i64* %2129, align 8
  store i64 %2130, i64* %RAX.i1926, align 8
  %2131 = add i64 %2065, -280
  %2132 = add i64 %2105, 27
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  store i64 %2130, i64* %2133, align 8
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_439c56

block_.L_439c56:                                  ; preds = %block_.L_439c3b, %block_439c28
  %2134 = phi i64 [ %.pre64, %block_.L_439c3b ], [ %2110, %block_439c28 ]
  %2135 = load i64, i64* %RBP.i, align 8
  %2136 = add i64 %2135, -280
  %2137 = add i64 %2134, 7
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i64*
  %2139 = load i64, i64* %2138, align 8
  store i64 %2139, i64* %RAX.i1926, align 8
  %2140 = add i64 %2135, -208
  %2141 = add i64 %2134, 14
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i64*
  store i64 %2139, i64* %2142, align 8
  %2143 = load i64, i64* %RBP.i, align 8
  %2144 = add i64 %2143, -184
  %2145 = load i64, i64* %3, align 8
  %2146 = add i64 %2145, 7
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2144 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RAX.i1926, align 8
  %2149 = add i64 %2143, -200
  %2150 = add i64 %2145, 14
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i64*
  %2152 = load i64, i64* %2151, align 8
  %2153 = sub i64 %2148, %2152
  %2154 = icmp ult i64 %2148, %2152
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %14, align 1
  %2156 = trunc i64 %2153 to i32
  %2157 = and i32 %2156, 255
  %2158 = tail call i32 @llvm.ctpop.i32(i32 %2157)
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  %2161 = xor i8 %2160, 1
  store i8 %2161, i8* %21, align 1
  %2162 = xor i64 %2152, %2148
  %2163 = xor i64 %2162, %2153
  %2164 = lshr i64 %2163, 4
  %2165 = trunc i64 %2164 to i8
  %2166 = and i8 %2165, 1
  store i8 %2166, i8* %27, align 1
  %2167 = icmp eq i64 %2153, 0
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %30, align 1
  %2169 = lshr i64 %2153, 63
  %2170 = trunc i64 %2169 to i8
  store i8 %2170, i8* %33, align 1
  %2171 = lshr i64 %2148, 63
  %2172 = lshr i64 %2152, 63
  %2173 = xor i64 %2172, %2171
  %2174 = xor i64 %2169, %2171
  %2175 = add nuw nsw i64 %2174, %2173
  %2176 = icmp eq i64 %2175, 2
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %39, align 1
  %.v106 = select i1 %2167, i64 20, i64 40
  %2178 = add i64 %2145, %.v106
  store i64 %2178, i64* %3, align 8
  br i1 %2167, label %block_439c78, label %block_.L_439c56.block_.L_439c8c_crit_edge

block_.L_439c56.block_.L_439c8c_crit_edge:        ; preds = %block_.L_439c56
  %.pre76 = add i64 %2143, -208
  %.pre77 = inttoptr i64 %.pre76 to i64*
  br label %block_.L_439c8c

block_439c78:                                     ; preds = %block_.L_439c56
  %2179 = add i64 %2143, -192
  %2180 = add i64 %2178, 7
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RAX.i1926, align 8
  %2183 = add i64 %2143, -208
  %2184 = add i64 %2178, 14
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i64*
  %2186 = load i64, i64* %2185, align 8
  %2187 = sub i64 %2182, %2186
  %2188 = icmp ult i64 %2182, %2186
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %14, align 1
  %2190 = trunc i64 %2187 to i32
  %2191 = and i32 %2190, 255
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %21, align 1
  %2196 = xor i64 %2186, %2182
  %2197 = xor i64 %2196, %2187
  %2198 = lshr i64 %2197, 4
  %2199 = trunc i64 %2198 to i8
  %2200 = and i8 %2199, 1
  store i8 %2200, i8* %27, align 1
  %2201 = icmp eq i64 %2187, 0
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %30, align 1
  %2203 = lshr i64 %2187, 63
  %2204 = trunc i64 %2203 to i8
  store i8 %2204, i8* %33, align 1
  %2205 = lshr i64 %2182, 63
  %2206 = lshr i64 %2186, 63
  %2207 = xor i64 %2206, %2205
  %2208 = xor i64 %2203, %2205
  %2209 = add nuw nsw i64 %2208, %2207
  %2210 = icmp eq i64 %2209, 2
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %39, align 1
  %.v109 = select i1 %2201, i64 60, i64 20
  %2212 = add i64 %2178, %.v109
  store i64 %2212, i64* %3, align 8
  br i1 %2201, label %block_.L_439cb4, label %block_.L_439c8c

block_.L_439c8c:                                  ; preds = %block_.L_439c56.block_.L_439c8c_crit_edge, %block_439c78
  %.pre-phi78 = phi i64* [ %.pre77, %block_.L_439c56.block_.L_439c8c_crit_edge ], [ %2185, %block_439c78 ]
  %2213 = phi i64 [ %2178, %block_.L_439c56.block_.L_439c8c_crit_edge ], [ %2212, %block_439c78 ]
  %2214 = add i64 %2213, 7
  store i64 %2214, i64* %3, align 8
  %2215 = load i64, i64* %2147, align 8
  store i64 %2215, i64* %RAX.i1926, align 8
  %2216 = add i64 %2213, 14
  store i64 %2216, i64* %3, align 8
  %2217 = load i64, i64* %.pre-phi78, align 8
  %2218 = sub i64 %2215, %2217
  %2219 = icmp ult i64 %2215, %2217
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %14, align 1
  %2221 = trunc i64 %2218 to i32
  %2222 = and i32 %2221, 255
  %2223 = tail call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  store i8 %2226, i8* %21, align 1
  %2227 = xor i64 %2217, %2215
  %2228 = xor i64 %2227, %2218
  %2229 = lshr i64 %2228, 4
  %2230 = trunc i64 %2229 to i8
  %2231 = and i8 %2230, 1
  store i8 %2231, i8* %27, align 1
  %2232 = icmp eq i64 %2218, 0
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %30, align 1
  %2234 = lshr i64 %2218, 63
  %2235 = trunc i64 %2234 to i8
  store i8 %2235, i8* %33, align 1
  %2236 = lshr i64 %2215, 63
  %2237 = lshr i64 %2217, 63
  %2238 = xor i64 %2237, %2236
  %2239 = xor i64 %2234, %2236
  %2240 = add nuw nsw i64 %2239, %2238
  %2241 = icmp eq i64 %2240, 2
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %39, align 1
  %.v107 = select i1 %2232, i64 20, i64 1500
  %2243 = add i64 %2213, %.v107
  store i64 %2243, i64* %3, align 8
  br i1 %2232, label %block_439ca0, label %block_.L_43a268

block_439ca0:                                     ; preds = %block_.L_439c8c
  %2244 = add i64 %2143, -192
  %2245 = add i64 %2243, 7
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i64*
  %2247 = load i64, i64* %2246, align 8
  store i64 %2247, i64* %RAX.i1926, align 8
  %2248 = add i64 %2243, 14
  store i64 %2248, i64* %3, align 8
  %2249 = load i64, i64* %2151, align 8
  %2250 = sub i64 %2247, %2249
  %2251 = icmp ult i64 %2247, %2249
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %14, align 1
  %2253 = trunc i64 %2250 to i32
  %2254 = and i32 %2253, 255
  %2255 = tail call i32 @llvm.ctpop.i32(i32 %2254)
  %2256 = trunc i32 %2255 to i8
  %2257 = and i8 %2256, 1
  %2258 = xor i8 %2257, 1
  store i8 %2258, i8* %21, align 1
  %2259 = xor i64 %2249, %2247
  %2260 = xor i64 %2259, %2250
  %2261 = lshr i64 %2260, 4
  %2262 = trunc i64 %2261 to i8
  %2263 = and i8 %2262, 1
  store i8 %2263, i8* %27, align 1
  %2264 = icmp eq i64 %2250, 0
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %30, align 1
  %2266 = lshr i64 %2250, 63
  %2267 = trunc i64 %2266 to i8
  store i8 %2267, i8* %33, align 1
  %2268 = lshr i64 %2247, 63
  %2269 = lshr i64 %2249, 63
  %2270 = xor i64 %2269, %2268
  %2271 = xor i64 %2266, %2268
  %2272 = add nuw nsw i64 %2271, %2270
  %2273 = icmp eq i64 %2272, 2
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %39, align 1
  %.v108 = select i1 %2264, i64 20, i64 1480
  %2275 = add i64 %2243, %.v108
  store i64 %2275, i64* %3, align 8
  br i1 %2264, label %block_.L_439cb4, label %block_.L_43a268

block_.L_439cb4:                                  ; preds = %block_439ca0, %block_439c78
  %2276 = phi i64 [ %2275, %block_439ca0 ], [ %2212, %block_439c78 ]
  %2277 = add i64 %2143, -8
  %2278 = add i64 %2276, 4
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RAX.i1926, align 8
  %2281 = add i64 %2143, -44
  %2282 = add i64 %2276, 8
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = sext i32 %2284 to i64
  store i64 %2285, i64* %RCX.i1876, align 8
  %2286 = add i64 %2280, %2285
  %2287 = add i64 %2276, 12
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i8*
  store i8 0, i8* %2288, align 1
  %2289 = load i64, i64* %RBP.i, align 8
  %2290 = add i64 %2289, -184
  %2291 = load i64, i64* %3, align 8
  %2292 = add i64 %2291, 7
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2290 to i64*
  %2294 = load i64, i64* %2293, align 8
  store i64 %2294, i64* %RAX.i1926, align 8
  %2295 = add i64 %2289, -192
  %2296 = add i64 %2291, 14
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i64*
  %2298 = load i64, i64* %2297, align 8
  %2299 = sub i64 %2294, %2298
  %2300 = icmp ult i64 %2294, %2298
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %14, align 1
  %2302 = trunc i64 %2299 to i32
  %2303 = and i32 %2302, 255
  %2304 = tail call i32 @llvm.ctpop.i32(i32 %2303)
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  %2307 = xor i8 %2306, 1
  store i8 %2307, i8* %21, align 1
  %2308 = xor i64 %2298, %2294
  %2309 = xor i64 %2308, %2299
  %2310 = lshr i64 %2309, 4
  %2311 = trunc i64 %2310 to i8
  %2312 = and i8 %2311, 1
  store i8 %2312, i8* %27, align 1
  %2313 = icmp eq i64 %2299, 0
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %30, align 1
  %2315 = lshr i64 %2299, 63
  %2316 = trunc i64 %2315 to i8
  store i8 %2316, i8* %33, align 1
  %2317 = lshr i64 %2294, 63
  %2318 = lshr i64 %2298, 63
  %2319 = xor i64 %2318, %2317
  %2320 = xor i64 %2315, %2317
  %2321 = add nuw nsw i64 %2320, %2319
  %2322 = icmp eq i64 %2321, 2
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %39, align 1
  %.v84 = select i1 %2313, i64 732, i64 20
  %2324 = add i64 %2291, %.v84
  store i64 %2324, i64* %3, align 8
  br i1 %2313, label %block_.L_439f9c, label %block_439cd4

block_439cd4:                                     ; preds = %block_.L_439cb4
  %2325 = add i64 %2324, 7
  store i64 %2325, i64* %3, align 8
  %2326 = load i64, i64* %2293, align 8
  store i64 %2326, i64* %RAX.i1926, align 8
  %2327 = add i64 %2289, -200
  %2328 = add i64 %2324, 14
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i64*
  %2330 = load i64, i64* %2329, align 8
  %2331 = sub i64 %2326, %2330
  %2332 = icmp ult i64 %2326, %2330
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %14, align 1
  %2334 = trunc i64 %2331 to i32
  %2335 = and i32 %2334, 255
  %2336 = tail call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  store i8 %2339, i8* %21, align 1
  %2340 = xor i64 %2330, %2326
  %2341 = xor i64 %2340, %2331
  %2342 = lshr i64 %2341, 4
  %2343 = trunc i64 %2342 to i8
  %2344 = and i8 %2343, 1
  store i8 %2344, i8* %27, align 1
  %2345 = icmp eq i64 %2331, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %30, align 1
  %2347 = lshr i64 %2331, 63
  %2348 = trunc i64 %2347 to i8
  store i8 %2348, i8* %33, align 1
  %2349 = lshr i64 %2326, 63
  %2350 = lshr i64 %2330, 63
  %2351 = xor i64 %2350, %2349
  %2352 = xor i64 %2347, %2349
  %2353 = add nuw nsw i64 %2352, %2351
  %2354 = icmp eq i64 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %39, align 1
  %.v83 = select i1 %2345, i64 20, i64 366
  %2356 = add i64 %2324, %.v83
  %2357 = add i64 %2289, -72
  %2358 = add i64 %2356, 4
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i64*
  %2360 = load i64, i64* %2359, align 8
  store i64 %2360, i64* %RAX.i1926, align 8
  %2361 = add i64 %2289, -48
  %2362 = add i64 %2356, 8
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i32*
  %2364 = load i32, i32* %2363, align 4
  %2365 = sext i32 %2364 to i64
  store i64 %2365, i64* %RCX.i1876, align 8
  %2366 = shl nsw i64 %2365, 3
  %2367 = add i64 %2366, %2360
  %2368 = add i64 %2356, 12
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i64*
  %2370 = load i64, i64* %2369, align 8
  store i64 %2370, i64* %RAX.i1926, align 8
  %2371 = add i64 %2289, -56
  %2372 = add i64 %2356, 16
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = sext i32 %2374 to i64
  store i64 %2375, i64* %RCX.i1876, align 8
  %2376 = shl nsw i64 %2375, 3
  %2377 = add i64 %2376, %2370
  %2378 = add i64 %2356, 20
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i64*
  %2380 = load i64, i64* %2379, align 8
  store i64 %2380, i64* %RAX.i1926, align 8
  %2381 = add i64 %2356, 23
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i16*
  %2383 = load i16, i16* %2382, align 2
  %2384 = sext i16 %2383 to i64
  %2385 = and i64 %2384, 4294967295
  store i64 %2385, i64* %RDX.i1862, align 8
  br i1 %2345, label %block_439ce8, label %block_.L_439e42

block_439ce8:                                     ; preds = %block_439cd4
  %2386 = add i64 %2356, 27
  store i64 %2386, i64* %3, align 8
  %2387 = load i64, i64* %2359, align 8
  store i64 %2387, i64* %RAX.i1926, align 8
  %2388 = add i64 %2289, -52
  %2389 = add i64 %2356, 31
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i32*
  %2391 = load i32, i32* %2390, align 4
  %2392 = sext i32 %2391 to i64
  store i64 %2392, i64* %RCX.i1876, align 8
  %2393 = shl nsw i64 %2392, 3
  %2394 = add i64 %2393, %2387
  %2395 = add i64 %2356, 35
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i64*
  %2397 = load i64, i64* %2396, align 8
  store i64 %2397, i64* %RAX.i1926, align 8
  %2398 = add i64 %2289, -60
  %2399 = add i64 %2356, 39
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = sext i32 %2401 to i64
  store i64 %2402, i64* %RCX.i1876, align 8
  %2403 = shl nsw i64 %2402, 3
  %2404 = add i64 %2403, %2397
  %2405 = add i64 %2356, 43
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i64*
  %2407 = load i64, i64* %2406, align 8
  store i64 %2407, i64* %RAX.i1926, align 8
  %2408 = add i64 %2356, 46
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i16*
  %2410 = load i16, i16* %2409, align 2
  %2411 = sext i16 %2410 to i64
  %2412 = and i64 %2411, 4294967295
  store i64 %2412, i64* %RSI.i248, align 8
  %2413 = sext i16 %2410 to i32
  %2414 = zext i32 %2413 to i64
  %2415 = sext i16 %2383 to i32
  %2416 = sub nsw i32 %2415, %2413
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RDX.i1862, align 8
  %2418 = icmp ult i16 %2383, %2410
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %14, align 1
  %2420 = and i32 %2416, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %21, align 1
  %2425 = xor i64 %2414, %2384
  %2426 = trunc i64 %2425 to i32
  %2427 = xor i32 %2426, %2416
  %2428 = lshr i32 %2427, 4
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  store i8 %2430, i8* %27, align 1
  %2431 = icmp eq i32 %2416, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %30, align 1
  %2433 = lshr i32 %2416, 31
  %2434 = trunc i32 %2433 to i8
  store i8 %2434, i8* %33, align 1
  %2435 = lshr i32 %2415, 31
  %2436 = lshr i32 %2413, 31
  %2437 = xor i32 %2436, %2435
  %2438 = xor i32 %2433, %2435
  %2439 = add nuw nsw i32 %2438, %2437
  %2440 = icmp eq i32 %2439, 2
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %39, align 1
  store i64 %2417, i64* %RDI.i190, align 8
  %2442 = add i64 %2356, -232680
  %2443 = add i64 %2356, 55
  %2444 = load i64, i64* %6, align 8
  %2445 = add i64 %2444, -8
  %2446 = inttoptr i64 %2445 to i64*
  store i64 %2443, i64* %2446, align 8
  store i64 %2445, i64* %6, align 8
  store i64 %2442, i64* %3, align 8
  %2447 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.0)
  %2448 = load i32, i32* %EAX.i1921, align 4
  %2449 = load i64, i64* %3, align 8
  %2450 = add i32 %2448, -4
  %2451 = lshr i32 %2450, 31
  %2452 = lshr i32 %2448, 31
  %2453 = xor i32 %2451, %2452
  %2454 = add nuw nsw i32 %2453, %2452
  %2455 = icmp eq i32 %2454, 2
  %2456 = icmp ne i32 %2451, 0
  %2457 = xor i1 %2456, %2455
  %2458 = xor i1 %2457, true
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %2460 = zext i1 %2458 to i32
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = xor i8 %2462, 1
  store i8 %2463, i8* %21, align 1
  %2464 = zext i1 %2457 to i8
  store i8 %2464, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2465 = zext i1 %2458 to i64
  store i64 %2465, i64* %RAX.i1926, align 8
  %2466 = load i64, i64* %RBP.i, align 8
  %2467 = add i64 %2466, -72
  %2468 = add i64 %2449, 19
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i64*
  %2470 = load i64, i64* %2469, align 8
  store i64 %2470, i64* %RCX.i1876, align 8
  %2471 = add i64 %2466, -48
  %2472 = add i64 %2449, 23
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  %2474 = load i32, i32* %2473, align 4
  %2475 = sext i32 %2474 to i64
  store i64 %2475, i64* %R9.i1826, align 8
  %2476 = shl nsw i64 %2475, 3
  %2477 = add i64 %2476, %2470
  %2478 = add i64 %2449, 27
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i64*
  %2480 = load i64, i64* %2479, align 8
  store i64 %2480, i64* %RCX.i1876, align 8
  %2481 = add i64 %2466, -56
  %2482 = add i64 %2449, 31
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = sext i32 %2484 to i64
  store i64 %2485, i64* %R9.i1826, align 8
  %2486 = shl nsw i64 %2485, 3
  %2487 = add i64 %2486, %2480
  %2488 = add i64 %2449, 35
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i64*
  %2490 = load i64, i64* %2489, align 8
  store i64 %2490, i64* %RCX.i1876, align 8
  %2491 = add i64 %2490, 2
  %2492 = add i64 %2449, 39
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i16*
  %2494 = load i16, i16* %2493, align 2
  %2495 = sext i16 %2494 to i64
  %2496 = and i64 %2495, 4294967295
  store i64 %2496, i64* %RDX.i1862, align 8
  %2497 = add i64 %2449, 43
  store i64 %2497, i64* %3, align 8
  %2498 = load i64, i64* %2469, align 8
  store i64 %2498, i64* %RCX.i1876, align 8
  %2499 = add i64 %2466, -52
  %2500 = add i64 %2449, 47
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = sext i32 %2502 to i64
  store i64 %2503, i64* %R9.i1826, align 8
  %2504 = shl nsw i64 %2503, 3
  %2505 = add i64 %2504, %2498
  %2506 = add i64 %2449, 51
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i64*
  %2508 = load i64, i64* %2507, align 8
  store i64 %2508, i64* %RCX.i1876, align 8
  %2509 = add i64 %2466, -60
  %2510 = add i64 %2449, 55
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  %2513 = sext i32 %2512 to i64
  store i64 %2513, i64* %R9.i1826, align 8
  %2514 = shl nsw i64 %2513, 3
  %2515 = add i64 %2514, %2508
  %2516 = add i64 %2449, 59
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i64*
  %2518 = load i64, i64* %2517, align 8
  store i64 %2518, i64* %RCX.i1876, align 8
  %2519 = add i64 %2518, 2
  %2520 = add i64 %2449, 63
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i16*
  %2522 = load i16, i16* %2521, align 2
  %2523 = sext i16 %2522 to i64
  %2524 = and i64 %2523, 4294967295
  store i64 %2524, i64* %RSI.i248, align 8
  %2525 = sext i16 %2522 to i32
  %2526 = zext i32 %2525 to i64
  %2527 = sext i16 %2494 to i32
  %2528 = sub nsw i32 %2527, %2525
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RDX.i1862, align 8
  %2530 = icmp ult i16 %2494, %2522
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %14, align 1
  %2532 = and i32 %2528, 255
  %2533 = tail call i32 @llvm.ctpop.i32(i32 %2532)
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  %2536 = xor i8 %2535, 1
  store i8 %2536, i8* %21, align 1
  %2537 = xor i64 %2526, %2495
  %2538 = trunc i64 %2537 to i32
  %2539 = xor i32 %2538, %2528
  %2540 = lshr i32 %2539, 4
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  store i8 %2542, i8* %27, align 1
  %2543 = icmp eq i32 %2528, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %30, align 1
  %2545 = lshr i32 %2528, 31
  %2546 = trunc i32 %2545 to i8
  store i8 %2546, i8* %33, align 1
  %2547 = lshr i32 %2527, 31
  %2548 = lshr i32 %2525, 31
  %2549 = xor i32 %2548, %2547
  %2550 = xor i32 %2545, %2547
  %2551 = add nuw nsw i32 %2550, %2549
  %2552 = icmp eq i32 %2551, 2
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %39, align 1
  store i64 %2529, i64* %RDI.i190, align 8
  %2554 = load i64, i64* %RBP.i, align 8
  %2555 = add i64 %2554, -284
  %2556 = load i32, i32* %EAX.i1921, align 4
  %2557 = add i64 %2449, 73
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2555 to i32*
  store i32 %2556, i32* %2558, align 4
  %2559 = load i64, i64* %3, align 8
  %2560 = add i64 %2559, -232808
  %2561 = add i64 %2559, 5
  %2562 = load i64, i64* %6, align 8
  %2563 = add i64 %2562, -8
  %2564 = inttoptr i64 %2563 to i64*
  store i64 %2561, i64* %2564, align 8
  store i64 %2563, i64* %6, align 8
  store i64 %2560, i64* %3, align 8
  %2565 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2447)
  %2566 = load i32, i32* %EAX.i1921, align 4
  %2567 = load i64, i64* %RBP.i, align 8
  %2568 = add i64 %2567, -32
  %2569 = load i64, i64* %3, align 8
  %2570 = add i64 %2569, 3
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2568 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = sub i32 %2566, %2572
  %2574 = lshr i32 %2573, 31
  %2575 = lshr i32 %2566, 31
  %2576 = lshr i32 %2572, 31
  %2577 = xor i32 %2576, %2575
  %2578 = xor i32 %2574, %2575
  %2579 = add nuw nsw i32 %2578, %2577
  %2580 = icmp eq i32 %2579, 2
  %2581 = icmp ne i32 %2574, 0
  %2582 = xor i1 %2580, %2581
  %2583 = xor i1 %2582, true
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %2585 = zext i1 %2583 to i32
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %21, align 1
  %2589 = zext i1 %2582 to i8
  store i8 %2589, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2590 = zext i1 %2583 to i64
  store i64 %2590, i64* %RAX.i1926, align 8
  %2591 = add i64 %2567, -284
  %2592 = add i64 %2569, 21
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = zext i1 %2583 to i32
  %2596 = or i32 %2595, %2594
  %2597 = zext i32 %2596 to i64
  store i64 %2597, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %2598 = and i32 %2596, 255
  %2599 = tail call i32 @llvm.ctpop.i32(i32 %2598)
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  %2602 = xor i8 %2601, 1
  store i8 %2602, i8* %21, align 1
  %2603 = icmp eq i32 %2596, 0
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %30, align 1
  %2605 = lshr i32 %2594, 31
  %2606 = trunc i32 %2605 to i8
  store i8 %2606, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2607 = add i64 %2567, -80
  %2608 = add i64 %2569, 27
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i64*
  %2610 = load i64, i64* %2609, align 8
  store i64 %2610, i64* %RCX.i1876, align 8
  %2611 = add i64 %2567, -48
  %2612 = add i64 %2569, 31
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = sext i32 %2614 to i64
  store i64 %2615, i64* %R9.i1826, align 8
  %2616 = shl nsw i64 %2615, 3
  %2617 = add i64 %2616, %2610
  %2618 = add i64 %2569, 35
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i64*
  %2620 = load i64, i64* %2619, align 8
  store i64 %2620, i64* %RCX.i1876, align 8
  %2621 = load i64, i64* %RBP.i, align 8
  %2622 = add i64 %2621, -56
  %2623 = add i64 %2569, 39
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = sext i32 %2625 to i64
  store i64 %2626, i64* %R9.i1826, align 8
  %2627 = shl nsw i64 %2626, 3
  %2628 = add i64 %2627, %2620
  %2629 = add i64 %2569, 43
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i64*
  %2631 = load i64, i64* %2630, align 8
  store i64 %2631, i64* %RCX.i1876, align 8
  %2632 = add i64 %2569, 46
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2631 to i16*
  %2634 = load i16, i16* %2633, align 2
  %2635 = sext i16 %2634 to i64
  %2636 = and i64 %2635, 4294967295
  store i64 %2636, i64* %RAX.i1926, align 8
  %2637 = add i64 %2621, -80
  %2638 = add i64 %2569, 50
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %RCX.i1876, align 8
  %2641 = add i64 %2621, -52
  %2642 = add i64 %2569, 54
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = sext i32 %2644 to i64
  store i64 %2645, i64* %R9.i1826, align 8
  %2646 = shl nsw i64 %2645, 3
  %2647 = add i64 %2646, %2640
  %2648 = add i64 %2569, 58
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %RCX.i1876, align 8
  %2651 = add i64 %2621, -60
  %2652 = add i64 %2569, 62
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = sext i32 %2654 to i64
  store i64 %2655, i64* %R9.i1826, align 8
  %2656 = shl nsw i64 %2655, 3
  %2657 = add i64 %2656, %2650
  %2658 = add i64 %2569, 66
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  store i64 %2660, i64* %RCX.i1876, align 8
  %2661 = add i64 %2569, 69
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i16*
  %2663 = load i16, i16* %2662, align 2
  %2664 = sext i16 %2663 to i64
  %2665 = and i64 %2664, 4294967295
  store i64 %2665, i64* %RSI.i248, align 8
  %2666 = sext i16 %2663 to i32
  %2667 = zext i32 %2666 to i64
  %2668 = sext i16 %2634 to i32
  %2669 = sub nsw i32 %2668, %2666
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RAX.i1926, align 8
  %2671 = icmp ult i16 %2634, %2663
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %14, align 1
  %2673 = and i32 %2669, 255
  %2674 = tail call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %21, align 1
  %2678 = xor i64 %2667, %2635
  %2679 = trunc i64 %2678 to i32
  %2680 = xor i32 %2679, %2669
  %2681 = lshr i32 %2680, 4
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %27, align 1
  %2684 = icmp eq i32 %2669, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %30, align 1
  %2686 = lshr i32 %2669, 31
  %2687 = trunc i32 %2686 to i8
  store i8 %2687, i8* %33, align 1
  %2688 = lshr i32 %2668, 31
  %2689 = lshr i32 %2666, 31
  %2690 = xor i32 %2689, %2688
  %2691 = xor i32 %2686, %2688
  %2692 = add nuw nsw i32 %2691, %2690
  %2693 = icmp eq i32 %2692, 2
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %39, align 1
  store i64 %2670, i64* %RDI.i190, align 8
  %2695 = load i64, i64* %RBP.i, align 8
  %2696 = add i64 %2695, -288
  %2697 = load i32, i32* %EDX.i320, align 4
  %2698 = add i64 %2569, 79
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2696 to i32*
  store i32 %2697, i32* %2699, align 4
  %2700 = load i64, i64* %3, align 8
  %2701 = add i64 %2700, -232892
  %2702 = add i64 %2700, 5
  %2703 = load i64, i64* %6, align 8
  %2704 = add i64 %2703, -8
  %2705 = inttoptr i64 %2704 to i64*
  store i64 %2702, i64* %2705, align 8
  store i64 %2704, i64* %6, align 8
  store i64 %2701, i64* %3, align 8
  %2706 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2565)
  %2707 = load i32, i32* %EAX.i1921, align 4
  %2708 = load i64, i64* %3, align 8
  %2709 = add i32 %2707, -4
  %2710 = lshr i32 %2709, 31
  %2711 = lshr i32 %2707, 31
  %2712 = xor i32 %2710, %2711
  %2713 = add nuw nsw i32 %2712, %2711
  %2714 = icmp eq i32 %2713, 2
  %2715 = icmp ne i32 %2710, 0
  %2716 = xor i1 %2714, %2715
  %2717 = xor i1 %2716, true
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %2719 = zext i1 %2717 to i32
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %21, align 1
  %2723 = zext i1 %2716 to i8
  store i8 %2723, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2724 = zext i1 %2717 to i64
  store i64 %2724, i64* %RAX.i1926, align 8
  %2725 = load i64, i64* %RBP.i, align 8
  %2726 = add i64 %2725, -288
  %2727 = add i64 %2708, 21
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = zext i1 %2717 to i32
  %2731 = or i32 %2730, %2729
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %2733 = and i32 %2731, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %21, align 1
  %2738 = icmp eq i32 %2731, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %30, align 1
  %2740 = lshr i32 %2729, 31
  %2741 = trunc i32 %2740 to i8
  store i8 %2741, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2742 = add i64 %2725, -80
  %2743 = add i64 %2708, 27
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i64*
  %2745 = load i64, i64* %2744, align 8
  store i64 %2745, i64* %RCX.i1876, align 8
  %2746 = add i64 %2725, -48
  %2747 = add i64 %2708, 31
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = sext i32 %2749 to i64
  store i64 %2750, i64* %R9.i1826, align 8
  %2751 = shl nsw i64 %2750, 3
  %2752 = add i64 %2751, %2745
  %2753 = add i64 %2708, 35
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i64*
  %2755 = load i64, i64* %2754, align 8
  store i64 %2755, i64* %RCX.i1876, align 8
  %2756 = add i64 %2725, -56
  %2757 = add i64 %2708, 39
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i32*
  %2759 = load i32, i32* %2758, align 4
  %2760 = sext i32 %2759 to i64
  store i64 %2760, i64* %R9.i1826, align 8
  %2761 = shl nsw i64 %2760, 3
  %2762 = add i64 %2761, %2755
  %2763 = add i64 %2708, 43
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i64*
  %2765 = load i64, i64* %2764, align 8
  store i64 %2765, i64* %RCX.i1876, align 8
  %2766 = add i64 %2765, 2
  %2767 = add i64 %2708, 47
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to i16*
  %2769 = load i16, i16* %2768, align 2
  %2770 = sext i16 %2769 to i64
  %2771 = and i64 %2770, 4294967295
  store i64 %2771, i64* %RAX.i1926, align 8
  %2772 = add i64 %2708, 51
  store i64 %2772, i64* %3, align 8
  %2773 = load i64, i64* %2744, align 8
  store i64 %2773, i64* %RCX.i1876, align 8
  %2774 = add i64 %2725, -52
  %2775 = add i64 %2708, 55
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2774 to i32*
  %2777 = load i32, i32* %2776, align 4
  %2778 = sext i32 %2777 to i64
  store i64 %2778, i64* %R9.i1826, align 8
  %2779 = shl nsw i64 %2778, 3
  %2780 = add i64 %2779, %2773
  %2781 = add i64 %2708, 59
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i64*
  %2783 = load i64, i64* %2782, align 8
  store i64 %2783, i64* %RCX.i1876, align 8
  %2784 = add i64 %2725, -60
  %2785 = add i64 %2708, 63
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = sext i32 %2787 to i64
  store i64 %2788, i64* %R9.i1826, align 8
  %2789 = shl nsw i64 %2788, 3
  %2790 = add i64 %2789, %2783
  %2791 = add i64 %2708, 67
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to i64*
  %2793 = load i64, i64* %2792, align 8
  store i64 %2793, i64* %RCX.i1876, align 8
  %2794 = add i64 %2793, 2
  %2795 = add i64 %2708, 71
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i16*
  %2797 = load i16, i16* %2796, align 2
  %2798 = sext i16 %2797 to i64
  %2799 = and i64 %2798, 4294967295
  store i64 %2799, i64* %RSI.i248, align 8
  %2800 = sext i16 %2797 to i32
  %2801 = zext i32 %2800 to i64
  %2802 = sext i16 %2769 to i32
  %2803 = sub nsw i32 %2802, %2800
  %2804 = zext i32 %2803 to i64
  store i64 %2804, i64* %RAX.i1926, align 8
  %2805 = icmp ult i16 %2769, %2797
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %14, align 1
  %2807 = and i32 %2803, 255
  %2808 = tail call i32 @llvm.ctpop.i32(i32 %2807)
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = xor i8 %2810, 1
  store i8 %2811, i8* %21, align 1
  %2812 = xor i64 %2801, %2770
  %2813 = trunc i64 %2812 to i32
  %2814 = xor i32 %2813, %2803
  %2815 = lshr i32 %2814, 4
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  store i8 %2817, i8* %27, align 1
  %2818 = icmp eq i32 %2803, 0
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %30, align 1
  %2820 = lshr i32 %2803, 31
  %2821 = trunc i32 %2820 to i8
  store i8 %2821, i8* %33, align 1
  %2822 = lshr i32 %2802, 31
  %2823 = lshr i32 %2800, 31
  %2824 = xor i32 %2823, %2822
  %2825 = xor i32 %2820, %2822
  %2826 = add nuw nsw i32 %2825, %2824
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %39, align 1
  store i64 %2804, i64* %RDI.i190, align 8
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -292
  %2831 = load i32, i32* %EDX.i320, align 4
  %2832 = add i64 %2708, 81
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2830 to i32*
  store i32 %2831, i32* %2833, align 4
  %2834 = load i64, i64* %3, align 8
  %2835 = add i64 %2834, -232978
  %2836 = add i64 %2834, 5
  %2837 = load i64, i64* %6, align 8
  %2838 = add i64 %2837, -8
  %2839 = inttoptr i64 %2838 to i64*
  store i64 %2836, i64* %2839, align 8
  store i64 %2838, i64* %6, align 8
  store i64 %2835, i64* %3, align 8
  %2840 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2706)
  %2841 = load i32, i32* %EAX.i1921, align 4
  %2842 = load i64, i64* %RBP.i, align 8
  %2843 = add i64 %2842, -32
  %2844 = load i64, i64* %3, align 8
  %2845 = add i64 %2844, 3
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2843 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = sub i32 %2841, %2847
  %2849 = lshr i32 %2848, 31
  %2850 = lshr i32 %2841, 31
  %2851 = lshr i32 %2847, 31
  %2852 = xor i32 %2851, %2850
  %2853 = xor i32 %2849, %2850
  %2854 = add nuw nsw i32 %2853, %2852
  %2855 = icmp eq i32 %2854, 2
  %2856 = icmp ne i32 %2849, 0
  %2857 = xor i1 %2855, %2856
  %2858 = xor i1 %2857, true
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %2860 = zext i1 %2858 to i32
  %2861 = tail call i32 @llvm.ctpop.i32(i32 %2860)
  %2862 = trunc i32 %2861 to i8
  %2863 = xor i8 %2862, 1
  store i8 %2863, i8* %21, align 1
  %2864 = zext i1 %2857 to i8
  store i8 %2864, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2865 = zext i1 %2858 to i64
  store i64 %2865, i64* %RAX.i1926, align 8
  %2866 = add i64 %2842, -292
  %2867 = add i64 %2844, 21
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = zext i1 %2858 to i32
  %2871 = or i32 %2870, %2869
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %2873 = and i32 %2871, 255
  %2874 = tail call i32 @llvm.ctpop.i32(i32 %2873)
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  store i8 %2877, i8* %21, align 1
  %2878 = icmp eq i32 %2871, 0
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %30, align 1
  %2880 = lshr i32 %2869, 31
  %2881 = trunc i32 %2880 to i8
  store i8 %2881, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2882 = trunc i32 %2871 to i8
  store i8 %2882, i8* %R8B.i501, align 1
  %2883 = add i64 %2842, -8
  %2884 = add i64 %2844, 30
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i64*
  %2886 = load i64, i64* %2885, align 8
  store i64 %2886, i64* %RCX.i1876, align 8
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -44
  %2889 = add i64 %2844, 34
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = sext i32 %2891 to i64
  store i64 %2892, i64* %R9.i1826, align 8
  %2893 = add i64 %2886, %2892
  %2894 = add i64 %2844, 38
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i8*
  store i8 %2882, i8* %2895, align 1
  %2896 = load i64, i64* %3, align 8
  %2897 = add i64 %2896, 346
  store i64 %2897, i64* %3, align 8
  br label %block_.L_439f97

block_.L_439e42:                                  ; preds = %block_439cd4
  %2898 = add i64 %2289, -80
  %2899 = add i64 %2356, 27
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i64*
  %2901 = load i64, i64* %2900, align 8
  store i64 %2901, i64* %RAX.i1926, align 8
  %2902 = add i64 %2289, -52
  %2903 = add i64 %2356, 31
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = sext i32 %2905 to i64
  store i64 %2906, i64* %RCX.i1876, align 8
  %2907 = shl nsw i64 %2906, 3
  %2908 = add i64 %2907, %2901
  %2909 = add i64 %2356, 35
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i64*
  %2911 = load i64, i64* %2910, align 8
  store i64 %2911, i64* %RAX.i1926, align 8
  %2912 = add i64 %2289, -60
  %2913 = add i64 %2356, 39
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = sext i32 %2915 to i64
  store i64 %2916, i64* %RCX.i1876, align 8
  %2917 = shl nsw i64 %2916, 3
  %2918 = add i64 %2917, %2911
  %2919 = add i64 %2356, 43
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i64*
  %2921 = load i64, i64* %2920, align 8
  store i64 %2921, i64* %RAX.i1926, align 8
  %2922 = add i64 %2356, 46
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i16*
  %2924 = load i16, i16* %2923, align 2
  %2925 = sext i16 %2924 to i64
  %2926 = and i64 %2925, 4294967295
  store i64 %2926, i64* %RSI.i248, align 8
  %2927 = sext i16 %2924 to i32
  %2928 = zext i32 %2927 to i64
  %2929 = sext i16 %2383 to i32
  %2930 = sub nsw i32 %2929, %2927
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RDX.i1862, align 8
  %2932 = icmp ult i16 %2383, %2924
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %14, align 1
  %2934 = and i32 %2930, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %21, align 1
  %2939 = xor i64 %2928, %2384
  %2940 = trunc i64 %2939 to i32
  %2941 = xor i32 %2940, %2930
  %2942 = lshr i32 %2941, 4
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  store i8 %2944, i8* %27, align 1
  %2945 = icmp eq i32 %2930, 0
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %30, align 1
  %2947 = lshr i32 %2930, 31
  %2948 = trunc i32 %2947 to i8
  store i8 %2948, i8* %33, align 1
  %2949 = lshr i32 %2929, 31
  %2950 = lshr i32 %2927, 31
  %2951 = xor i32 %2950, %2949
  %2952 = xor i32 %2947, %2949
  %2953 = add nuw nsw i32 %2952, %2951
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %39, align 1
  store i64 %2931, i64* %RDI.i190, align 8
  %2956 = add i64 %2356, -233026
  %2957 = add i64 %2356, 55
  %2958 = load i64, i64* %6, align 8
  %2959 = add i64 %2958, -8
  %2960 = inttoptr i64 %2959 to i64*
  store i64 %2957, i64* %2960, align 8
  store i64 %2959, i64* %6, align 8
  store i64 %2956, i64* %3, align 8
  %2961 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.0)
  %2962 = load i32, i32* %EAX.i1921, align 4
  %2963 = load i64, i64* %3, align 8
  %2964 = add i32 %2962, -4
  %2965 = lshr i32 %2964, 31
  %2966 = lshr i32 %2962, 31
  %2967 = xor i32 %2965, %2966
  %2968 = add nuw nsw i32 %2967, %2966
  %2969 = icmp eq i32 %2968, 2
  %2970 = icmp ne i32 %2965, 0
  %2971 = xor i1 %2970, %2969
  %2972 = xor i1 %2971, true
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %2974 = zext i1 %2972 to i32
  %2975 = tail call i32 @llvm.ctpop.i32(i32 %2974)
  %2976 = trunc i32 %2975 to i8
  %2977 = xor i8 %2976, 1
  store i8 %2977, i8* %21, align 1
  %2978 = zext i1 %2971 to i8
  store i8 %2978, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2979 = zext i1 %2972 to i64
  store i64 %2979, i64* %RAX.i1926, align 8
  %2980 = load i64, i64* %RBP.i, align 8
  %2981 = add i64 %2980, -72
  %2982 = add i64 %2963, 19
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i64*
  %2984 = load i64, i64* %2983, align 8
  store i64 %2984, i64* %RCX.i1876, align 8
  %2985 = add i64 %2980, -48
  %2986 = add i64 %2963, 23
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i32*
  %2988 = load i32, i32* %2987, align 4
  %2989 = sext i32 %2988 to i64
  store i64 %2989, i64* %R9.i1826, align 8
  %2990 = shl nsw i64 %2989, 3
  %2991 = add i64 %2990, %2984
  %2992 = add i64 %2963, 27
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i64*
  %2994 = load i64, i64* %2993, align 8
  store i64 %2994, i64* %RCX.i1876, align 8
  %2995 = add i64 %2980, -56
  %2996 = add i64 %2963, 31
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = sext i32 %2998 to i64
  store i64 %2999, i64* %R9.i1826, align 8
  %3000 = shl nsw i64 %2999, 3
  %3001 = add i64 %3000, %2994
  %3002 = add i64 %2963, 35
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %RCX.i1876, align 8
  %3005 = add i64 %3004, 2
  %3006 = add i64 %2963, 39
  store i64 %3006, i64* %3, align 8
  %3007 = inttoptr i64 %3005 to i16*
  %3008 = load i16, i16* %3007, align 2
  %3009 = sext i16 %3008 to i64
  %3010 = and i64 %3009, 4294967295
  store i64 %3010, i64* %RDX.i1862, align 8
  %3011 = add i64 %2980, -80
  %3012 = add i64 %2963, 43
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i64*
  %3014 = load i64, i64* %3013, align 8
  store i64 %3014, i64* %RCX.i1876, align 8
  %3015 = add i64 %2980, -52
  %3016 = add i64 %2963, 47
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  %3018 = load i32, i32* %3017, align 4
  %3019 = sext i32 %3018 to i64
  store i64 %3019, i64* %R9.i1826, align 8
  %3020 = shl nsw i64 %3019, 3
  %3021 = add i64 %3020, %3014
  %3022 = add i64 %2963, 51
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i64*
  %3024 = load i64, i64* %3023, align 8
  store i64 %3024, i64* %RCX.i1876, align 8
  %3025 = add i64 %2980, -60
  %3026 = add i64 %2963, 55
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i32*
  %3028 = load i32, i32* %3027, align 4
  %3029 = sext i32 %3028 to i64
  store i64 %3029, i64* %R9.i1826, align 8
  %3030 = shl nsw i64 %3029, 3
  %3031 = add i64 %3030, %3024
  %3032 = add i64 %2963, 59
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i64*
  %3034 = load i64, i64* %3033, align 8
  store i64 %3034, i64* %RCX.i1876, align 8
  %3035 = add i64 %3034, 2
  %3036 = add i64 %2963, 63
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i16*
  %3038 = load i16, i16* %3037, align 2
  %3039 = sext i16 %3038 to i64
  %3040 = and i64 %3039, 4294967295
  store i64 %3040, i64* %RSI.i248, align 8
  %3041 = sext i16 %3038 to i32
  %3042 = zext i32 %3041 to i64
  %3043 = sext i16 %3008 to i32
  %3044 = sub nsw i32 %3043, %3041
  %3045 = zext i32 %3044 to i64
  store i64 %3045, i64* %RDX.i1862, align 8
  %3046 = icmp ult i16 %3008, %3038
  %3047 = zext i1 %3046 to i8
  store i8 %3047, i8* %14, align 1
  %3048 = and i32 %3044, 255
  %3049 = tail call i32 @llvm.ctpop.i32(i32 %3048)
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  %3052 = xor i8 %3051, 1
  store i8 %3052, i8* %21, align 1
  %3053 = xor i64 %3042, %3009
  %3054 = trunc i64 %3053 to i32
  %3055 = xor i32 %3054, %3044
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %27, align 1
  %3059 = icmp eq i32 %3044, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %30, align 1
  %3061 = lshr i32 %3044, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %33, align 1
  %3063 = lshr i32 %3043, 31
  %3064 = lshr i32 %3041, 31
  %3065 = xor i32 %3064, %3063
  %3066 = xor i32 %3061, %3063
  %3067 = add nuw nsw i32 %3066, %3065
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %39, align 1
  store i64 %3045, i64* %RDI.i190, align 8
  %3070 = load i64, i64* %RBP.i, align 8
  %3071 = add i64 %3070, -296
  %3072 = load i32, i32* %EAX.i1921, align 4
  %3073 = add i64 %2963, 73
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3071 to i32*
  store i32 %3072, i32* %3074, align 4
  %3075 = load i64, i64* %3, align 8
  %3076 = add i64 %3075, -233154
  %3077 = add i64 %3075, 5
  %3078 = load i64, i64* %6, align 8
  %3079 = add i64 %3078, -8
  %3080 = inttoptr i64 %3079 to i64*
  store i64 %3077, i64* %3080, align 8
  store i64 %3079, i64* %6, align 8
  store i64 %3076, i64* %3, align 8
  %3081 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2961)
  %3082 = load i32, i32* %EAX.i1921, align 4
  %3083 = load i64, i64* %RBP.i, align 8
  %3084 = add i64 %3083, -32
  %3085 = load i64, i64* %3, align 8
  %3086 = add i64 %3085, 3
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3084 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = sub i32 %3082, %3088
  %3090 = lshr i32 %3089, 31
  %3091 = lshr i32 %3082, 31
  %3092 = lshr i32 %3088, 31
  %3093 = xor i32 %3092, %3091
  %3094 = xor i32 %3090, %3091
  %3095 = add nuw nsw i32 %3094, %3093
  %3096 = icmp eq i32 %3095, 2
  %3097 = icmp ne i32 %3090, 0
  %3098 = xor i1 %3096, %3097
  %3099 = xor i1 %3098, true
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %3101 = zext i1 %3099 to i32
  %3102 = tail call i32 @llvm.ctpop.i32(i32 %3101)
  %3103 = trunc i32 %3102 to i8
  %3104 = xor i8 %3103, 1
  store i8 %3104, i8* %21, align 1
  %3105 = zext i1 %3098 to i8
  store i8 %3105, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3106 = zext i1 %3099 to i64
  store i64 %3106, i64* %RAX.i1926, align 8
  %3107 = add i64 %3083, -296
  %3108 = add i64 %3085, 21
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = zext i1 %3099 to i32
  %3112 = or i32 %3111, %3110
  %3113 = zext i32 %3112 to i64
  store i64 %3113, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %3114 = and i32 %3112, 255
  %3115 = tail call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  store i8 %3118, i8* %21, align 1
  %3119 = icmp eq i32 %3112, 0
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %30, align 1
  %3121 = lshr i32 %3110, 31
  %3122 = trunc i32 %3121 to i8
  store i8 %3122, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3123 = add i64 %3083, -80
  %3124 = add i64 %3085, 27
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i64*
  %3126 = load i64, i64* %3125, align 8
  store i64 %3126, i64* %RCX.i1876, align 8
  %3127 = add i64 %3083, -48
  %3128 = add i64 %3085, 31
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = sext i32 %3130 to i64
  store i64 %3131, i64* %R9.i1826, align 8
  %3132 = shl nsw i64 %3131, 3
  %3133 = add i64 %3132, %3126
  %3134 = add i64 %3085, 35
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3133 to i64*
  %3136 = load i64, i64* %3135, align 8
  store i64 %3136, i64* %RCX.i1876, align 8
  %3137 = load i64, i64* %RBP.i, align 8
  %3138 = add i64 %3137, -56
  %3139 = add i64 %3085, 39
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3141 to i64
  store i64 %3142, i64* %R9.i1826, align 8
  %3143 = shl nsw i64 %3142, 3
  %3144 = add i64 %3143, %3136
  %3145 = add i64 %3085, 43
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3144 to i64*
  %3147 = load i64, i64* %3146, align 8
  store i64 %3147, i64* %RCX.i1876, align 8
  %3148 = add i64 %3085, 46
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i16*
  %3150 = load i16, i16* %3149, align 2
  %3151 = sext i16 %3150 to i64
  %3152 = and i64 %3151, 4294967295
  store i64 %3152, i64* %RAX.i1926, align 8
  %3153 = add i64 %3137, -72
  %3154 = add i64 %3085, 50
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i64*
  %3156 = load i64, i64* %3155, align 8
  store i64 %3156, i64* %RCX.i1876, align 8
  %3157 = add i64 %3137, -52
  %3158 = add i64 %3085, 54
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = sext i32 %3160 to i64
  store i64 %3161, i64* %R9.i1826, align 8
  %3162 = shl nsw i64 %3161, 3
  %3163 = add i64 %3162, %3156
  %3164 = add i64 %3085, 58
  store i64 %3164, i64* %3, align 8
  %3165 = inttoptr i64 %3163 to i64*
  %3166 = load i64, i64* %3165, align 8
  store i64 %3166, i64* %RCX.i1876, align 8
  %3167 = add i64 %3137, -60
  %3168 = add i64 %3085, 62
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i32*
  %3170 = load i32, i32* %3169, align 4
  %3171 = sext i32 %3170 to i64
  store i64 %3171, i64* %R9.i1826, align 8
  %3172 = shl nsw i64 %3171, 3
  %3173 = add i64 %3172, %3166
  %3174 = add i64 %3085, 66
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i64*
  %3176 = load i64, i64* %3175, align 8
  store i64 %3176, i64* %RCX.i1876, align 8
  %3177 = add i64 %3085, 69
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i16*
  %3179 = load i16, i16* %3178, align 2
  %3180 = sext i16 %3179 to i64
  %3181 = and i64 %3180, 4294967295
  store i64 %3181, i64* %RSI.i248, align 8
  %3182 = sext i16 %3179 to i32
  %3183 = zext i32 %3182 to i64
  %3184 = sext i16 %3150 to i32
  %3185 = sub nsw i32 %3184, %3182
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RAX.i1926, align 8
  %3187 = icmp ult i16 %3150, %3179
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %14, align 1
  %3189 = and i32 %3185, 255
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189)
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  store i8 %3193, i8* %21, align 1
  %3194 = xor i64 %3183, %3151
  %3195 = trunc i64 %3194 to i32
  %3196 = xor i32 %3195, %3185
  %3197 = lshr i32 %3196, 4
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  store i8 %3199, i8* %27, align 1
  %3200 = icmp eq i32 %3185, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %30, align 1
  %3202 = lshr i32 %3185, 31
  %3203 = trunc i32 %3202 to i8
  store i8 %3203, i8* %33, align 1
  %3204 = lshr i32 %3184, 31
  %3205 = lshr i32 %3182, 31
  %3206 = xor i32 %3205, %3204
  %3207 = xor i32 %3202, %3204
  %3208 = add nuw nsw i32 %3207, %3206
  %3209 = icmp eq i32 %3208, 2
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %39, align 1
  store i64 %3186, i64* %RDI.i190, align 8
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -300
  %3213 = load i32, i32* %EDX.i320, align 4
  %3214 = add i64 %3085, 79
  store i64 %3214, i64* %3, align 8
  %3215 = inttoptr i64 %3212 to i32*
  store i32 %3213, i32* %3215, align 4
  %3216 = load i64, i64* %3, align 8
  %3217 = add i64 %3216, -233238
  %3218 = add i64 %3216, 5
  %3219 = load i64, i64* %6, align 8
  %3220 = add i64 %3219, -8
  %3221 = inttoptr i64 %3220 to i64*
  store i64 %3218, i64* %3221, align 8
  store i64 %3220, i64* %6, align 8
  store i64 %3217, i64* %3, align 8
  %3222 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3081)
  %3223 = load i32, i32* %EAX.i1921, align 4
  %3224 = load i64, i64* %3, align 8
  %3225 = add i32 %3223, -4
  %3226 = lshr i32 %3225, 31
  %3227 = lshr i32 %3223, 31
  %3228 = xor i32 %3226, %3227
  %3229 = add nuw nsw i32 %3228, %3227
  %3230 = icmp eq i32 %3229, 2
  %3231 = icmp ne i32 %3226, 0
  %3232 = xor i1 %3230, %3231
  %3233 = xor i1 %3232, true
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %3235 = zext i1 %3233 to i32
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235)
  %3237 = trunc i32 %3236 to i8
  %3238 = xor i8 %3237, 1
  store i8 %3238, i8* %21, align 1
  %3239 = zext i1 %3232 to i8
  store i8 %3239, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3240 = zext i1 %3233 to i64
  store i64 %3240, i64* %RAX.i1926, align 8
  %3241 = load i64, i64* %RBP.i, align 8
  %3242 = add i64 %3241, -300
  %3243 = add i64 %3224, 21
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to i32*
  %3245 = load i32, i32* %3244, align 4
  %3246 = zext i1 %3233 to i32
  %3247 = or i32 %3246, %3245
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %3249 = and i32 %3247, 255
  %3250 = tail call i32 @llvm.ctpop.i32(i32 %3249)
  %3251 = trunc i32 %3250 to i8
  %3252 = and i8 %3251, 1
  %3253 = xor i8 %3252, 1
  store i8 %3253, i8* %21, align 1
  %3254 = icmp eq i32 %3247, 0
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %30, align 1
  %3256 = lshr i32 %3245, 31
  %3257 = trunc i32 %3256 to i8
  store i8 %3257, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3258 = add i64 %3241, -80
  %3259 = add i64 %3224, 27
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i64*
  %3261 = load i64, i64* %3260, align 8
  store i64 %3261, i64* %RCX.i1876, align 8
  %3262 = add i64 %3241, -48
  %3263 = add i64 %3224, 31
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = sext i32 %3265 to i64
  store i64 %3266, i64* %R9.i1826, align 8
  %3267 = shl nsw i64 %3266, 3
  %3268 = add i64 %3267, %3261
  %3269 = add i64 %3224, 35
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RCX.i1876, align 8
  %3272 = add i64 %3241, -56
  %3273 = add i64 %3224, 39
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %R9.i1826, align 8
  %3277 = shl nsw i64 %3276, 3
  %3278 = add i64 %3277, %3271
  %3279 = add i64 %3224, 43
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i64*
  %3281 = load i64, i64* %3280, align 8
  store i64 %3281, i64* %RCX.i1876, align 8
  %3282 = add i64 %3281, 2
  %3283 = add i64 %3224, 47
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i16*
  %3285 = load i16, i16* %3284, align 2
  %3286 = sext i16 %3285 to i64
  %3287 = and i64 %3286, 4294967295
  store i64 %3287, i64* %RAX.i1926, align 8
  %3288 = add i64 %3241, -72
  %3289 = add i64 %3224, 51
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3288 to i64*
  %3291 = load i64, i64* %3290, align 8
  store i64 %3291, i64* %RCX.i1876, align 8
  %3292 = add i64 %3241, -52
  %3293 = add i64 %3224, 55
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i32*
  %3295 = load i32, i32* %3294, align 4
  %3296 = sext i32 %3295 to i64
  store i64 %3296, i64* %R9.i1826, align 8
  %3297 = shl nsw i64 %3296, 3
  %3298 = add i64 %3297, %3291
  %3299 = add i64 %3224, 59
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3298 to i64*
  %3301 = load i64, i64* %3300, align 8
  store i64 %3301, i64* %RCX.i1876, align 8
  %3302 = add i64 %3241, -60
  %3303 = add i64 %3224, 63
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = sext i32 %3305 to i64
  store i64 %3306, i64* %R9.i1826, align 8
  %3307 = shl nsw i64 %3306, 3
  %3308 = add i64 %3307, %3301
  %3309 = add i64 %3224, 67
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i64*
  %3311 = load i64, i64* %3310, align 8
  store i64 %3311, i64* %RCX.i1876, align 8
  %3312 = add i64 %3311, 2
  %3313 = add i64 %3224, 71
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to i16*
  %3315 = load i16, i16* %3314, align 2
  %3316 = sext i16 %3315 to i64
  %3317 = and i64 %3316, 4294967295
  store i64 %3317, i64* %RSI.i248, align 8
  %3318 = sext i16 %3315 to i32
  %3319 = zext i32 %3318 to i64
  %3320 = sext i16 %3285 to i32
  %3321 = sub nsw i32 %3320, %3318
  %3322 = zext i32 %3321 to i64
  store i64 %3322, i64* %RAX.i1926, align 8
  %3323 = icmp ult i16 %3285, %3315
  %3324 = zext i1 %3323 to i8
  store i8 %3324, i8* %14, align 1
  %3325 = and i32 %3321, 255
  %3326 = tail call i32 @llvm.ctpop.i32(i32 %3325)
  %3327 = trunc i32 %3326 to i8
  %3328 = and i8 %3327, 1
  %3329 = xor i8 %3328, 1
  store i8 %3329, i8* %21, align 1
  %3330 = xor i64 %3319, %3286
  %3331 = trunc i64 %3330 to i32
  %3332 = xor i32 %3331, %3321
  %3333 = lshr i32 %3332, 4
  %3334 = trunc i32 %3333 to i8
  %3335 = and i8 %3334, 1
  store i8 %3335, i8* %27, align 1
  %3336 = icmp eq i32 %3321, 0
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %30, align 1
  %3338 = lshr i32 %3321, 31
  %3339 = trunc i32 %3338 to i8
  store i8 %3339, i8* %33, align 1
  %3340 = lshr i32 %3320, 31
  %3341 = lshr i32 %3318, 31
  %3342 = xor i32 %3341, %3340
  %3343 = xor i32 %3338, %3340
  %3344 = add nuw nsw i32 %3343, %3342
  %3345 = icmp eq i32 %3344, 2
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %39, align 1
  store i64 %3322, i64* %RDI.i190, align 8
  %3347 = load i64, i64* %RBP.i, align 8
  %3348 = add i64 %3347, -304
  %3349 = load i32, i32* %EDX.i320, align 4
  %3350 = add i64 %3224, 81
  store i64 %3350, i64* %3, align 8
  %3351 = inttoptr i64 %3348 to i32*
  store i32 %3349, i32* %3351, align 4
  %3352 = load i64, i64* %3, align 8
  %3353 = add i64 %3352, -233324
  %3354 = add i64 %3352, 5
  %3355 = load i64, i64* %6, align 8
  %3356 = add i64 %3355, -8
  %3357 = inttoptr i64 %3356 to i64*
  store i64 %3354, i64* %3357, align 8
  store i64 %3356, i64* %6, align 8
  store i64 %3353, i64* %3, align 8
  %3358 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3222)
  %3359 = load i32, i32* %EAX.i1921, align 4
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -32
  %3362 = load i64, i64* %3, align 8
  %3363 = add i64 %3362, 3
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3361 to i32*
  %3365 = load i32, i32* %3364, align 4
  %3366 = sub i32 %3359, %3365
  %3367 = lshr i32 %3366, 31
  %3368 = lshr i32 %3359, 31
  %3369 = lshr i32 %3365, 31
  %3370 = xor i32 %3369, %3368
  %3371 = xor i32 %3367, %3368
  %3372 = add nuw nsw i32 %3371, %3370
  %3373 = icmp eq i32 %3372, 2
  %3374 = icmp ne i32 %3367, 0
  %3375 = xor i1 %3373, %3374
  %3376 = xor i1 %3375, true
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %3378 = zext i1 %3376 to i32
  %3379 = tail call i32 @llvm.ctpop.i32(i32 %3378)
  %3380 = trunc i32 %3379 to i8
  %3381 = xor i8 %3380, 1
  store i8 %3381, i8* %21, align 1
  %3382 = zext i1 %3375 to i8
  store i8 %3382, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3383 = zext i1 %3376 to i64
  store i64 %3383, i64* %RAX.i1926, align 8
  %3384 = add i64 %3360, -304
  %3385 = add i64 %3362, 21
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to i32*
  %3387 = load i32, i32* %3386, align 4
  %3388 = zext i1 %3376 to i32
  %3389 = or i32 %3388, %3387
  %3390 = zext i32 %3389 to i64
  store i64 %3390, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %3391 = and i32 %3389, 255
  %3392 = tail call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  store i8 %3395, i8* %21, align 1
  %3396 = icmp eq i32 %3389, 0
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %30, align 1
  %3398 = lshr i32 %3387, 31
  %3399 = trunc i32 %3398 to i8
  store i8 %3399, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3400 = trunc i32 %3389 to i8
  store i8 %3400, i8* %R8B.i501, align 1
  %3401 = add i64 %3360, -8
  %3402 = add i64 %3362, 30
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i64*
  %3404 = load i64, i64* %3403, align 8
  store i64 %3404, i64* %RCX.i1876, align 8
  %3405 = load i64, i64* %RBP.i, align 8
  %3406 = add i64 %3405, -44
  %3407 = add i64 %3362, 34
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i32*
  %3409 = load i32, i32* %3408, align 4
  %3410 = sext i32 %3409 to i64
  store i64 %3410, i64* %R9.i1826, align 8
  %3411 = add i64 %3404, %3410
  %3412 = add i64 %3362, 38
  store i64 %3412, i64* %3, align 8
  %3413 = inttoptr i64 %3411 to i8*
  store i8 %3400, i8* %3413, align 1
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_439f97

block_.L_439f97:                                  ; preds = %block_.L_439e42, %block_439ce8
  %3414 = phi i64 [ %.pre65, %block_.L_439e42 ], [ %2897, %block_439ce8 ]
  %MEMORY.24 = phi %struct.Memory* [ %3358, %block_.L_439e42 ], [ %2840, %block_439ce8 ]
  %3415 = add i64 %3414, 716
  store i64 %3415, i64* %3, align 8
  br label %block_.L_43a263

block_.L_439f9c:                                  ; preds = %block_.L_439cb4
  %3416 = add i64 %2289, -72
  %3417 = add i64 %2324, 4
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i64*
  %3419 = load i64, i64* %3418, align 8
  store i64 %3419, i64* %RAX.i1926, align 8
  %3420 = add i64 %2289, -48
  %3421 = add i64 %2324, 8
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = sext i32 %3423 to i64
  store i64 %3424, i64* %RCX.i1876, align 8
  %3425 = shl nsw i64 %3424, 3
  %3426 = add i64 %3425, %3419
  %3427 = add i64 %2324, 12
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i64*
  %3429 = load i64, i64* %3428, align 8
  store i64 %3429, i64* %RAX.i1926, align 8
  %3430 = add i64 %2289, -56
  %3431 = add i64 %2324, 16
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3430 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = sext i32 %3433 to i64
  store i64 %3434, i64* %RCX.i1876, align 8
  %3435 = shl nsw i64 %3434, 3
  %3436 = add i64 %3435, %3429
  %3437 = add i64 %2324, 20
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i64*
  %3439 = load i64, i64* %3438, align 8
  store i64 %3439, i64* %RAX.i1926, align 8
  %3440 = add i64 %2324, 23
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i16*
  %3442 = load i16, i16* %3441, align 2
  %3443 = sext i16 %3442 to i64
  %3444 = and i64 %3443, 4294967295
  store i64 %3444, i64* %RDX.i1862, align 8
  %3445 = add i64 %2324, 27
  store i64 %3445, i64* %3, align 8
  %3446 = load i64, i64* %3418, align 8
  store i64 %3446, i64* %RAX.i1926, align 8
  %3447 = add i64 %2289, -52
  %3448 = add i64 %2324, 31
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = sext i32 %3450 to i64
  store i64 %3451, i64* %RCX.i1876, align 8
  %3452 = shl nsw i64 %3451, 3
  %3453 = add i64 %3452, %3446
  %3454 = add i64 %2324, 35
  store i64 %3454, i64* %3, align 8
  %3455 = inttoptr i64 %3453 to i64*
  %3456 = load i64, i64* %3455, align 8
  store i64 %3456, i64* %RAX.i1926, align 8
  %3457 = add i64 %2289, -60
  %3458 = add i64 %2324, 39
  store i64 %3458, i64* %3, align 8
  %3459 = inttoptr i64 %3457 to i32*
  %3460 = load i32, i32* %3459, align 4
  %3461 = sext i32 %3460 to i64
  store i64 %3461, i64* %RCX.i1876, align 8
  %3462 = shl nsw i64 %3461, 3
  %3463 = add i64 %3462, %3456
  %3464 = add i64 %2324, 43
  store i64 %3464, i64* %3, align 8
  %3465 = inttoptr i64 %3463 to i64*
  %3466 = load i64, i64* %3465, align 8
  store i64 %3466, i64* %RAX.i1926, align 8
  %3467 = add i64 %2324, 46
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i16*
  %3469 = load i16, i16* %3468, align 2
  %3470 = sext i16 %3469 to i64
  %3471 = and i64 %3470, 4294967295
  store i64 %3471, i64* %RSI.i248, align 8
  %3472 = sext i16 %3469 to i32
  %3473 = zext i32 %3472 to i64
  %3474 = sext i16 %3442 to i32
  %3475 = sub nsw i32 %3474, %3472
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RDX.i1862, align 8
  %3477 = icmp ult i16 %3442, %3469
  %3478 = zext i1 %3477 to i8
  store i8 %3478, i8* %14, align 1
  %3479 = and i32 %3475, 255
  %3480 = tail call i32 @llvm.ctpop.i32(i32 %3479)
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  %3483 = xor i8 %3482, 1
  store i8 %3483, i8* %21, align 1
  %3484 = xor i64 %3473, %3443
  %3485 = trunc i64 %3484 to i32
  %3486 = xor i32 %3485, %3475
  %3487 = lshr i32 %3486, 4
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  store i8 %3489, i8* %27, align 1
  %3490 = icmp eq i32 %3475, 0
  %3491 = zext i1 %3490 to i8
  store i8 %3491, i8* %30, align 1
  %3492 = lshr i32 %3475, 31
  %3493 = trunc i32 %3492 to i8
  store i8 %3493, i8* %33, align 1
  %3494 = lshr i32 %3474, 31
  %3495 = lshr i32 %3472, 31
  %3496 = xor i32 %3495, %3494
  %3497 = xor i32 %3492, %3494
  %3498 = add nuw nsw i32 %3497, %3496
  %3499 = icmp eq i32 %3498, 2
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %39, align 1
  store i64 %3476, i64* %RDI.i190, align 8
  %3501 = add i64 %2324, -233372
  %3502 = add i64 %2324, 55
  %3503 = load i64, i64* %6, align 8
  %3504 = add i64 %3503, -8
  %3505 = inttoptr i64 %3504 to i64*
  store i64 %3502, i64* %3505, align 8
  store i64 %3504, i64* %6, align 8
  store i64 %3501, i64* %3, align 8
  %3506 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.0)
  %3507 = load i32, i32* %EAX.i1921, align 4
  %3508 = load i64, i64* %3, align 8
  %3509 = add i32 %3507, -4
  %3510 = lshr i32 %3509, 31
  %3511 = lshr i32 %3507, 31
  %3512 = xor i32 %3510, %3511
  %3513 = add nuw nsw i32 %3512, %3511
  %3514 = icmp eq i32 %3513, 2
  %3515 = icmp ne i32 %3510, 0
  %3516 = xor i1 %3515, %3514
  %3517 = xor i1 %3516, true
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %3519 = zext i1 %3517 to i32
  %3520 = tail call i32 @llvm.ctpop.i32(i32 %3519)
  %3521 = trunc i32 %3520 to i8
  %3522 = xor i8 %3521, 1
  store i8 %3522, i8* %21, align 1
  %3523 = zext i1 %3516 to i8
  store i8 %3523, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3524 = zext i1 %3517 to i64
  store i64 %3524, i64* %RAX.i1926, align 8
  %3525 = load i64, i64* %RBP.i, align 8
  %3526 = add i64 %3525, -72
  %3527 = add i64 %3508, 19
  store i64 %3527, i64* %3, align 8
  %3528 = inttoptr i64 %3526 to i64*
  %3529 = load i64, i64* %3528, align 8
  store i64 %3529, i64* %RCX.i1876, align 8
  %3530 = add i64 %3525, -48
  %3531 = add i64 %3508, 23
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3530 to i32*
  %3533 = load i32, i32* %3532, align 4
  %3534 = sext i32 %3533 to i64
  store i64 %3534, i64* %R9.i1826, align 8
  %3535 = shl nsw i64 %3534, 3
  %3536 = add i64 %3535, %3529
  %3537 = add i64 %3508, 27
  store i64 %3537, i64* %3, align 8
  %3538 = inttoptr i64 %3536 to i64*
  %3539 = load i64, i64* %3538, align 8
  store i64 %3539, i64* %RCX.i1876, align 8
  %3540 = add i64 %3525, -56
  %3541 = add i64 %3508, 31
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = sext i32 %3543 to i64
  store i64 %3544, i64* %R9.i1826, align 8
  %3545 = shl nsw i64 %3544, 3
  %3546 = add i64 %3545, %3539
  %3547 = add i64 %3508, 35
  store i64 %3547, i64* %3, align 8
  %3548 = inttoptr i64 %3546 to i64*
  %3549 = load i64, i64* %3548, align 8
  store i64 %3549, i64* %RCX.i1876, align 8
  %3550 = add i64 %3549, 2
  %3551 = add i64 %3508, 39
  store i64 %3551, i64* %3, align 8
  %3552 = inttoptr i64 %3550 to i16*
  %3553 = load i16, i16* %3552, align 2
  %3554 = sext i16 %3553 to i64
  %3555 = and i64 %3554, 4294967295
  store i64 %3555, i64* %RDX.i1862, align 8
  %3556 = add i64 %3508, 43
  store i64 %3556, i64* %3, align 8
  %3557 = load i64, i64* %3528, align 8
  store i64 %3557, i64* %RCX.i1876, align 8
  %3558 = add i64 %3525, -52
  %3559 = add i64 %3508, 47
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  %3561 = load i32, i32* %3560, align 4
  %3562 = sext i32 %3561 to i64
  store i64 %3562, i64* %R9.i1826, align 8
  %3563 = shl nsw i64 %3562, 3
  %3564 = add i64 %3563, %3557
  %3565 = add i64 %3508, 51
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i64*
  %3567 = load i64, i64* %3566, align 8
  store i64 %3567, i64* %RCX.i1876, align 8
  %3568 = add i64 %3525, -60
  %3569 = add i64 %3508, 55
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i32*
  %3571 = load i32, i32* %3570, align 4
  %3572 = sext i32 %3571 to i64
  store i64 %3572, i64* %R9.i1826, align 8
  %3573 = shl nsw i64 %3572, 3
  %3574 = add i64 %3573, %3567
  %3575 = add i64 %3508, 59
  store i64 %3575, i64* %3, align 8
  %3576 = inttoptr i64 %3574 to i64*
  %3577 = load i64, i64* %3576, align 8
  store i64 %3577, i64* %RCX.i1876, align 8
  %3578 = add i64 %3577, 2
  %3579 = add i64 %3508, 63
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i16*
  %3581 = load i16, i16* %3580, align 2
  %3582 = sext i16 %3581 to i64
  %3583 = and i64 %3582, 4294967295
  store i64 %3583, i64* %RSI.i248, align 8
  %3584 = sext i16 %3581 to i32
  %3585 = zext i32 %3584 to i64
  %3586 = sext i16 %3553 to i32
  %3587 = sub nsw i32 %3586, %3584
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RDX.i1862, align 8
  %3589 = icmp ult i16 %3553, %3581
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %14, align 1
  %3591 = and i32 %3587, 255
  %3592 = tail call i32 @llvm.ctpop.i32(i32 %3591)
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  %3595 = xor i8 %3594, 1
  store i8 %3595, i8* %21, align 1
  %3596 = xor i64 %3585, %3554
  %3597 = trunc i64 %3596 to i32
  %3598 = xor i32 %3597, %3587
  %3599 = lshr i32 %3598, 4
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  store i8 %3601, i8* %27, align 1
  %3602 = icmp eq i32 %3587, 0
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %30, align 1
  %3604 = lshr i32 %3587, 31
  %3605 = trunc i32 %3604 to i8
  store i8 %3605, i8* %33, align 1
  %3606 = lshr i32 %3586, 31
  %3607 = lshr i32 %3584, 31
  %3608 = xor i32 %3607, %3606
  %3609 = xor i32 %3604, %3606
  %3610 = add nuw nsw i32 %3609, %3608
  %3611 = icmp eq i32 %3610, 2
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %39, align 1
  store i64 %3588, i64* %RDI.i190, align 8
  %3613 = load i64, i64* %RBP.i, align 8
  %3614 = add i64 %3613, -308
  %3615 = load i32, i32* %EAX.i1921, align 4
  %3616 = add i64 %3508, 73
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3614 to i32*
  store i32 %3615, i32* %3617, align 4
  %3618 = load i64, i64* %3, align 8
  %3619 = add i64 %3618, -233500
  %3620 = add i64 %3618, 5
  %3621 = load i64, i64* %6, align 8
  %3622 = add i64 %3621, -8
  %3623 = inttoptr i64 %3622 to i64*
  store i64 %3620, i64* %3623, align 8
  store i64 %3622, i64* %6, align 8
  store i64 %3619, i64* %3, align 8
  %3624 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3506)
  %3625 = load i32, i32* %EAX.i1921, align 4
  %3626 = load i64, i64* %RBP.i, align 8
  %3627 = add i64 %3626, -32
  %3628 = load i64, i64* %3, align 8
  %3629 = add i64 %3628, 3
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3627 to i32*
  %3631 = load i32, i32* %3630, align 4
  %3632 = sub i32 %3625, %3631
  %3633 = lshr i32 %3632, 31
  %3634 = lshr i32 %3625, 31
  %3635 = lshr i32 %3631, 31
  %3636 = xor i32 %3635, %3634
  %3637 = xor i32 %3633, %3634
  %3638 = add nuw nsw i32 %3637, %3636
  %3639 = icmp eq i32 %3638, 2
  %3640 = icmp ne i32 %3633, 0
  %3641 = xor i1 %3639, %3640
  %3642 = xor i1 %3641, true
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %3644 = zext i1 %3642 to i32
  %3645 = tail call i32 @llvm.ctpop.i32(i32 %3644)
  %3646 = trunc i32 %3645 to i8
  %3647 = xor i8 %3646, 1
  store i8 %3647, i8* %21, align 1
  %3648 = zext i1 %3641 to i8
  store i8 %3648, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3649 = zext i1 %3642 to i64
  store i64 %3649, i64* %RAX.i1926, align 8
  %3650 = add i64 %3626, -308
  %3651 = add i64 %3628, 21
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = zext i1 %3642 to i32
  %3655 = or i32 %3654, %3653
  %3656 = zext i32 %3655 to i64
  store i64 %3656, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %3657 = and i32 %3655, 255
  %3658 = tail call i32 @llvm.ctpop.i32(i32 %3657)
  %3659 = trunc i32 %3658 to i8
  %3660 = and i8 %3659, 1
  %3661 = xor i8 %3660, 1
  store i8 %3661, i8* %21, align 1
  %3662 = icmp eq i32 %3655, 0
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %30, align 1
  %3664 = lshr i32 %3653, 31
  %3665 = trunc i32 %3664 to i8
  store i8 %3665, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3666 = add i64 %3626, -80
  %3667 = add i64 %3628, 27
  store i64 %3667, i64* %3, align 8
  %3668 = inttoptr i64 %3666 to i64*
  %3669 = load i64, i64* %3668, align 8
  store i64 %3669, i64* %RCX.i1876, align 8
  %3670 = add i64 %3626, -48
  %3671 = add i64 %3628, 31
  store i64 %3671, i64* %3, align 8
  %3672 = inttoptr i64 %3670 to i32*
  %3673 = load i32, i32* %3672, align 4
  %3674 = sext i32 %3673 to i64
  store i64 %3674, i64* %R9.i1826, align 8
  %3675 = shl nsw i64 %3674, 3
  %3676 = add i64 %3675, %3669
  %3677 = add i64 %3628, 35
  store i64 %3677, i64* %3, align 8
  %3678 = inttoptr i64 %3676 to i64*
  %3679 = load i64, i64* %3678, align 8
  store i64 %3679, i64* %RCX.i1876, align 8
  %3680 = load i64, i64* %RBP.i, align 8
  %3681 = add i64 %3680, -56
  %3682 = add i64 %3628, 39
  store i64 %3682, i64* %3, align 8
  %3683 = inttoptr i64 %3681 to i32*
  %3684 = load i32, i32* %3683, align 4
  %3685 = sext i32 %3684 to i64
  store i64 %3685, i64* %R9.i1826, align 8
  %3686 = shl nsw i64 %3685, 3
  %3687 = add i64 %3686, %3679
  %3688 = add i64 %3628, 43
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i64*
  %3690 = load i64, i64* %3689, align 8
  store i64 %3690, i64* %RCX.i1876, align 8
  %3691 = add i64 %3628, 46
  store i64 %3691, i64* %3, align 8
  %3692 = inttoptr i64 %3690 to i16*
  %3693 = load i16, i16* %3692, align 2
  %3694 = sext i16 %3693 to i64
  %3695 = and i64 %3694, 4294967295
  store i64 %3695, i64* %RAX.i1926, align 8
  %3696 = add i64 %3680, -80
  %3697 = add i64 %3628, 50
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i64*
  %3699 = load i64, i64* %3698, align 8
  store i64 %3699, i64* %RCX.i1876, align 8
  %3700 = add i64 %3680, -52
  %3701 = add i64 %3628, 54
  store i64 %3701, i64* %3, align 8
  %3702 = inttoptr i64 %3700 to i32*
  %3703 = load i32, i32* %3702, align 4
  %3704 = sext i32 %3703 to i64
  store i64 %3704, i64* %R9.i1826, align 8
  %3705 = shl nsw i64 %3704, 3
  %3706 = add i64 %3705, %3699
  %3707 = add i64 %3628, 58
  store i64 %3707, i64* %3, align 8
  %3708 = inttoptr i64 %3706 to i64*
  %3709 = load i64, i64* %3708, align 8
  store i64 %3709, i64* %RCX.i1876, align 8
  %3710 = add i64 %3680, -60
  %3711 = add i64 %3628, 62
  store i64 %3711, i64* %3, align 8
  %3712 = inttoptr i64 %3710 to i32*
  %3713 = load i32, i32* %3712, align 4
  %3714 = sext i32 %3713 to i64
  store i64 %3714, i64* %R9.i1826, align 8
  %3715 = shl nsw i64 %3714, 3
  %3716 = add i64 %3715, %3709
  %3717 = add i64 %3628, 66
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i64*
  %3719 = load i64, i64* %3718, align 8
  store i64 %3719, i64* %RCX.i1876, align 8
  %3720 = add i64 %3628, 69
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i16*
  %3722 = load i16, i16* %3721, align 2
  %3723 = sext i16 %3722 to i64
  %3724 = and i64 %3723, 4294967295
  store i64 %3724, i64* %RSI.i248, align 8
  %3725 = sext i16 %3722 to i32
  %3726 = zext i32 %3725 to i64
  %3727 = sext i16 %3693 to i32
  %3728 = sub nsw i32 %3727, %3725
  %3729 = zext i32 %3728 to i64
  store i64 %3729, i64* %RAX.i1926, align 8
  %3730 = icmp ult i16 %3693, %3722
  %3731 = zext i1 %3730 to i8
  store i8 %3731, i8* %14, align 1
  %3732 = and i32 %3728, 255
  %3733 = tail call i32 @llvm.ctpop.i32(i32 %3732)
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  store i8 %3736, i8* %21, align 1
  %3737 = xor i64 %3726, %3694
  %3738 = trunc i64 %3737 to i32
  %3739 = xor i32 %3738, %3728
  %3740 = lshr i32 %3739, 4
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  store i8 %3742, i8* %27, align 1
  %3743 = icmp eq i32 %3728, 0
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %30, align 1
  %3745 = lshr i32 %3728, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %33, align 1
  %3747 = lshr i32 %3727, 31
  %3748 = lshr i32 %3725, 31
  %3749 = xor i32 %3748, %3747
  %3750 = xor i32 %3745, %3747
  %3751 = add nuw nsw i32 %3750, %3749
  %3752 = icmp eq i32 %3751, 2
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %39, align 1
  store i64 %3729, i64* %RDI.i190, align 8
  %3754 = load i64, i64* %RBP.i, align 8
  %3755 = add i64 %3754, -312
  %3756 = load i32, i32* %EDX.i320, align 4
  %3757 = add i64 %3628, 79
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3755 to i32*
  store i32 %3756, i32* %3758, align 4
  %3759 = load i64, i64* %3, align 8
  %3760 = add i64 %3759, -233584
  %3761 = add i64 %3759, 5
  %3762 = load i64, i64* %6, align 8
  %3763 = add i64 %3762, -8
  %3764 = inttoptr i64 %3763 to i64*
  store i64 %3761, i64* %3764, align 8
  store i64 %3763, i64* %6, align 8
  store i64 %3760, i64* %3, align 8
  %3765 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3624)
  %3766 = load i32, i32* %EAX.i1921, align 4
  %3767 = load i64, i64* %3, align 8
  %3768 = add i32 %3766, -4
  %3769 = lshr i32 %3768, 31
  %3770 = lshr i32 %3766, 31
  %3771 = xor i32 %3769, %3770
  %3772 = add nuw nsw i32 %3771, %3770
  %3773 = icmp eq i32 %3772, 2
  %3774 = icmp ne i32 %3769, 0
  %3775 = xor i1 %3773, %3774
  %3776 = xor i1 %3775, true
  %3777 = zext i1 %3776 to i8
  store i8 %3777, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %3778 = zext i1 %3776 to i32
  %3779 = tail call i32 @llvm.ctpop.i32(i32 %3778)
  %3780 = trunc i32 %3779 to i8
  %3781 = xor i8 %3780, 1
  store i8 %3781, i8* %21, align 1
  %3782 = zext i1 %3775 to i8
  store i8 %3782, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3783 = zext i1 %3776 to i64
  store i64 %3783, i64* %RAX.i1926, align 8
  %3784 = load i64, i64* %RBP.i, align 8
  %3785 = add i64 %3784, -312
  %3786 = add i64 %3767, 21
  store i64 %3786, i64* %3, align 8
  %3787 = inttoptr i64 %3785 to i32*
  %3788 = load i32, i32* %3787, align 4
  %3789 = zext i1 %3776 to i32
  %3790 = or i32 %3789, %3788
  %3791 = zext i32 %3790 to i64
  store i64 %3791, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %3792 = and i32 %3790, 255
  %3793 = tail call i32 @llvm.ctpop.i32(i32 %3792)
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  %3796 = xor i8 %3795, 1
  store i8 %3796, i8* %21, align 1
  %3797 = icmp eq i32 %3790, 0
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %30, align 1
  %3799 = lshr i32 %3788, 31
  %3800 = trunc i32 %3799 to i8
  store i8 %3800, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3801 = add i64 %3784, -80
  %3802 = add i64 %3767, 27
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3801 to i64*
  %3804 = load i64, i64* %3803, align 8
  store i64 %3804, i64* %RCX.i1876, align 8
  %3805 = add i64 %3784, -48
  %3806 = add i64 %3767, 31
  store i64 %3806, i64* %3, align 8
  %3807 = inttoptr i64 %3805 to i32*
  %3808 = load i32, i32* %3807, align 4
  %3809 = sext i32 %3808 to i64
  store i64 %3809, i64* %R9.i1826, align 8
  %3810 = shl nsw i64 %3809, 3
  %3811 = add i64 %3810, %3804
  %3812 = add i64 %3767, 35
  store i64 %3812, i64* %3, align 8
  %3813 = inttoptr i64 %3811 to i64*
  %3814 = load i64, i64* %3813, align 8
  store i64 %3814, i64* %RCX.i1876, align 8
  %3815 = add i64 %3784, -56
  %3816 = add i64 %3767, 39
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = sext i32 %3818 to i64
  store i64 %3819, i64* %R9.i1826, align 8
  %3820 = shl nsw i64 %3819, 3
  %3821 = add i64 %3820, %3814
  %3822 = add i64 %3767, 43
  store i64 %3822, i64* %3, align 8
  %3823 = inttoptr i64 %3821 to i64*
  %3824 = load i64, i64* %3823, align 8
  store i64 %3824, i64* %RCX.i1876, align 8
  %3825 = add i64 %3824, 2
  %3826 = add i64 %3767, 47
  store i64 %3826, i64* %3, align 8
  %3827 = inttoptr i64 %3825 to i16*
  %3828 = load i16, i16* %3827, align 2
  %3829 = sext i16 %3828 to i64
  %3830 = and i64 %3829, 4294967295
  store i64 %3830, i64* %RAX.i1926, align 8
  %3831 = add i64 %3767, 51
  store i64 %3831, i64* %3, align 8
  %3832 = load i64, i64* %3803, align 8
  store i64 %3832, i64* %RCX.i1876, align 8
  %3833 = add i64 %3784, -52
  %3834 = add i64 %3767, 55
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i32*
  %3836 = load i32, i32* %3835, align 4
  %3837 = sext i32 %3836 to i64
  store i64 %3837, i64* %R9.i1826, align 8
  %3838 = shl nsw i64 %3837, 3
  %3839 = add i64 %3838, %3832
  %3840 = add i64 %3767, 59
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i64*
  %3842 = load i64, i64* %3841, align 8
  store i64 %3842, i64* %RCX.i1876, align 8
  %3843 = add i64 %3784, -60
  %3844 = add i64 %3767, 63
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i32*
  %3846 = load i32, i32* %3845, align 4
  %3847 = sext i32 %3846 to i64
  store i64 %3847, i64* %R9.i1826, align 8
  %3848 = shl nsw i64 %3847, 3
  %3849 = add i64 %3848, %3842
  %3850 = add i64 %3767, 67
  store i64 %3850, i64* %3, align 8
  %3851 = inttoptr i64 %3849 to i64*
  %3852 = load i64, i64* %3851, align 8
  store i64 %3852, i64* %RCX.i1876, align 8
  %3853 = add i64 %3852, 2
  %3854 = add i64 %3767, 71
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3853 to i16*
  %3856 = load i16, i16* %3855, align 2
  %3857 = sext i16 %3856 to i64
  %3858 = and i64 %3857, 4294967295
  store i64 %3858, i64* %RSI.i248, align 8
  %3859 = sext i16 %3856 to i32
  %3860 = zext i32 %3859 to i64
  %3861 = sext i16 %3828 to i32
  %3862 = sub nsw i32 %3861, %3859
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RAX.i1926, align 8
  %3864 = icmp ult i16 %3828, %3856
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %14, align 1
  %3866 = and i32 %3862, 255
  %3867 = tail call i32 @llvm.ctpop.i32(i32 %3866)
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  %3870 = xor i8 %3869, 1
  store i8 %3870, i8* %21, align 1
  %3871 = xor i64 %3860, %3829
  %3872 = trunc i64 %3871 to i32
  %3873 = xor i32 %3872, %3862
  %3874 = lshr i32 %3873, 4
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  store i8 %3876, i8* %27, align 1
  %3877 = icmp eq i32 %3862, 0
  %3878 = zext i1 %3877 to i8
  store i8 %3878, i8* %30, align 1
  %3879 = lshr i32 %3862, 31
  %3880 = trunc i32 %3879 to i8
  store i8 %3880, i8* %33, align 1
  %3881 = lshr i32 %3861, 31
  %3882 = lshr i32 %3859, 31
  %3883 = xor i32 %3882, %3881
  %3884 = xor i32 %3879, %3881
  %3885 = add nuw nsw i32 %3884, %3883
  %3886 = icmp eq i32 %3885, 2
  %3887 = zext i1 %3886 to i8
  store i8 %3887, i8* %39, align 1
  store i64 %3863, i64* %RDI.i190, align 8
  %3888 = load i64, i64* %RBP.i, align 8
  %3889 = add i64 %3888, -316
  %3890 = load i32, i32* %EDX.i320, align 4
  %3891 = add i64 %3767, 81
  store i64 %3891, i64* %3, align 8
  %3892 = inttoptr i64 %3889 to i32*
  store i32 %3890, i32* %3892, align 4
  %3893 = load i64, i64* %3, align 8
  %3894 = add i64 %3893, -233670
  %3895 = add i64 %3893, 5
  %3896 = load i64, i64* %6, align 8
  %3897 = add i64 %3896, -8
  %3898 = inttoptr i64 %3897 to i64*
  store i64 %3895, i64* %3898, align 8
  store i64 %3897, i64* %6, align 8
  store i64 %3894, i64* %3, align 8
  %3899 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3765)
  %3900 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %R8B.i501, align 1
  %3901 = load i32, i32* %EAX.i1921, align 4
  %3902 = load i64, i64* %RBP.i, align 8
  %3903 = add i64 %3902, -32
  %3904 = add i64 %3900, 8
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i32*
  %3906 = load i32, i32* %3905, align 4
  %3907 = sub i32 %3901, %3906
  %3908 = lshr i32 %3907, 31
  %3909 = lshr i32 %3901, 31
  %3910 = lshr i32 %3906, 31
  %3911 = xor i32 %3910, %3909
  %3912 = xor i32 %3908, %3909
  %3913 = add nuw nsw i32 %3912, %3911
  %3914 = icmp eq i32 %3913, 2
  %3915 = icmp ne i32 %3908, 0
  %3916 = xor i1 %3914, %3915
  %3917 = xor i1 %3916, true
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %R10B.i1803, align 1
  store i8 0, i8* %14, align 1
  %3919 = zext i1 %3917 to i32
  %3920 = tail call i32 @llvm.ctpop.i32(i32 %3919)
  %3921 = trunc i32 %3920 to i8
  %3922 = xor i8 %3921, 1
  store i8 %3922, i8* %21, align 1
  %3923 = zext i1 %3916 to i8
  store i8 %3923, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3924 = zext i1 %3917 to i64
  store i64 %3924, i64* %RAX.i1926, align 8
  %3925 = add i64 %3902, -316
  %3926 = add i64 %3900, 26
  store i64 %3926, i64* %3, align 8
  %3927 = inttoptr i64 %3925 to i32*
  %3928 = load i32, i32* %3927, align 4
  %3929 = zext i1 %3917 to i32
  %3930 = or i32 %3929, %3928
  %3931 = zext i32 %3930 to i64
  store i64 %3931, i64* %RDX.i1862, align 8
  %3932 = and i32 %3930, 255
  %3933 = tail call i32 @llvm.ctpop.i32(i32 %3932)
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = xor i8 %3935, 1
  %3937 = icmp eq i32 %3930, 0
  %3938 = zext i1 %3937 to i8
  %3939 = lshr i32 %3928, 31
  %3940 = trunc i32 %3939 to i8
  store i8 0, i8* %14, align 1
  store i8 %3936, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %3938, i8* %30, align 1
  store i8 %3940, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3941 = load i64, i64* %RBP.i, align 8
  %3942 = add i64 %3941, -317
  %3943 = load i8, i8* %R8B.i501, align 1
  %3944 = add i64 %3900, 38
  store i64 %3944, i64* %3, align 8
  %3945 = inttoptr i64 %3942 to i8*
  store i8 %3943, i8* %3945, align 1
  %3946 = load i64, i64* %3, align 8
  %3947 = load i8, i8* %30, align 1
  %3948 = icmp ne i8 %3947, 0
  %.v114 = select i1 %3948, i64 346, i64 6
  %3949 = add i64 %3946, %.v114
  store i64 %3949, i64* %3, align 8
  %cmpBr_43a0f1 = icmp eq i8 %3947, 1
  br i1 %cmpBr_43a0f1, label %block_.L_43a24b, label %block_43a0f7

block_43a0f7:                                     ; preds = %block_.L_439f9c
  %3950 = load i64, i64* %RBP.i, align 8
  %3951 = add i64 %3950, -72
  %3952 = add i64 %3949, 4
  store i64 %3952, i64* %3, align 8
  %3953 = inttoptr i64 %3951 to i64*
  %3954 = load i64, i64* %3953, align 8
  store i64 %3954, i64* %RAX.i1926, align 8
  %3955 = add i64 %3950, -48
  %3956 = add i64 %3949, 8
  store i64 %3956, i64* %3, align 8
  %3957 = inttoptr i64 %3955 to i32*
  %3958 = load i32, i32* %3957, align 4
  %3959 = sext i32 %3958 to i64
  store i64 %3959, i64* %RCX.i1876, align 8
  %3960 = shl nsw i64 %3959, 3
  %3961 = add i64 %3960, %3954
  %3962 = add i64 %3949, 12
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3961 to i64*
  %3964 = load i64, i64* %3963, align 8
  store i64 %3964, i64* %RAX.i1926, align 8
  %3965 = add i64 %3950, -56
  %3966 = add i64 %3949, 16
  store i64 %3966, i64* %3, align 8
  %3967 = inttoptr i64 %3965 to i32*
  %3968 = load i32, i32* %3967, align 4
  %3969 = sext i32 %3968 to i64
  store i64 %3969, i64* %RCX.i1876, align 8
  %3970 = shl nsw i64 %3969, 3
  %3971 = add i64 %3970, %3964
  %3972 = add i64 %3949, 20
  store i64 %3972, i64* %3, align 8
  %3973 = inttoptr i64 %3971 to i64*
  %3974 = load i64, i64* %3973, align 8
  store i64 %3974, i64* %RAX.i1926, align 8
  %3975 = add i64 %3949, 23
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i16*
  %3977 = load i16, i16* %3976, align 2
  %3978 = sext i16 %3977 to i64
  %3979 = and i64 %3978, 4294967295
  store i64 %3979, i64* %RDX.i1862, align 8
  %3980 = add i64 %3950, -80
  %3981 = add i64 %3949, 27
  store i64 %3981, i64* %3, align 8
  %3982 = inttoptr i64 %3980 to i64*
  %3983 = load i64, i64* %3982, align 8
  store i64 %3983, i64* %RAX.i1926, align 8
  %3984 = add i64 %3950, -52
  %3985 = add i64 %3949, 31
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = sext i32 %3987 to i64
  store i64 %3988, i64* %RCX.i1876, align 8
  %3989 = shl nsw i64 %3988, 3
  %3990 = add i64 %3989, %3983
  %3991 = add i64 %3949, 35
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i64*
  %3993 = load i64, i64* %3992, align 8
  store i64 %3993, i64* %RAX.i1926, align 8
  %3994 = add i64 %3950, -60
  %3995 = add i64 %3949, 39
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i32*
  %3997 = load i32, i32* %3996, align 4
  %3998 = sext i32 %3997 to i64
  store i64 %3998, i64* %RCX.i1876, align 8
  %3999 = shl nsw i64 %3998, 3
  %4000 = add i64 %3999, %3993
  %4001 = add i64 %3949, 43
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i64*
  %4003 = load i64, i64* %4002, align 8
  store i64 %4003, i64* %RAX.i1926, align 8
  %4004 = add i64 %3949, 46
  store i64 %4004, i64* %3, align 8
  %4005 = inttoptr i64 %4003 to i16*
  %4006 = load i16, i16* %4005, align 2
  %4007 = sext i16 %4006 to i64
  %4008 = and i64 %4007, 4294967295
  store i64 %4008, i64* %RSI.i248, align 8
  %4009 = sext i16 %4006 to i32
  %4010 = zext i32 %4009 to i64
  %4011 = sext i16 %3977 to i32
  %4012 = sub nsw i32 %4011, %4009
  %4013 = zext i32 %4012 to i64
  store i64 %4013, i64* %RDX.i1862, align 8
  %4014 = icmp ult i16 %3977, %4006
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %14, align 1
  %4016 = and i32 %4012, 255
  %4017 = tail call i32 @llvm.ctpop.i32(i32 %4016)
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  store i8 %4020, i8* %21, align 1
  %4021 = xor i64 %4010, %3978
  %4022 = trunc i64 %4021 to i32
  %4023 = xor i32 %4022, %4012
  %4024 = lshr i32 %4023, 4
  %4025 = trunc i32 %4024 to i8
  %4026 = and i8 %4025, 1
  store i8 %4026, i8* %27, align 1
  %4027 = icmp eq i32 %4012, 0
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %30, align 1
  %4029 = lshr i32 %4012, 31
  %4030 = trunc i32 %4029 to i8
  store i8 %4030, i8* %33, align 1
  %4031 = lshr i32 %4011, 31
  %4032 = lshr i32 %4009, 31
  %4033 = xor i32 %4032, %4031
  %4034 = xor i32 %4029, %4031
  %4035 = add nuw nsw i32 %4034, %4033
  %4036 = icmp eq i32 %4035, 2
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %39, align 1
  store i64 %4013, i64* %RDI.i190, align 8
  %4038 = add i64 %3949, -233719
  %4039 = add i64 %3949, 55
  %4040 = load i64, i64* %6, align 8
  %4041 = add i64 %4040, -8
  %4042 = inttoptr i64 %4041 to i64*
  store i64 %4039, i64* %4042, align 8
  store i64 %4041, i64* %6, align 8
  store i64 %4038, i64* %3, align 8
  %4043 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3899)
  %4044 = load i32, i32* %EAX.i1921, align 4
  %4045 = load i64, i64* %3, align 8
  %4046 = add i32 %4044, -4
  %4047 = lshr i32 %4046, 31
  %4048 = lshr i32 %4044, 31
  %4049 = xor i32 %4047, %4048
  %4050 = add nuw nsw i32 %4049, %4048
  %4051 = icmp eq i32 %4050, 2
  %4052 = icmp ne i32 %4047, 0
  %4053 = xor i1 %4051, %4052
  %4054 = xor i1 %4053, true
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %4056 = zext i1 %4054 to i32
  %4057 = tail call i32 @llvm.ctpop.i32(i32 %4056)
  %4058 = trunc i32 %4057 to i8
  %4059 = xor i8 %4058, 1
  store i8 %4059, i8* %21, align 1
  %4060 = zext i1 %4053 to i8
  store i8 %4060, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4061 = zext i1 %4054 to i64
  store i64 %4061, i64* %RAX.i1926, align 8
  %4062 = load i64, i64* %RBP.i, align 8
  %4063 = add i64 %4062, -72
  %4064 = add i64 %4045, 19
  store i64 %4064, i64* %3, align 8
  %4065 = inttoptr i64 %4063 to i64*
  %4066 = load i64, i64* %4065, align 8
  store i64 %4066, i64* %RCX.i1876, align 8
  %4067 = add i64 %4062, -48
  %4068 = add i64 %4045, 23
  store i64 %4068, i64* %3, align 8
  %4069 = inttoptr i64 %4067 to i32*
  %4070 = load i32, i32* %4069, align 4
  %4071 = sext i32 %4070 to i64
  store i64 %4071, i64* %R9.i1826, align 8
  %4072 = shl nsw i64 %4071, 3
  %4073 = add i64 %4072, %4066
  %4074 = add i64 %4045, 27
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4073 to i64*
  %4076 = load i64, i64* %4075, align 8
  store i64 %4076, i64* %RCX.i1876, align 8
  %4077 = add i64 %4062, -56
  %4078 = add i64 %4045, 31
  store i64 %4078, i64* %3, align 8
  %4079 = inttoptr i64 %4077 to i32*
  %4080 = load i32, i32* %4079, align 4
  %4081 = sext i32 %4080 to i64
  store i64 %4081, i64* %R9.i1826, align 8
  %4082 = shl nsw i64 %4081, 3
  %4083 = add i64 %4082, %4076
  %4084 = add i64 %4045, 35
  store i64 %4084, i64* %3, align 8
  %4085 = inttoptr i64 %4083 to i64*
  %4086 = load i64, i64* %4085, align 8
  store i64 %4086, i64* %RCX.i1876, align 8
  %4087 = add i64 %4086, 2
  %4088 = add i64 %4045, 39
  store i64 %4088, i64* %3, align 8
  %4089 = inttoptr i64 %4087 to i16*
  %4090 = load i16, i16* %4089, align 2
  %4091 = sext i16 %4090 to i64
  %4092 = and i64 %4091, 4294967295
  store i64 %4092, i64* %RDX.i1862, align 8
  %4093 = add i64 %4062, -80
  %4094 = add i64 %4045, 43
  store i64 %4094, i64* %3, align 8
  %4095 = inttoptr i64 %4093 to i64*
  %4096 = load i64, i64* %4095, align 8
  store i64 %4096, i64* %RCX.i1876, align 8
  %4097 = add i64 %4062, -52
  %4098 = add i64 %4045, 47
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i32*
  %4100 = load i32, i32* %4099, align 4
  %4101 = sext i32 %4100 to i64
  store i64 %4101, i64* %R9.i1826, align 8
  %4102 = shl nsw i64 %4101, 3
  %4103 = add i64 %4102, %4096
  %4104 = add i64 %4045, 51
  store i64 %4104, i64* %3, align 8
  %4105 = inttoptr i64 %4103 to i64*
  %4106 = load i64, i64* %4105, align 8
  store i64 %4106, i64* %RCX.i1876, align 8
  %4107 = add i64 %4062, -60
  %4108 = add i64 %4045, 55
  store i64 %4108, i64* %3, align 8
  %4109 = inttoptr i64 %4107 to i32*
  %4110 = load i32, i32* %4109, align 4
  %4111 = sext i32 %4110 to i64
  store i64 %4111, i64* %R9.i1826, align 8
  %4112 = shl nsw i64 %4111, 3
  %4113 = add i64 %4112, %4106
  %4114 = add i64 %4045, 59
  store i64 %4114, i64* %3, align 8
  %4115 = inttoptr i64 %4113 to i64*
  %4116 = load i64, i64* %4115, align 8
  store i64 %4116, i64* %RCX.i1876, align 8
  %4117 = add i64 %4116, 2
  %4118 = add i64 %4045, 63
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i16*
  %4120 = load i16, i16* %4119, align 2
  %4121 = sext i16 %4120 to i64
  %4122 = and i64 %4121, 4294967295
  store i64 %4122, i64* %RSI.i248, align 8
  %4123 = sext i16 %4120 to i32
  %4124 = zext i32 %4123 to i64
  %4125 = sext i16 %4090 to i32
  %4126 = sub nsw i32 %4125, %4123
  %4127 = zext i32 %4126 to i64
  store i64 %4127, i64* %RDX.i1862, align 8
  %4128 = icmp ult i16 %4090, %4120
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %14, align 1
  %4130 = and i32 %4126, 255
  %4131 = tail call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  store i8 %4134, i8* %21, align 1
  %4135 = xor i64 %4124, %4091
  %4136 = trunc i64 %4135 to i32
  %4137 = xor i32 %4136, %4126
  %4138 = lshr i32 %4137, 4
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  store i8 %4140, i8* %27, align 1
  %4141 = icmp eq i32 %4126, 0
  %4142 = zext i1 %4141 to i8
  store i8 %4142, i8* %30, align 1
  %4143 = lshr i32 %4126, 31
  %4144 = trunc i32 %4143 to i8
  store i8 %4144, i8* %33, align 1
  %4145 = lshr i32 %4125, 31
  %4146 = lshr i32 %4123, 31
  %4147 = xor i32 %4146, %4145
  %4148 = xor i32 %4143, %4145
  %4149 = add nuw nsw i32 %4148, %4147
  %4150 = icmp eq i32 %4149, 2
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %39, align 1
  store i64 %4127, i64* %RDI.i190, align 8
  %4152 = load i64, i64* %RBP.i, align 8
  %4153 = add i64 %4152, -324
  %4154 = load i32, i32* %EAX.i1921, align 4
  %4155 = add i64 %4045, 73
  store i64 %4155, i64* %3, align 8
  %4156 = inttoptr i64 %4153 to i32*
  store i32 %4154, i32* %4156, align 4
  %4157 = load i64, i64* %3, align 8
  %4158 = add i64 %4157, -233847
  %4159 = add i64 %4157, 5
  %4160 = load i64, i64* %6, align 8
  %4161 = add i64 %4160, -8
  %4162 = inttoptr i64 %4161 to i64*
  store i64 %4159, i64* %4162, align 8
  store i64 %4161, i64* %6, align 8
  store i64 %4158, i64* %3, align 8
  %4163 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4043)
  %4164 = load i32, i32* %EAX.i1921, align 4
  %4165 = load i64, i64* %RBP.i, align 8
  %4166 = add i64 %4165, -32
  %4167 = load i64, i64* %3, align 8
  %4168 = add i64 %4167, 3
  store i64 %4168, i64* %3, align 8
  %4169 = inttoptr i64 %4166 to i32*
  %4170 = load i32, i32* %4169, align 4
  %4171 = sub i32 %4164, %4170
  %4172 = lshr i32 %4171, 31
  %4173 = lshr i32 %4164, 31
  %4174 = lshr i32 %4170, 31
  %4175 = xor i32 %4174, %4173
  %4176 = xor i32 %4172, %4173
  %4177 = add nuw nsw i32 %4176, %4175
  %4178 = icmp eq i32 %4177, 2
  %4179 = icmp ne i32 %4172, 0
  %4180 = xor i1 %4178, %4179
  %4181 = xor i1 %4180, true
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %4183 = zext i1 %4181 to i32
  %4184 = tail call i32 @llvm.ctpop.i32(i32 %4183)
  %4185 = trunc i32 %4184 to i8
  %4186 = xor i8 %4185, 1
  store i8 %4186, i8* %21, align 1
  %4187 = zext i1 %4180 to i8
  store i8 %4187, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4188 = zext i1 %4181 to i64
  store i64 %4188, i64* %RAX.i1926, align 8
  %4189 = add i64 %4165, -324
  %4190 = add i64 %4167, 21
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4189 to i32*
  %4192 = load i32, i32* %4191, align 4
  %4193 = zext i1 %4181 to i32
  %4194 = or i32 %4193, %4192
  %4195 = zext i32 %4194 to i64
  store i64 %4195, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %4196 = and i32 %4194, 255
  %4197 = tail call i32 @llvm.ctpop.i32(i32 %4196)
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  %4200 = xor i8 %4199, 1
  store i8 %4200, i8* %21, align 1
  %4201 = icmp eq i32 %4194, 0
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %30, align 1
  %4203 = lshr i32 %4192, 31
  %4204 = trunc i32 %4203 to i8
  store i8 %4204, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4205 = add i64 %4165, -80
  %4206 = add i64 %4167, 27
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4205 to i64*
  %4208 = load i64, i64* %4207, align 8
  store i64 %4208, i64* %RCX.i1876, align 8
  %4209 = add i64 %4165, -48
  %4210 = add i64 %4167, 31
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to i32*
  %4212 = load i32, i32* %4211, align 4
  %4213 = sext i32 %4212 to i64
  store i64 %4213, i64* %R9.i1826, align 8
  %4214 = shl nsw i64 %4213, 3
  %4215 = add i64 %4214, %4208
  %4216 = add i64 %4167, 35
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4215 to i64*
  %4218 = load i64, i64* %4217, align 8
  store i64 %4218, i64* %RCX.i1876, align 8
  %4219 = load i64, i64* %RBP.i, align 8
  %4220 = add i64 %4219, -56
  %4221 = add i64 %4167, 39
  store i64 %4221, i64* %3, align 8
  %4222 = inttoptr i64 %4220 to i32*
  %4223 = load i32, i32* %4222, align 4
  %4224 = sext i32 %4223 to i64
  store i64 %4224, i64* %R9.i1826, align 8
  %4225 = shl nsw i64 %4224, 3
  %4226 = add i64 %4225, %4218
  %4227 = add i64 %4167, 43
  store i64 %4227, i64* %3, align 8
  %4228 = inttoptr i64 %4226 to i64*
  %4229 = load i64, i64* %4228, align 8
  store i64 %4229, i64* %RCX.i1876, align 8
  %4230 = add i64 %4167, 46
  store i64 %4230, i64* %3, align 8
  %4231 = inttoptr i64 %4229 to i16*
  %4232 = load i16, i16* %4231, align 2
  %4233 = sext i16 %4232 to i64
  %4234 = and i64 %4233, 4294967295
  store i64 %4234, i64* %RAX.i1926, align 8
  %4235 = add i64 %4219, -72
  %4236 = add i64 %4167, 50
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i64*
  %4238 = load i64, i64* %4237, align 8
  store i64 %4238, i64* %RCX.i1876, align 8
  %4239 = add i64 %4219, -52
  %4240 = add i64 %4167, 54
  store i64 %4240, i64* %3, align 8
  %4241 = inttoptr i64 %4239 to i32*
  %4242 = load i32, i32* %4241, align 4
  %4243 = sext i32 %4242 to i64
  store i64 %4243, i64* %R9.i1826, align 8
  %4244 = shl nsw i64 %4243, 3
  %4245 = add i64 %4244, %4238
  %4246 = add i64 %4167, 58
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i64*
  %4248 = load i64, i64* %4247, align 8
  store i64 %4248, i64* %RCX.i1876, align 8
  %4249 = add i64 %4219, -60
  %4250 = add i64 %4167, 62
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i32*
  %4252 = load i32, i32* %4251, align 4
  %4253 = sext i32 %4252 to i64
  store i64 %4253, i64* %R9.i1826, align 8
  %4254 = shl nsw i64 %4253, 3
  %4255 = add i64 %4254, %4248
  %4256 = add i64 %4167, 66
  store i64 %4256, i64* %3, align 8
  %4257 = inttoptr i64 %4255 to i64*
  %4258 = load i64, i64* %4257, align 8
  store i64 %4258, i64* %RCX.i1876, align 8
  %4259 = add i64 %4167, 69
  store i64 %4259, i64* %3, align 8
  %4260 = inttoptr i64 %4258 to i16*
  %4261 = load i16, i16* %4260, align 2
  %4262 = sext i16 %4261 to i64
  %4263 = and i64 %4262, 4294967295
  store i64 %4263, i64* %RSI.i248, align 8
  %4264 = sext i16 %4261 to i32
  %4265 = zext i32 %4264 to i64
  %4266 = sext i16 %4232 to i32
  %4267 = sub nsw i32 %4266, %4264
  %4268 = zext i32 %4267 to i64
  store i64 %4268, i64* %RAX.i1926, align 8
  %4269 = icmp ult i16 %4232, %4261
  %4270 = zext i1 %4269 to i8
  store i8 %4270, i8* %14, align 1
  %4271 = and i32 %4267, 255
  %4272 = tail call i32 @llvm.ctpop.i32(i32 %4271)
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  store i8 %4275, i8* %21, align 1
  %4276 = xor i64 %4265, %4233
  %4277 = trunc i64 %4276 to i32
  %4278 = xor i32 %4277, %4267
  %4279 = lshr i32 %4278, 4
  %4280 = trunc i32 %4279 to i8
  %4281 = and i8 %4280, 1
  store i8 %4281, i8* %27, align 1
  %4282 = icmp eq i32 %4267, 0
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %30, align 1
  %4284 = lshr i32 %4267, 31
  %4285 = trunc i32 %4284 to i8
  store i8 %4285, i8* %33, align 1
  %4286 = lshr i32 %4266, 31
  %4287 = lshr i32 %4264, 31
  %4288 = xor i32 %4287, %4286
  %4289 = xor i32 %4284, %4286
  %4290 = add nuw nsw i32 %4289, %4288
  %4291 = icmp eq i32 %4290, 2
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %39, align 1
  store i64 %4268, i64* %RDI.i190, align 8
  %4293 = load i64, i64* %RBP.i, align 8
  %4294 = add i64 %4293, -328
  %4295 = load i32, i32* %EDX.i320, align 4
  %4296 = add i64 %4167, 79
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4294 to i32*
  store i32 %4295, i32* %4297, align 4
  %4298 = load i64, i64* %3, align 8
  %4299 = add i64 %4298, -233931
  %4300 = add i64 %4298, 5
  %4301 = load i64, i64* %6, align 8
  %4302 = add i64 %4301, -8
  %4303 = inttoptr i64 %4302 to i64*
  store i64 %4300, i64* %4303, align 8
  store i64 %4302, i64* %6, align 8
  store i64 %4299, i64* %3, align 8
  %4304 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4163)
  %4305 = load i32, i32* %EAX.i1921, align 4
  %4306 = load i64, i64* %3, align 8
  %4307 = add i32 %4305, -4
  %4308 = lshr i32 %4307, 31
  %4309 = lshr i32 %4305, 31
  %4310 = xor i32 %4308, %4309
  %4311 = add nuw nsw i32 %4310, %4309
  %4312 = icmp eq i32 %4311, 2
  %4313 = icmp ne i32 %4308, 0
  %4314 = xor i1 %4312, %4313
  %4315 = xor i1 %4314, true
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %4317 = zext i1 %4315 to i32
  %4318 = tail call i32 @llvm.ctpop.i32(i32 %4317)
  %4319 = trunc i32 %4318 to i8
  %4320 = xor i8 %4319, 1
  store i8 %4320, i8* %21, align 1
  %4321 = zext i1 %4314 to i8
  store i8 %4321, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4322 = zext i1 %4315 to i64
  store i64 %4322, i64* %RAX.i1926, align 8
  %4323 = load i64, i64* %RBP.i, align 8
  %4324 = add i64 %4323, -328
  %4325 = add i64 %4306, 21
  store i64 %4325, i64* %3, align 8
  %4326 = inttoptr i64 %4324 to i32*
  %4327 = load i32, i32* %4326, align 4
  %4328 = zext i1 %4315 to i32
  %4329 = or i32 %4328, %4327
  %4330 = zext i32 %4329 to i64
  store i64 %4330, i64* %RDX.i1862, align 8
  store i8 0, i8* %14, align 1
  %4331 = and i32 %4329, 255
  %4332 = tail call i32 @llvm.ctpop.i32(i32 %4331)
  %4333 = trunc i32 %4332 to i8
  %4334 = and i8 %4333, 1
  %4335 = xor i8 %4334, 1
  store i8 %4335, i8* %21, align 1
  %4336 = icmp eq i32 %4329, 0
  %4337 = zext i1 %4336 to i8
  store i8 %4337, i8* %30, align 1
  %4338 = lshr i32 %4327, 31
  %4339 = trunc i32 %4338 to i8
  store i8 %4339, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4340 = add i64 %4323, -80
  %4341 = add i64 %4306, 27
  store i64 %4341, i64* %3, align 8
  %4342 = inttoptr i64 %4340 to i64*
  %4343 = load i64, i64* %4342, align 8
  store i64 %4343, i64* %RCX.i1876, align 8
  %4344 = add i64 %4323, -48
  %4345 = add i64 %4306, 31
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4344 to i32*
  %4347 = load i32, i32* %4346, align 4
  %4348 = sext i32 %4347 to i64
  store i64 %4348, i64* %R9.i1826, align 8
  %4349 = shl nsw i64 %4348, 3
  %4350 = add i64 %4349, %4343
  %4351 = add i64 %4306, 35
  store i64 %4351, i64* %3, align 8
  %4352 = inttoptr i64 %4350 to i64*
  %4353 = load i64, i64* %4352, align 8
  store i64 %4353, i64* %RCX.i1876, align 8
  %4354 = add i64 %4323, -56
  %4355 = add i64 %4306, 39
  store i64 %4355, i64* %3, align 8
  %4356 = inttoptr i64 %4354 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = sext i32 %4357 to i64
  store i64 %4358, i64* %R9.i1826, align 8
  %4359 = shl nsw i64 %4358, 3
  %4360 = add i64 %4359, %4353
  %4361 = add i64 %4306, 43
  store i64 %4361, i64* %3, align 8
  %4362 = inttoptr i64 %4360 to i64*
  %4363 = load i64, i64* %4362, align 8
  store i64 %4363, i64* %RCX.i1876, align 8
  %4364 = add i64 %4363, 2
  %4365 = add i64 %4306, 47
  store i64 %4365, i64* %3, align 8
  %4366 = inttoptr i64 %4364 to i16*
  %4367 = load i16, i16* %4366, align 2
  %4368 = sext i16 %4367 to i64
  %4369 = and i64 %4368, 4294967295
  store i64 %4369, i64* %RAX.i1926, align 8
  %4370 = add i64 %4323, -72
  %4371 = add i64 %4306, 51
  store i64 %4371, i64* %3, align 8
  %4372 = inttoptr i64 %4370 to i64*
  %4373 = load i64, i64* %4372, align 8
  store i64 %4373, i64* %RCX.i1876, align 8
  %4374 = add i64 %4323, -52
  %4375 = add i64 %4306, 55
  store i64 %4375, i64* %3, align 8
  %4376 = inttoptr i64 %4374 to i32*
  %4377 = load i32, i32* %4376, align 4
  %4378 = sext i32 %4377 to i64
  store i64 %4378, i64* %R9.i1826, align 8
  %4379 = shl nsw i64 %4378, 3
  %4380 = add i64 %4379, %4373
  %4381 = add i64 %4306, 59
  store i64 %4381, i64* %3, align 8
  %4382 = inttoptr i64 %4380 to i64*
  %4383 = load i64, i64* %4382, align 8
  store i64 %4383, i64* %RCX.i1876, align 8
  %4384 = add i64 %4323, -60
  %4385 = add i64 %4306, 63
  store i64 %4385, i64* %3, align 8
  %4386 = inttoptr i64 %4384 to i32*
  %4387 = load i32, i32* %4386, align 4
  %4388 = sext i32 %4387 to i64
  store i64 %4388, i64* %R9.i1826, align 8
  %4389 = shl nsw i64 %4388, 3
  %4390 = add i64 %4389, %4383
  %4391 = add i64 %4306, 67
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i64*
  %4393 = load i64, i64* %4392, align 8
  store i64 %4393, i64* %RCX.i1876, align 8
  %4394 = add i64 %4393, 2
  %4395 = add i64 %4306, 71
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i16*
  %4397 = load i16, i16* %4396, align 2
  %4398 = sext i16 %4397 to i64
  %4399 = and i64 %4398, 4294967295
  store i64 %4399, i64* %RSI.i248, align 8
  %4400 = sext i16 %4397 to i32
  %4401 = zext i32 %4400 to i64
  %4402 = sext i16 %4367 to i32
  %4403 = sub nsw i32 %4402, %4400
  %4404 = zext i32 %4403 to i64
  store i64 %4404, i64* %RAX.i1926, align 8
  %4405 = icmp ult i16 %4367, %4397
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %14, align 1
  %4407 = and i32 %4403, 255
  %4408 = tail call i32 @llvm.ctpop.i32(i32 %4407)
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  store i8 %4411, i8* %21, align 1
  %4412 = xor i64 %4401, %4368
  %4413 = trunc i64 %4412 to i32
  %4414 = xor i32 %4413, %4403
  %4415 = lshr i32 %4414, 4
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  store i8 %4417, i8* %27, align 1
  %4418 = icmp eq i32 %4403, 0
  %4419 = zext i1 %4418 to i8
  store i8 %4419, i8* %30, align 1
  %4420 = lshr i32 %4403, 31
  %4421 = trunc i32 %4420 to i8
  store i8 %4421, i8* %33, align 1
  %4422 = lshr i32 %4402, 31
  %4423 = lshr i32 %4400, 31
  %4424 = xor i32 %4423, %4422
  %4425 = xor i32 %4420, %4422
  %4426 = add nuw nsw i32 %4425, %4424
  %4427 = icmp eq i32 %4426, 2
  %4428 = zext i1 %4427 to i8
  store i8 %4428, i8* %39, align 1
  store i64 %4404, i64* %RDI.i190, align 8
  %4429 = load i64, i64* %RBP.i, align 8
  %4430 = add i64 %4429, -332
  %4431 = load i32, i32* %EDX.i320, align 4
  %4432 = add i64 %4306, 81
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4430 to i32*
  store i32 %4431, i32* %4433, align 4
  %4434 = load i64, i64* %3, align 8
  %4435 = add i64 %4434, -234017
  %4436 = add i64 %4434, 5
  %4437 = load i64, i64* %6, align 8
  %4438 = add i64 %4437, -8
  %4439 = inttoptr i64 %4438 to i64*
  store i64 %4436, i64* %4439, align 8
  store i64 %4438, i64* %6, align 8
  store i64 %4435, i64* %3, align 8
  %4440 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4304)
  %4441 = load i32, i32* %EAX.i1921, align 4
  %4442 = load i64, i64* %RBP.i, align 8
  %4443 = add i64 %4442, -32
  %4444 = load i64, i64* %3, align 8
  %4445 = add i64 %4444, 3
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4443 to i32*
  %4447 = load i32, i32* %4446, align 4
  %4448 = sub i32 %4441, %4447
  %4449 = lshr i32 %4448, 31
  %4450 = lshr i32 %4441, 31
  %4451 = lshr i32 %4447, 31
  %4452 = xor i32 %4451, %4450
  %4453 = xor i32 %4449, %4450
  %4454 = add nuw nsw i32 %4453, %4452
  %4455 = icmp eq i32 %4454, 2
  %4456 = icmp ne i32 %4449, 0
  %4457 = xor i1 %4455, %4456
  %4458 = xor i1 %4457, true
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %R8B.i501, align 1
  store i8 0, i8* %14, align 1
  %4460 = zext i1 %4458 to i32
  %4461 = tail call i32 @llvm.ctpop.i32(i32 %4460)
  %4462 = trunc i32 %4461 to i8
  %4463 = xor i8 %4462, 1
  store i8 %4463, i8* %21, align 1
  %4464 = zext i1 %4457 to i8
  store i8 %4464, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4465 = zext i1 %4458 to i64
  store i64 %4465, i64* %RAX.i1926, align 8
  %4466 = add i64 %4442, -332
  %4467 = add i64 %4444, 21
  store i64 %4467, i64* %3, align 8
  %4468 = inttoptr i64 %4466 to i32*
  %4469 = load i32, i32* %4468, align 4
  %4470 = zext i1 %4458 to i32
  %4471 = or i32 %4470, %4469
  %4472 = zext i32 %4471 to i64
  store i64 %4472, i64* %RDX.i1862, align 8
  %4473 = and i32 %4471, 255
  %4474 = tail call i32 @llvm.ctpop.i32(i32 %4473)
  %4475 = trunc i32 %4474 to i8
  %4476 = and i8 %4475, 1
  %4477 = xor i8 %4476, 1
  %4478 = icmp eq i32 %4471, 0
  %4479 = zext i1 %4478 to i8
  %4480 = lshr i32 %4469, 31
  %4481 = trunc i32 %4480 to i8
  store i8 0, i8* %14, align 1
  store i8 %4477, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %4479, i8* %30, align 1
  store i8 %4481, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4482 = xor i1 %4478, true
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %R8B.i501, align 1
  %4484 = load i64, i64* %RBP.i, align 8
  %4485 = add i64 %4484, -317
  %4486 = add i64 %4444, 37
  store i64 %4486, i64* %3, align 8
  %4487 = inttoptr i64 %4485 to i8*
  store i8 %4483, i8* %4487, align 1
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_43a24b

block_.L_43a24b:                                  ; preds = %block_43a0f7, %block_.L_439f9c
  %4488 = phi i64 [ %3949, %block_.L_439f9c ], [ %.pre66, %block_43a0f7 ]
  %MEMORY.25 = phi %struct.Memory* [ %3899, %block_.L_439f9c ], [ %4440, %block_43a0f7 ]
  %4489 = load i64, i64* %RBP.i, align 8
  %4490 = add i64 %4489, -317
  %4491 = add i64 %4488, 6
  store i64 %4491, i64* %3, align 8
  %4492 = inttoptr i64 %4490 to i8*
  %4493 = load i8, i8* %4492, align 1
  %4494 = and i8 %4493, 1
  store i8 0, i8* %14, align 1
  %4495 = zext i8 %4494 to i32
  %4496 = tail call i32 @llvm.ctpop.i32(i32 %4495)
  %4497 = trunc i32 %4496 to i8
  %4498 = xor i8 %4497, 1
  store i8 %4498, i8* %21, align 1
  %4499 = xor i8 %4494, 1
  store i8 %4499, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4500 = zext i8 %4494 to i64
  store i64 %4500, i64* %RCX.i1876, align 8
  store i8 %4494, i8* %AL.i1795, align 1
  %4501 = add i64 %4489, -8
  %4502 = add i64 %4488, 17
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i64*
  %4504 = load i64, i64* %4503, align 8
  store i64 %4504, i64* %RDX.i1862, align 8
  %4505 = add i64 %4489, -44
  %4506 = add i64 %4488, 21
  store i64 %4506, i64* %3, align 8
  %4507 = inttoptr i64 %4505 to i32*
  %4508 = load i32, i32* %4507, align 4
  %4509 = sext i32 %4508 to i64
  store i64 %4509, i64* %RSI.i248, align 8
  %4510 = add i64 %4504, %4509
  %4511 = add i64 %4488, 24
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i8*
  store i8 %4494, i8* %4512, align 1
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_43a263

block_.L_43a263:                                  ; preds = %block_.L_43a24b, %block_.L_439f97
  %4513 = phi i64 [ %.pre67, %block_.L_43a24b ], [ %3415, %block_.L_439f97 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_43a24b ], [ %MEMORY.24, %block_.L_439f97 ]
  %4514 = add i64 %4513, 17
  store i64 %4514, i64* %3, align 8
  br label %block_.L_43a274

block_.L_43a268:                                  ; preds = %block_439ca0, %block_.L_439c8c
  %4515 = phi i64 [ %2275, %block_439ca0 ], [ %2243, %block_.L_439c8c ]
  %4516 = add i64 %2143, -8
  %4517 = add i64 %4515, 4
  store i64 %4517, i64* %3, align 8
  %4518 = inttoptr i64 %4516 to i64*
  %4519 = load i64, i64* %4518, align 8
  store i64 %4519, i64* %RAX.i1926, align 8
  %4520 = add i64 %2143, -44
  %4521 = add i64 %4515, 8
  store i64 %4521, i64* %3, align 8
  %4522 = inttoptr i64 %4520 to i32*
  %4523 = load i32, i32* %4522, align 4
  %4524 = sext i32 %4523 to i64
  store i64 %4524, i64* %RCX.i1876, align 8
  %4525 = add i64 %4519, %4524
  %4526 = add i64 %4515, 12
  store i64 %4526, i64* %3, align 8
  %4527 = inttoptr i64 %4525 to i8*
  store i8 1, i8* %4527, align 1
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_43a274

block_.L_43a274:                                  ; preds = %block_.L_43a268, %block_.L_43a263
  %4528 = phi i64 [ %.pre68, %block_.L_43a268 ], [ %4514, %block_.L_43a263 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43a268 ], [ %MEMORY.26, %block_.L_43a263 ]
  %4529 = add i64 %4528, 5
  store i64 %4529, i64* %3, align 8
  br label %block_.L_43a279

block_.L_43a279:                                  ; preds = %block_.L_43a274, %block_439a99
  %storemerge49 = phi i64 [ %1651, %block_439a99 ], [ %4529, %block_.L_43a274 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.0, %block_439a99 ], [ %MEMORY.28, %block_.L_43a274 ]
  %4530 = add i64 %storemerge49, 5
  store i64 %4530, i64* %3, align 8
  br label %block_.L_43a27e

block_.L_43a27e:                                  ; preds = %block_.L_43a279, %block_.L_439a7a
  %storemerge48 = phi i64 [ %1627, %block_.L_439a7a ], [ %4530, %block_.L_43a279 ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.0, %block_.L_439a7a ], [ %MEMORY.29, %block_.L_43a279 ]
  %4531 = add i64 %storemerge48, 5
  store i64 %4531, i64* %3, align 8
  br label %block_.L_43a283

block_.L_43a283:                                  ; preds = %block_.L_43a27e, %block_4399f9, %block_4399e8, %block_4399d7, %block_4399c6, %block_4399b5, %block_4399a4, %block_439993, %block_.L_439960
  %4532 = phi i64 [ %1269, %block_.L_439960 ], [ %1297, %block_439993 ], [ %1325, %block_4399a4 ], [ %1353, %block_4399b5 ], [ %1383, %block_4399c6 ], [ %1411, %block_4399d7 ], [ %1439, %block_4399e8 ], [ %1467, %block_4399f9 ], [ %4531, %block_.L_43a27e ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.0, %block_.L_439960 ], [ %MEMORY.0, %block_439993 ], [ %MEMORY.0, %block_4399a4 ], [ %MEMORY.0, %block_4399b5 ], [ %MEMORY.0, %block_4399c6 ], [ %MEMORY.0, %block_4399d7 ], [ %MEMORY.0, %block_4399e8 ], [ %MEMORY.0, %block_4399f9 ], [ %MEMORY.30, %block_.L_43a27e ]
  %4533 = add i64 %4532, 5
  store i64 %4533, i64* %3, align 8
  br label %block_.L_43a288

block_.L_43a288:                                  ; preds = %block_.L_43a283, %block_.L_43986d
  %storemerge47 = phi i64 [ %1007, %block_.L_43986d ], [ %4533, %block_.L_43a283 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43986d ], [ %MEMORY.31, %block_.L_43a283 ]
  %4534 = load i64, i64* %RBP.i, align 8
  %4535 = add i64 %4534, -44
  %4536 = add i64 %storemerge47, 8
  store i64 %4536, i64* %3, align 8
  %4537 = inttoptr i64 %4535 to i32*
  %4538 = load i32, i32* %4537, align 4
  %4539 = add i32 %4538, 1
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %RAX.i1926, align 8
  %4541 = icmp eq i32 %4538, -1
  %4542 = icmp eq i32 %4539, 0
  %4543 = or i1 %4541, %4542
  %4544 = zext i1 %4543 to i8
  store i8 %4544, i8* %14, align 1
  %4545 = and i32 %4539, 255
  %4546 = tail call i32 @llvm.ctpop.i32(i32 %4545)
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  %4549 = xor i8 %4548, 1
  store i8 %4549, i8* %21, align 1
  %4550 = xor i32 %4539, %4538
  %4551 = lshr i32 %4550, 4
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  store i8 %4553, i8* %27, align 1
  %4554 = zext i1 %4542 to i8
  store i8 %4554, i8* %30, align 1
  %4555 = lshr i32 %4539, 31
  %4556 = trunc i32 %4555 to i8
  store i8 %4556, i8* %33, align 1
  %4557 = lshr i32 %4538, 31
  %4558 = xor i32 %4555, %4557
  %4559 = add nuw nsw i32 %4558, %4555
  %4560 = icmp eq i32 %4559, 2
  %4561 = zext i1 %4560 to i8
  store i8 %4561, i8* %39, align 1
  %4562 = add i64 %storemerge47, 14
  store i64 %4562, i64* %3, align 8
  store i32 %4539, i32* %4537, align 4
  %4563 = load i64, i64* %3, align 8
  %4564 = add i64 %4563, -3159
  store i64 %4564, i64* %3, align 8
  br label %block_.L_43963f

block_.L_43a29b:                                  ; preds = %block_.L_43963f
  %4565 = load i64, i64* %6, align 8
  %4566 = add i64 %4565, 336
  store i64 %4566, i64* %6, align 8
  %4567 = icmp ugt i64 %4565, -337
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %14, align 1
  %4569 = trunc i64 %4566 to i32
  %4570 = and i32 %4569, 255
  %4571 = tail call i32 @llvm.ctpop.i32(i32 %4570)
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  %4574 = xor i8 %4573, 1
  store i8 %4574, i8* %21, align 1
  %4575 = xor i64 %4565, 16
  %4576 = xor i64 %4575, %4566
  %4577 = lshr i64 %4576, 4
  %4578 = trunc i64 %4577 to i8
  %4579 = and i8 %4578, 1
  store i8 %4579, i8* %27, align 1
  %4580 = icmp eq i64 %4566, 0
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %30, align 1
  %4582 = lshr i64 %4566, 63
  %4583 = trunc i64 %4582 to i8
  store i8 %4583, i8* %33, align 1
  %4584 = lshr i64 %4565, 63
  %4585 = xor i64 %4582, %4584
  %4586 = add nuw nsw i64 %4585, %4582
  %4587 = icmp eq i64 %4586, 2
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %39, align 1
  %4589 = add i64 %242, 8
  store i64 %4589, i64* %3, align 8
  %4590 = add i64 %4565, 344
  %4591 = inttoptr i64 %4566 to i64*
  %4592 = load i64, i64* %4591, align 8
  store i64 %4592, i64* %RBP.i, align 8
  store i64 %4590, i64* %6, align 8
  %4593 = add i64 %242, 9
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4590 to i64*
  %4595 = load i64, i64* %4594, align 8
  store i64 %4595, i64* %3, align 8
  %4596 = add i64 %4565, 352
  store i64 %4596, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 336
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1958__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
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
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
  %19 = xor i32 %8, 16
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43a29b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_439661(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43966d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -212
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
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4396bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_43969b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4396ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4396c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.getNeighbour(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___r9___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R9, align 8
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
define %struct.Memory* @routine_addq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__r8__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x214__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x214__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %R8, align 8
  %6 = add i64 %5, 532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
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
define %struct.Memory* @routine_setne__r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %R10B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R10B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R10B, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_movzbl__r10b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %R10B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R10B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r10b__0x72531c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R10B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  store i8 %4, i8* getelementptr inbounds (%G_0x72531c_type, %G_0x72531c_type* @G_0x72531c, i64 0, i32 0, i64 0), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_sarl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x18__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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
define %struct.Memory* @routine_je_.L_4397a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_439894(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movb__cl__MINUS0xdd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -221
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43986d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_4397dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movb__al__MINUS0xde__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -222
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439861(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43981d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_43981d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x214__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_439846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movb__cl__MINUS0xdf__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -223
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439855(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xdf__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -223
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xdf__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -223
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xde__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -222
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xdd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -221
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xdd__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -221
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %AL, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al____rsi__rdi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %AL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a288(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_439960(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4398cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0xe1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -225
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_439910(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_439910(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_439939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0xe2__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -226
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439948(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0xe2__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -226
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xe2__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -226
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xe1__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -225
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xe0__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__0x48__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_je_.L_43a283(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -14
  %10 = icmp ult i32 %8, 14
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_movq_0x1d0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i64 %4, %3
  store i64 %7, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_439a7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq__rcx__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439a8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 2, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a27e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x72531c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i8, i8* getelementptr inbounds (%G_0x72531c_type, %G_0x72531c_type* @G_0x72531c, i64 0, i32 0, i64 0), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = zext i8 %5 to i32
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i8 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %5, 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439aaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a279(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x84__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x88__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_mb_block_pos(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x3___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rdx__rsi_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_439b30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  store i64 -1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439b4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_439b89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439ba4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_439be2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439bfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_439c3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439c56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0xc8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_439c8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0xd0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439cb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43a268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0xc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439f9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_439e42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_setge__r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R8B, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x2__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x120__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
define %struct.Memory* @routine_movswl_0x2__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x124__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
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
define %struct.Memory* @routine_movb__dl___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r8b____rcx__r9_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %R8B, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439f97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -296
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x128__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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
define %struct.Memory* @routine_movl__edx__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x130__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_jmpq_.L_43a263(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_movl__edx__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x138__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_movl__edx__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_setge__r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %R10B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_movb__r8b__MINUS0x13d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -317
  %6 = load i8, i8* %R8B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43a24b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x144__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -324
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
define %struct.Memory* @routine_movl__edx__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x148__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
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
define %struct.Memory* @routine_movl__edx__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
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
define %struct.Memory* @routine_setne__r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x13d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -317
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al____rdx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %AL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a274(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a283(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a28d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43963f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -337
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
