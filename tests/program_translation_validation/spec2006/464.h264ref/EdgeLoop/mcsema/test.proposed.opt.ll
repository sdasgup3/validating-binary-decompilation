; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x4c37e0_type = type <{ [8 x i8] }>
%G_0x4c37e8_type = type <{ [8 x i8] }>
%G_0x4c37f0_type = type <{ [8 x i8] }>
%G_0x4c37f8_type = type <{ [8 x i8] }>
%G_0x723694_type = type <{ [1 x i8] }>
%G__0x6cb9c0_type = type <{ [8 x i8] }>
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
@G_0x4c37e0 = local_unnamed_addr global %G_0x4c37e0_type zeroinitializer
@G_0x4c37e8 = local_unnamed_addr global %G_0x4c37e8_type zeroinitializer
@G_0x4c37f0 = local_unnamed_addr global %G_0x4c37f0_type zeroinitializer
@G_0x4c37f8 = local_unnamed_addr global %G_0x4c37f8_type zeroinitializer
@G_0x723694 = local_unnamed_addr global %G_0x723694_type zeroinitializer
@G__0x6cb9c0 = global %G__0x6cb9c0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @EdgeLoop(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i1160 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R14.i1160, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i1187 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %RBX.i1187, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %7, -520
  store i64 %23, i64* %6, align 8
  %24 = icmp ult i64 %20, 496
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i64 %20, 16
  %35 = xor i64 %34, %23
  %36 = lshr i64 %35, 4
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i64 %23, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %23, 63
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %20, 63
  %47 = xor i64 %43, %46
  %48 = add nuw nsw i64 %47, %46
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1243 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, 48
  %55 = add i64 %22, 10
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RAX.i1243, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i = bitcast %union.anon* %59 to i32*
  %60 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %61 = add i64 %53, 40
  %62 = add i64 %22, 14
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %60, align 8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i2331 = bitcast %union.anon* %66 to i32*
  %67 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %68 = add i64 %53, 32
  %69 = add i64 %22, 18
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %67, align 8
  %73 = add i64 %53, 24
  %74 = add i64 %22, 21
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RBX.i1187, align 8
  %R14D.i2325 = bitcast %union.anon* %11 to i32*
  %78 = add i64 %53, 16
  %79 = add i64 %22, 25
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %R14.i1160, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i2322 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %84 = add i64 %53, -24
  %85 = load i64, i64* %RDI.i2322, align 8
  %86 = add i64 %22, 29
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i64*
  store i64 %85, i64* %87, align 8
  %RSI.i2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -32
  %90 = load i64, i64* %RSI.i2319, align 8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 4
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %89 to i64*
  store i64 %90, i64* %93, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2316 = getelementptr inbounds %union.anon, %union.anon* %94, i64 0, i32 0
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -40
  %97 = load i64, i64* %RDX.i2316, align 8
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100, align 8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2313 = bitcast %union.anon* %101 to i32*
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -44
  %104 = load i32, i32* %ECX.i2313, align 4
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 3
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %103 to i32*
  store i32 %104, i32* %107, align 4
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %108 to i32*
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -48
  %111 = load i32, i32* %R8D.i, align 4
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %110 to i32*
  store i32 %111, i32* %114, align 4
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %115 to i32*
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -52
  %118 = load i32, i32* %R9D.i, align 4
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %121, align 4
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -56
  %124 = load i32, i32* %R14D.i2325, align 4
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %127, align 4
  %EBX.i = bitcast %union.anon* %16 to i32*
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -60
  %130 = load i32, i32* %EBX.i, align 4
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 3
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %133, align 4
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -64
  %136 = load i32, i32* %R11D.i2331, align 4
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 4
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %135 to i32*
  store i32 %136, i32* %139, align 4
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -68
  %142 = load i32, i32* %R10D.i, align 4
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %141 to i32*
  store i32 %142, i32* %145, align 4
  %EAX.i2297 = bitcast %union.anon* %52 to i32*
  %146 = load i64, i64* %RBP.i, align 8
  %147 = add i64 %146, -72
  %148 = load i32, i32* %EAX.i2297, align 4
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 3
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %147 to i32*
  store i32 %148, i32* %151, align 4
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -80
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 7
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %153 to i32*
  store i32 0, i32* %156, align 4
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -84
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 7
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 0, i32* %161, align 4
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -120
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, 7
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %163 to i32*
  store i32 0, i32* %166, align 4
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -140
  %169 = load i64, i64* %3, align 8
  %170 = add i64 %169, 10
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %168 to i32*
  store i32 0, i32* %171, align 4
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -156
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 10
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %173 to i32*
  store i32 0, i32* %176, align 4
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -160
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 10
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181, align 4
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -168
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 11
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %183 to i64*
  store i64 0, i64* %186, align 8
  %187 = load i64, i64* %3, align 8
  %188 = load i64, i64* bitcast (%G_0x4c37e0_type* @G_0x4c37e0 to i64*), align 8
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -336
  %191 = add i64 %187, 15
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %192, align 8
  %193 = load i64, i64* %3, align 8
  %194 = load i64, i64* bitcast (%G_0x4c37e8_type* @G_0x4c37e8 to i64*), align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -328
  %197 = add i64 %193, 15
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %198, align 8
  %199 = load i64, i64* %3, align 8
  %200 = load i64, i64* bitcast (%G_0x4c37f0_type* @G_0x4c37f0 to i64*), align 8
  %201 = load i64, i64* %RBP.i, align 8
  %202 = add i64 %201, -320
  %203 = add i64 %199, 15
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  store i64 %200, i64* %204, align 8
  %205 = load i64, i64* %3, align 8
  %206 = load i64, i64* bitcast (%G_0x4c37f8_type* @G_0x4c37f8 to i64*), align 8
  store i64 %206, i64* %RDX.i2316, align 8
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -312
  %209 = add i64 %205, 15
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %210, align 8
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -68
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  store i8 0, i8* %26, align 1
  %217 = and i32 %216, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %222 = icmp eq i32 %216, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %42, align 1
  %224 = lshr i32 %216, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v155 = select i1 %222, i64 10, i64 43
  %226 = add i64 %213, %.v155
  store i64 1, i64* %RAX.i1243, align 8
  %RCX.i2234 = getelementptr inbounds %union.anon, %union.anon* %101, i64 0, i32 0
  %227 = add i64 %211, -40
  %228 = add i64 %226, 9
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RCX.i2234, align 8
  br i1 %222, label %block_43a37d, label %block_.L_43a39e

block_43a37d:                                     ; preds = %entry
  %231 = add i64 %230, 72660
  %232 = add i64 %226, 15
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, -8
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RDX.i2316, align 8
  %237 = icmp ult i32 %234, 8
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %26, align 1
  %239 = and i32 %235, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %33, align 1
  %244 = xor i32 %235, %234
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %39, align 1
  %248 = icmp eq i32 %235, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %42, align 1
  %250 = lshr i32 %235, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %45, align 1
  %252 = lshr i32 %234, 31
  %253 = xor i32 %250, %252
  %254 = add nuw nsw i32 %253, %252
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %51, align 1
  store i64 %236, i64* %RCX.i2234, align 8
  %257 = add i64 %226, 22
  store i64 %257, i64* %3, align 8
  %258 = trunc i32 %235 to i5
  switch i5 %258, label %259 [
    i5 0, label %routine_shll__cl___eax.exit2245
    i5 1, label %268
  ]

; <label>:259:                                    ; preds = %block_43a37d
  %260 = and i32 %235, 31
  %261 = zext i32 %260 to i64
  %262 = add nuw nsw i64 %261, 4294967295
  %263 = and i64 %262, 4294967295
  %264 = shl i64 1, %263
  %265 = trunc i64 %264 to i32
  %266 = icmp slt i32 %265, 0
  %267 = shl i32 %265, 1
  br label %268

; <label>:268:                                    ; preds = %block_43a37d, %259
  %269 = phi i1 [ %266, %259 ], [ false, %block_43a37d ]
  %270 = phi i32 [ %267, %259 ], [ 2, %block_43a37d ]
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i1243, align 8
  %272 = zext i1 %269 to i8
  store i8 %272, i8* %26, align 1
  %273 = and i32 %270, 254
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %278 = icmp eq i32 %270, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %42, align 1
  %280 = lshr i32 %270, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_shll__cl___eax.exit2245

routine_shll__cl___eax.exit2245:                  ; preds = %268, %block_43a37d
  %282 = phi i32 [ %270, %268 ], [ 1, %block_43a37d ]
  %283 = add i64 %211, -300
  %284 = add i64 %226, 28
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  store i32 %282, i32* %285, align 4
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 33
  store i64 %287, i64* %3, align 8
  br label %block_.L_43a3ba

block_.L_43a39e:                                  ; preds = %entry
  %288 = add i64 %230, 72664
  %289 = add i64 %226, 15
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, -8
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RDX.i2316, align 8
  %294 = icmp ult i32 %291, 8
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %26, align 1
  %296 = and i32 %292, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %33, align 1
  %301 = xor i32 %292, %291
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %39, align 1
  %305 = icmp eq i32 %292, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %42, align 1
  %307 = lshr i32 %292, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %45, align 1
  %309 = lshr i32 %291, 31
  %310 = xor i32 %307, %309
  %311 = add nuw nsw i32 %310, %309
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %51, align 1
  store i64 %293, i64* %RCX.i2234, align 8
  %314 = add i64 %226, 22
  store i64 %314, i64* %3, align 8
  %315 = trunc i32 %292 to i5
  switch i5 %315, label %316 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %325
  ]

; <label>:316:                                    ; preds = %block_.L_43a39e
  %317 = and i32 %292, 31
  %318 = zext i32 %317 to i64
  %319 = add nuw nsw i64 %318, 4294967295
  %320 = and i64 %319, 4294967295
  %321 = shl i64 1, %320
  %322 = trunc i64 %321 to i32
  %323 = icmp slt i32 %322, 0
  %324 = shl i32 %322, 1
  br label %325

; <label>:325:                                    ; preds = %block_.L_43a39e, %316
  %326 = phi i1 [ %323, %316 ], [ false, %block_.L_43a39e ]
  %327 = phi i32 [ %324, %316 ], [ 2, %block_.L_43a39e ]
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX.i1243, align 8
  %329 = zext i1 %326 to i8
  store i8 %329, i8* %26, align 1
  %330 = and i32 %327, 254
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %335 = icmp eq i32 %327, 0
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %42, align 1
  %337 = lshr i32 %327, 31
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %325, %block_.L_43a39e
  %339 = phi i32 [ %327, %325 ], [ 1, %block_.L_43a39e ]
  %340 = add i64 %211, -300
  %341 = add i64 %226, 28
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  store i32 %339, i32* %342, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43a3ba

block_.L_43a3ba:                                  ; preds = %routine_shll__cl___eax.exit, %routine_shll__cl___eax.exit2245
  %343 = phi i64 [ %.pre, %routine_shll__cl___eax.exit ], [ %287, %routine_shll__cl___eax.exit2245 ]
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -68
  %346 = add i64 %343, 4
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  store i8 0, i8* %26, align 1
  %349 = and i32 %348, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %354 = icmp eq i32 %348, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %42, align 1
  %356 = lshr i32 %348, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v156 = select i1 %354, i64 53, i64 10
  %358 = add i64 %343, %.v156
  store i64 %358, i64* %3, align 8
  br i1 %354, label %block_.L_43a3ef, label %block_43a3c4

block_43a3c4:                                     ; preds = %block_.L_43a3ba
  %359 = add i64 %344, -336
  store i64 %359, i64* %RAX.i1243, align 8
  %360 = add i64 %344, -56
  %361 = add i64 %358, 11
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = shl nsw i64 %364, 4
  store i64 %365, i64* %RCX.i2234, align 8
  %366 = add i64 %365, %359
  store i64 %366, i64* %RAX.i1243, align 8
  %367 = icmp ult i64 %366, %359
  %368 = icmp ult i64 %366, %365
  %369 = or i1 %367, %368
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %26, align 1
  %371 = trunc i64 %366 to i32
  %372 = and i32 %371, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %33, align 1
  %377 = xor i64 %365, %359
  %378 = xor i64 %377, %366
  %379 = lshr i64 %378, 4
  %380 = trunc i64 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %39, align 1
  %382 = icmp eq i64 %366, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %42, align 1
  %384 = lshr i64 %366, 63
  %385 = trunc i64 %384 to i8
  store i8 %385, i8* %45, align 1
  %386 = lshr i64 %359, 63
  %387 = lshr i64 %364, 59
  %388 = and i64 %387, 1
  %389 = xor i64 %384, %386
  %390 = xor i64 %384, %388
  %391 = add nuw nsw i64 %389, %390
  %392 = icmp eq i64 %391, 2
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %51, align 1
  %394 = add i64 %344, -40
  %395 = add i64 %358, 22
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RCX.i2234, align 8
  %398 = add i64 %397, 72700
  %399 = add i64 %358, 29
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RCX.i2234, align 8
  %403 = shl nsw i64 %402, 2
  %404 = add i64 %403, %366
  %405 = add i64 %358, 32
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RDX.i2316, align 8
  %409 = add i64 %344, -340
  %410 = add i64 %358, 38
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  store i32 %407, i32* %411, align 4
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 21
  br label %block_.L_43a3ff

block_.L_43a3ef:                                  ; preds = %block_.L_43a3ba
  store i64 16, i64* %RAX.i1243, align 8
  %414 = add i64 %344, -340
  %415 = add i64 %358, 11
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  store i32 16, i32* %416, align 4
  %417 = load i64, i64* %3, align 8
  %418 = add i64 %417, 5
  store i64 %418, i64* %3, align 8
  br label %block_.L_43a3ff

block_.L_43a3ff:                                  ; preds = %block_.L_43a3ef, %block_43a3c4
  %storemerge = phi i64 [ %413, %block_43a3c4 ], [ %418, %block_.L_43a3ef ]
  %EDX.i2070.pre-phi = bitcast %union.anon* %94 to i32*
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -340
  %421 = add i64 %storemerge, 6
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX.i1243, align 8
  %425 = add i64 %419, -184
  %426 = add i64 %storemerge, 12
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  store i32 %423, i32* %427, align 4
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -76
  %430 = load i64, i64* %3, align 8
  %431 = add i64 %430, 7
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %429 to i32*
  store i32 0, i32* %432, align 4
  %R8.i2109 = getelementptr inbounds %union.anon, %union.anon* %108, i64 0, i32 0
  %R9B.i2052 = bitcast %union.anon* %115 to i8*
  %AL.i1989 = bitcast %union.anon* %52 to i8*
  %CL.i1982 = bitcast %union.anon* %101 to i8*
  %CX.i365 = bitcast %union.anon* %101 to i16*
  %DI.i23 = bitcast %union.anon* %83 to i16*
  %DL.i1039 = bitcast %union.anon* %94 to i8*
  %DX.i816 = bitcast %union.anon* %94 to i16*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_43a412

block_.L_43a412:                                  ; preds = %block_.L_43b330, %block_.L_43a3ff
  %434 = phi i64 [ %.pre98, %block_.L_43a3ff ], [ %6393, %block_.L_43b330 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_43a3ff ], [ %MEMORY.58, %block_.L_43b330 ]
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -76
  %437 = add i64 %434, 3
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RAX.i1243, align 8
  %441 = add i64 %435, -184
  %442 = add i64 %434, 9
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sub i32 %439, %444
  %446 = icmp ult i32 %439, %444
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %26, align 1
  %448 = and i32 %445, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %33, align 1
  %453 = xor i32 %444, %439
  %454 = xor i32 %453, %445
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %39, align 1
  %458 = icmp eq i32 %445, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %42, align 1
  %460 = lshr i32 %445, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %45, align 1
  %462 = lshr i32 %439, 31
  %463 = lshr i32 %444, 31
  %464 = xor i32 %463, %462
  %465 = xor i32 %460, %462
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %51, align 1
  %469 = icmp ne i8 %461, 0
  %470 = xor i1 %469, %467
  %.v157 = select i1 %470, i64 15, i64 3889
  %471 = add i64 %434, %.v157
  store i64 %471, i64* %3, align 8
  br i1 %470, label %block_43a421, label %block_.L_43b343

block_43a421:                                     ; preds = %block_.L_43a412
  %472 = add i64 %435, -56
  %473 = add i64 %471, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  store i8 0, i8* %26, align 1
  %476 = and i32 %475, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %481 = icmp eq i32 %475, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %42, align 1
  %483 = lshr i32 %475, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v158 = select i1 %481, i64 24, i64 10
  %485 = add i64 %471, %.v158
  store i64 %485, i64* %3, align 8
  br i1 %481, label %block_.L_43a439, label %block_43a42b

block_43a42b:                                     ; preds = %block_43a421
  %486 = add i64 %485, 3
  store i64 %486, i64* %3, align 8
  %487 = load i32, i32* %438, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RAX.i1243, align 8
  %489 = add i64 %435, -344
  %490 = add i64 %485, 9
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  store i32 %487, i32* %491, align 4
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 17
  store i64 %493, i64* %3, align 8
  br label %block_.L_43a445

block_.L_43a439:                                  ; preds = %block_43a421
  %494 = add i64 %435, -60
  %495 = add i64 %485, 3
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = shl i32 %497, 2
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i1243, align 8
  %500 = lshr i32 %497, 30
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %26, align 1
  %503 = and i32 %498, 252
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %508 = icmp eq i32 %498, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %42, align 1
  %510 = lshr i32 %497, 29
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %513 = add i64 %435, -344
  %514 = add i64 %485, 12
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  store i32 %498, i32* %515, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_43a445

block_.L_43a445:                                  ; preds = %block_.L_43a439, %block_43a42b
  %516 = phi i64 [ %.pre99, %block_.L_43a439 ], [ %493, %block_43a42b ]
  %517 = load i64, i64* %RBP.i, align 8
  %518 = add i64 %517, -344
  %519 = add i64 %516, 6
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX.i1243, align 8
  %523 = add i64 %517, -220
  %524 = add i64 %516, 12
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  store i32 %521, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -56
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 4
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530, align 4
  store i8 0, i8* %26, align 1
  %532 = and i32 %531, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %537 = icmp eq i32 %531, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %42, align 1
  %539 = lshr i32 %531, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v159 = select i1 %537, i64 70, i64 10
  %541 = add i64 %528, %.v159
  store i64 %541, i64* %3, align 8
  br i1 %537, label %block_.L_43a497, label %block_43a45b

block_43a45b:                                     ; preds = %block_.L_43a445
  %542 = add i64 %526, -60
  %543 = add i64 %541, 4
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = add i32 %545, -4
  %547 = icmp ult i32 %545, 4
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %26, align 1
  %549 = and i32 %546, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %33, align 1
  %554 = xor i32 %546, %545
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %39, align 1
  %558 = icmp eq i32 %546, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %42, align 1
  %560 = lshr i32 %546, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %45, align 1
  %562 = lshr i32 %545, 31
  %563 = xor i32 %560, %562
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %51, align 1
  %567 = icmp ne i8 %561, 0
  %568 = xor i1 %567, %565
  %.v160 = select i1 %568, i64 10, i64 27
  %569 = add i64 %541, %.v160
  store i64 %569, i64* %3, align 8
  br i1 %568, label %block_43a465, label %block_.L_43a476

block_43a465:                                     ; preds = %block_43a45b
  %570 = add i64 %569, 3
  store i64 %570, i64* %3, align 8
  %571 = load i32, i32* %544, align 4
  %572 = shl i32 %571, 2
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RAX.i1243, align 8
  %574 = lshr i32 %571, 30
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %26, align 1
  %577 = and i32 %572, 252
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %582 = icmp eq i32 %572, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %42, align 1
  %584 = lshr i32 %571, 29
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %587 = add i64 %526, -348
  %588 = add i64 %569, 12
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  store i32 %572, i32* %589, align 4
  %590 = load i64, i64* %3, align 8
  %591 = add i64 %590, 21
  br label %block_.L_43a486

block_.L_43a476:                                  ; preds = %block_43a45b
  store i64 1, i64* %RAX.i1243, align 8
  %592 = add i64 %526, -348
  %593 = add i64 %569, 11
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  store i32 1, i32* %594, align 4
  %595 = load i64, i64* %3, align 8
  %596 = add i64 %595, 5
  store i64 %596, i64* %3, align 8
  br label %block_.L_43a486

block_.L_43a486:                                  ; preds = %block_.L_43a476, %block_43a465
  %storemerge59 = phi i64 [ %591, %block_43a465 ], [ %596, %block_.L_43a476 ]
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -348
  %599 = add i64 %storemerge59, 6
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX.i1243, align 8
  %603 = add i64 %597, -352
  %604 = add i64 %storemerge59, 12
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  store i32 %601, i32* %605, align 4
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 14
  store i64 %607, i64* %3, align 8
  br label %block_.L_43a4a0

block_.L_43a497:                                  ; preds = %block_.L_43a445
  %608 = add i64 %526, -76
  %609 = add i64 %541, 3
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX.i1243, align 8
  %613 = add i64 %526, -352
  %614 = add i64 %541, 9
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  store i32 %611, i32* %615, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_43a4a0

block_.L_43a4a0:                                  ; preds = %block_.L_43a497, %block_.L_43a486
  %616 = phi i64 [ %.pre100, %block_.L_43a497 ], [ %607, %block_.L_43a486 ]
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -352
  %619 = add i64 %616, 6
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i1243, align 8
  %623 = add i64 %617, -296
  store i64 %623, i64* %R8.i2109, align 8
  store i64 1, i64* %RCX.i2234, align 8
  %624 = add i64 %617, -228
  %625 = add i64 %616, 24
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  store i32 %621, i32* %626, align 4
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -44
  %629 = load i64, i64* %3, align 8
  %630 = add i64 %629, 3
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %628 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RDI.i2322, align 8
  %634 = add i64 %627, -220
  %635 = add i64 %629, 9
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RSI.i2319, align 8
  %639 = add i64 %627, -228
  %640 = add i64 %629, 15
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i2316, align 8
  %644 = load i64, i64* %RCX.i2234, align 8
  %645 = add i64 %627, -68
  %646 = add i64 %629, 18
  store i64 %646, i64* %3, align 8
  %647 = trunc i64 %644 to i32
  %648 = inttoptr i64 %645 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sub i32 %647, %649
  %651 = zext i32 %650 to i64
  store i64 %651, i64* %RCX.i2234, align 8
  %652 = icmp ult i32 %647, %649
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %26, align 1
  %654 = and i32 %650, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %33, align 1
  %659 = xor i32 %649, %647
  %660 = xor i32 %659, %650
  %661 = lshr i32 %660, 4
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %39, align 1
  %664 = icmp eq i32 %650, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %42, align 1
  %666 = lshr i32 %650, 31
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %45, align 1
  %668 = lshr i32 %647, 31
  %669 = lshr i32 %649, 31
  %670 = xor i32 %669, %668
  %671 = xor i32 %666, %668
  %672 = add nuw nsw i32 %671, %670
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %51, align 1
  %675 = add i64 %629, 68856
  %676 = add i64 %629, 23
  %677 = load i64, i64* %6, align 8
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %676, i64* %679, align 8
  store i64 %678, i64* %6, align 8
  store i64 %675, i64* %3, align 8
  %call2_43a4ca = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %675, %struct.Memory* %MEMORY.2)
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -272
  %682 = load i64, i64* %3, align 8
  store i64 %681, i64* %R8.i2109, align 8
  store i64 1, i64* %RAX.i1243, align 8
  %683 = add i64 %680, -44
  %684 = add i64 %682, 15
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RDI.i2322, align 8
  %688 = add i64 %680, -220
  %689 = add i64 %682, 21
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RCX.i2234, align 8
  store i64 1, i64* %RDX.i2316, align 8
  %693 = add i64 %680, -56
  %694 = add i64 %682, 26
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = sub i32 1, %696
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RDX.i2316, align 8
  %699 = lshr i32 %697, 31
  %700 = sub i32 %691, %697
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RCX.i2234, align 8
  %702 = icmp ult i32 %691, %697
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %26, align 1
  %704 = and i32 %700, 255
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %33, align 1
  %709 = xor i32 %697, %691
  %710 = xor i32 %709, %700
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %39, align 1
  %714 = icmp eq i32 %700, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %42, align 1
  %716 = lshr i32 %700, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %45, align 1
  %718 = lshr i32 %691, 31
  %719 = xor i32 %699, %718
  %720 = xor i32 %716, %718
  %721 = add nuw nsw i32 %720, %719
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %51, align 1
  %724 = add i64 %680, -228
  %725 = add i64 %682, 34
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RDX.i2316, align 8
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -56
  %731 = add i64 %682, 37
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sub i32 %727, %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RDX.i2316, align 8
  %736 = icmp ult i32 %727, %733
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %26, align 1
  %738 = and i32 %734, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %33, align 1
  %743 = xor i32 %733, %727
  %744 = xor i32 %743, %734
  %745 = lshr i32 %744, 4
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %39, align 1
  %748 = icmp eq i32 %734, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %42, align 1
  %750 = lshr i32 %734, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %45, align 1
  %752 = lshr i32 %727, 31
  %753 = lshr i32 %733, 31
  %754 = xor i32 %753, %752
  %755 = xor i32 %750, %752
  %756 = add nuw nsw i32 %755, %754
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %51, align 1
  %759 = load i64, i64* %RAX.i1243, align 8
  %760 = add i64 %729, -68
  %761 = add i64 %682, 40
  store i64 %761, i64* %3, align 8
  %762 = trunc i64 %759 to i32
  %763 = inttoptr i64 %760 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = sub i32 %762, %764
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RAX.i1243, align 8
  %767 = icmp ult i32 %762, %764
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %26, align 1
  %769 = and i32 %765, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %33, align 1
  %774 = xor i32 %764, %762
  %775 = xor i32 %774, %765
  %776 = lshr i32 %775, 4
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  store i8 %778, i8* %39, align 1
  %779 = icmp eq i32 %765, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %42, align 1
  %781 = lshr i32 %765, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %45, align 1
  %783 = lshr i32 %762, 31
  %784 = lshr i32 %764, 31
  %785 = xor i32 %784, %783
  %786 = xor i32 %781, %783
  %787 = add nuw nsw i32 %786, %785
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %51, align 1
  %790 = load i32, i32* %ECX.i2313, align 4
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RSI.i2319, align 8
  store i64 %766, i64* %RCX.i2234, align 8
  %792 = add i64 %682, 68833
  %793 = add i64 %682, 49
  %794 = load i64, i64* %6, align 8
  %795 = add i64 %794, -8
  %796 = inttoptr i64 %795 to i64*
  store i64 %793, i64* %796, align 8
  store i64 %795, i64* %6, align 8
  store i64 %792, i64* %3, align 8
  %call2_43a4fb = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %792, %struct.Memory* %MEMORY.2)
  %797 = load i64, i64* %3, align 8
  store i8 1, i8* %R9B.i2052, align 1
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -264
  %800 = add i64 %797, 9
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i1243, align 8
  %804 = add i64 %798, -216
  %805 = add i64 %797, 15
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  store i32 %802, i32* %806, align 4
  %807 = load i64, i64* %RBP.i, align 8
  %808 = add i64 %807, -260
  %809 = load i64, i64* %3, align 8
  %810 = add i64 %809, 6
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RAX.i1243, align 8
  %814 = add i64 %807, -224
  %815 = add i64 %809, 12
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  store i32 %812, i32* %816, align 4
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -40
  %819 = load i64, i64* %3, align 8
  %820 = add i64 %819, 4
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %818 to i64*
  %822 = load i64, i64* %821, align 8
  store i64 %822, i64* %R8.i2109, align 8
  %823 = add i64 %822, 14168
  %824 = add i64 %819, 11
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %R8.i2109, align 8
  %827 = add i64 %817, -44
  %828 = add i64 %819, 15
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  %832 = mul nsw i64 %831, 632
  store i64 %832, i64* %60, align 8
  %833 = lshr i64 %832, 63
  %834 = add i64 %832, %826
  store i64 %834, i64* %R8.i2109, align 8
  %835 = icmp ult i64 %834, %826
  %836 = icmp ult i64 %834, %832
  %837 = or i1 %835, %836
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %26, align 1
  %839 = trunc i64 %834 to i32
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %33, align 1
  %845 = xor i64 %832, %826
  %846 = xor i64 %845, %834
  %847 = lshr i64 %846, 4
  %848 = trunc i64 %847 to i8
  %849 = and i8 %848, 1
  store i8 %849, i8* %39, align 1
  %850 = icmp eq i64 %834, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %42, align 1
  %852 = lshr i64 %834, 63
  %853 = trunc i64 %852 to i8
  store i8 %853, i8* %45, align 1
  %854 = lshr i64 %826, 63
  %855 = xor i64 %852, %854
  %856 = xor i64 %852, %833
  %857 = add nuw nsw i64 %855, %856
  %858 = icmp eq i64 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %51, align 1
  %860 = add i64 %817, -240
  %861 = add i64 %819, 32
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i64*
  store i64 %834, i64* %862, align 8
  %863 = load i64, i64* %RBP.i, align 8
  %864 = add i64 %863, -40
  %865 = load i64, i64* %3, align 8
  %866 = add i64 %865, 4
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %864 to i64*
  %868 = load i64, i64* %867, align 8
  store i64 %868, i64* %R8.i2109, align 8
  %869 = add i64 %868, 14168
  %870 = add i64 %865, 11
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  store i64 %872, i64* %R8.i2109, align 8
  %873 = add i64 %863, -268
  %874 = add i64 %865, 18
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = sext i32 %876 to i64
  %878 = mul nsw i64 %877, 632
  store i64 %878, i64* %60, align 8
  %879 = lshr i64 %878, 63
  %880 = add i64 %878, %872
  store i64 %880, i64* %R8.i2109, align 8
  %881 = icmp ult i64 %880, %872
  %882 = icmp ult i64 %880, %878
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %26, align 1
  %885 = trunc i64 %880 to i32
  %886 = and i32 %885, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886)
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %33, align 1
  %891 = xor i64 %878, %872
  %892 = xor i64 %891, %880
  %893 = lshr i64 %892, 4
  %894 = trunc i64 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %39, align 1
  %896 = icmp eq i64 %880, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %42, align 1
  %898 = lshr i64 %880, 63
  %899 = trunc i64 %898 to i8
  store i8 %899, i8* %45, align 1
  %900 = lshr i64 %872, 63
  %901 = xor i64 %898, %900
  %902 = xor i64 %898, %879
  %903 = add nuw nsw i64 %901, %902
  %904 = icmp eq i64 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %51, align 1
  %906 = add i64 %863, -248
  %907 = add i64 %865, 35
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i64*
  store i64 %880, i64* %908, align 8
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -240
  %911 = load i64, i64* %3, align 8
  %912 = add i64 %911, 7
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %910 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %R8.i2109, align 8
  %915 = add i64 %914, 532
  %916 = add i64 %911, 15
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  store i8 0, i8* %26, align 1
  %919 = and i32 %918, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %924 = icmp eq i32 %918, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %42, align 1
  %926 = lshr i32 %918, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %928 = add i64 %909, -353
  %929 = load i8, i8* %R9B.i2052, align 1
  %930 = add i64 %911, 22
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i8*
  store i8 %929, i8* %931, align 1
  %932 = load i64, i64* %3, align 8
  %933 = add i64 %932, 29
  %934 = add i64 %932, 6
  %935 = load i8, i8* %42, align 1
  %936 = icmp eq i8 %935, 0
  %937 = select i1 %936, i64 %933, i64 %934
  store i64 %937, i64* %3, align 8
  br i1 %936, label %block_.L_43a591, label %block_43a57a

block_43a57a:                                     ; preds = %block_.L_43a4a0
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -248
  %940 = add i64 %937, 7
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RAX.i1243, align 8
  %943 = add i64 %942, 532
  %944 = add i64 %937, 14
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  store i8 0, i8* %26, align 1
  %947 = and i32 %946, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %952 = icmp eq i32 %946, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %42, align 1
  %954 = lshr i32 %946, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %956 = xor i1 %952, true
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %CL.i1982, align 1
  %958 = add i64 %938, -353
  %959 = add i64 %937, 23
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i8*
  store i8 %957, i8* %960, align 1
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_43a591

block_.L_43a591:                                  ; preds = %block_43a57a, %block_.L_43a4a0
  %961 = phi i64 [ %.pre101, %block_43a57a ], [ %933, %block_.L_43a4a0 ]
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -353
  %964 = add i64 %961, 6
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i8*
  %966 = load i8, i8* %965, align 1
  %967 = and i8 %966, 1
  store i8 0, i8* %26, align 1
  %968 = zext i8 %967 to i32
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = xor i8 %970, 1
  store i8 %971, i8* %33, align 1
  %972 = xor i8 %967, 1
  store i8 %972, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %973 = zext i8 %967 to i64
  store i64 %973, i64* %RCX.i2234, align 8
  store i8 %967, i8* %AL.i1989, align 1
  store i8 %967, i8* getelementptr inbounds (%G_0x723694_type, %G_0x723694_type* @G_0x723694, i64 0, i32 0, i64 0), align 8
  %974 = add i64 %962, -68
  %975 = add i64 %961, 24
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  store i8 0, i8* %26, align 1
  %978 = and i32 %977, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %983 = icmp eq i32 %977, 0
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %42, align 1
  %985 = lshr i32 %977, 31
  %986 = trunc i32 %985 to i8
  store i8 %986, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v161 = select i1 %983, i64 159, i64 30
  %987 = add i64 %961, %.v161
  store i64 %987, i64* %3, align 8
  br i1 %983, label %block_.L_43a630, label %block_43a5af

block_43a5af:                                     ; preds = %block_.L_43a591
  %988 = add i64 %962, -184
  %989 = add i64 %987, 7
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = add i32 %991, -8
  %993 = icmp ult i32 %991, 8
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %26, align 1
  %995 = and i32 %992, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %33, align 1
  %1000 = xor i32 %992, %991
  %1001 = lshr i32 %1000, 4
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %39, align 1
  %1004 = icmp eq i32 %992, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %42, align 1
  %1006 = lshr i32 %992, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %45, align 1
  %1008 = lshr i32 %991, 31
  %1009 = xor i32 %1006, %1008
  %1010 = add nuw nsw i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %51, align 1
  %.v162 = select i1 %1004, i64 13, i64 129
  %1013 = add i64 %987, %.v162
  store i64 %1013, i64* %3, align 8
  br i1 %1004, label %block_43a5bc, label %block_.L_43a630

block_43a5bc:                                     ; preds = %block_43a5af
  %1014 = add i64 %962, -240
  %1015 = add i64 %1013, 7
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i64*
  %1017 = load i64, i64* %1016, align 8
  store i64 %1017, i64* %RAX.i1243, align 8
  %1018 = add i64 %1017, 532
  %1019 = add i64 %1013, 14
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  store i8 0, i8* %26, align 1
  %1022 = and i32 %1021, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1027 = icmp eq i32 %1021, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %42, align 1
  %1029 = lshr i32 %1021, 31
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v198 = select i1 %1027, i64 57, i64 20
  %1031 = add i64 %1013, %.v198
  store i64 %1031, i64* %3, align 8
  br i1 %1027, label %block_.L_43a5f5, label %block_43a5d0

block_43a5d0:                                     ; preds = %block_43a5bc
  %1032 = add i64 %962, -248
  %1033 = add i64 %1031, 7
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %RAX.i1243, align 8
  %1036 = add i64 %1035, 532
  %1037 = add i64 %1031, 14
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  store i8 0, i8* %26, align 1
  %1040 = and i32 %1039, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1045 = icmp eq i32 %1039, 0
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %42, align 1
  %1047 = lshr i32 %1039, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v199 = select i1 %1045, i64 20, i64 37
  %1049 = add i64 %1031, %.v199
  store i64 %1049, i64* %3, align 8
  br i1 %1045, label %block_43a5e4, label %block_.L_43a5f5

block_43a5e4:                                     ; preds = %block_43a5d0
  %1050 = add i64 %962, -76
  %1051 = add i64 %1049, 3
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = shl i32 %1053, 1
  %1055 = icmp slt i32 %1053, 0
  %1056 = icmp slt i32 %1054, 0
  %1057 = xor i1 %1055, %1056
  %1058 = zext i32 %1054 to i64
  store i64 %1058, i64* %RAX.i1243, align 8
  %.lobit60 = lshr i32 %1053, 31
  %1059 = trunc i32 %.lobit60 to i8
  store i8 %1059, i8* %26, align 1
  %1060 = and i32 %1054, 254
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1065 = icmp eq i32 %1054, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %42, align 1
  %1067 = lshr i32 %1053, 30
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %45, align 1
  %1070 = zext i1 %1057 to i8
  store i8 %1070, i8* %51, align 1
  %1071 = add i64 %962, -360
  %1072 = add i64 %1049, 11
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i32*
  store i32 %1054, i32* %1073, align 4
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 47
  store i64 %1075, i64* %3, align 8
  br label %block_.L_43a61f

block_.L_43a5f5:                                  ; preds = %block_43a5d0, %block_43a5bc
  %1076 = phi i64 [ %1049, %block_43a5d0 ], [ %1031, %block_43a5bc ]
  store i64 2, i64* %RAX.i1243, align 8
  %1077 = add i64 %962, -76
  %1078 = add i64 %1076, 8
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  %1081 = zext i32 %1080 to i64
  %1082 = shl nuw i64 %1081, 32
  %1083 = ashr i64 %1082, 33
  %1084 = shl nsw i64 %1083, 2
  %1085 = trunc i64 %1084 to i32
  %1086 = and i64 %1084, 4294967292
  store i64 %1086, i64* %RCX.i2234, align 8
  %1087 = lshr i64 %1083, 30
  %1088 = trunc i64 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1
  %1090 = and i32 %1085, 252
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1095 = icmp eq i32 %1085, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %42, align 1
  %1097 = lshr i64 %1083, 29
  %1098 = trunc i64 %1097 to i8
  %1099 = and i8 %1098, 1
  store i8 %1099, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1100 = add i64 %1076, 16
  store i64 %1100, i64* %3, align 8
  %1101 = load i32, i32* %1079, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RDX.i2316, align 8
  %1103 = add i64 %962, -364
  %1104 = add i64 %1076, 22
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  store i32 2, i32* %1105, align 4
  %1106 = load i32, i32* %EDX.i2070.pre-phi, align 4
  %1107 = zext i32 %1106 to i64
  %1108 = load i64, i64* %3, align 8
  store i64 %1107, i64* %RAX.i1243, align 8
  %1109 = sext i32 %1106 to i64
  %1110 = lshr i64 %1109, 32
  store i64 %1110, i64* %433, align 8
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -364
  %1113 = add i64 %1108, 9
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RSI.i2319, align 8
  %1117 = add i64 %1108, 11
  store i64 %1117, i64* %3, align 8
  %1118 = sext i32 %1115 to i64
  %1119 = shl nuw i64 %1110, 32
  %1120 = or i64 %1119, %1107
  %1121 = sdiv i64 %1120, %1118
  %1122 = shl i64 %1121, 32
  %1123 = ashr exact i64 %1122, 32
  %1124 = icmp eq i64 %1121, %1123
  br i1 %1124, label %1127, label %1125

; <label>:1125:                                   ; preds = %block_.L_43a5f5
  %1126 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1117, %struct.Memory* %MEMORY.2)
  %.pre102 = load i32, i32* %EDX.i2070.pre-phi, align 4
  %.pre103 = load i64, i64* %3, align 8
  %.pre104 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:1127:                                   ; preds = %block_.L_43a5f5
  %1128 = srem i64 %1120, %1118
  %1129 = and i64 %1121, 4294967295
  store i64 %1129, i64* %RAX.i1243, align 8
  %1130 = and i64 %1128, 4294967295
  store i64 %1130, i64* %RDX.i2316, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1131 = trunc i64 %1128 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1127, %1125
  %1132 = phi i64 [ %.pre104, %1125 ], [ %1111, %1127 ]
  %1133 = phi i64 [ %.pre103, %1125 ], [ %1117, %1127 ]
  %1134 = phi i32 [ %.pre102, %1125 ], [ %1131, %1127 ]
  %1135 = phi %struct.Memory* [ %1126, %1125 ], [ %MEMORY.2, %1127 ]
  %1136 = load i64, i64* %RCX.i2234, align 8
  %1137 = zext i32 %1134 to i64
  %1138 = trunc i64 %1136 to i32
  %1139 = add i32 %1134, %1138
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RCX.i2234, align 8
  %1141 = icmp ult i32 %1139, %1138
  %1142 = icmp ult i32 %1139, %1134
  %1143 = or i1 %1141, %1142
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %26, align 1
  %1145 = and i32 %1139, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %33, align 1
  %1150 = xor i64 %1137, %1136
  %1151 = trunc i64 %1150 to i32
  %1152 = xor i32 %1151, %1139
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %39, align 1
  %1156 = icmp eq i32 %1139, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %42, align 1
  %1158 = lshr i32 %1139, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %45, align 1
  %1160 = lshr i32 %1138, 31
  %1161 = lshr i32 %1134, 31
  %1162 = xor i32 %1158, %1160
  %1163 = xor i32 %1158, %1161
  %1164 = add nuw nsw i32 %1162, %1163
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %51, align 1
  %1167 = add i64 %1132, -360
  %1168 = add i64 %1133, 8
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  store i32 %1139, i32* %1169, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_43a61f

block_.L_43a61f:                                  ; preds = %routine_idivl__esi.exit, %block_43a5e4
  %1170 = phi i64 [ %.pre105, %routine_idivl__esi.exit ], [ %1075, %block_43a5e4 ]
  %MEMORY.8 = phi %struct.Memory* [ %1135, %routine_idivl__esi.exit ], [ %MEMORY.2, %block_43a5e4 ]
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -360
  %1173 = add i64 %1170, 6
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX.i1243, align 8
  %1177 = add i64 %1171, -368
  %1178 = add i64 %1170, 12
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  store i32 %1175, i32* %1179, align 4
  %1180 = load i64, i64* %3, align 8
  %1181 = add i64 %1180, 14
  store i64 %1181, i64* %3, align 8
  br label %block_.L_43a639

block_.L_43a630:                                  ; preds = %block_43a5af, %block_.L_43a591
  %1182 = phi i64 [ %1013, %block_43a5af ], [ %987, %block_.L_43a591 ]
  %1183 = add i64 %962, -76
  %1184 = add i64 %1182, 3
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX.i1243, align 8
  %1188 = add i64 %962, -368
  %1189 = add i64 %1182, 9
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  store i32 %1186, i32* %1190, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_43a639

block_.L_43a639:                                  ; preds = %block_.L_43a630, %block_.L_43a61f
  %1191 = phi i64 [ %.pre106, %block_.L_43a630 ], [ %1181, %block_.L_43a61f ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.2, %block_.L_43a630 ], [ %MEMORY.8, %block_.L_43a61f ]
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -368
  %1194 = add i64 %1191, 6
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX.i1243, align 8
  %1198 = add i64 %1192, -188
  %1199 = add i64 %1191, 12
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  store i32 %1196, i32* %1200, align 4
  %1201 = load i64, i64* %RBP.i, align 8
  %1202 = add i64 %1201, -272
  %1203 = load i64, i64* %3, align 8
  %1204 = add i64 %1203, 7
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1202 to i32*
  %1206 = load i32, i32* %1205, align 4
  store i8 0, i8* %26, align 1
  %1207 = and i32 %1206, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1212 = icmp eq i32 %1206, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %42, align 1
  %1214 = lshr i32 %1206, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v163 = select i1 %1212, i64 13, i64 33
  %1216 = add i64 %1203, %.v163
  store i64 %1216, i64* %3, align 8
  br i1 %1212, label %block_43a652, label %block_.L_43a666

block_43a652:                                     ; preds = %block_.L_43a639
  %1217 = add i64 %1201, -240
  %1218 = add i64 %1216, 7
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i64*
  %1220 = load i64, i64* %1219, align 8
  store i64 %1220, i64* %RAX.i1243, align 8
  %1221 = add i64 %1220, 612
  %1222 = add i64 %1216, 14
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  store i8 0, i8* %26, align 1
  %1225 = and i32 %1224, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1230 = icmp eq i32 %1224, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %42, align 1
  %1232 = lshr i32 %1224, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v197 = select i1 %1230, i64 20, i64 3294
  %1234 = add i64 %1216, %.v197
  store i64 %1234, i64* %3, align 8
  br i1 %1230, label %block_.L_43a666, label %block_.L_43b330

block_.L_43a666:                                  ; preds = %block_43a652, %block_.L_43a639
  %1235 = phi i64 [ %1234, %block_43a652 ], [ %1216, %block_.L_43a639 ]
  %1236 = add i64 %1201, -56
  %1237 = add i64 %1235, 4
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  store i8 0, i8* %26, align 1
  %1240 = and i32 %1239, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240)
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1245 = icmp eq i32 %1239, 0
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %42, align 1
  %1247 = lshr i32 %1239, 31
  %1248 = trunc i32 %1247 to i8
  store i8 %1248, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v164 = select i1 %1245, i64 90, i64 10
  %1249 = add i64 %1235, %.v164
  store i64 %1249, i64* %3, align 8
  br i1 %1245, label %block_.L_43a6c0, label %block_43a670

block_43a670:                                     ; preds = %block_.L_43a666
  %1250 = load i8, i8* getelementptr inbounds (%G_0x723694_type, %G_0x723694_type* @G_0x723694, i64 0, i32 0, i64 0), align 8
  %1251 = zext i8 %1250 to i64
  store i64 %1251, i64* %RAX.i1243, align 8
  %1252 = zext i8 %1250 to i32
  store i8 0, i8* %26, align 1
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1257 = icmp eq i8 %1250, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v165 = select i1 %1257, i64 54, i64 17
  %1259 = add i64 %1249, %.v165
  store i64 %1259, i64* %3, align 8
  br i1 %1257, label %block_.L_43a6a6, label %block_43a681

block_43a681:                                     ; preds = %block_43a670
  %1260 = add i64 %1201, -240
  %1261 = add i64 %1259, 7
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %RAX.i1243, align 8
  %1264 = add i64 %1263, 532
  %1265 = add i64 %1259, 14
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  %1267 = load i32, i32* %1266, align 4
  store i8 0, i8* %26, align 1
  %1268 = and i32 %1267, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1273 = icmp eq i32 %1267, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %42, align 1
  %1275 = lshr i32 %1267, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v166 = select i1 %1273, i64 20, i64 37
  %1277 = add i64 %1259, %.v166
  store i64 %1277, i64* %3, align 8
  br i1 %1273, label %block_43a695, label %block_.L_43a6a6

block_43a695:                                     ; preds = %block_43a681
  %1278 = add i64 %1201, -64
  %1279 = add i64 %1277, 3
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = shl i32 %1281, 1
  %1283 = icmp slt i32 %1281, 0
  %1284 = icmp slt i32 %1282, 0
  %1285 = xor i1 %1283, %1284
  %1286 = zext i32 %1282 to i64
  store i64 %1286, i64* %RAX.i1243, align 8
  %.lobit61 = lshr i32 %1281, 31
  %1287 = trunc i32 %.lobit61 to i8
  store i8 %1287, i8* %26, align 1
  %1288 = and i32 %1282, 254
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1293 = icmp eq i32 %1282, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %42, align 1
  %1295 = lshr i32 %1281, 30
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %45, align 1
  %1298 = zext i1 %1285 to i8
  store i8 %1298, i8* %51, align 1
  %1299 = add i64 %1201, -372
  %1300 = add i64 %1277, 11
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  store i32 %1282, i32* %1301, align 4
  %1302 = load i64, i64* %3, align 8
  %1303 = add i64 %1302, 14
  store i64 %1303, i64* %3, align 8
  br label %block_.L_43a6af

block_.L_43a6a6:                                  ; preds = %block_43a681, %block_43a670
  %1304 = phi i64 [ %1277, %block_43a681 ], [ %1259, %block_43a670 ]
  %1305 = add i64 %1201, -64
  %1306 = add i64 %1304, 3
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RAX.i1243, align 8
  %1310 = add i64 %1201, -372
  %1311 = add i64 %1304, 9
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  store i32 %1308, i32* %1312, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_43a6af

block_.L_43a6af:                                  ; preds = %block_.L_43a6a6, %block_43a695
  %1313 = phi i64 [ %.pre107, %block_.L_43a6a6 ], [ %1303, %block_43a695 ]
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -372
  %1316 = add i64 %1313, 6
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RAX.i1243, align 8
  %1320 = add i64 %1314, -376
  %1321 = add i64 %1313, 12
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  store i32 %1318, i32* %1322, align 4
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 21
  br label %block_.L_43a6d0

block_.L_43a6c0:                                  ; preds = %block_.L_43a666
  store i64 1, i64* %RAX.i1243, align 8
  %1325 = add i64 %1201, -376
  %1326 = add i64 %1249, 11
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  store i32 1, i32* %1327, align 4
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 5
  store i64 %1329, i64* %3, align 8
  br label %block_.L_43a6d0

block_.L_43a6d0:                                  ; preds = %block_.L_43a6c0, %block_.L_43a6af
  %storemerge62 = phi i64 [ %1324, %block_.L_43a6af ], [ %1329, %block_.L_43a6c0 ]
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -376
  %1332 = add i64 %storemerge62, 6
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RAX.i1243, align 8
  %1336 = add i64 %1330, -96
  %1337 = add i64 %storemerge62, 9
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i32*
  store i32 %1334, i32* %1338, align 4
  %1339 = load i64, i64* %RBP.i, align 8
  %1340 = add i64 %1339, -56
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, 4
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1340 to i32*
  %1344 = load i32, i32* %1343, align 4
  store i8 0, i8* %26, align 1
  %1345 = and i32 %1344, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1350 = icmp eq i32 %1344, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %42, align 1
  %1352 = lshr i32 %1344, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v167 = select i1 %1350, i64 90, i64 10
  %1354 = add i64 %1341, %.v167
  store i64 %1354, i64* %3, align 8
  br i1 %1350, label %block_.L_43a733, label %block_43a6e3

block_43a6e3:                                     ; preds = %block_.L_43a6d0
  %1355 = load i8, i8* getelementptr inbounds (%G_0x723694_type, %G_0x723694_type* @G_0x723694, i64 0, i32 0, i64 0), align 8
  %1356 = zext i8 %1355 to i64
  store i64 %1356, i64* %RAX.i1243, align 8
  %1357 = zext i8 %1355 to i32
  store i8 0, i8* %26, align 1
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1362 = icmp eq i8 %1355, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v168 = select i1 %1362, i64 54, i64 17
  %1364 = add i64 %1354, %.v168
  store i64 %1364, i64* %3, align 8
  br i1 %1362, label %block_.L_43a719, label %block_43a6f4

block_43a6f4:                                     ; preds = %block_43a6e3
  %1365 = add i64 %1339, -248
  %1366 = add i64 %1364, 7
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i64*
  %1368 = load i64, i64* %1367, align 8
  store i64 %1368, i64* %RAX.i1243, align 8
  %1369 = add i64 %1368, 532
  %1370 = add i64 %1364, 14
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  store i8 0, i8* %26, align 1
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1378 = icmp eq i32 %1372, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %42, align 1
  %1380 = lshr i32 %1372, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v169 = select i1 %1378, i64 20, i64 37
  %1382 = add i64 %1364, %.v169
  store i64 %1382, i64* %3, align 8
  br i1 %1378, label %block_43a708, label %block_.L_43a719

block_43a708:                                     ; preds = %block_43a6f4
  %1383 = add i64 %1339, -64
  %1384 = add i64 %1382, 3
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = shl i32 %1386, 1
  %1388 = icmp slt i32 %1386, 0
  %1389 = icmp slt i32 %1387, 0
  %1390 = xor i1 %1388, %1389
  %1391 = zext i32 %1387 to i64
  store i64 %1391, i64* %RAX.i1243, align 8
  %.lobit63 = lshr i32 %1386, 31
  %1392 = trunc i32 %.lobit63 to i8
  store i8 %1392, i8* %26, align 1
  %1393 = and i32 %1387, 254
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1398 = icmp eq i32 %1387, 0
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %42, align 1
  %1400 = lshr i32 %1386, 30
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %45, align 1
  %1403 = zext i1 %1390 to i8
  store i8 %1403, i8* %51, align 1
  %1404 = add i64 %1339, -380
  %1405 = add i64 %1382, 11
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  store i32 %1387, i32* %1406, align 4
  %1407 = load i64, i64* %3, align 8
  %1408 = add i64 %1407, 14
  store i64 %1408, i64* %3, align 8
  br label %block_.L_43a722

block_.L_43a719:                                  ; preds = %block_43a6f4, %block_43a6e3
  %1409 = phi i64 [ %1382, %block_43a6f4 ], [ %1364, %block_43a6e3 ]
  %1410 = add i64 %1339, -64
  %1411 = add i64 %1409, 3
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RAX.i1243, align 8
  %1415 = add i64 %1339, -380
  %1416 = add i64 %1409, 9
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  store i32 %1413, i32* %1417, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_43a722

block_.L_43a722:                                  ; preds = %block_.L_43a719, %block_43a708
  %1418 = phi i64 [ %.pre108, %block_.L_43a719 ], [ %1408, %block_43a708 ]
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -380
  %1421 = add i64 %1418, 6
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX.i1243, align 8
  %1425 = add i64 %1419, -384
  %1426 = add i64 %1418, 12
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  store i32 %1423, i32* %1427, align 4
  %1428 = load i64, i64* %3, align 8
  %1429 = add i64 %1428, 21
  br label %block_.L_43a743

block_.L_43a733:                                  ; preds = %block_.L_43a6d0
  store i64 1, i64* %RAX.i1243, align 8
  %1430 = add i64 %1339, -384
  %1431 = add i64 %1354, 11
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  store i32 1, i32* %1432, align 4
  %1433 = load i64, i64* %3, align 8
  %1434 = add i64 %1433, 5
  store i64 %1434, i64* %3, align 8
  br label %block_.L_43a743

block_.L_43a743:                                  ; preds = %block_.L_43a733, %block_.L_43a722
  %storemerge64 = phi i64 [ %1429, %block_.L_43a722 ], [ %1434, %block_.L_43a733 ]
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -384
  %1437 = add i64 %storemerge64, 6
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RAX.i1243, align 8
  %1441 = add i64 %1435, -92
  %1442 = add i64 %storemerge64, 9
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  store i32 %1439, i32* %1443, align 4
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = add i64 %1444, -24
  %1446 = load i64, i64* %3, align 8
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1445 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RCX.i2234, align 8
  %1450 = add i64 %1444, -276
  %1451 = add i64 %1446, 11
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sext i32 %1453 to i64
  store i64 %1454, i64* %RDX.i2316, align 8
  %1455 = shl nsw i64 %1454, 3
  %1456 = add i64 %1455, %1449
  %1457 = add i64 %1446, 15
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i64*
  %1459 = load i64, i64* %1458, align 8
  store i64 %1459, i64* %RCX.i2234, align 8
  %1460 = add i64 %1444, -280
  %1461 = add i64 %1446, 22
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i32*
  %1463 = load i32, i32* %1462, align 4
  %1464 = sext i32 %1463 to i64
  %1465 = shl nsw i64 %1464, 1
  store i64 %1465, i64* %RDX.i2316, align 8
  %1466 = add i64 %1465, %1459
  store i64 %1466, i64* %RCX.i2234, align 8
  %1467 = icmp ult i64 %1466, %1459
  %1468 = icmp ult i64 %1466, %1465
  %1469 = or i1 %1467, %1468
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %26, align 1
  %1471 = trunc i64 %1466 to i32
  %1472 = and i32 %1471, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %33, align 1
  %1477 = xor i64 %1465, %1459
  %1478 = xor i64 %1477, %1466
  %1479 = lshr i64 %1478, 4
  %1480 = trunc i64 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %39, align 1
  %1482 = icmp eq i64 %1466, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %42, align 1
  %1484 = lshr i64 %1466, 63
  %1485 = trunc i64 %1484 to i8
  store i8 %1485, i8* %45, align 1
  %1486 = lshr i64 %1459, 63
  %1487 = lshr i64 %1464, 62
  %1488 = and i64 %1487, 1
  %1489 = xor i64 %1484, %1486
  %1490 = xor i64 %1484, %1488
  %1491 = add nuw nsw i64 %1489, %1490
  %1492 = icmp eq i64 %1491, 2
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %51, align 1
  %1494 = add i64 %1444, -208
  %1495 = add i64 %1446, 35
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i64*
  store i64 %1466, i64* %1496, align 8
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -24
  %1499 = load i64, i64* %3, align 8
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RCX.i2234, align 8
  %1503 = add i64 %1497, -252
  %1504 = add i64 %1499, 11
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i2316, align 8
  %1508 = shl nsw i64 %1507, 3
  %1509 = add i64 %1508, %1502
  %1510 = add i64 %1499, 15
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i64*
  %1512 = load i64, i64* %1511, align 8
  store i64 %1512, i64* %RCX.i2234, align 8
  %1513 = add i64 %1497, -256
  %1514 = add i64 %1499, 22
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = sext i32 %1516 to i64
  %1518 = shl nsw i64 %1517, 1
  store i64 %1518, i64* %RDX.i2316, align 8
  %1519 = add i64 %1518, %1512
  store i64 %1519, i64* %RCX.i2234, align 8
  %1520 = icmp ult i64 %1519, %1512
  %1521 = icmp ult i64 %1519, %1518
  %1522 = or i1 %1520, %1521
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %26, align 1
  %1524 = trunc i64 %1519 to i32
  %1525 = and i32 %1524, 255
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %33, align 1
  %1530 = xor i64 %1518, %1512
  %1531 = xor i64 %1530, %1519
  %1532 = lshr i64 %1531, 4
  %1533 = trunc i64 %1532 to i8
  %1534 = and i8 %1533, 1
  store i8 %1534, i8* %39, align 1
  %1535 = icmp eq i64 %1519, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %42, align 1
  %1537 = lshr i64 %1519, 63
  %1538 = trunc i64 %1537 to i8
  store i8 %1538, i8* %45, align 1
  %1539 = lshr i64 %1512, 63
  %1540 = lshr i64 %1517, 62
  %1541 = and i64 %1540, 1
  %1542 = xor i64 %1537, %1539
  %1543 = xor i64 %1537, %1541
  %1544 = add nuw nsw i64 %1542, %1543
  %1545 = icmp eq i64 %1544, 2
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %51, align 1
  %1547 = add i64 %1497, -200
  %1548 = add i64 %1499, 35
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i64*
  store i64 %1519, i64* %1549, align 8
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -68
  %1552 = load i64, i64* %3, align 8
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554, align 4
  store i8 0, i8* %26, align 1
  %1556 = and i32 %1555, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1561 = icmp eq i32 %1555, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %42, align 1
  %1563 = lshr i32 %1555, 31
  %1564 = trunc i32 %1563 to i8
  store i8 %1564, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v148 = select i1 %1561, i64 355, i64 10
  %1565 = add i64 %1552, %.v148
  %1566 = add i64 %1550, -248
  %1567 = add i64 %1565, 7
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i64*
  %1569 = load i64, i64* %1568, align 8
  store i64 %1569, i64* %RAX.i1243, align 8
  %1570 = add i64 %1569, 12
  %1571 = add i64 %1565, 10
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RCX.i2234, align 8
  br i1 %1561, label %block_.L_43a8f7, label %block_43a79e

block_43a79e:                                     ; preds = %block_.L_43a743
  %1575 = add i64 %1550, -40
  %1576 = add i64 %1565, 14
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RAX.i1243, align 8
  %1579 = add i64 %1550, -72
  %1580 = add i64 %1565, 18
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %RDX.i2316, align 8
  %1584 = shl nsw i64 %1583, 2
  %1585 = add nsw i64 %1584, 72716
  %1586 = add i64 %1585, %1578
  %1587 = add i64 %1565, 25
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i32*
  %1589 = load i32, i32* %1588, align 4
  %1590 = add i32 %1589, %1573
  %1591 = zext i32 %1590 to i64
  store i64 %1591, i64* %RCX.i2234, align 8
  %1592 = and i32 %1590, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  %1597 = icmp eq i32 %1590, 0
  %1598 = zext i1 %1597 to i8
  %1599 = lshr i32 %1590, 31
  %1600 = trunc i32 %1599 to i8
  %1601 = add i64 %1565, 28
  store i8 0, i8* %26, align 1
  store i8 %1596, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %1598, i8* %42, align 1
  store i8 %1600, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1602 = icmp ne i8 %1600, 0
  %.v = select i1 %1602, i64 6, i64 19
  %1603 = add i64 %1601, %.v
  store i64 %1603, i64* %3, align 8
  br i1 %1602, label %block_43a7c0, label %block_.L_43a7cd

block_43a7c0:                                     ; preds = %block_43a79e
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %1604 = add i64 %1550, -388
  %1605 = add i64 %1603, 8
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  store i32 0, i32* %1606, align 4
  %1607 = load i64, i64* %3, align 8
  %1608 = add i64 %1607, 98
  store i64 %1608, i64* %3, align 8
  br label %block_.L_43a82a

block_.L_43a7cd:                                  ; preds = %block_43a79e
  %1609 = add i64 %1603, 7
  store i64 %1609, i64* %3, align 8
  %1610 = load i64, i64* %1568, align 8
  store i64 %1610, i64* %RAX.i1243, align 8
  %1611 = add i64 %1610, 12
  %1612 = add i64 %1603, 10
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RCX.i2234, align 8
  %1616 = add i64 %1603, 14
  store i64 %1616, i64* %3, align 8
  %1617 = load i64, i64* %1577, align 8
  store i64 %1617, i64* %RAX.i1243, align 8
  %1618 = add i64 %1603, 18
  store i64 %1618, i64* %3, align 8
  %1619 = load i32, i32* %1581, align 4
  %1620 = sext i32 %1619 to i64
  store i64 %1620, i64* %RDX.i2316, align 8
  %1621 = shl nsw i64 %1620, 2
  %1622 = add nsw i64 %1621, 72716
  %1623 = add i64 %1622, %1617
  %1624 = add i64 %1603, 25
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = add i32 %1626, %1614
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RCX.i2234, align 8
  %1629 = lshr i32 %1627, 31
  %1630 = add i32 %1627, -51
  %1631 = icmp ult i32 %1627, 51
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %26, align 1
  %1633 = and i32 %1630, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %33, align 1
  %1638 = xor i32 %1627, 16
  %1639 = xor i32 %1638, %1630
  %1640 = lshr i32 %1639, 4
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  store i8 %1642, i8* %39, align 1
  %1643 = icmp eq i32 %1630, 0
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %42, align 1
  %1645 = lshr i32 %1630, 31
  %1646 = trunc i32 %1645 to i8
  store i8 %1646, i8* %45, align 1
  %1647 = xor i32 %1645, %1629
  %1648 = add nuw nsw i32 %1647, %1629
  %1649 = icmp eq i32 %1648, 2
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %51, align 1
  %1651 = icmp ne i8 %1646, 0
  %1652 = xor i1 %1651, %1649
  %1653 = or i1 %1643, %1652
  %.v170 = select i1 %1653, i64 50, i64 34
  %1654 = add i64 %1603, %.v170
  store i64 %1654, i64* %3, align 8
  br i1 %1653, label %block_.L_43a7ff, label %block_43a7ef

block_43a7ef:                                     ; preds = %block_.L_43a7cd
  store i64 51, i64* %RAX.i1243, align 8
  %1655 = add i64 %1550, -392
  %1656 = add i64 %1654, 11
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  store i32 51, i32* %1657, align 4
  %1658 = load i64, i64* %3, align 8
  %1659 = add i64 %1658, 36
  store i64 %1659, i64* %3, align 8
  br label %block_.L_43a81e

block_.L_43a7ff:                                  ; preds = %block_.L_43a7cd
  %1660 = add i64 %1654, 7
  store i64 %1660, i64* %3, align 8
  %1661 = load i64, i64* %1568, align 8
  store i64 %1661, i64* %RAX.i1243, align 8
  %1662 = add i64 %1661, 12
  %1663 = add i64 %1654, 10
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RCX.i2234, align 8
  %1667 = add i64 %1654, 14
  store i64 %1667, i64* %3, align 8
  %1668 = load i64, i64* %1577, align 8
  store i64 %1668, i64* %RAX.i1243, align 8
  %1669 = add i64 %1654, 18
  store i64 %1669, i64* %3, align 8
  %1670 = load i32, i32* %1581, align 4
  %1671 = sext i32 %1670 to i64
  store i64 %1671, i64* %RDX.i2316, align 8
  %1672 = shl nsw i64 %1671, 2
  %1673 = add nsw i64 %1672, 72716
  %1674 = add i64 %1673, %1668
  %1675 = add i64 %1654, 25
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = add i32 %1677, %1665
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RCX.i2234, align 8
  %1680 = icmp ult i32 %1678, %1665
  %1681 = icmp ult i32 %1678, %1677
  %1682 = or i1 %1680, %1681
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %26, align 1
  %1684 = and i32 %1678, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %33, align 1
  %1689 = xor i32 %1677, %1665
  %1690 = xor i32 %1689, %1678
  %1691 = lshr i32 %1690, 4
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %39, align 1
  %1694 = icmp eq i32 %1678, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %42, align 1
  %1696 = lshr i32 %1678, 31
  %1697 = trunc i32 %1696 to i8
  store i8 %1697, i8* %45, align 1
  %1698 = lshr i32 %1665, 31
  %1699 = lshr i32 %1677, 31
  %1700 = xor i32 %1696, %1698
  %1701 = xor i32 %1696, %1699
  %1702 = add nuw nsw i32 %1700, %1701
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %51, align 1
  %1705 = add i64 %1550, -392
  %1706 = add i64 %1654, 31
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  store i32 %1678, i32* %1707, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_43a81e

block_.L_43a81e:                                  ; preds = %block_.L_43a7ff, %block_43a7ef
  %1708 = phi i64 [ %.pre109, %block_.L_43a7ff ], [ %1659, %block_43a7ef ]
  %1709 = load i64, i64* %RBP.i, align 8
  %1710 = add i64 %1709, -392
  %1711 = add i64 %1708, 6
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RAX.i1243, align 8
  %1715 = add i64 %1709, -388
  %1716 = add i64 %1708, 12
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  store i32 %1713, i32* %1717, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_43a82a

block_.L_43a82a:                                  ; preds = %block_.L_43a81e, %block_43a7c0
  %1718 = phi i64 [ %.pre110, %block_.L_43a81e ], [ %1608, %block_43a7c0 ]
  %1719 = load i64, i64* %RBP.i, align 8
  %1720 = add i64 %1719, -388
  %1721 = add i64 %1718, 6
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RAX.i1243, align 8
  %1725 = sext i32 %1723 to i64
  store i64 %1725, i64* %RCX.i2234, align 8
  %1726 = add nsw i64 %1725, 4924192
  %1727 = add i64 %1718, 17
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i8*
  %1729 = load i8, i8* %1728, align 1
  %1730 = zext i8 %1729 to i64
  store i64 %1730, i64* %RAX.i1243, align 8
  %1731 = add i64 %1719, -240
  %1732 = add i64 %1718, 24
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RCX.i2234, align 8
  %1735 = add i64 %1734, 12
  %1736 = add i64 %1718, 27
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RDX.i2316, align 8
  %1740 = add i64 %1719, -40
  %1741 = add i64 %1718, 31
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i64*
  %1743 = load i64, i64* %1742, align 8
  store i64 %1743, i64* %RCX.i2234, align 8
  %1744 = add i64 %1719, -72
  %1745 = add i64 %1718, 35
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  %1747 = load i32, i32* %1746, align 4
  %1748 = sext i32 %1747 to i64
  store i64 %1748, i64* %RSI.i2319, align 8
  %1749 = shl nsw i64 %1748, 2
  %1750 = add nsw i64 %1749, 72716
  %1751 = add i64 %1750, %1743
  %1752 = add i64 %1718, 42
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = add i32 %1754, %1738
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RDX.i2316, align 8
  %1757 = and i32 %1755, 255
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  %1762 = icmp eq i32 %1755, 0
  %1763 = zext i1 %1762 to i8
  %1764 = lshr i32 %1755, 31
  %1765 = trunc i32 %1764 to i8
  store i8 0, i8* %26, align 1
  store i8 %1761, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %1763, i8* %42, align 1
  store i8 %1765, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1766 = load i64, i64* %RBP.i, align 8
  %1767 = add i64 %1766, -396
  %1768 = zext i8 %1729 to i32
  %1769 = add i64 %1718, 51
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1767 to i32*
  store i32 %1768, i32* %1770, align 4
  %1771 = load i64, i64* %3, align 8
  %1772 = load i8, i8* %45, align 1
  %1773 = icmp ne i8 %1772, 0
  %1774 = load i8, i8* %51, align 1
  %1775 = icmp ne i8 %1774, 0
  %1776 = xor i1 %1773, %1775
  %.v200 = select i1 %1776, i64 6, i64 19
  %1777 = add i64 %1771, %.v200
  store i64 %1777, i64* %3, align 8
  br i1 %1776, label %block_43a863, label %block_.L_43a870

block_43a863:                                     ; preds = %block_.L_43a82a
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -400
  %1780 = add i64 %1777, 8
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i32*
  store i32 0, i32* %1781, align 4
  %1782 = load i64, i64* %3, align 8
  %1783 = add i64 %1782, 98
  store i64 %1783, i64* %3, align 8
  br label %block_.L_43a8cd

block_.L_43a870:                                  ; preds = %block_.L_43a82a
  %1784 = load i64, i64* %RBP.i, align 8
  %1785 = add i64 %1784, -240
  %1786 = add i64 %1777, 7
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RAX.i1243, align 8
  %1789 = add i64 %1788, 12
  %1790 = add i64 %1777, 10
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %RCX.i2234, align 8
  %1794 = add i64 %1784, -40
  %1795 = add i64 %1777, 14
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i64*
  %1797 = load i64, i64* %1796, align 8
  store i64 %1797, i64* %RAX.i1243, align 8
  %1798 = add i64 %1784, -72
  %1799 = add i64 %1777, 18
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = sext i32 %1801 to i64
  store i64 %1802, i64* %RDX.i2316, align 8
  %1803 = shl nsw i64 %1802, 2
  %1804 = add nsw i64 %1803, 72716
  %1805 = add i64 %1804, %1797
  %1806 = add i64 %1777, 25
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = add i32 %1808, %1792
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RCX.i2234, align 8
  %1811 = lshr i32 %1809, 31
  %1812 = add i32 %1809, -51
  %1813 = icmp ult i32 %1809, 51
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %26, align 1
  %1815 = and i32 %1812, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %33, align 1
  %1820 = xor i32 %1809, 16
  %1821 = xor i32 %1820, %1812
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %39, align 1
  %1825 = icmp eq i32 %1812, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %42, align 1
  %1827 = lshr i32 %1812, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %45, align 1
  %1829 = xor i32 %1827, %1811
  %1830 = add nuw nsw i32 %1829, %1811
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %51, align 1
  %1833 = icmp ne i8 %1828, 0
  %1834 = xor i1 %1833, %1831
  %1835 = or i1 %1825, %1834
  %.v171 = select i1 %1835, i64 50, i64 34
  %1836 = add i64 %1777, %.v171
  store i64 %1836, i64* %3, align 8
  br i1 %1835, label %block_.L_43a8a2, label %block_43a892

block_43a892:                                     ; preds = %block_.L_43a870
  store i64 51, i64* %RAX.i1243, align 8
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -404
  %1839 = add i64 %1836, 11
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  store i32 51, i32* %1840, align 4
  %1841 = load i64, i64* %3, align 8
  %1842 = add i64 %1841, 36
  store i64 %1842, i64* %3, align 8
  br label %block_.L_43a8c1

block_.L_43a8a2:                                  ; preds = %block_.L_43a870
  %1843 = load i64, i64* %RBP.i, align 8
  %1844 = add i64 %1843, -240
  %1845 = add i64 %1836, 7
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RAX.i1243, align 8
  %1848 = add i64 %1847, 12
  %1849 = add i64 %1836, 10
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RCX.i2234, align 8
  %1853 = add i64 %1843, -40
  %1854 = add i64 %1836, 14
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i64*
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %RAX.i1243, align 8
  %1857 = add i64 %1843, -72
  %1858 = add i64 %1836, 18
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = sext i32 %1860 to i64
  store i64 %1861, i64* %RDX.i2316, align 8
  %1862 = shl nsw i64 %1861, 2
  %1863 = add nsw i64 %1862, 72716
  %1864 = add i64 %1863, %1856
  %1865 = add i64 %1836, 25
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = add i32 %1867, %1851
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RCX.i2234, align 8
  %1870 = icmp ult i32 %1868, %1851
  %1871 = icmp ult i32 %1868, %1867
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %26, align 1
  %1874 = and i32 %1868, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %33, align 1
  %1879 = xor i32 %1867, %1851
  %1880 = xor i32 %1879, %1868
  %1881 = lshr i32 %1880, 4
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %39, align 1
  %1884 = icmp eq i32 %1868, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %42, align 1
  %1886 = lshr i32 %1868, 31
  %1887 = trunc i32 %1886 to i8
  store i8 %1887, i8* %45, align 1
  %1888 = lshr i32 %1851, 31
  %1889 = lshr i32 %1867, 31
  %1890 = xor i32 %1886, %1888
  %1891 = xor i32 %1886, %1889
  %1892 = add nuw nsw i32 %1890, %1891
  %1893 = icmp eq i32 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %51, align 1
  %1895 = add i64 %1843, -404
  %1896 = add i64 %1836, 31
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i32*
  store i32 %1868, i32* %1897, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_43a8c1

block_.L_43a8c1:                                  ; preds = %block_.L_43a8a2, %block_43a892
  %1898 = phi i64 [ %.pre111, %block_.L_43a8a2 ], [ %1842, %block_43a892 ]
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -404
  %1901 = add i64 %1898, 6
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RAX.i1243, align 8
  %1905 = add i64 %1899, -400
  %1906 = add i64 %1898, 12
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  store i32 %1903, i32* %1907, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_43a8cd

block_.L_43a8cd:                                  ; preds = %block_.L_43a8c1, %block_43a863
  %1908 = phi i64 [ %.pre112, %block_.L_43a8c1 ], [ %1783, %block_43a863 ]
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -400
  %1911 = add i64 %1908, 6
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i32*
  %1913 = load i32, i32* %1912, align 4
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RAX.i1243, align 8
  %1915 = sext i32 %1913 to i64
  store i64 %1915, i64* %RCX.i2234, align 8
  %1916 = add nsw i64 %1915, 4924192
  %1917 = add i64 %1908, 17
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i8*
  %1919 = load i8, i8* %1918, align 1
  %1920 = zext i8 %1919 to i64
  store i64 %1920, i64* %RAX.i1243, align 8
  %1921 = add i64 %1909, -396
  %1922 = add i64 %1908, 23
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = zext i8 %1919 to i32
  %1926 = add i32 %1925, %1924
  %1927 = add i32 %1926, 1
  %1928 = zext i32 %1927 to i64
  %1929 = shl nuw i64 %1928, 32
  %1930 = ashr i64 %1929, 33
  %1931 = trunc i32 %1927 to i8
  %1932 = and i8 %1931, 1
  %1933 = trunc i64 %1930 to i32
  %1934 = and i64 %1930, 4294967295
  store i64 %1934, i64* %RDX.i2316, align 8
  store i8 %1932, i8* %26, align 1
  %1935 = and i32 %1933, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1940 = icmp eq i32 %1933, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %42, align 1
  %1942 = lshr i64 %1930, 31
  %1943 = trunc i64 %1942 to i8
  %1944 = and i8 %1943, 1
  store i8 %1944, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -408
  %1947 = trunc i64 %1930 to i32
  %1948 = add i64 %1908, 36
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1946 to i32*
  store i32 %1947, i32* %1949, align 4
  %1950 = load i64, i64* %3, align 8
  %1951 = add i64 %1950, 37
  store i64 %1951, i64* %3, align 8
  br label %block_.L_43a917

block_.L_43a8f7:                                  ; preds = %block_.L_43a743
  %1952 = add i64 %1550, -240
  %1953 = add i64 %1565, 17
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i64*
  %1955 = load i64, i64* %1954, align 8
  store i64 %1955, i64* %RAX.i1243, align 8
  %1956 = add i64 %1955, 12
  %1957 = add i64 %1565, 20
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i32*
  %1959 = load i32, i32* %1958, align 4
  %1960 = add i32 %1959, %1573
  %1961 = add i32 %1960, 1
  %1962 = zext i32 %1961 to i64
  %1963 = shl nuw i64 %1962, 32
  %1964 = ashr i64 %1963, 33
  %1965 = trunc i32 %1961 to i8
  %1966 = and i8 %1965, 1
  %1967 = trunc i64 %1964 to i32
  %1968 = and i64 %1964, 4294967295
  store i64 %1968, i64* %RCX.i2234, align 8
  store i8 %1966, i8* %26, align 1
  %1969 = and i32 %1967, 255
  %1970 = tail call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  store i8 %1973, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1974 = icmp eq i32 %1967, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %42, align 1
  %1976 = lshr i64 %1964, 31
  %1977 = trunc i64 %1976 to i8
  %1978 = and i8 %1977, 1
  store i8 %1978, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1979 = load i64, i64* %RBP.i, align 8
  %1980 = add i64 %1979, -408
  %1981 = trunc i64 %1964 to i32
  %1982 = add i64 %1565, 31
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1980 to i32*
  store i32 %1981, i32* %1983, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_43a917

block_.L_43a917:                                  ; preds = %block_.L_43a8f7, %block_.L_43a8cd
  %1984 = phi i64 [ %.pre113, %block_.L_43a8f7 ], [ %1951, %block_.L_43a8cd ]
  %1985 = load i64, i64* %RBP.i, align 8
  %1986 = add i64 %1985, -408
  %1987 = add i64 %1984, 6
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RAX.i1243, align 8
  %1991 = add i64 %1985, -212
  %1992 = add i64 %1984, 12
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  store i32 %1989, i32* %1993, align 4
  %1994 = load i64, i64* %RBP.i, align 8
  %1995 = add i64 %1994, -212
  %1996 = load i64, i64* %3, align 8
  %1997 = add i64 %1996, 6
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1995 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RAX.i1243, align 8
  %2001 = add i64 %1994, -48
  %2002 = add i64 %1996, 9
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = add i32 %2004, %1999
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RAX.i1243, align 8
  %2007 = and i32 %2005, 255
  %2008 = tail call i32 @llvm.ctpop.i32(i32 %2007)
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = xor i8 %2010, 1
  %2012 = icmp eq i32 %2005, 0
  %2013 = zext i1 %2012 to i8
  %2014 = lshr i32 %2005, 31
  %2015 = trunc i32 %2014 to i8
  %2016 = add i64 %1996, 12
  store i8 0, i8* %26, align 1
  store i8 %2011, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %2013, i8* %42, align 1
  store i8 %2015, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2017 = icmp ne i8 %2015, 0
  %.v92 = select i1 %2017, i64 6, i64 19
  %2018 = add i64 %2016, %.v92
  store i64 %2018, i64* %3, align 8
  br i1 %2017, label %block_43a935, label %block_.L_43a942

block_43a935:                                     ; preds = %block_.L_43a917
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %2019 = add i64 %1994, -412
  %2020 = add i64 %2018, 8
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  store i32 0, i32* %2021, align 4
  %2022 = load i64, i64* %3, align 8
  %2023 = add i64 %2022, 66
  store i64 %2023, i64* %3, align 8
  br label %block_.L_43a97f

block_.L_43a942:                                  ; preds = %block_.L_43a917
  %2024 = add i64 %2018, 6
  store i64 %2024, i64* %3, align 8
  %2025 = load i32, i32* %1998, align 4
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RAX.i1243, align 8
  %2027 = add i64 %2018, 9
  store i64 %2027, i64* %3, align 8
  %2028 = load i32, i32* %2003, align 4
  %2029 = add i32 %2028, %2025
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RAX.i1243, align 8
  %2031 = lshr i32 %2029, 31
  %2032 = add i32 %2029, -51
  %2033 = icmp ult i32 %2029, 51
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %26, align 1
  %2035 = and i32 %2032, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %33, align 1
  %2040 = xor i32 %2029, 16
  %2041 = xor i32 %2040, %2032
  %2042 = lshr i32 %2041, 4
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  store i8 %2044, i8* %39, align 1
  %2045 = icmp eq i32 %2032, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %42, align 1
  %2047 = lshr i32 %2032, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %45, align 1
  %2049 = xor i32 %2047, %2031
  %2050 = add nuw nsw i32 %2049, %2031
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %51, align 1
  %2053 = icmp ne i8 %2048, 0
  %2054 = xor i1 %2053, %2051
  %2055 = or i1 %2045, %2054
  %.v172 = select i1 %2055, i64 34, i64 18
  %2056 = add i64 %2018, %.v172
  store i64 %2056, i64* %3, align 8
  br i1 %2055, label %block_.L_43a964, label %block_43a954

block_43a954:                                     ; preds = %block_.L_43a942
  store i64 51, i64* %RAX.i1243, align 8
  %2057 = add i64 %1994, -416
  %2058 = add i64 %2056, 11
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  store i32 51, i32* %2059, align 4
  %2060 = load i64, i64* %3, align 8
  %2061 = add i64 %2060, 20
  store i64 %2061, i64* %3, align 8
  br label %block_.L_43a973

block_.L_43a964:                                  ; preds = %block_.L_43a942
  %2062 = add i64 %2056, 6
  store i64 %2062, i64* %3, align 8
  %2063 = load i32, i32* %1998, align 4
  %2064 = zext i32 %2063 to i64
  store i64 %2064, i64* %RAX.i1243, align 8
  %2065 = add i64 %2056, 9
  store i64 %2065, i64* %3, align 8
  %2066 = load i32, i32* %2003, align 4
  %2067 = add i32 %2066, %2063
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RAX.i1243, align 8
  %2069 = icmp ult i32 %2067, %2063
  %2070 = icmp ult i32 %2067, %2066
  %2071 = or i1 %2069, %2070
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %26, align 1
  %2073 = and i32 %2067, 255
  %2074 = tail call i32 @llvm.ctpop.i32(i32 %2073)
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = xor i8 %2076, 1
  store i8 %2077, i8* %33, align 1
  %2078 = xor i32 %2066, %2063
  %2079 = xor i32 %2078, %2067
  %2080 = lshr i32 %2079, 4
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  store i8 %2082, i8* %39, align 1
  %2083 = icmp eq i32 %2067, 0
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %42, align 1
  %2085 = lshr i32 %2067, 31
  %2086 = trunc i32 %2085 to i8
  store i8 %2086, i8* %45, align 1
  %2087 = lshr i32 %2063, 31
  %2088 = lshr i32 %2066, 31
  %2089 = xor i32 %2085, %2087
  %2090 = xor i32 %2085, %2088
  %2091 = add nuw nsw i32 %2089, %2090
  %2092 = icmp eq i32 %2091, 2
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %51, align 1
  %2094 = add i64 %1994, -416
  %2095 = add i64 %2056, 15
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i32*
  store i32 %2067, i32* %2096, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_43a973

block_.L_43a973:                                  ; preds = %block_.L_43a964, %block_43a954
  %2097 = phi i64 [ %.pre114, %block_.L_43a964 ], [ %2061, %block_43a954 ]
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -416
  %2100 = add i64 %2097, 6
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RAX.i1243, align 8
  %2104 = add i64 %2098, -412
  %2105 = add i64 %2097, 12
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  store i32 %2102, i32* %2106, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_43a97f

block_.L_43a97f:                                  ; preds = %block_.L_43a973, %block_43a935
  %2107 = phi i64 [ %.pre115, %block_.L_43a973 ], [ %2023, %block_43a935 ]
  %2108 = load i64, i64* %RBP.i, align 8
  %2109 = add i64 %2108, -412
  %2110 = add i64 %2107, 6
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i32*
  %2112 = load i32, i32* %2111, align 4
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RAX.i1243, align 8
  %2114 = add i64 %2108, -176
  %2115 = add i64 %2107, 12
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  store i32 %2112, i32* %2116, align 4
  %2117 = load i64, i64* %RBP.i, align 8
  %2118 = add i64 %2117, -212
  %2119 = load i64, i64* %3, align 8
  %2120 = add i64 %2119, 6
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2118 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RAX.i1243, align 8
  %2124 = add i64 %2117, -52
  %2125 = add i64 %2119, 9
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  %2127 = load i32, i32* %2126, align 4
  %2128 = add i32 %2127, %2122
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RAX.i1243, align 8
  %2130 = and i32 %2128, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  %2135 = icmp eq i32 %2128, 0
  %2136 = zext i1 %2135 to i8
  %2137 = lshr i32 %2128, 31
  %2138 = trunc i32 %2137 to i8
  %2139 = add i64 %2119, 12
  store i8 0, i8* %26, align 1
  store i8 %2134, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %2136, i8* %42, align 1
  store i8 %2138, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2140 = icmp ne i8 %2138, 0
  %.v93 = select i1 %2140, i64 6, i64 19
  %2141 = add i64 %2139, %.v93
  store i64 %2141, i64* %3, align 8
  br i1 %2140, label %block_43a99d, label %block_.L_43a9aa

block_43a99d:                                     ; preds = %block_.L_43a97f
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %2142 = add i64 %2117, -420
  %2143 = add i64 %2141, 8
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i32*
  store i32 0, i32* %2144, align 4
  %2145 = load i64, i64* %3, align 8
  %2146 = add i64 %2145, 66
  store i64 %2146, i64* %3, align 8
  br label %block_.L_43a9e7

block_.L_43a9aa:                                  ; preds = %block_.L_43a97f
  %2147 = add i64 %2141, 6
  store i64 %2147, i64* %3, align 8
  %2148 = load i32, i32* %2121, align 4
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RAX.i1243, align 8
  %2150 = add i64 %2141, 9
  store i64 %2150, i64* %3, align 8
  %2151 = load i32, i32* %2126, align 4
  %2152 = add i32 %2151, %2148
  %2153 = zext i32 %2152 to i64
  store i64 %2153, i64* %RAX.i1243, align 8
  %2154 = lshr i32 %2152, 31
  %2155 = add i32 %2152, -51
  %2156 = icmp ult i32 %2152, 51
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %26, align 1
  %2158 = and i32 %2155, 255
  %2159 = tail call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  store i8 %2162, i8* %33, align 1
  %2163 = xor i32 %2152, 16
  %2164 = xor i32 %2163, %2155
  %2165 = lshr i32 %2164, 4
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  store i8 %2167, i8* %39, align 1
  %2168 = icmp eq i32 %2155, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %42, align 1
  %2170 = lshr i32 %2155, 31
  %2171 = trunc i32 %2170 to i8
  store i8 %2171, i8* %45, align 1
  %2172 = xor i32 %2170, %2154
  %2173 = add nuw nsw i32 %2172, %2154
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %51, align 1
  %2176 = icmp ne i8 %2171, 0
  %2177 = xor i1 %2176, %2174
  %2178 = or i1 %2168, %2177
  %.v173 = select i1 %2178, i64 34, i64 18
  %2179 = add i64 %2141, %.v173
  store i64 %2179, i64* %3, align 8
  br i1 %2178, label %block_.L_43a9cc, label %block_43a9bc

block_43a9bc:                                     ; preds = %block_.L_43a9aa
  store i64 51, i64* %RAX.i1243, align 8
  %2180 = add i64 %2117, -424
  %2181 = add i64 %2179, 11
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  store i32 51, i32* %2182, align 4
  %2183 = load i64, i64* %3, align 8
  %2184 = add i64 %2183, 20
  store i64 %2184, i64* %3, align 8
  br label %block_.L_43a9db

block_.L_43a9cc:                                  ; preds = %block_.L_43a9aa
  %2185 = add i64 %2179, 6
  store i64 %2185, i64* %3, align 8
  %2186 = load i32, i32* %2121, align 4
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i1243, align 8
  %2188 = add i64 %2179, 9
  store i64 %2188, i64* %3, align 8
  %2189 = load i32, i32* %2126, align 4
  %2190 = add i32 %2189, %2186
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RAX.i1243, align 8
  %2192 = icmp ult i32 %2190, %2186
  %2193 = icmp ult i32 %2190, %2189
  %2194 = or i1 %2192, %2193
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %26, align 1
  %2196 = and i32 %2190, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %33, align 1
  %2201 = xor i32 %2189, %2186
  %2202 = xor i32 %2201, %2190
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %39, align 1
  %2206 = icmp eq i32 %2190, 0
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %42, align 1
  %2208 = lshr i32 %2190, 31
  %2209 = trunc i32 %2208 to i8
  store i8 %2209, i8* %45, align 1
  %2210 = lshr i32 %2186, 31
  %2211 = lshr i32 %2189, 31
  %2212 = xor i32 %2208, %2210
  %2213 = xor i32 %2208, %2211
  %2214 = add nuw nsw i32 %2212, %2213
  %2215 = icmp eq i32 %2214, 2
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %51, align 1
  %2217 = add i64 %2117, -424
  %2218 = add i64 %2179, 15
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  store i32 %2190, i32* %2219, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_43a9db

block_.L_43a9db:                                  ; preds = %block_.L_43a9cc, %block_43a9bc
  %2220 = phi i64 [ %.pre116, %block_.L_43a9cc ], [ %2184, %block_43a9bc ]
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -424
  %2223 = add i64 %2220, 6
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RAX.i1243, align 8
  %2227 = add i64 %2221, -420
  %2228 = add i64 %2220, 12
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i32*
  store i32 %2225, i32* %2229, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_43a9e7

block_.L_43a9e7:                                  ; preds = %block_.L_43a9db, %block_43a99d
  %2230 = phi i64 [ %.pre117, %block_.L_43a9db ], [ %2146, %block_43a99d ]
  %2231 = load i64, i64* %RBP.i, align 8
  %2232 = add i64 %2231, -420
  %2233 = add i64 %2230, 6
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RAX.i1243, align 8
  store i64 0, i64* %RCX.i2234, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  store i64 ptrtoint (%G__0x6cb9c0_type* @G__0x6cb9c0 to i64), i64* %RDX.i2316, align 8
  %2237 = add i64 %2231, -180
  %2238 = add i64 %2230, 24
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  store i32 %2235, i32* %2239, align 4
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -176
  %2242 = load i64, i64* %3, align 8
  %2243 = add i64 %2242, 7
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244, align 4
  %2246 = sext i32 %2245 to i64
  store i64 %2246, i64* %RSI.i2319, align 8
  %2247 = add nsw i64 %2246, 7125312
  %2248 = add i64 %2242, 15
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2247 to i8*
  %2250 = load i8, i8* %2249, align 1
  %2251 = zext i8 %2250 to i64
  store i64 %2251, i64* %RAX.i1243, align 8
  %2252 = add i64 %2240, -300
  %2253 = add i64 %2242, 22
  store i64 %2253, i64* %3, align 8
  %2254 = inttoptr i64 %2252 to i32*
  %2255 = load i32, i32* %2254, align 4
  %2256 = sext i32 %2255 to i64
  %2257 = mul nsw i64 %2256, %2251
  %2258 = trunc i64 %2257 to i32
  %2259 = and i64 %2257, 4294967295
  store i64 %2259, i64* %RAX.i1243, align 8
  %2260 = shl i64 %2257, 32
  %2261 = ashr exact i64 %2260, 32
  %2262 = icmp ne i64 %2261, %2257
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %26, align 1
  %2264 = and i32 %2258, 255
  %2265 = tail call i32 @llvm.ctpop.i32(i32 %2264)
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = xor i8 %2267, 1
  store i8 %2268, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  %2269 = lshr i32 %2258, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %45, align 1
  store i8 %2263, i8* %51, align 1
  %2271 = add i64 %2240, -156
  %2272 = trunc i64 %2257 to i32
  %2273 = add i64 %2242, 28
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2271 to i32*
  store i32 %2272, i32* %2274, align 4
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -180
  %2277 = load i64, i64* %3, align 8
  %2278 = add i64 %2277, 7
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2276 to i32*
  %2280 = load i32, i32* %2279, align 4
  %2281 = sext i32 %2280 to i64
  store i64 %2281, i64* %RSI.i2319, align 8
  %2282 = add nsw i64 %2281, 7125376
  %2283 = add i64 %2277, 15
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i8*
  %2285 = load i8, i8* %2284, align 1
  %2286 = zext i8 %2285 to i64
  store i64 %2286, i64* %RAX.i1243, align 8
  %2287 = add i64 %2275, -300
  %2288 = add i64 %2277, 22
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = sext i32 %2290 to i64
  %2292 = mul nsw i64 %2291, %2286
  %2293 = trunc i64 %2292 to i32
  %2294 = and i64 %2292, 4294967295
  store i64 %2294, i64* %RAX.i1243, align 8
  %2295 = shl i64 %2292, 32
  %2296 = ashr exact i64 %2295, 32
  %2297 = icmp ne i64 %2296, %2292
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %26, align 1
  %2299 = and i32 %2293, 255
  %2300 = tail call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  store i8 %2303, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  %2304 = lshr i32 %2293, 31
  %2305 = trunc i32 %2304 to i8
  store i8 %2305, i8* %45, align 1
  store i8 %2298, i8* %51, align 1
  %2306 = add i64 %2275, -160
  %2307 = trunc i64 %2292 to i32
  %2308 = add i64 %2277, 28
  store i64 %2308, i64* %3, align 8
  %2309 = inttoptr i64 %2306 to i32*
  store i32 %2307, i32* %2309, align 4
  %2310 = load i64, i64* %RBP.i, align 8
  %2311 = add i64 %2310, -176
  %2312 = load i64, i64* %3, align 8
  %2313 = add i64 %2312, 7
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2311 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = sext i32 %2315 to i64
  %2317 = mul nsw i64 %2316, 5
  store i64 %2317, i64* %RSI.i2319, align 8
  %2318 = lshr i64 %2317, 63
  %2319 = load i64, i64* %RDX.i2316, align 8
  %2320 = add i64 %2317, %2319
  store i64 %2320, i64* %RDX.i2316, align 8
  %2321 = icmp ult i64 %2320, %2319
  %2322 = icmp ult i64 %2320, %2317
  %2323 = or i1 %2321, %2322
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %26, align 1
  %2325 = trunc i64 %2320 to i32
  %2326 = and i32 %2325, 255
  %2327 = tail call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  store i8 %2330, i8* %33, align 1
  %2331 = xor i64 %2317, %2319
  %2332 = xor i64 %2331, %2320
  %2333 = lshr i64 %2332, 4
  %2334 = trunc i64 %2333 to i8
  %2335 = and i8 %2334, 1
  store i8 %2335, i8* %39, align 1
  %2336 = icmp eq i64 %2320, 0
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %42, align 1
  %2338 = lshr i64 %2320, 63
  %2339 = trunc i64 %2338 to i8
  store i8 %2339, i8* %45, align 1
  %2340 = lshr i64 %2319, 63
  %2341 = xor i64 %2338, %2340
  %2342 = xor i64 %2338, %2318
  %2343 = add nuw nsw i64 %2341, %2342
  %2344 = icmp eq i64 %2343, 2
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %51, align 1
  %2346 = add i64 %2310, -168
  %2347 = add i64 %2312, 21
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i64*
  store i64 %2320, i64* %2348, align 8
  %2349 = load i64, i64* %RBP.i, align 8
  %2350 = add i64 %2349, -200
  %2351 = load i64, i64* %3, align 8
  %2352 = add i64 %2351, 7
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2350 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %RDX.i2316, align 8
  %2355 = add i64 %2351, 10
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i16*
  %2357 = load i16, i16* %2356, align 2
  %2358 = zext i16 %2357 to i64
  store i64 %2358, i64* %RAX.i1243, align 8
  %2359 = add i64 %2349, -128
  %2360 = zext i16 %2357 to i32
  %2361 = add i64 %2351, 13
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2359 to i32*
  store i32 %2360, i32* %2362, align 4
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -208
  %2365 = load i64, i64* %3, align 8
  %2366 = add i64 %2365, 7
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2364 to i64*
  %2368 = load i64, i64* %2367, align 8
  store i64 %2368, i64* %RDX.i2316, align 8
  %2369 = add i64 %2365, 10
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i16*
  %2371 = load i16, i16* %2370, align 2
  %2372 = zext i16 %2371 to i64
  store i64 %2372, i64* %RAX.i1243, align 8
  %2373 = add i64 %2363, -132
  %2374 = zext i16 %2371 to i32
  %2375 = add i64 %2365, 16
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2373 to i32*
  store i32 %2374, i32* %2376, align 4
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -200
  %2379 = load i64, i64* %3, align 8
  %2380 = add i64 %2379, 7
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381, align 8
  store i64 %2382, i64* %RDX.i2316, align 8
  %2383 = load i32, i32* %ECX.i2313, align 4
  %2384 = zext i32 %2383 to i64
  store i64 %2384, i64* %RAX.i1243, align 8
  %2385 = add i64 %2377, -92
  %2386 = add i64 %2379, 12
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i32*
  %2388 = load i32, i32* %2387, align 4
  %2389 = sub i32 %2383, %2388
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RAX.i1243, align 8
  %2391 = icmp ult i32 %2383, %2388
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %26, align 1
  %2393 = and i32 %2389, 255
  %2394 = tail call i32 @llvm.ctpop.i32(i32 %2393)
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = xor i8 %2396, 1
  store i8 %2397, i8* %33, align 1
  %2398 = xor i32 %2388, %2383
  %2399 = xor i32 %2398, %2389
  %2400 = lshr i32 %2399, 4
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  store i8 %2402, i8* %39, align 1
  %2403 = icmp eq i32 %2389, 0
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %42, align 1
  %2405 = lshr i32 %2389, 31
  %2406 = trunc i32 %2405 to i8
  store i8 %2406, i8* %45, align 1
  %2407 = lshr i32 %2383, 31
  %2408 = lshr i32 %2388, 31
  %2409 = xor i32 %2408, %2407
  %2410 = xor i32 %2405, %2407
  %2411 = add nuw nsw i32 %2410, %2409
  %2412 = icmp eq i32 %2411, 2
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %51, align 1
  %2414 = sext i32 %2389 to i64
  store i64 %2414, i64* %RSI.i2319, align 8
  %2415 = shl nsw i64 %2414, 1
  %2416 = add i64 %2382, %2415
  %2417 = add i64 %2379, 19
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i16*
  %2419 = load i16, i16* %2418, align 2
  %2420 = zext i16 %2419 to i64
  store i64 %2420, i64* %RAX.i1243, align 8
  %2421 = add i64 %2377, -124
  %2422 = zext i16 %2419 to i32
  %2423 = add i64 %2379, 22
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2421 to i32*
  store i32 %2422, i32* %2424, align 4
  %2425 = load i64, i64* %RBP.i, align 8
  %2426 = add i64 %2425, -208
  %2427 = load i64, i64* %3, align 8
  %2428 = add i64 %2427, 7
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2426 to i64*
  %2430 = load i64, i64* %2429, align 8
  store i64 %2430, i64* %RDX.i2316, align 8
  %2431 = add i64 %2425, -96
  %2432 = add i64 %2427, 11
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = sext i32 %2434 to i64
  store i64 %2435, i64* %RSI.i2319, align 8
  %2436 = shl nsw i64 %2435, 1
  %2437 = add i64 %2436, %2430
  %2438 = add i64 %2427, 15
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i16*
  %2440 = load i16, i16* %2439, align 2
  %2441 = zext i16 %2440 to i64
  store i64 %2441, i64* %RAX.i1243, align 8
  %2442 = add i64 %2425, -136
  %2443 = zext i16 %2440 to i32
  %2444 = add i64 %2427, 21
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2442 to i32*
  store i32 %2443, i32* %2445, align 4
  %2446 = load i64, i64* %RBP.i, align 8
  %2447 = add i64 %2446, -200
  %2448 = load i64, i64* %3, align 8
  %2449 = add i64 %2448, 7
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2447 to i64*
  %2451 = load i64, i64* %2450, align 8
  store i64 %2451, i64* %RDX.i2316, align 8
  %2452 = load i32, i32* %ECX.i2313, align 4
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RAX.i1243, align 8
  %2454 = add i64 %2446, -92
  %2455 = add i64 %2448, 12
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = sub i32 %2452, %2457
  %2459 = lshr i32 %2458, 31
  %2460 = trunc i32 %2459 to i8
  %2461 = shl i32 %2458, 1
  %2462 = icmp slt i32 %2458, 0
  %2463 = icmp slt i32 %2461, 0
  %2464 = xor i1 %2462, %2463
  %2465 = zext i32 %2461 to i64
  store i64 %2465, i64* %RAX.i1243, align 8
  store i8 %2460, i8* %26, align 1
  %2466 = and i32 %2461, 254
  %2467 = tail call i32 @llvm.ctpop.i32(i32 %2466)
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = xor i8 %2469, 1
  store i8 %2470, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2471 = icmp eq i32 %2461, 0
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %42, align 1
  %2473 = lshr i32 %2458, 30
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  store i8 %2475, i8* %45, align 1
  %2476 = zext i1 %2464 to i8
  store i8 %2476, i8* %51, align 1
  %2477 = sext i32 %2461 to i64
  store i64 %2477, i64* %RSI.i2319, align 8
  %2478 = shl nsw i64 %2477, 1
  %2479 = add i64 %2451, %2478
  %2480 = add i64 %2448, 21
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i16*
  %2482 = load i16, i16* %2481, align 2
  %2483 = zext i16 %2482 to i64
  store i64 %2483, i64* %RAX.i1243, align 8
  %2484 = add i64 %2446, -120
  %2485 = zext i16 %2482 to i32
  %2486 = add i64 %2448, 24
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2484 to i32*
  store i32 %2485, i32* %2487, align 4
  %2488 = load i64, i64* %RBP.i, align 8
  %2489 = add i64 %2488, -208
  %2490 = load i64, i64* %3, align 8
  %2491 = add i64 %2490, 7
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2489 to i64*
  %2493 = load i64, i64* %2492, align 8
  store i64 %2493, i64* %RDX.i2316, align 8
  %2494 = add i64 %2488, -96
  %2495 = add i64 %2490, 10
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i32*
  %2497 = load i32, i32* %2496, align 4
  %2498 = shl i32 %2497, 1
  %2499 = icmp slt i32 %2497, 0
  %2500 = icmp slt i32 %2498, 0
  %2501 = xor i1 %2499, %2500
  %2502 = zext i32 %2498 to i64
  store i64 %2502, i64* %RAX.i1243, align 8
  %.lobit68 = lshr i32 %2497, 31
  %2503 = trunc i32 %.lobit68 to i8
  store i8 %2503, i8* %26, align 1
  %2504 = and i32 %2498, 254
  %2505 = tail call i32 @llvm.ctpop.i32(i32 %2504)
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  %2508 = xor i8 %2507, 1
  store i8 %2508, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2509 = icmp eq i32 %2498, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %42, align 1
  %2511 = lshr i32 %2497, 30
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  store i8 %2513, i8* %45, align 1
  %2514 = zext i1 %2501 to i8
  store i8 %2514, i8* %51, align 1
  %2515 = sext i32 %2498 to i64
  store i64 %2515, i64* %RSI.i2319, align 8
  %2516 = shl nsw i64 %2515, 1
  %2517 = add i64 %2493, %2516
  %2518 = add i64 %2490, 19
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i16*
  %2520 = load i16, i16* %2519, align 2
  %2521 = zext i16 %2520 to i64
  store i64 %2521, i64* %RAX.i1243, align 8
  %2522 = add i64 %2488, -140
  %2523 = zext i16 %2520 to i32
  %2524 = add i64 %2490, 25
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2522 to i32*
  store i32 %2523, i32* %2525, align 4
  %2526 = load i64, i64* %RBP.i, align 8
  %2527 = add i64 %2526, -200
  %2528 = load i64, i64* %3, align 8
  %2529 = add i64 %2528, 7
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2527 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i64 %2531, i64* %RDX.i2316, align 8
  %2532 = load i64, i64* %RCX.i2234, align 8
  %2533 = add i64 %2526, -92
  %2534 = add i64 %2528, 10
  store i64 %2534, i64* %3, align 8
  %2535 = trunc i64 %2532 to i32
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = sub i32 %2535, %2537
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RCX.i2234, align 8
  %2540 = sext i32 %2538 to i64
  %2541 = mul nsw i64 %2540, 3
  %2542 = trunc i64 %2541 to i32
  %2543 = and i64 %2541, 4294967295
  store i64 %2543, i64* %RAX.i1243, align 8
  %2544 = mul i64 %2540, 12884901888
  %2545 = ashr exact i64 %2544, 32
  %2546 = icmp ne i64 %2545, %2541
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %26, align 1
  %2548 = and i32 %2542, 255
  %2549 = tail call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  store i8 %2552, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  %2553 = lshr i32 %2542, 31
  %2554 = trunc i32 %2553 to i8
  store i8 %2554, i8* %45, align 1
  store i8 %2547, i8* %51, align 1
  %sext = mul i64 %2540, 12884901888
  %2555 = ashr exact i64 %sext, 32
  store i64 %2555, i64* %RSI.i2319, align 8
  %2556 = ashr exact i64 %sext, 31
  %2557 = add i64 %2531, %2556
  %2558 = add i64 %2528, 20
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i16*
  %2560 = load i16, i16* %2559, align 2
  %2561 = zext i16 %2560 to i64
  store i64 %2561, i64* %RAX.i1243, align 8
  %2562 = add i64 %2526, -148
  %2563 = zext i16 %2560 to i32
  %2564 = add i64 %2528, 26
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2562 to i32*
  store i32 %2563, i32* %2565, align 4
  %2566 = load i64, i64* %RBP.i, align 8
  %2567 = add i64 %2566, -208
  %2568 = load i64, i64* %3, align 8
  %2569 = add i64 %2568, 7
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2567 to i64*
  %2571 = load i64, i64* %2570, align 8
  store i64 %2571, i64* %RDX.i2316, align 8
  %2572 = add i64 %2566, -96
  %2573 = add i64 %2568, 11
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = sext i32 %2575 to i64
  %2577 = mul nsw i64 %2576, 3
  %2578 = trunc i64 %2577 to i32
  %2579 = and i64 %2577, 4294967295
  store i64 %2579, i64* %RAX.i1243, align 8
  %2580 = mul i64 %2576, 12884901888
  %2581 = ashr exact i64 %2580, 32
  %2582 = icmp ne i64 %2581, %2577
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %26, align 1
  %2584 = and i32 %2578, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  %2589 = lshr i32 %2578, 31
  %2590 = trunc i32 %2589 to i8
  store i8 %2590, i8* %45, align 1
  store i8 %2583, i8* %51, align 1
  %sext149 = mul i64 %2576, 12884901888
  %2591 = ashr exact i64 %sext149, 32
  store i64 %2591, i64* %RSI.i2319, align 8
  %2592 = ashr exact i64 %sext149, 31
  %2593 = add i64 %2571, %2592
  %2594 = add i64 %2568, 18
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i16*
  %2596 = load i16, i16* %2595, align 2
  %2597 = zext i16 %2596 to i64
  store i64 %2597, i64* %RAX.i1243, align 8
  %2598 = add i64 %2566, -152
  %2599 = zext i16 %2596 to i32
  %2600 = add i64 %2568, 24
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2598 to i32*
  store i32 %2599, i32* %2601, align 4
  %2602 = load i64, i64* %RBP.i, align 8
  %2603 = add i64 %2602, -32
  %2604 = load i64, i64* %3, align 8
  %2605 = add i64 %2604, 4
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2603 to i64*
  %2607 = load i64, i64* %2606, align 8
  store i64 %2607, i64* %RDX.i2316, align 8
  %2608 = add i64 %2602, -188
  %2609 = add i64 %2604, 11
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = sext i32 %2611 to i64
  store i64 %2612, i64* %RSI.i2319, align 8
  %2613 = add i64 %2607, %2612
  %2614 = add i64 %2604, 15
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i8*
  %2616 = load i8, i8* %2615, align 1
  %2617 = zext i8 %2616 to i64
  store i64 %2617, i64* %RAX.i1243, align 8
  %2618 = add i64 %2602, -88
  %2619 = zext i8 %2616 to i32
  %2620 = add i64 %2604, 18
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2618 to i32*
  store i32 %2619, i32* %2621, align 4
  %2622 = load i32, i32* %EAX.i2297, align 4
  %2623 = load i64, i64* %3, align 8
  store i8 0, i8* %26, align 1
  %2624 = and i32 %2622, 255
  %2625 = tail call i32 @llvm.ctpop.i32(i32 %2624)
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = xor i8 %2627, 1
  store i8 %2628, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2629 = icmp eq i32 %2622, 0
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %42, align 1
  %2631 = lshr i32 %2622, 31
  %2632 = trunc i32 %2631 to i8
  store i8 %2632, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v174 = select i1 %2629, i64 2080, i64 9
  %2633 = add i64 %2623, %.v174
  store i64 %2633, i64* %3, align 8
  br i1 %2629, label %block_.L_43b32b, label %block_43ab14

block_43ab14:                                     ; preds = %block_.L_43a9e7
  %2634 = load i64, i64* %RBP.i, align 8
  %2635 = add i64 %2634, -132
  %2636 = add i64 %2633, 6
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = zext i32 %2638 to i64
  store i64 %2639, i64* %RAX.i1243, align 8
  %2640 = add i64 %2634, -128
  %2641 = add i64 %2633, 9
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i32*
  %2643 = load i32, i32* %2642, align 4
  %2644 = sub i32 %2638, %2643
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RAX.i1243, align 8
  %2646 = icmp ult i32 %2638, %2643
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %26, align 1
  %2648 = and i32 %2644, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %33, align 1
  %2653 = xor i32 %2643, %2638
  %2654 = xor i32 %2653, %2644
  %2655 = lshr i32 %2654, 4
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %39, align 1
  %2658 = icmp eq i32 %2644, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %42, align 1
  %2660 = lshr i32 %2644, 31
  %2661 = trunc i32 %2660 to i8
  store i8 %2661, i8* %45, align 1
  %2662 = lshr i32 %2638, 31
  %2663 = lshr i32 %2643, 31
  %2664 = xor i32 %2663, %2662
  %2665 = xor i32 %2660, %2662
  %2666 = add nuw nsw i32 %2665, %2664
  %2667 = icmp eq i32 %2666, 2
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %51, align 1
  %2669 = add i64 %2634, -108
  %2670 = add i64 %2633, 12
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  store i32 %2644, i32* %2671, align 4
  %2672 = load i32, i32* %EAX.i2297, align 4
  %2673 = zext i32 %2672 to i64
  %2674 = load i64, i64* %3, align 8
  store i64 %2673, i64* %RDI.i2322, align 8
  %2675 = add i64 %2674, -236320
  %2676 = add i64 %2674, 7
  %2677 = load i64, i64* %6, align 8
  %2678 = add i64 %2677, -8
  %2679 = inttoptr i64 %2678 to i64*
  store i64 %2676, i64* %2679, align 8
  store i64 %2678, i64* %6, align 8
  store i64 %2675, i64* %3, align 8
  %2680 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.10)
  %2681 = load i64, i64* %RBP.i, align 8
  %2682 = add i64 %2681, -116
  %2683 = load i32, i32* %EAX.i2297, align 4
  %2684 = load i64, i64* %3, align 8
  %2685 = add i64 %2684, 3
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2682 to i32*
  store i32 %2683, i32* %2686, align 4
  %2687 = load i64, i64* %RBP.i, align 8
  %2688 = add i64 %2687, -116
  %2689 = load i64, i64* %3, align 8
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2688 to i32*
  %2692 = load i32, i32* %2691, align 4
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i1243, align 8
  %2694 = add i64 %2687, -156
  %2695 = add i64 %2689, 9
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i32*
  %2697 = load i32, i32* %2696, align 4
  %2698 = sub i32 %2692, %2697
  %2699 = icmp ult i32 %2692, %2697
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %26, align 1
  %2701 = and i32 %2698, 255
  %2702 = tail call i32 @llvm.ctpop.i32(i32 %2701)
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = xor i8 %2704, 1
  store i8 %2705, i8* %33, align 1
  %2706 = xor i32 %2697, %2692
  %2707 = xor i32 %2706, %2698
  %2708 = lshr i32 %2707, 4
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  store i8 %2710, i8* %39, align 1
  %2711 = icmp eq i32 %2698, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %42, align 1
  %2713 = lshr i32 %2698, 31
  %2714 = trunc i32 %2713 to i8
  store i8 %2714, i8* %45, align 1
  %2715 = lshr i32 %2692, 31
  %2716 = lshr i32 %2697, 31
  %2717 = xor i32 %2716, %2715
  %2718 = xor i32 %2713, %2715
  %2719 = add nuw nsw i32 %2718, %2717
  %2720 = icmp eq i32 %2719, 2
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %51, align 1
  %2722 = icmp ne i8 %2714, 0
  %2723 = xor i1 %2722, %2720
  %.v175 = select i1 %2723, i64 15, i64 2044
  %2724 = add i64 %2689, %.v175
  store i64 %2724, i64* %3, align 8
  br i1 %2723, label %block_43ab39, label %block_.L_43b326

block_43ab39:                                     ; preds = %block_43ab14
  %2725 = add i64 %2687, -168
  %2726 = add i64 %2724, 7
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i64*
  %2728 = load i64, i64* %2727, align 8
  store i64 %2728, i64* %RAX.i1243, align 8
  %2729 = add i64 %2687, -88
  %2730 = add i64 %2724, 11
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = sext i32 %2732 to i64
  store i64 %2733, i64* %RCX.i2234, align 8
  %2734 = add i64 %2728, %2733
  %2735 = add i64 %2724, 15
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i8*
  %2737 = load i8, i8* %2736, align 1
  %2738 = zext i8 %2737 to i64
  store i64 %2738, i64* %RDX.i2316, align 8
  %2739 = add i64 %2687, -300
  %2740 = add i64 %2724, 22
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = sext i32 %2742 to i64
  %2744 = mul nsw i64 %2743, %2738
  %2745 = trunc i64 %2744 to i32
  %2746 = and i64 %2744, 4294967295
  store i64 %2746, i64* %RDX.i2316, align 8
  %2747 = shl i64 %2744, 32
  %2748 = ashr exact i64 %2747, 32
  %2749 = icmp ne i64 %2748, %2744
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %26, align 1
  %2751 = and i32 %2745, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  %2756 = lshr i32 %2745, 31
  %2757 = trunc i32 %2756 to i8
  store i8 %2757, i8* %45, align 1
  store i8 %2750, i8* %51, align 1
  %2758 = add i64 %2687, -100
  %2759 = trunc i64 %2744 to i32
  %2760 = add i64 %2724, 25
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2758 to i32*
  store i32 %2759, i32* %2761, align 4
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -132
  %2764 = load i64, i64* %3, align 8
  %2765 = add i64 %2764, 6
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2763 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RDX.i2316, align 8
  %2769 = add i64 %2762, -136
  %2770 = add i64 %2764, 12
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = sub i32 %2767, %2772
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RDX.i2316, align 8
  %2775 = icmp ult i32 %2767, %2772
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %26, align 1
  %2777 = and i32 %2773, 255
  %2778 = tail call i32 @llvm.ctpop.i32(i32 %2777)
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  %2781 = xor i8 %2780, 1
  store i8 %2781, i8* %33, align 1
  %2782 = xor i32 %2772, %2767
  %2783 = xor i32 %2782, %2773
  %2784 = lshr i32 %2783, 4
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %39, align 1
  %2787 = icmp eq i32 %2773, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %42, align 1
  %2789 = lshr i32 %2773, 31
  %2790 = trunc i32 %2789 to i8
  store i8 %2790, i8* %45, align 1
  %2791 = lshr i32 %2767, 31
  %2792 = lshr i32 %2772, 31
  %2793 = xor i32 %2792, %2791
  %2794 = xor i32 %2789, %2791
  %2795 = add nuw nsw i32 %2794, %2793
  %2796 = icmp eq i32 %2795, 2
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %51, align 1
  store i64 %2774, i64* %RDI.i2322, align 8
  %2798 = add i64 %2764, -236370
  %2799 = add i64 %2764, 19
  %2800 = load i64, i64* %6, align 8
  %2801 = add i64 %2800, -8
  %2802 = inttoptr i64 %2801 to i64*
  store i64 %2799, i64* %2802, align 8
  store i64 %2801, i64* %6, align 8
  store i64 %2798, i64* %3, align 8
  %2803 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2680)
  %2804 = load i64, i64* %RAX.i1243, align 8
  %2805 = load i64, i64* %RBP.i, align 8
  %2806 = add i64 %2805, -160
  %2807 = load i64, i64* %3, align 8
  %2808 = add i64 %2807, 6
  store i64 %2808, i64* %3, align 8
  %2809 = trunc i64 %2804 to i32
  %2810 = inttoptr i64 %2806 to i32*
  %2811 = load i32, i32* %2810, align 4
  %2812 = sub i32 %2809, %2811
  %2813 = zext i32 %2812 to i64
  store i64 %2813, i64* %RAX.i1243, align 8
  %2814 = icmp ult i32 %2809, %2811
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %26, align 1
  %2816 = and i32 %2812, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816)
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %33, align 1
  %2821 = xor i32 %2811, %2809
  %2822 = xor i32 %2821, %2812
  %2823 = lshr i32 %2822, 4
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  store i8 %2825, i8* %39, align 1
  %2826 = icmp eq i32 %2812, 0
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %42, align 1
  %2828 = lshr i32 %2812, 31
  %2829 = trunc i32 %2828 to i8
  store i8 %2829, i8* %45, align 1
  %2830 = lshr i32 %2809, 31
  %2831 = lshr i32 %2811, 31
  %2832 = xor i32 %2831, %2830
  %2833 = xor i32 %2828, %2830
  %2834 = add nuw nsw i32 %2833, %2832
  %2835 = icmp eq i32 %2834, 2
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %51, align 1
  %2837 = add i64 %2805, -128
  %2838 = add i64 %2807, 9
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %RDX.i2316, align 8
  %2842 = add i64 %2805, -124
  %2843 = add i64 %2807, 12
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i32*
  %2845 = load i32, i32* %2844, align 4
  %2846 = sub i32 %2840, %2845
  %2847 = zext i32 %2846 to i64
  store i64 %2847, i64* %RDX.i2316, align 8
  %2848 = icmp ult i32 %2840, %2845
  %2849 = zext i1 %2848 to i8
  store i8 %2849, i8* %26, align 1
  %2850 = and i32 %2846, 255
  %2851 = tail call i32 @llvm.ctpop.i32(i32 %2850)
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = xor i8 %2853, 1
  store i8 %2854, i8* %33, align 1
  %2855 = xor i32 %2845, %2840
  %2856 = xor i32 %2855, %2846
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %39, align 1
  %2860 = icmp eq i32 %2846, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %42, align 1
  %2862 = lshr i32 %2846, 31
  %2863 = trunc i32 %2862 to i8
  store i8 %2863, i8* %45, align 1
  %2864 = lshr i32 %2840, 31
  %2865 = lshr i32 %2845, 31
  %2866 = xor i32 %2865, %2864
  %2867 = xor i32 %2862, %2864
  %2868 = add nuw nsw i32 %2867, %2866
  %2869 = icmp eq i32 %2868, 2
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %51, align 1
  store i64 %2847, i64* %RDI.i2322, align 8
  %2871 = add i64 %2805, -428
  %2872 = add i64 %2807, 20
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  store i32 %2812, i32* %2873, align 4
  %2874 = load i64, i64* %3, align 8
  %2875 = add i64 %2874, -236409
  %2876 = add i64 %2874, 5
  %2877 = load i64, i64* %6, align 8
  %2878 = add i64 %2877, -8
  %2879 = inttoptr i64 %2878 to i64*
  store i64 %2876, i64* %2879, align 8
  store i64 %2878, i64* %6, align 8
  store i64 %2875, i64* %3, align 8
  %2880 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2803)
  %2881 = load i64, i64* %RAX.i1243, align 8
  %2882 = load i64, i64* %RBP.i, align 8
  %2883 = add i64 %2882, -160
  %2884 = load i64, i64* %3, align 8
  %2885 = add i64 %2884, 6
  store i64 %2885, i64* %3, align 8
  %2886 = trunc i64 %2881 to i32
  %2887 = inttoptr i64 %2883 to i32*
  %2888 = load i32, i32* %2887, align 4
  %2889 = sub i32 %2886, %2888
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RAX.i1243, align 8
  %2891 = icmp ult i32 %2886, %2888
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %26, align 1
  %2893 = and i32 %2889, 255
  %2894 = tail call i32 @llvm.ctpop.i32(i32 %2893)
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = xor i8 %2896, 1
  store i8 %2897, i8* %33, align 1
  %2898 = xor i32 %2888, %2886
  %2899 = xor i32 %2898, %2889
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %39, align 1
  %2903 = icmp eq i32 %2889, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %42, align 1
  %2905 = lshr i32 %2889, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %45, align 1
  %2907 = lshr i32 %2886, 31
  %2908 = lshr i32 %2888, 31
  %2909 = xor i32 %2908, %2907
  %2910 = xor i32 %2905, %2907
  %2911 = add nuw nsw i32 %2910, %2909
  %2912 = icmp eq i32 %2911, 2
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %51, align 1
  %2914 = add i64 %2882, -428
  %2915 = add i64 %2884, 12
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = and i32 %2889, %2917
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RDX.i2316, align 8
  %2920 = and i32 %2918, 255
  %2921 = tail call i32 @llvm.ctpop.i32(i32 %2920)
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = xor i8 %2923, 1
  %2925 = icmp eq i32 %2918, 0
  %2926 = zext i1 %2925 to i8
  %2927 = lshr i32 %2918, 31
  %2928 = trunc i32 %2927 to i8
  %2929 = add i64 %2884, 17
  store i8 0, i8* %26, align 1
  store i8 %2924, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %2926, i8* %42, align 1
  store i8 %2928, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2930 = icmp ne i8 %2928, 0
  %.v94 = select i1 %2930, i64 6, i64 1938
  %2931 = add i64 %2929, %.v94
  store i64 %2931, i64* %3, align 8
  br i1 %2930, label %block_43ab95, label %block_.L_43b321

block_43ab95:                                     ; preds = %block_43ab39
  %2932 = add i64 %2882, -68
  %2933 = add i64 %2931, 4
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  store i8 0, i8* %26, align 1
  %2936 = and i32 %2935, 255
  %2937 = tail call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  store i8 %2940, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2941 = icmp eq i32 %2935, 0
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %42, align 1
  %2943 = lshr i32 %2935, 31
  %2944 = trunc i32 %2943 to i8
  store i8 %2944, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v176 = select i1 %2941, i64 10, i64 84
  %2945 = add i64 %2931, %.v176
  store i64 %2945, i64* %3, align 8
  br i1 %2941, label %block_43ab9f, label %block_.L_43abe9

block_43ab9f:                                     ; preds = %block_43ab95
  %2946 = add i64 %2882, -132
  %2947 = add i64 %2945, 6
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2946 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RAX.i1243, align 8
  %2951 = add i64 %2882, -140
  %2952 = add i64 %2945, 12
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sub i32 %2949, %2954
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RAX.i1243, align 8
  %2957 = icmp ult i32 %2949, %2954
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %26, align 1
  %2959 = and i32 %2955, 255
  %2960 = tail call i32 @llvm.ctpop.i32(i32 %2959)
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  store i8 %2963, i8* %33, align 1
  %2964 = xor i32 %2954, %2949
  %2965 = xor i32 %2964, %2955
  %2966 = lshr i32 %2965, 4
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  store i8 %2968, i8* %39, align 1
  %2969 = icmp eq i32 %2955, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %42, align 1
  %2971 = lshr i32 %2955, 31
  %2972 = trunc i32 %2971 to i8
  store i8 %2972, i8* %45, align 1
  %2973 = lshr i32 %2949, 31
  %2974 = lshr i32 %2954, 31
  %2975 = xor i32 %2974, %2973
  %2976 = xor i32 %2971, %2973
  %2977 = add nuw nsw i32 %2976, %2975
  %2978 = icmp eq i32 %2977, 2
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %51, align 1
  store i64 %2956, i64* %RDI.i2322, align 8
  %2980 = add i64 %2945, -236447
  %2981 = add i64 %2945, 19
  %2982 = load i64, i64* %6, align 8
  %2983 = add i64 %2982, -8
  %2984 = inttoptr i64 %2983 to i64*
  store i64 %2981, i64* %2984, align 8
  store i64 %2983, i64* %6, align 8
  store i64 %2980, i64* %3, align 8
  %2985 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2880)
  %2986 = load i64, i64* %RAX.i1243, align 8
  %2987 = load i64, i64* %RBP.i, align 8
  %2988 = add i64 %2987, -160
  %2989 = load i64, i64* %3, align 8
  %2990 = add i64 %2989, 6
  store i64 %2990, i64* %3, align 8
  %2991 = trunc i64 %2986 to i32
  %2992 = inttoptr i64 %2988 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = sub i32 %2991, %2993
  %2995 = lshr i32 %2994, 31
  %2996 = trunc i32 %2995 to i8
  store i8 %2996, i8* %CL.i1982, align 1
  store i8 0, i8* %26, align 1
  %2997 = tail call i32 @llvm.ctpop.i32(i32 %2995)
  %2998 = trunc i32 %2997 to i8
  %2999 = xor i8 %2998, 1
  store i8 %2999, i8* %33, align 1
  %3000 = xor i8 %2996, 1
  store i8 %3000, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %3001 = zext i32 %2995 to i64
  store i64 %3001, i64* %RAX.i1243, align 8
  %3002 = add i64 %2987, -84
  %3003 = add i64 %2989, 21
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  store i32 %2995, i32* %3004, align 4
  %3005 = load i64, i64* %RBP.i, align 8
  %3006 = add i64 %3005, -128
  %3007 = load i64, i64* %3, align 8
  %3008 = add i64 %3007, 3
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009, align 4
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RAX.i1243, align 8
  %3012 = add i64 %3005, -120
  %3013 = add i64 %3007, 6
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i32*
  %3015 = load i32, i32* %3014, align 4
  %3016 = sub i32 %3010, %3015
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RAX.i1243, align 8
  %3018 = icmp ult i32 %3010, %3015
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %26, align 1
  %3020 = and i32 %3016, 255
  %3021 = tail call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  store i8 %3024, i8* %33, align 1
  %3025 = xor i32 %3015, %3010
  %3026 = xor i32 %3025, %3016
  %3027 = lshr i32 %3026, 4
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  store i8 %3029, i8* %39, align 1
  %3030 = icmp eq i32 %3016, 0
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %42, align 1
  %3032 = lshr i32 %3016, 31
  %3033 = trunc i32 %3032 to i8
  store i8 %3033, i8* %45, align 1
  %3034 = lshr i32 %3010, 31
  %3035 = lshr i32 %3015, 31
  %3036 = xor i32 %3035, %3034
  %3037 = xor i32 %3032, %3034
  %3038 = add nuw nsw i32 %3037, %3036
  %3039 = icmp eq i32 %3038, 2
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %51, align 1
  store i64 %3017, i64* %RDI.i2322, align 8
  %3041 = add i64 %3007, -236487
  %3042 = add i64 %3007, 13
  %3043 = load i64, i64* %6, align 8
  %3044 = add i64 %3043, -8
  %3045 = inttoptr i64 %3044 to i64*
  store i64 %3042, i64* %3045, align 8
  store i64 %3044, i64* %6, align 8
  store i64 %3041, i64* %3, align 8
  %3046 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2985)
  %3047 = load i64, i64* %RAX.i1243, align 8
  %3048 = load i64, i64* %RBP.i, align 8
  %3049 = add i64 %3048, -160
  %3050 = load i64, i64* %3, align 8
  %3051 = add i64 %3050, 6
  store i64 %3051, i64* %3, align 8
  %3052 = trunc i64 %3047 to i32
  %3053 = inttoptr i64 %3049 to i32*
  %3054 = load i32, i32* %3053, align 4
  %3055 = sub i32 %3052, %3054
  %3056 = lshr i32 %3055, 31
  %3057 = trunc i32 %3056 to i8
  store i8 %3057, i8* %CL.i1982, align 1
  store i8 0, i8* %26, align 1
  %3058 = tail call i32 @llvm.ctpop.i32(i32 %3056)
  %3059 = trunc i32 %3058 to i8
  %3060 = xor i8 %3059, 1
  store i8 %3060, i8* %33, align 1
  %3061 = xor i8 %3057, 1
  store i8 %3061, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %3062 = zext i32 %3056 to i64
  store i64 %3062, i64* %RAX.i1243, align 8
  %3063 = add i64 %3048, -80
  %3064 = add i64 %3050, 21
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  store i32 %3056, i32* %3065, align 4
  %.pre118 = load i64, i64* %RBP.i, align 8
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_43abe9

block_.L_43abe9:                                  ; preds = %block_43ab95, %block_43ab9f
  %3066 = phi i64 [ %2945, %block_43ab95 ], [ %.pre119, %block_43ab9f ]
  %3067 = phi i64 [ %2882, %block_43ab95 ], [ %.pre118, %block_43ab9f ]
  %MEMORY.27 = phi %struct.Memory* [ %2880, %block_43ab95 ], [ %3046, %block_43ab9f ]
  %3068 = add i64 %3067, -128
  %3069 = add i64 %3066, 3
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = zext i32 %3071 to i64
  store i64 %3072, i64* %RAX.i1243, align 8
  %3073 = add i64 %3067, -132
  %3074 = add i64 %3066, 9
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i32*
  %3076 = load i32, i32* %3075, align 4
  %3077 = add i32 %3076, %3071
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RAX.i1243, align 8
  %3079 = icmp ult i32 %3077, %3071
  %3080 = icmp ult i32 %3077, %3076
  %3081 = or i1 %3079, %3080
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %26, align 1
  %3083 = and i32 %3077, 255
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %33, align 1
  %3088 = xor i32 %3076, %3071
  %3089 = xor i32 %3088, %3077
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %39, align 1
  %3093 = icmp eq i32 %3077, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %42, align 1
  %3095 = lshr i32 %3077, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %45, align 1
  %3097 = lshr i32 %3071, 31
  %3098 = lshr i32 %3076, 31
  %3099 = xor i32 %3095, %3097
  %3100 = xor i32 %3095, %3098
  %3101 = add nuw nsw i32 %3099, %3100
  %3102 = icmp eq i32 %3101, 2
  %3103 = zext i1 %3102 to i8
  store i8 %3103, i8* %51, align 1
  %3104 = add i64 %3067, -144
  %3105 = add i64 %3066, 15
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  store i32 %3077, i32* %3106, align 4
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -88
  %3109 = load i64, i64* %3, align 8
  %3110 = add i64 %3109, 4
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3108 to i32*
  %3112 = load i32, i32* %3111, align 4
  %3113 = add i32 %3112, -4
  %3114 = icmp ult i32 %3112, 4
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %26, align 1
  %3116 = and i32 %3113, 255
  %3117 = tail call i32 @llvm.ctpop.i32(i32 %3116)
  %3118 = trunc i32 %3117 to i8
  %3119 = and i8 %3118, 1
  %3120 = xor i8 %3119, 1
  store i8 %3120, i8* %33, align 1
  %3121 = xor i32 %3113, %3112
  %3122 = lshr i32 %3121, 4
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  store i8 %3124, i8* %39, align 1
  %3125 = icmp eq i32 %3113, 0
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %42, align 1
  %3127 = lshr i32 %3113, 31
  %3128 = trunc i32 %3127 to i8
  store i8 %3128, i8* %45, align 1
  %3129 = lshr i32 %3112, 31
  %3130 = xor i32 %3127, %3129
  %3131 = add nuw nsw i32 %3130, %3129
  %3132 = icmp eq i32 %3131, 2
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %51, align 1
  %.v150 = select i1 %3125, i64 10, i64 710
  %3134 = add i64 %3109, %.v150
  %3135 = add i64 %3107, -68
  %3136 = add i64 %3134, 4
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i32*
  %3138 = load i32, i32* %3137, align 4
  store i8 0, i8* %26, align 1
  %3139 = and i32 %3138, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3144 = icmp eq i32 %3138, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %42, align 1
  %3146 = lshr i32 %3138, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br i1 %3125, label %block_43ac02, label %block_.L_43aebe

block_43ac02:                                     ; preds = %block_.L_43abe9
  %.v190 = select i1 %3144, i64 86, i64 10
  %3148 = add i64 %3134, %.v190
  store i64 %3148, i64* %3, align 8
  br i1 %3144, label %block_.L_43ac58, label %block_43ac0c

block_43ac0c:                                     ; preds = %block_43ac02
  %3149 = add i64 %3107, -136
  %3150 = add i64 %3148, 6
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3149 to i32*
  %3152 = load i32, i32* %3151, align 4
  %3153 = shl i32 %3152, 1
  %3154 = icmp slt i32 %3152, 0
  %3155 = icmp slt i32 %3153, 0
  %3156 = xor i1 %3154, %3155
  %3157 = zext i32 %3153 to i64
  store i64 %3157, i64* %RAX.i1243, align 8
  %.lobit69 = lshr i32 %3152, 31
  %3158 = trunc i32 %.lobit69 to i8
  store i8 %3158, i8* %26, align 1
  %3159 = and i32 %3153, 254
  %3160 = tail call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  store i8 %3163, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3164 = icmp eq i32 %3153, 0
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %42, align 1
  %3166 = lshr i32 %3152, 30
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  store i8 %3168, i8* %45, align 1
  %3169 = zext i1 %3156 to i8
  store i8 %3169, i8* %51, align 1
  %3170 = add i64 %3107, -132
  %3171 = add i64 %3148, 14
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i32*
  %3173 = load i32, i32* %3172, align 4
  %3174 = add i32 %3173, %3153
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RAX.i1243, align 8
  %3176 = icmp ult i32 %3174, %3153
  %3177 = icmp ult i32 %3174, %3173
  %3178 = or i1 %3176, %3177
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %26, align 1
  %3180 = and i32 %3174, 255
  %3181 = tail call i32 @llvm.ctpop.i32(i32 %3180)
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  %3184 = xor i8 %3183, 1
  store i8 %3184, i8* %33, align 1
  %3185 = xor i32 %3173, %3153
  %3186 = xor i32 %3185, %3174
  %3187 = lshr i32 %3186, 4
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  store i8 %3189, i8* %39, align 1
  %3190 = icmp eq i32 %3174, 0
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %42, align 1
  %3192 = lshr i32 %3174, 31
  %3193 = trunc i32 %3192 to i8
  store i8 %3193, i8* %45, align 1
  %3194 = lshr i32 %3152, 30
  %3195 = and i32 %3194, 1
  %3196 = lshr i32 %3173, 31
  %3197 = xor i32 %3192, %3195
  %3198 = xor i32 %3192, %3196
  %3199 = add nuw nsw i32 %3197, %3198
  %3200 = icmp eq i32 %3199, 2
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %51, align 1
  %3202 = add i64 %3107, -124
  %3203 = add i64 %3148, 17
  store i64 %3203, i64* %3, align 8
  %3204 = inttoptr i64 %3202 to i32*
  %3205 = load i32, i32* %3204, align 4
  %3206 = add i32 %3205, %3174
  %3207 = add i32 %3206, 2
  %3208 = zext i32 %3207 to i64
  %3209 = shl nuw i64 %3208, 32
  %3210 = ashr i64 %3209, 33
  %3211 = lshr i64 %3210, 1
  %3212 = trunc i64 %3210 to i8
  %3213 = and i8 %3212, 1
  %3214 = trunc i64 %3211 to i32
  %3215 = and i64 %3211, 4294967295
  store i64 %3215, i64* %RAX.i1243, align 8
  store i8 %3213, i8* %26, align 1
  %3216 = and i32 %3214, 255
  %3217 = tail call i32 @llvm.ctpop.i32(i32 %3216)
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = xor i8 %3219, 1
  store i8 %3220, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3221 = icmp eq i32 %3214, 0
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %42, align 1
  %3223 = lshr i64 %3210, 32
  %3224 = trunc i64 %3223 to i8
  %3225 = and i8 %3224, 1
  store i8 %3225, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3226 = trunc i64 %3211 to i16
  store i16 %3226, i16* %CX.i365, align 2
  %3227 = load i64, i64* %RBP.i, align 8
  %3228 = add i64 %3227, -208
  %3229 = add i64 %3148, 33
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i64*
  %3231 = load i64, i64* %3230, align 8
  store i64 %3231, i64* %RDX.i2316, align 8
  %3232 = add i64 %3148, 36
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i16*
  store i16 %3226, i16* %3233, align 2
  %3234 = load i64, i64* %RBP.i, align 8
  %3235 = add i64 %3234, -124
  %3236 = load i64, i64* %3, align 8
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3235 to i32*
  %3239 = load i32, i32* %3238, align 4
  %3240 = shl i32 %3239, 1
  %3241 = icmp slt i32 %3239, 0
  %3242 = icmp slt i32 %3240, 0
  %3243 = xor i1 %3241, %3242
  %3244 = zext i32 %3240 to i64
  store i64 %3244, i64* %RAX.i1243, align 8
  %.lobit70 = lshr i32 %3239, 31
  %3245 = trunc i32 %.lobit70 to i8
  store i8 %3245, i8* %26, align 1
  %3246 = and i32 %3240, 254
  %3247 = tail call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  store i8 %3250, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3251 = icmp eq i32 %3240, 0
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %42, align 1
  %3253 = lshr i32 %3239, 30
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  store i8 %3255, i8* %45, align 1
  %3256 = zext i1 %3243 to i8
  store i8 %3256, i8* %51, align 1
  %3257 = add i64 %3234, -128
  %3258 = add i64 %3236, 8
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  %3261 = add i32 %3260, %3240
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RAX.i1243, align 8
  %3263 = icmp ult i32 %3261, %3240
  %3264 = icmp ult i32 %3261, %3260
  %3265 = or i1 %3263, %3264
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %26, align 1
  %3267 = and i32 %3261, 255
  %3268 = tail call i32 @llvm.ctpop.i32(i32 %3267)
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  store i8 %3271, i8* %33, align 1
  %3272 = xor i32 %3260, %3240
  %3273 = xor i32 %3272, %3261
  %3274 = lshr i32 %3273, 4
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  store i8 %3276, i8* %39, align 1
  %3277 = icmp eq i32 %3261, 0
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %42, align 1
  %3279 = lshr i32 %3261, 31
  %3280 = trunc i32 %3279 to i8
  store i8 %3280, i8* %45, align 1
  %3281 = lshr i32 %3239, 30
  %3282 = and i32 %3281, 1
  %3283 = lshr i32 %3260, 31
  %3284 = xor i32 %3279, %3282
  %3285 = xor i32 %3279, %3283
  %3286 = add nuw nsw i32 %3284, %3285
  %3287 = icmp eq i32 %3286, 2
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %51, align 1
  %3289 = add i64 %3234, -136
  %3290 = add i64 %3236, 14
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to i32*
  %3292 = load i32, i32* %3291, align 4
  %3293 = add i32 %3292, %3261
  %3294 = add i32 %3293, 2
  %3295 = zext i32 %3294 to i64
  %3296 = shl nuw i64 %3295, 32
  %3297 = ashr i64 %3296, 33
  %3298 = lshr i64 %3297, 1
  %3299 = trunc i64 %3297 to i8
  %3300 = and i8 %3299, 1
  %3301 = trunc i64 %3298 to i32
  %3302 = and i64 %3298, 4294967295
  store i64 %3302, i64* %RAX.i1243, align 8
  store i8 %3300, i8* %26, align 1
  %3303 = and i32 %3301, 255
  %3304 = tail call i32 @llvm.ctpop.i32(i32 %3303)
  %3305 = trunc i32 %3304 to i8
  %3306 = and i8 %3305, 1
  %3307 = xor i8 %3306, 1
  store i8 %3307, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3308 = icmp eq i32 %3301, 0
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %42, align 1
  %3310 = lshr i64 %3297, 32
  %3311 = trunc i64 %3310 to i8
  %3312 = and i8 %3311, 1
  store i8 %3312, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3313 = trunc i64 %3298 to i16
  store i16 %3313, i16* %CX.i365, align 2
  %3314 = load i64, i64* %RBP.i, align 8
  %3315 = add i64 %3314, -200
  %3316 = add i64 %3236, 30
  store i64 %3316, i64* %3, align 8
  %3317 = inttoptr i64 %3315 to i64*
  %3318 = load i64, i64* %3317, align 8
  store i64 %3318, i64* %RDX.i2316, align 8
  %3319 = add i64 %3236, 33
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i16*
  store i16 %3313, i16* %3320, align 2
  %3321 = load i64, i64* %3, align 8
  %3322 = add i64 %3321, 614
  store i64 %3322, i64* %3, align 8
  br label %block_.L_43aeb9

block_.L_43ac58:                                  ; preds = %block_43ac02
  %3323 = add i64 %3107, -116
  %3324 = add i64 %3148, 3
  store i64 %3324, i64* %3, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = zext i32 %3326 to i64
  store i64 %3327, i64* %RAX.i1243, align 8
  %3328 = add i64 %3107, -156
  %3329 = add i64 %3148, 9
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i32*
  %3331 = load i32, i32* %3330, align 4
  %3332 = ashr i32 %3331, 2
  %3333 = add nsw i32 %3332, 2
  %3334 = zext i32 %3333 to i64
  store i64 %3334, i64* %RCX.i2234, align 8
  %3335 = lshr i32 %3333, 31
  %3336 = sub i32 %3326, %3333
  %3337 = lshr i32 %3336, 31
  %3338 = lshr i32 %3326, 31
  %3339 = xor i32 %3335, %3338
  %3340 = xor i32 %3337, %3338
  %3341 = add nuw nsw i32 %3340, %3339
  %3342 = icmp eq i32 %3341, 2
  %3343 = icmp ne i32 %3337, 0
  %3344 = xor i1 %3343, %3342
  %3345 = zext i1 %3344 to i8
  store i8 %3345, i8* %DL.i1039, align 1
  store i8 0, i8* %26, align 1
  %3346 = zext i1 %3344 to i32
  %3347 = tail call i32 @llvm.ctpop.i32(i32 %3346)
  %3348 = trunc i32 %3347 to i8
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %33, align 1
  %3350 = xor i1 %3344, true
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %3352 = zext i1 %3344 to i64
  store i64 %3352, i64* %RAX.i1243, align 8
  %3353 = load i64, i64* %RBP.i, align 8
  %3354 = add i64 %3353, -172
  %3355 = zext i1 %3344 to i32
  %3356 = add i64 %3148, 32
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3354 to i32*
  store i32 %3355, i32* %3357, align 4
  %3358 = load i64, i64* %RBP.i, align 8
  %3359 = add i64 %3358, -172
  %3360 = load i64, i64* %3, align 8
  %3361 = add i64 %3360, 6
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3359 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RAX.i1243, align 8
  %3365 = add i64 %3358, -84
  %3366 = add i64 %3360, 9
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i32*
  %3368 = load i32, i32* %3367, align 4
  %3369 = and i32 %3368, %3363
  %3370 = zext i32 %3369 to i64
  store i64 %3370, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  %3371 = and i32 %3369, 255
  %3372 = tail call i32 @llvm.ctpop.i32(i32 %3371)
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  %3375 = xor i8 %3374, 1
  store i8 %3375, i8* %33, align 1
  %3376 = icmp eq i32 %3369, 0
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %42, align 1
  %3378 = lshr i32 %3369, 31
  %3379 = trunc i32 %3378 to i8
  store i8 %3379, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %3380 = add i64 %3360, 12
  store i64 %3380, i64* %3, align 8
  store i32 %3369, i32* %3367, align 4
  %3381 = load i64, i64* %RBP.i, align 8
  %3382 = add i64 %3381, -172
  %3383 = load i64, i64* %3, align 8
  %3384 = add i64 %3383, 6
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3382 to i32*
  %3386 = load i32, i32* %3385, align 4
  %3387 = zext i32 %3386 to i64
  store i64 %3387, i64* %RAX.i1243, align 8
  %3388 = add i64 %3381, -80
  %3389 = add i64 %3383, 9
  store i64 %3389, i64* %3, align 8
  %3390 = inttoptr i64 %3388 to i32*
  %3391 = load i32, i32* %3390, align 4
  %3392 = and i32 %3391, %3386
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  %3394 = and i32 %3392, 255
  %3395 = tail call i32 @llvm.ctpop.i32(i32 %3394)
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  %3398 = xor i8 %3397, 1
  store i8 %3398, i8* %33, align 1
  %3399 = icmp eq i32 %3392, 0
  %3400 = zext i1 %3399 to i8
  store i8 %3400, i8* %42, align 1
  %3401 = lshr i32 %3392, 31
  %3402 = trunc i32 %3401 to i8
  store i8 %3402, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %3403 = add i64 %3383, 12
  store i64 %3403, i64* %3, align 8
  store i32 %3392, i32* %3390, align 4
  %3404 = load i64, i64* %RBP.i, align 8
  %3405 = add i64 %3404, -84
  %3406 = load i64, i64* %3, align 8
  %3407 = add i64 %3406, 4
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3405 to i32*
  %3409 = load i32, i32* %3408, align 4
  store i8 0, i8* %26, align 1
  %3410 = and i32 %3409, 255
  %3411 = tail call i32 @llvm.ctpop.i32(i32 %3410)
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = xor i8 %3413, 1
  store i8 %3414, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3415 = icmp eq i32 %3409, 0
  %3416 = zext i1 %3415 to i8
  store i8 %3416, i8* %42, align 1
  %3417 = lshr i32 %3409, 31
  %3418 = trunc i32 %3417 to i8
  store i8 %3418, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v191 = select i1 %3415, i64 53, i64 10
  %3419 = add i64 %3406, %.v191
  store i64 %3419, i64* %3, align 8
  br i1 %3415, label %block_.L_43acc5, label %block_43ac9a

block_43ac9a:                                     ; preds = %block_.L_43ac58
  %3420 = add i64 %3404, -124
  %3421 = add i64 %3419, 3
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = zext i32 %3423 to i64
  store i64 %3424, i64* %RAX.i1243, align 8
  %3425 = add i64 %3404, -136
  %3426 = add i64 %3419, 9
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i32*
  %3428 = load i32, i32* %3427, align 4
  %3429 = zext i32 %3428 to i64
  store i64 %3429, i64* %RCX.i2234, align 8
  %3430 = add i64 %3404, -144
  %3431 = add i64 %3419, 15
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3430 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = add i32 %3433, %3428
  %3435 = shl i32 %3434, 1
  %3436 = zext i32 %3435 to i64
  store i64 %3436, i64* %RCX.i2234, align 8
  %3437 = add i32 %3435, %3423
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i1243, align 8
  %3439 = icmp ult i32 %3437, %3423
  %3440 = icmp ult i32 %3437, %3435
  %3441 = or i1 %3439, %3440
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %26, align 1
  %3443 = and i32 %3437, 255
  %3444 = tail call i32 @llvm.ctpop.i32(i32 %3443)
  %3445 = trunc i32 %3444 to i8
  %3446 = and i8 %3445, 1
  %3447 = xor i8 %3446, 1
  store i8 %3447, i8* %33, align 1
  %3448 = xor i32 %3435, %3423
  %3449 = xor i32 %3448, %3437
  %3450 = lshr i32 %3449, 4
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  store i8 %3452, i8* %39, align 1
  %3453 = icmp eq i32 %3437, 0
  %3454 = zext i1 %3453 to i8
  store i8 %3454, i8* %42, align 1
  %3455 = lshr i32 %3437, 31
  %3456 = trunc i32 %3455 to i8
  store i8 %3456, i8* %45, align 1
  %3457 = lshr i32 %3423, 31
  %3458 = lshr i32 %3434, 30
  %3459 = and i32 %3458, 1
  %3460 = xor i32 %3455, %3457
  %3461 = xor i32 %3455, %3459
  %3462 = add nuw nsw i32 %3460, %3461
  %3463 = icmp eq i32 %3462, 2
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %51, align 1
  %3465 = load i64, i64* %RBP.i, align 8
  %3466 = add i64 %3465, -140
  %3467 = add i64 %3419, 25
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i32*
  %3469 = load i32, i32* %3468, align 4
  %3470 = add i32 %3469, %3437
  %3471 = add i32 %3470, 4
  %3472 = zext i32 %3471 to i64
  %3473 = shl nuw i64 %3472, 32
  %3474 = ashr i64 %3473, 34
  %3475 = lshr i64 %3474, 1
  %3476 = trunc i64 %3474 to i8
  %3477 = and i8 %3476, 1
  %3478 = trunc i64 %3475 to i32
  %3479 = and i64 %3475, 4294967295
  store i64 %3479, i64* %RAX.i1243, align 8
  store i8 %3477, i8* %26, align 1
  %3480 = and i32 %3478, 255
  %3481 = tail call i32 @llvm.ctpop.i32(i32 %3480)
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  %3484 = xor i8 %3483, 1
  store i8 %3484, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3485 = icmp eq i32 %3478, 0
  %3486 = zext i1 %3485 to i8
  store i8 %3486, i8* %42, align 1
  %3487 = lshr i64 %3474, 32
  %3488 = trunc i64 %3487 to i8
  %3489 = and i8 %3488, 1
  store i8 %3489, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3490 = add i64 %3465, -432
  %3491 = trunc i64 %3475 to i32
  %3492 = add i64 %3419, 37
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3490 to i32*
  store i32 %3491, i32* %3493, align 4
  %3494 = load i64, i64* %3, align 8
  %3495 = add i64 %3494, 35
  store i64 %3495, i64* %3, align 8
  br label %block_.L_43ace3

block_.L_43acc5:                                  ; preds = %block_.L_43ac58
  %3496 = add i64 %3404, -136
  %3497 = add i64 %3419, 6
  store i64 %3497, i64* %3, align 8
  %3498 = inttoptr i64 %3496 to i32*
  %3499 = load i32, i32* %3498, align 4
  %3500 = shl i32 %3499, 1
  %3501 = icmp slt i32 %3499, 0
  %3502 = icmp slt i32 %3500, 0
  %3503 = xor i1 %3501, %3502
  %3504 = zext i32 %3500 to i64
  store i64 %3504, i64* %RAX.i1243, align 8
  %.lobit79 = lshr i32 %3499, 31
  %3505 = trunc i32 %.lobit79 to i8
  store i8 %3505, i8* %26, align 1
  %3506 = and i32 %3500, 254
  %3507 = tail call i32 @llvm.ctpop.i32(i32 %3506)
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  store i8 %3510, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3511 = icmp eq i32 %3500, 0
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %42, align 1
  %3513 = lshr i32 %3499, 30
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  store i8 %3515, i8* %45, align 1
  %3516 = zext i1 %3503 to i8
  store i8 %3516, i8* %51, align 1
  %3517 = add i64 %3404, -132
  %3518 = add i64 %3419, 14
  store i64 %3518, i64* %3, align 8
  %3519 = inttoptr i64 %3517 to i32*
  %3520 = load i32, i32* %3519, align 4
  %3521 = add i32 %3520, %3500
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RAX.i1243, align 8
  %3523 = icmp ult i32 %3521, %3500
  %3524 = icmp ult i32 %3521, %3520
  %3525 = or i1 %3523, %3524
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %26, align 1
  %3527 = and i32 %3521, 255
  %3528 = tail call i32 @llvm.ctpop.i32(i32 %3527)
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = xor i8 %3530, 1
  store i8 %3531, i8* %33, align 1
  %3532 = xor i32 %3520, %3500
  %3533 = xor i32 %3532, %3521
  %3534 = lshr i32 %3533, 4
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  store i8 %3536, i8* %39, align 1
  %3537 = icmp eq i32 %3521, 0
  %3538 = zext i1 %3537 to i8
  store i8 %3538, i8* %42, align 1
  %3539 = lshr i32 %3521, 31
  %3540 = trunc i32 %3539 to i8
  store i8 %3540, i8* %45, align 1
  %3541 = lshr i32 %3499, 30
  %3542 = and i32 %3541, 1
  %3543 = lshr i32 %3520, 31
  %3544 = xor i32 %3539, %3542
  %3545 = xor i32 %3539, %3543
  %3546 = add nuw nsw i32 %3544, %3545
  %3547 = icmp eq i32 %3546, 2
  %3548 = zext i1 %3547 to i8
  store i8 %3548, i8* %51, align 1
  %3549 = add i64 %3404, -124
  %3550 = add i64 %3419, 17
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = add i32 %3552, %3521
  %3554 = add i32 %3553, 2
  %3555 = zext i32 %3554 to i64
  %3556 = shl nuw i64 %3555, 32
  %3557 = ashr i64 %3556, 33
  %3558 = lshr i64 %3557, 1
  %3559 = trunc i64 %3557 to i8
  %3560 = and i8 %3559, 1
  %3561 = trunc i64 %3558 to i32
  %3562 = and i64 %3558, 4294967295
  store i64 %3562, i64* %RAX.i1243, align 8
  store i8 %3560, i8* %26, align 1
  %3563 = and i32 %3561, 255
  %3564 = tail call i32 @llvm.ctpop.i32(i32 %3563)
  %3565 = trunc i32 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = xor i8 %3566, 1
  store i8 %3567, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3568 = icmp eq i32 %3561, 0
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %42, align 1
  %3570 = lshr i64 %3557, 32
  %3571 = trunc i64 %3570 to i8
  %3572 = and i8 %3571, 1
  store i8 %3572, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3573 = load i64, i64* %RBP.i, align 8
  %3574 = add i64 %3573, -432
  %3575 = trunc i64 %3558 to i32
  %3576 = add i64 %3419, 29
  store i64 %3576, i64* %3, align 8
  %3577 = inttoptr i64 %3574 to i32*
  store i32 %3575, i32* %3577, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_43ace3

block_.L_43ace3:                                  ; preds = %block_.L_43acc5, %block_43ac9a
  %3578 = phi i64 [ %.pre120, %block_.L_43acc5 ], [ %3495, %block_43ac9a ]
  %3579 = load i64, i64* %RBP.i, align 8
  %3580 = add i64 %3579, -432
  %3581 = add i64 %3578, 6
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i32*
  %3583 = load i32, i32* %3582, align 4
  %3584 = zext i32 %3583 to i64
  store i64 %3584, i64* %RAX.i1243, align 8
  %3585 = trunc i32 %3583 to i16
  store i16 %3585, i16* %CX.i365, align 2
  %3586 = add i64 %3579, -208
  %3587 = add i64 %3578, 16
  store i64 %3587, i64* %3, align 8
  %3588 = inttoptr i64 %3586 to i64*
  %3589 = load i64, i64* %3588, align 8
  store i64 %3589, i64* %RDX.i2316, align 8
  %3590 = add i64 %3578, 19
  store i64 %3590, i64* %3, align 8
  %3591 = inttoptr i64 %3589 to i16*
  store i16 %3585, i16* %3591, align 2
  %3592 = load i64, i64* %RBP.i, align 8
  %3593 = add i64 %3592, -80
  %3594 = load i64, i64* %3, align 8
  %3595 = add i64 %3594, 4
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3593 to i32*
  %3597 = load i32, i32* %3596, align 4
  store i8 0, i8* %26, align 1
  %3598 = and i32 %3597, 255
  %3599 = tail call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  store i8 %3602, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3603 = icmp eq i32 %3597, 0
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %42, align 1
  %3605 = lshr i32 %3597, 31
  %3606 = trunc i32 %3605 to i8
  store i8 %3606, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v192 = select i1 %3603, i64 50, i64 10
  %3607 = add i64 %3594, %.v192
  store i64 %3607, i64* %3, align 8
  br i1 %3603, label %block_.L_43ad28, label %block_43ad00

block_43ad00:                                     ; preds = %block_.L_43ace3
  %3608 = add i64 %3592, -136
  %3609 = add i64 %3607, 6
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3608 to i32*
  %3611 = load i32, i32* %3610, align 4
  %3612 = zext i32 %3611 to i64
  store i64 %3612, i64* %RAX.i1243, align 8
  %3613 = add i64 %3592, -124
  %3614 = add i64 %3607, 9
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3613 to i32*
  %3616 = load i32, i32* %3615, align 4
  %3617 = zext i32 %3616 to i64
  store i64 %3617, i64* %RCX.i2234, align 8
  %3618 = add i64 %3592, -144
  %3619 = add i64 %3607, 15
  store i64 %3619, i64* %3, align 8
  %3620 = inttoptr i64 %3618 to i32*
  %3621 = load i32, i32* %3620, align 4
  %3622 = add i32 %3621, %3616
  %3623 = shl i32 %3622, 1
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %RCX.i2234, align 8
  %3625 = add i32 %3623, %3611
  %3626 = zext i32 %3625 to i64
  store i64 %3626, i64* %RAX.i1243, align 8
  %3627 = icmp ult i32 %3625, %3611
  %3628 = icmp ult i32 %3625, %3623
  %3629 = or i1 %3627, %3628
  %3630 = zext i1 %3629 to i8
  store i8 %3630, i8* %26, align 1
  %3631 = and i32 %3625, 255
  %3632 = tail call i32 @llvm.ctpop.i32(i32 %3631)
  %3633 = trunc i32 %3632 to i8
  %3634 = and i8 %3633, 1
  %3635 = xor i8 %3634, 1
  store i8 %3635, i8* %33, align 1
  %3636 = xor i32 %3623, %3611
  %3637 = xor i32 %3636, %3625
  %3638 = lshr i32 %3637, 4
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  store i8 %3640, i8* %39, align 1
  %3641 = icmp eq i32 %3625, 0
  %3642 = zext i1 %3641 to i8
  store i8 %3642, i8* %42, align 1
  %3643 = lshr i32 %3625, 31
  %3644 = trunc i32 %3643 to i8
  store i8 %3644, i8* %45, align 1
  %3645 = lshr i32 %3611, 31
  %3646 = lshr i32 %3622, 30
  %3647 = and i32 %3646, 1
  %3648 = xor i32 %3643, %3645
  %3649 = xor i32 %3643, %3647
  %3650 = add nuw nsw i32 %3648, %3649
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %51, align 1
  %3653 = load i64, i64* %RBP.i, align 8
  %3654 = add i64 %3653, -120
  %3655 = add i64 %3607, 22
  store i64 %3655, i64* %3, align 8
  %3656 = inttoptr i64 %3654 to i32*
  %3657 = load i32, i32* %3656, align 4
  %3658 = add i32 %3657, %3625
  %3659 = add i32 %3658, 4
  %3660 = zext i32 %3659 to i64
  %3661 = shl nuw i64 %3660, 32
  %3662 = ashr i64 %3661, 34
  %3663 = lshr i64 %3662, 1
  %3664 = trunc i64 %3662 to i8
  %3665 = and i8 %3664, 1
  %3666 = trunc i64 %3663 to i32
  %3667 = and i64 %3663, 4294967295
  store i64 %3667, i64* %RAX.i1243, align 8
  store i8 %3665, i8* %26, align 1
  %3668 = and i32 %3666, 255
  %3669 = tail call i32 @llvm.ctpop.i32(i32 %3668)
  %3670 = trunc i32 %3669 to i8
  %3671 = and i8 %3670, 1
  %3672 = xor i8 %3671, 1
  store i8 %3672, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3673 = icmp eq i32 %3666, 0
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %42, align 1
  %3675 = lshr i64 %3662, 32
  %3676 = trunc i64 %3675 to i8
  %3677 = and i8 %3676, 1
  store i8 %3677, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3678 = add i64 %3653, -436
  %3679 = trunc i64 %3663 to i32
  %3680 = add i64 %3607, 34
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3678 to i32*
  store i32 %3679, i32* %3681, align 4
  %3682 = load i64, i64* %3, align 8
  %3683 = add i64 %3682, 32
  store i64 %3683, i64* %3, align 8
  br label %block_.L_43ad43

block_.L_43ad28:                                  ; preds = %block_.L_43ace3
  %3684 = add i64 %3592, -124
  %3685 = add i64 %3607, 3
  store i64 %3685, i64* %3, align 8
  %3686 = inttoptr i64 %3684 to i32*
  %3687 = load i32, i32* %3686, align 4
  %3688 = shl i32 %3687, 1
  %3689 = icmp slt i32 %3687, 0
  %3690 = icmp slt i32 %3688, 0
  %3691 = xor i1 %3689, %3690
  %3692 = zext i32 %3688 to i64
  store i64 %3692, i64* %RAX.i1243, align 8
  %.lobit78 = lshr i32 %3687, 31
  %3693 = trunc i32 %.lobit78 to i8
  store i8 %3693, i8* %26, align 1
  %3694 = and i32 %3688, 254
  %3695 = tail call i32 @llvm.ctpop.i32(i32 %3694)
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = xor i8 %3697, 1
  store i8 %3698, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3699 = icmp eq i32 %3688, 0
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %42, align 1
  %3701 = lshr i32 %3687, 30
  %3702 = trunc i32 %3701 to i8
  %3703 = and i8 %3702, 1
  store i8 %3703, i8* %45, align 1
  %3704 = zext i1 %3691 to i8
  store i8 %3704, i8* %51, align 1
  %3705 = add i64 %3592, -128
  %3706 = add i64 %3607, 8
  store i64 %3706, i64* %3, align 8
  %3707 = inttoptr i64 %3705 to i32*
  %3708 = load i32, i32* %3707, align 4
  %3709 = add i32 %3708, %3688
  %3710 = zext i32 %3709 to i64
  store i64 %3710, i64* %RAX.i1243, align 8
  %3711 = icmp ult i32 %3709, %3688
  %3712 = icmp ult i32 %3709, %3708
  %3713 = or i1 %3711, %3712
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %26, align 1
  %3715 = and i32 %3709, 255
  %3716 = tail call i32 @llvm.ctpop.i32(i32 %3715)
  %3717 = trunc i32 %3716 to i8
  %3718 = and i8 %3717, 1
  %3719 = xor i8 %3718, 1
  store i8 %3719, i8* %33, align 1
  %3720 = xor i32 %3708, %3688
  %3721 = xor i32 %3720, %3709
  %3722 = lshr i32 %3721, 4
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  store i8 %3724, i8* %39, align 1
  %3725 = icmp eq i32 %3709, 0
  %3726 = zext i1 %3725 to i8
  store i8 %3726, i8* %42, align 1
  %3727 = lshr i32 %3709, 31
  %3728 = trunc i32 %3727 to i8
  store i8 %3728, i8* %45, align 1
  %3729 = lshr i32 %3687, 30
  %3730 = and i32 %3729, 1
  %3731 = lshr i32 %3708, 31
  %3732 = xor i32 %3727, %3730
  %3733 = xor i32 %3727, %3731
  %3734 = add nuw nsw i32 %3732, %3733
  %3735 = icmp eq i32 %3734, 2
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %51, align 1
  %3737 = add i64 %3592, -136
  %3738 = add i64 %3607, 14
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = add i32 %3740, %3709
  %3742 = add i32 %3741, 2
  %3743 = zext i32 %3742 to i64
  %3744 = shl nuw i64 %3743, 32
  %3745 = ashr i64 %3744, 33
  %3746 = lshr i64 %3745, 1
  %3747 = trunc i64 %3745 to i8
  %3748 = and i8 %3747, 1
  %3749 = trunc i64 %3746 to i32
  %3750 = and i64 %3746, 4294967295
  store i64 %3750, i64* %RAX.i1243, align 8
  store i8 %3748, i8* %26, align 1
  %3751 = and i32 %3749, 255
  %3752 = tail call i32 @llvm.ctpop.i32(i32 %3751)
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  %3755 = xor i8 %3754, 1
  store i8 %3755, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3756 = icmp eq i32 %3749, 0
  %3757 = zext i1 %3756 to i8
  store i8 %3757, i8* %42, align 1
  %3758 = lshr i64 %3745, 32
  %3759 = trunc i64 %3758 to i8
  %3760 = and i8 %3759, 1
  store i8 %3760, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3761 = load i64, i64* %RBP.i, align 8
  %3762 = add i64 %3761, -436
  %3763 = trunc i64 %3746 to i32
  %3764 = add i64 %3607, 26
  store i64 %3764, i64* %3, align 8
  %3765 = inttoptr i64 %3762 to i32*
  store i32 %3763, i32* %3765, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_43ad43

block_.L_43ad43:                                  ; preds = %block_.L_43ad28, %block_43ad00
  %3766 = phi i64 [ %.pre121, %block_.L_43ad28 ], [ %3683, %block_43ad00 ]
  %3767 = load i64, i64* %RBP.i, align 8
  %3768 = add i64 %3767, -436
  %3769 = add i64 %3766, 6
  store i64 %3769, i64* %3, align 8
  %3770 = inttoptr i64 %3768 to i32*
  %3771 = load i32, i32* %3770, align 4
  %3772 = zext i32 %3771 to i64
  store i64 %3772, i64* %RAX.i1243, align 8
  %3773 = trunc i32 %3771 to i16
  store i16 %3773, i16* %CX.i365, align 2
  %3774 = add i64 %3767, -200
  %3775 = add i64 %3766, 16
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i64*
  %3777 = load i64, i64* %3776, align 8
  store i64 %3777, i64* %RDX.i2316, align 8
  %3778 = add i64 %3766, 19
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to i16*
  store i16 %3773, i16* %3779, align 2
  %3780 = load i64, i64* %RBP.i, align 8
  %3781 = add i64 %3780, -84
  %3782 = load i64, i64* %3, align 8
  %3783 = add i64 %3782, 4
  store i64 %3783, i64* %3, align 8
  %3784 = inttoptr i64 %3781 to i32*
  %3785 = load i32, i32* %3784, align 4
  store i8 0, i8* %26, align 1
  %3786 = and i32 %3785, 255
  %3787 = tail call i32 @llvm.ctpop.i32(i32 %3786)
  %3788 = trunc i32 %3787 to i8
  %3789 = and i8 %3788, 1
  %3790 = xor i8 %3789, 1
  store i8 %3790, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3791 = icmp eq i32 %3785, 0
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %42, align 1
  %3793 = lshr i32 %3785, 31
  %3794 = trunc i32 %3793 to i8
  store i8 %3794, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v193 = select i1 %3791, i64 48, i64 10
  %3795 = add i64 %3782, %.v193
  store i64 %3795, i64* %3, align 8
  br i1 %3791, label %block_.L_43ad86, label %block_43ad60

block_43ad60:                                     ; preds = %block_.L_43ad43
  %3796 = add i64 %3780, -140
  %3797 = add i64 %3795, 6
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3796 to i32*
  %3799 = load i32, i32* %3798, align 4
  %3800 = zext i32 %3799 to i64
  store i64 %3800, i64* %RAX.i1243, align 8
  %3801 = add i64 %3780, -132
  %3802 = add i64 %3795, 12
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3801 to i32*
  %3804 = load i32, i32* %3803, align 4
  %3805 = add i32 %3804, %3799
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RAX.i1243, align 8
  %3807 = icmp ult i32 %3805, %3799
  %3808 = icmp ult i32 %3805, %3804
  %3809 = or i1 %3807, %3808
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %26, align 1
  %3811 = and i32 %3805, 255
  %3812 = tail call i32 @llvm.ctpop.i32(i32 %3811)
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  %3815 = xor i8 %3814, 1
  store i8 %3815, i8* %33, align 1
  %3816 = xor i32 %3804, %3799
  %3817 = xor i32 %3816, %3805
  %3818 = lshr i32 %3817, 4
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  store i8 %3820, i8* %39, align 1
  %3821 = icmp eq i32 %3805, 0
  %3822 = zext i1 %3821 to i8
  store i8 %3822, i8* %42, align 1
  %3823 = lshr i32 %3805, 31
  %3824 = trunc i32 %3823 to i8
  store i8 %3824, i8* %45, align 1
  %3825 = lshr i32 %3799, 31
  %3826 = lshr i32 %3804, 31
  %3827 = xor i32 %3823, %3825
  %3828 = xor i32 %3823, %3826
  %3829 = add nuw nsw i32 %3827, %3828
  %3830 = icmp eq i32 %3829, 2
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %51, align 1
  %3832 = add i64 %3780, -136
  %3833 = add i64 %3795, 18
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = add i32 %3835, %3805
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %RAX.i1243, align 8
  %3838 = icmp ult i32 %3836, %3805
  %3839 = icmp ult i32 %3836, %3835
  %3840 = or i1 %3838, %3839
  %3841 = zext i1 %3840 to i8
  store i8 %3841, i8* %26, align 1
  %3842 = and i32 %3836, 255
  %3843 = tail call i32 @llvm.ctpop.i32(i32 %3842)
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = xor i8 %3845, 1
  store i8 %3846, i8* %33, align 1
  %3847 = xor i32 %3835, %3805
  %3848 = xor i32 %3847, %3836
  %3849 = lshr i32 %3848, 4
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  store i8 %3851, i8* %39, align 1
  %3852 = icmp eq i32 %3836, 0
  %3853 = zext i1 %3852 to i8
  store i8 %3853, i8* %42, align 1
  %3854 = lshr i32 %3836, 31
  %3855 = trunc i32 %3854 to i8
  store i8 %3855, i8* %45, align 1
  %3856 = lshr i32 %3835, 31
  %3857 = xor i32 %3854, %3823
  %3858 = xor i32 %3854, %3856
  %3859 = add nuw nsw i32 %3857, %3858
  %3860 = icmp eq i32 %3859, 2
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %51, align 1
  %3862 = add i64 %3780, -128
  %3863 = add i64 %3795, 21
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  %3865 = load i32, i32* %3864, align 4
  %3866 = add i32 %3865, %3836
  %3867 = add i32 %3866, 2
  %3868 = zext i32 %3867 to i64
  %3869 = shl nuw i64 %3868, 32
  %3870 = ashr i64 %3869, 33
  %3871 = lshr i64 %3870, 1
  %3872 = trunc i64 %3870 to i8
  %3873 = and i8 %3872, 1
  %3874 = trunc i64 %3871 to i32
  %3875 = and i64 %3871, 4294967295
  store i64 %3875, i64* %RAX.i1243, align 8
  store i8 %3873, i8* %26, align 1
  %3876 = and i32 %3874, 255
  %3877 = tail call i32 @llvm.ctpop.i32(i32 %3876)
  %3878 = trunc i32 %3877 to i8
  %3879 = and i8 %3878, 1
  %3880 = xor i8 %3879, 1
  store i8 %3880, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3881 = icmp eq i32 %3874, 0
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %42, align 1
  %3883 = lshr i64 %3870, 32
  %3884 = trunc i64 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3886 = load i64, i64* %RBP.i, align 8
  %3887 = add i64 %3886, -440
  %3888 = trunc i64 %3871 to i32
  %3889 = add i64 %3795, 33
  store i64 %3889, i64* %3, align 8
  %3890 = inttoptr i64 %3887 to i32*
  store i32 %3888, i32* %3890, align 4
  %3891 = load i64, i64* %3, align 8
  %3892 = add i64 %3891, 17
  store i64 %3892, i64* %3, align 8
  br label %block_.L_43ad92

block_.L_43ad86:                                  ; preds = %block_.L_43ad43
  %3893 = add i64 %3780, -136
  %3894 = add i64 %3795, 6
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i32*
  %3896 = load i32, i32* %3895, align 4
  %3897 = zext i32 %3896 to i64
  store i64 %3897, i64* %RAX.i1243, align 8
  %3898 = add i64 %3780, -440
  %3899 = add i64 %3795, 12
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to i32*
  store i32 %3896, i32* %3900, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_43ad92

block_.L_43ad92:                                  ; preds = %block_.L_43ad86, %block_43ad60
  %3901 = phi i64 [ %.pre122, %block_.L_43ad86 ], [ %3892, %block_43ad60 ]
  %3902 = load i64, i64* %RBP.i, align 8
  %3903 = add i64 %3902, -440
  %3904 = add i64 %3901, 6
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i32*
  %3906 = load i32, i32* %3905, align 4
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RAX.i1243, align 8
  %3908 = trunc i32 %3906 to i16
  store i16 %3908, i16* %CX.i365, align 2
  %3909 = add i64 %3902, -208
  %3910 = add i64 %3901, 16
  store i64 %3910, i64* %3, align 8
  %3911 = inttoptr i64 %3909 to i64*
  %3912 = load i64, i64* %3911, align 8
  store i64 %3912, i64* %RDX.i2316, align 8
  %3913 = add i64 %3902, -96
  %3914 = add i64 %3901, 20
  store i64 %3914, i64* %3, align 8
  %3915 = inttoptr i64 %3913 to i32*
  %3916 = load i32, i32* %3915, align 4
  %3917 = sext i32 %3916 to i64
  store i64 %3917, i64* %RSI.i2319, align 8
  %3918 = shl nsw i64 %3917, 1
  %3919 = add i64 %3918, %3912
  %3920 = add i64 %3901, 24
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i16*
  store i16 %3908, i16* %3921, align 2
  %3922 = load i64, i64* %RBP.i, align 8
  %3923 = add i64 %3922, -80
  %3924 = load i64, i64* %3, align 8
  %3925 = add i64 %3924, 4
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3923 to i32*
  %3927 = load i32, i32* %3926, align 4
  store i8 0, i8* %26, align 1
  %3928 = and i32 %3927, 255
  %3929 = tail call i32 @llvm.ctpop.i32(i32 %3928)
  %3930 = trunc i32 %3929 to i8
  %3931 = and i8 %3930, 1
  %3932 = xor i8 %3931, 1
  store i8 %3932, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3933 = icmp eq i32 %3927, 0
  %3934 = zext i1 %3933 to i8
  store i8 %3934, i8* %42, align 1
  %3935 = lshr i32 %3927, 31
  %3936 = trunc i32 %3935 to i8
  store i8 %3936, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v194 = select i1 %3933, i64 42, i64 10
  %3937 = add i64 %3924, %.v194
  store i64 %3937, i64* %3, align 8
  br i1 %3933, label %block_.L_43add4, label %block_43adb4

block_43adb4:                                     ; preds = %block_.L_43ad92
  %3938 = add i64 %3922, -120
  %3939 = add i64 %3937, 3
  store i64 %3939, i64* %3, align 8
  %3940 = inttoptr i64 %3938 to i32*
  %3941 = load i32, i32* %3940, align 4
  %3942 = zext i32 %3941 to i64
  store i64 %3942, i64* %RAX.i1243, align 8
  %3943 = add i64 %3922, -124
  %3944 = add i64 %3937, 6
  store i64 %3944, i64* %3, align 8
  %3945 = inttoptr i64 %3943 to i32*
  %3946 = load i32, i32* %3945, align 4
  %3947 = add i32 %3946, %3941
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %RAX.i1243, align 8
  %3949 = icmp ult i32 %3947, %3941
  %3950 = icmp ult i32 %3947, %3946
  %3951 = or i1 %3949, %3950
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %26, align 1
  %3953 = and i32 %3947, 255
  %3954 = tail call i32 @llvm.ctpop.i32(i32 %3953)
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  %3957 = xor i8 %3956, 1
  store i8 %3957, i8* %33, align 1
  %3958 = xor i32 %3946, %3941
  %3959 = xor i32 %3958, %3947
  %3960 = lshr i32 %3959, 4
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  store i8 %3962, i8* %39, align 1
  %3963 = icmp eq i32 %3947, 0
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %42, align 1
  %3965 = lshr i32 %3947, 31
  %3966 = trunc i32 %3965 to i8
  store i8 %3966, i8* %45, align 1
  %3967 = lshr i32 %3941, 31
  %3968 = lshr i32 %3946, 31
  %3969 = xor i32 %3965, %3967
  %3970 = xor i32 %3965, %3968
  %3971 = add nuw nsw i32 %3969, %3970
  %3972 = icmp eq i32 %3971, 2
  %3973 = zext i1 %3972 to i8
  store i8 %3973, i8* %51, align 1
  %3974 = add i64 %3922, -128
  %3975 = add i64 %3937, 9
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i32*
  %3977 = load i32, i32* %3976, align 4
  %3978 = add i32 %3977, %3947
  %3979 = zext i32 %3978 to i64
  store i64 %3979, i64* %RAX.i1243, align 8
  %3980 = icmp ult i32 %3978, %3947
  %3981 = icmp ult i32 %3978, %3977
  %3982 = or i1 %3980, %3981
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %26, align 1
  %3984 = and i32 %3978, 255
  %3985 = tail call i32 @llvm.ctpop.i32(i32 %3984)
  %3986 = trunc i32 %3985 to i8
  %3987 = and i8 %3986, 1
  %3988 = xor i8 %3987, 1
  store i8 %3988, i8* %33, align 1
  %3989 = xor i32 %3977, %3947
  %3990 = xor i32 %3989, %3978
  %3991 = lshr i32 %3990, 4
  %3992 = trunc i32 %3991 to i8
  %3993 = and i8 %3992, 1
  store i8 %3993, i8* %39, align 1
  %3994 = icmp eq i32 %3978, 0
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %42, align 1
  %3996 = lshr i32 %3978, 31
  %3997 = trunc i32 %3996 to i8
  store i8 %3997, i8* %45, align 1
  %3998 = lshr i32 %3977, 31
  %3999 = xor i32 %3996, %3965
  %4000 = xor i32 %3996, %3998
  %4001 = add nuw nsw i32 %3999, %4000
  %4002 = icmp eq i32 %4001, 2
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %51, align 1
  %4004 = add i64 %3922, -132
  %4005 = add i64 %3937, 15
  store i64 %4005, i64* %3, align 8
  %4006 = inttoptr i64 %4004 to i32*
  %4007 = load i32, i32* %4006, align 4
  %4008 = add i32 %4007, %3978
  %4009 = add i32 %4008, 2
  %4010 = zext i32 %4009 to i64
  %4011 = shl nuw i64 %4010, 32
  %4012 = ashr i64 %4011, 33
  %4013 = lshr i64 %4012, 1
  %4014 = trunc i64 %4012 to i8
  %4015 = and i8 %4014, 1
  %4016 = trunc i64 %4013 to i32
  %4017 = and i64 %4013, 4294967295
  store i64 %4017, i64* %RAX.i1243, align 8
  store i8 %4015, i8* %26, align 1
  %4018 = and i32 %4016, 255
  %4019 = tail call i32 @llvm.ctpop.i32(i32 %4018)
  %4020 = trunc i32 %4019 to i8
  %4021 = and i8 %4020, 1
  %4022 = xor i8 %4021, 1
  store i8 %4022, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4023 = icmp eq i32 %4016, 0
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %42, align 1
  %4025 = lshr i64 %4012, 32
  %4026 = trunc i64 %4025 to i8
  %4027 = and i8 %4026, 1
  store i8 %4027, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4028 = load i64, i64* %RBP.i, align 8
  %4029 = add i64 %4028, -444
  %4030 = trunc i64 %4013 to i32
  %4031 = add i64 %3937, 27
  store i64 %4031, i64* %3, align 8
  %4032 = inttoptr i64 %4029 to i32*
  store i32 %4030, i32* %4032, align 4
  %4033 = load i64, i64* %3, align 8
  %4034 = add i64 %4033, 14
  store i64 %4034, i64* %3, align 8
  br label %block_.L_43addd

block_.L_43add4:                                  ; preds = %block_.L_43ad92
  %4035 = add i64 %3922, -124
  %4036 = add i64 %3937, 3
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i32*
  %4038 = load i32, i32* %4037, align 4
  %4039 = zext i32 %4038 to i64
  store i64 %4039, i64* %RAX.i1243, align 8
  %4040 = add i64 %3922, -444
  %4041 = add i64 %3937, 9
  store i64 %4041, i64* %3, align 8
  %4042 = inttoptr i64 %4040 to i32*
  store i32 %4038, i32* %4042, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_43addd

block_.L_43addd:                                  ; preds = %block_.L_43add4, %block_43adb4
  %4043 = phi i64 [ %.pre123, %block_.L_43add4 ], [ %4034, %block_43adb4 ]
  %4044 = load i64, i64* %RBP.i, align 8
  %4045 = add i64 %4044, -444
  %4046 = add i64 %4043, 6
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4045 to i32*
  %4048 = load i32, i32* %4047, align 4
  %4049 = zext i32 %4048 to i64
  store i64 %4049, i64* %RAX.i1243, align 8
  store i64 0, i64* %RCX.i2234, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4050 = trunc i32 %4048 to i16
  store i16 %4050, i16* %DX.i816, align 2
  %4051 = add i64 %4044, -200
  %4052 = add i64 %4043, 18
  store i64 %4052, i64* %3, align 8
  %4053 = inttoptr i64 %4051 to i64*
  %4054 = load i64, i64* %4053, align 8
  store i64 %4054, i64* %RSI.i2319, align 8
  %4055 = add i64 %4044, -92
  %4056 = add i64 %4043, 21
  store i64 %4056, i64* %3, align 8
  %4057 = inttoptr i64 %4055 to i32*
  %4058 = load i32, i32* %4057, align 4
  %4059 = sub i32 0, %4058
  %4060 = zext i32 %4059 to i64
  store i64 %4060, i64* %RCX.i2234, align 8
  %4061 = icmp ne i32 %4058, 0
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %26, align 1
  %4063 = and i32 %4059, 255
  %4064 = tail call i32 @llvm.ctpop.i32(i32 %4063)
  %4065 = trunc i32 %4064 to i8
  %4066 = and i8 %4065, 1
  %4067 = xor i8 %4066, 1
  store i8 %4067, i8* %33, align 1
  %4068 = xor i32 %4058, %4059
  %4069 = lshr i32 %4068, 4
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  store i8 %4071, i8* %39, align 1
  %4072 = icmp eq i32 %4058, 0
  %4073 = zext i1 %4072 to i8
  store i8 %4073, i8* %42, align 1
  %4074 = lshr i32 %4059, 31
  %4075 = trunc i32 %4074 to i8
  store i8 %4075, i8* %45, align 1
  %4076 = lshr i32 %4058, 31
  %4077 = add nuw nsw i32 %4074, %4076
  %4078 = icmp eq i32 %4077, 2
  %4079 = zext i1 %4078 to i8
  store i8 %4079, i8* %51, align 1
  %4080 = sext i32 %4059 to i64
  store i64 %4080, i64* %RDI.i2322, align 8
  %4081 = shl nsw i64 %4080, 1
  %4082 = add i64 %4054, %4081
  %4083 = add i64 %4043, 28
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i16*
  store i16 %4050, i16* %4084, align 2
  %4085 = load i64, i64* %RBP.i, align 8
  %4086 = add i64 %4085, -84
  %4087 = load i64, i64* %3, align 8
  %4088 = add i64 %4087, 4
  store i64 %4088, i64* %3, align 8
  %4089 = inttoptr i64 %4086 to i32*
  %4090 = load i32, i32* %4089, align 4
  store i8 0, i8* %26, align 1
  %4091 = and i32 %4090, 255
  %4092 = tail call i32 @llvm.ctpop.i32(i32 %4091)
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = xor i8 %4094, 1
  store i8 %4095, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4096 = icmp eq i32 %4090, 0
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %42, align 1
  %4098 = lshr i32 %4090, 31
  %4099 = trunc i32 %4098 to i8
  store i8 %4099, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v195 = select i1 %4096, i64 60, i64 10
  %4100 = add i64 %4087, %.v195
  store i64 %4100, i64* %3, align 8
  br i1 %4096, label %block_.L_43ae35, label %block_43ae03

block_43ae03:                                     ; preds = %block_.L_43addd
  %4101 = add i64 %4085, -152
  %4102 = add i64 %4100, 6
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RAX.i1243, align 8
  %4106 = add i64 %4085, -140
  %4107 = add i64 %4100, 12
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4106 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = add i32 %4109, %4104
  %4111 = lshr i32 %4110, 31
  %4112 = trunc i32 %4111 to i8
  %4113 = shl i32 %4110, 1
  %4114 = icmp slt i32 %4110, 0
  %4115 = icmp slt i32 %4113, 0
  %4116 = xor i1 %4114, %4115
  %4117 = zext i32 %4113 to i64
  store i64 %4117, i64* %RAX.i1243, align 8
  store i8 %4112, i8* %26, align 1
  %4118 = and i32 %4113, 254
  %4119 = tail call i32 @llvm.ctpop.i32(i32 %4118)
  %4120 = trunc i32 %4119 to i8
  %4121 = and i8 %4120, 1
  %4122 = xor i8 %4121, 1
  store i8 %4122, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4123 = icmp eq i32 %4113, 0
  %4124 = zext i1 %4123 to i8
  store i8 %4124, i8* %42, align 1
  %4125 = lshr i32 %4110, 30
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  store i8 %4127, i8* %45, align 1
  %4128 = zext i1 %4116 to i8
  store i8 %4128, i8* %51, align 1
  %4129 = add i64 %4100, 20
  store i64 %4129, i64* %3, align 8
  %4130 = load i32, i32* %4108, align 4
  %4131 = add i32 %4130, %4113
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %RAX.i1243, align 8
  %4133 = icmp ult i32 %4131, %4113
  %4134 = icmp ult i32 %4131, %4130
  %4135 = or i1 %4133, %4134
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %26, align 1
  %4137 = and i32 %4131, 255
  %4138 = tail call i32 @llvm.ctpop.i32(i32 %4137)
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = xor i8 %4140, 1
  store i8 %4141, i8* %33, align 1
  %4142 = xor i32 %4130, %4113
  %4143 = xor i32 %4142, %4131
  %4144 = lshr i32 %4143, 4
  %4145 = trunc i32 %4144 to i8
  %4146 = and i8 %4145, 1
  store i8 %4146, i8* %39, align 1
  %4147 = icmp eq i32 %4131, 0
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %42, align 1
  %4149 = lshr i32 %4131, 31
  %4150 = trunc i32 %4149 to i8
  store i8 %4150, i8* %45, align 1
  %4151 = lshr i32 %4110, 30
  %4152 = and i32 %4151, 1
  %4153 = lshr i32 %4130, 31
  %4154 = xor i32 %4149, %4152
  %4155 = xor i32 %4149, %4153
  %4156 = add nuw nsw i32 %4154, %4155
  %4157 = icmp eq i32 %4156, 2
  %4158 = zext i1 %4157 to i8
  store i8 %4158, i8* %51, align 1
  %4159 = load i64, i64* %RBP.i, align 8
  %4160 = add i64 %4159, -136
  %4161 = add i64 %4100, 26
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = add i32 %4163, %4131
  %4165 = zext i32 %4164 to i64
  store i64 %4165, i64* %RAX.i1243, align 8
  %4166 = icmp ult i32 %4164, %4131
  %4167 = icmp ult i32 %4164, %4163
  %4168 = or i1 %4166, %4167
  %4169 = zext i1 %4168 to i8
  store i8 %4169, i8* %26, align 1
  %4170 = and i32 %4164, 255
  %4171 = tail call i32 @llvm.ctpop.i32(i32 %4170)
  %4172 = trunc i32 %4171 to i8
  %4173 = and i8 %4172, 1
  %4174 = xor i8 %4173, 1
  store i8 %4174, i8* %33, align 1
  %4175 = xor i32 %4163, %4131
  %4176 = xor i32 %4175, %4164
  %4177 = lshr i32 %4176, 4
  %4178 = trunc i32 %4177 to i8
  %4179 = and i8 %4178, 1
  store i8 %4179, i8* %39, align 1
  %4180 = icmp eq i32 %4164, 0
  %4181 = zext i1 %4180 to i8
  store i8 %4181, i8* %42, align 1
  %4182 = lshr i32 %4164, 31
  %4183 = trunc i32 %4182 to i8
  store i8 %4183, i8* %45, align 1
  %4184 = lshr i32 %4163, 31
  %4185 = xor i32 %4182, %4149
  %4186 = xor i32 %4182, %4184
  %4187 = add nuw nsw i32 %4185, %4186
  %4188 = icmp eq i32 %4187, 2
  %4189 = zext i1 %4188 to i8
  store i8 %4189, i8* %51, align 1
  %4190 = add i64 %4159, -144
  %4191 = add i64 %4100, 32
  store i64 %4191, i64* %3, align 8
  %4192 = inttoptr i64 %4190 to i32*
  %4193 = load i32, i32* %4192, align 4
  %4194 = add i32 %4193, %4164
  %4195 = add i32 %4194, 4
  %4196 = zext i32 %4195 to i64
  %4197 = shl nuw i64 %4196, 32
  %4198 = ashr i64 %4197, 34
  %4199 = lshr i64 %4198, 1
  %4200 = trunc i64 %4198 to i8
  %4201 = and i8 %4200, 1
  %4202 = trunc i64 %4199 to i32
  %4203 = and i64 %4199, 4294967295
  store i64 %4203, i64* %RAX.i1243, align 8
  store i8 %4201, i8* %26, align 1
  %4204 = and i32 %4202, 255
  %4205 = tail call i32 @llvm.ctpop.i32(i32 %4204)
  %4206 = trunc i32 %4205 to i8
  %4207 = and i8 %4206, 1
  %4208 = xor i8 %4207, 1
  store i8 %4208, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4209 = icmp eq i32 %4202, 0
  %4210 = zext i1 %4209 to i8
  store i8 %4210, i8* %42, align 1
  %4211 = lshr i64 %4198, 32
  %4212 = trunc i64 %4211 to i8
  %4213 = and i8 %4212, 1
  store i8 %4213, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4214 = load i64, i64* %RBP.i, align 8
  %4215 = add i64 %4214, -448
  %4216 = trunc i64 %4199 to i32
  %4217 = add i64 %4100, 44
  store i64 %4217, i64* %3, align 8
  %4218 = inttoptr i64 %4215 to i32*
  store i32 %4216, i32* %4218, align 4
  %4219 = load i64, i64* %3, align 8
  %4220 = add i64 %4219, 17
  store i64 %4220, i64* %3, align 8
  br label %block_.L_43ae41

block_.L_43ae35:                                  ; preds = %block_.L_43addd
  %4221 = add i64 %4085, -140
  %4222 = add i64 %4100, 6
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to i32*
  %4224 = load i32, i32* %4223, align 4
  %4225 = zext i32 %4224 to i64
  store i64 %4225, i64* %RAX.i1243, align 8
  %4226 = add i64 %4085, -448
  %4227 = add i64 %4100, 12
  store i64 %4227, i64* %3, align 8
  %4228 = inttoptr i64 %4226 to i32*
  store i32 %4224, i32* %4228, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_43ae41

block_.L_43ae41:                                  ; preds = %block_.L_43ae35, %block_43ae03
  %4229 = phi i64 [ %.pre124, %block_.L_43ae35 ], [ %4220, %block_43ae03 ]
  %4230 = load i64, i64* %RBP.i, align 8
  %4231 = add i64 %4230, -448
  %4232 = add i64 %4229, 6
  store i64 %4232, i64* %3, align 8
  %4233 = inttoptr i64 %4231 to i32*
  %4234 = load i32, i32* %4233, align 4
  %4235 = zext i32 %4234 to i64
  store i64 %4235, i64* %RAX.i1243, align 8
  %4236 = trunc i32 %4234 to i16
  store i16 %4236, i16* %CX.i365, align 2
  %4237 = add i64 %4230, -208
  %4238 = add i64 %4229, 16
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4237 to i64*
  %4240 = load i64, i64* %4239, align 8
  store i64 %4240, i64* %RDX.i2316, align 8
  %4241 = add i64 %4230, -96
  %4242 = add i64 %4229, 19
  store i64 %4242, i64* %3, align 8
  %4243 = inttoptr i64 %4241 to i32*
  %4244 = load i32, i32* %4243, align 4
  %4245 = shl i32 %4244, 1
  %4246 = icmp slt i32 %4244, 0
  %4247 = icmp slt i32 %4245, 0
  %4248 = xor i1 %4246, %4247
  %4249 = zext i32 %4245 to i64
  store i64 %4249, i64* %RAX.i1243, align 8
  %.lobit75 = lshr i32 %4244, 31
  %4250 = trunc i32 %.lobit75 to i8
  store i8 %4250, i8* %26, align 1
  %4251 = and i32 %4245, 254
  %4252 = tail call i32 @llvm.ctpop.i32(i32 %4251)
  %4253 = trunc i32 %4252 to i8
  %4254 = and i8 %4253, 1
  %4255 = xor i8 %4254, 1
  store i8 %4255, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4256 = icmp eq i32 %4245, 0
  %4257 = zext i1 %4256 to i8
  store i8 %4257, i8* %42, align 1
  %4258 = lshr i32 %4244, 30
  %4259 = trunc i32 %4258 to i8
  %4260 = and i8 %4259, 1
  store i8 %4260, i8* %45, align 1
  %4261 = zext i1 %4248 to i8
  store i8 %4261, i8* %51, align 1
  %4262 = sext i32 %4245 to i64
  store i64 %4262, i64* %RSI.i2319, align 8
  %4263 = shl nsw i64 %4262, 1
  %4264 = add i64 %4240, %4263
  %4265 = add i64 %4229, 28
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i16*
  store i16 %4236, i16* %4266, align 2
  %4267 = load i64, i64* %RBP.i, align 8
  %4268 = add i64 %4267, -80
  %4269 = load i64, i64* %3, align 8
  %4270 = add i64 %4269, 4
  store i64 %4270, i64* %3, align 8
  %4271 = inttoptr i64 %4268 to i32*
  %4272 = load i32, i32* %4271, align 4
  store i8 0, i8* %26, align 1
  %4273 = and i32 %4272, 255
  %4274 = tail call i32 @llvm.ctpop.i32(i32 %4273)
  %4275 = trunc i32 %4274 to i8
  %4276 = and i8 %4275, 1
  %4277 = xor i8 %4276, 1
  store i8 %4277, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4278 = icmp eq i32 %4272, 0
  %4279 = zext i1 %4278 to i8
  store i8 %4279, i8* %42, align 1
  %4280 = lshr i32 %4272, 31
  %4281 = trunc i32 %4280 to i8
  store i8 %4281, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v196 = select i1 %4278, i64 51, i64 10
  %4282 = add i64 %4269, %.v196
  store i64 %4282, i64* %3, align 8
  br i1 %4278, label %block_.L_43ae91, label %block_43ae68

block_43ae68:                                     ; preds = %block_.L_43ae41
  %4283 = add i64 %4267, -148
  %4284 = add i64 %4282, 6
  store i64 %4284, i64* %3, align 8
  %4285 = inttoptr i64 %4283 to i32*
  %4286 = load i32, i32* %4285, align 4
  %4287 = zext i32 %4286 to i64
  store i64 %4287, i64* %RAX.i1243, align 8
  %4288 = add i64 %4267, -120
  %4289 = add i64 %4282, 9
  store i64 %4289, i64* %3, align 8
  %4290 = inttoptr i64 %4288 to i32*
  %4291 = load i32, i32* %4290, align 4
  %4292 = add i32 %4291, %4286
  %4293 = lshr i32 %4292, 31
  %4294 = trunc i32 %4293 to i8
  %4295 = shl i32 %4292, 1
  %4296 = icmp slt i32 %4292, 0
  %4297 = icmp slt i32 %4295, 0
  %4298 = xor i1 %4296, %4297
  %4299 = zext i32 %4295 to i64
  store i64 %4299, i64* %RAX.i1243, align 8
  store i8 %4294, i8* %26, align 1
  %4300 = and i32 %4295, 254
  %4301 = tail call i32 @llvm.ctpop.i32(i32 %4300)
  %4302 = trunc i32 %4301 to i8
  %4303 = and i8 %4302, 1
  %4304 = xor i8 %4303, 1
  store i8 %4304, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4305 = icmp eq i32 %4295, 0
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %42, align 1
  %4307 = lshr i32 %4292, 30
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  store i8 %4309, i8* %45, align 1
  %4310 = zext i1 %4298 to i8
  store i8 %4310, i8* %51, align 1
  %4311 = add i64 %4282, 14
  store i64 %4311, i64* %3, align 8
  %4312 = load i32, i32* %4290, align 4
  %4313 = add i32 %4312, %4295
  %4314 = zext i32 %4313 to i64
  store i64 %4314, i64* %RAX.i1243, align 8
  %4315 = icmp ult i32 %4313, %4295
  %4316 = icmp ult i32 %4313, %4312
  %4317 = or i1 %4315, %4316
  %4318 = zext i1 %4317 to i8
  store i8 %4318, i8* %26, align 1
  %4319 = and i32 %4313, 255
  %4320 = tail call i32 @llvm.ctpop.i32(i32 %4319)
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = xor i8 %4322, 1
  store i8 %4323, i8* %33, align 1
  %4324 = xor i32 %4312, %4295
  %4325 = xor i32 %4324, %4313
  %4326 = lshr i32 %4325, 4
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  store i8 %4328, i8* %39, align 1
  %4329 = icmp eq i32 %4313, 0
  %4330 = zext i1 %4329 to i8
  store i8 %4330, i8* %42, align 1
  %4331 = lshr i32 %4313, 31
  %4332 = trunc i32 %4331 to i8
  store i8 %4332, i8* %45, align 1
  %4333 = lshr i32 %4292, 30
  %4334 = and i32 %4333, 1
  %4335 = lshr i32 %4312, 31
  %4336 = xor i32 %4331, %4334
  %4337 = xor i32 %4331, %4335
  %4338 = add nuw nsw i32 %4336, %4337
  %4339 = icmp eq i32 %4338, 2
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %51, align 1
  %4341 = load i64, i64* %RBP.i, align 8
  %4342 = add i64 %4341, -124
  %4343 = add i64 %4282, 17
  store i64 %4343, i64* %3, align 8
  %4344 = inttoptr i64 %4342 to i32*
  %4345 = load i32, i32* %4344, align 4
  %4346 = add i32 %4345, %4313
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RAX.i1243, align 8
  %4348 = icmp ult i32 %4346, %4313
  %4349 = icmp ult i32 %4346, %4345
  %4350 = or i1 %4348, %4349
  %4351 = zext i1 %4350 to i8
  store i8 %4351, i8* %26, align 1
  %4352 = and i32 %4346, 255
  %4353 = tail call i32 @llvm.ctpop.i32(i32 %4352)
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  %4356 = xor i8 %4355, 1
  store i8 %4356, i8* %33, align 1
  %4357 = xor i32 %4345, %4313
  %4358 = xor i32 %4357, %4346
  %4359 = lshr i32 %4358, 4
  %4360 = trunc i32 %4359 to i8
  %4361 = and i8 %4360, 1
  store i8 %4361, i8* %39, align 1
  %4362 = icmp eq i32 %4346, 0
  %4363 = zext i1 %4362 to i8
  store i8 %4363, i8* %42, align 1
  %4364 = lshr i32 %4346, 31
  %4365 = trunc i32 %4364 to i8
  store i8 %4365, i8* %45, align 1
  %4366 = lshr i32 %4345, 31
  %4367 = xor i32 %4364, %4331
  %4368 = xor i32 %4364, %4366
  %4369 = add nuw nsw i32 %4367, %4368
  %4370 = icmp eq i32 %4369, 2
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %51, align 1
  %4372 = add i64 %4341, -144
  %4373 = add i64 %4282, 23
  store i64 %4373, i64* %3, align 8
  %4374 = inttoptr i64 %4372 to i32*
  %4375 = load i32, i32* %4374, align 4
  %4376 = add i32 %4375, %4346
  %4377 = add i32 %4376, 4
  %4378 = zext i32 %4377 to i64
  %4379 = shl nuw i64 %4378, 32
  %4380 = ashr i64 %4379, 34
  %4381 = lshr i64 %4380, 1
  %4382 = trunc i64 %4380 to i8
  %4383 = and i8 %4382, 1
  %4384 = trunc i64 %4381 to i32
  %4385 = and i64 %4381, 4294967295
  store i64 %4385, i64* %RAX.i1243, align 8
  store i8 %4383, i8* %26, align 1
  %4386 = and i32 %4384, 255
  %4387 = tail call i32 @llvm.ctpop.i32(i32 %4386)
  %4388 = trunc i32 %4387 to i8
  %4389 = and i8 %4388, 1
  %4390 = xor i8 %4389, 1
  store i8 %4390, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4391 = icmp eq i32 %4384, 0
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %42, align 1
  %4393 = lshr i64 %4380, 32
  %4394 = trunc i64 %4393 to i8
  %4395 = and i8 %4394, 1
  store i8 %4395, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4396 = load i64, i64* %RBP.i, align 8
  %4397 = add i64 %4396, -452
  %4398 = trunc i64 %4381 to i32
  %4399 = add i64 %4282, 35
  store i64 %4399, i64* %3, align 8
  %4400 = inttoptr i64 %4397 to i32*
  store i32 %4398, i32* %4400, align 4
  %4401 = load i64, i64* %3, align 8
  %4402 = add i64 %4401, 14
  store i64 %4402, i64* %3, align 8
  br label %block_.L_43ae9a

block_.L_43ae91:                                  ; preds = %block_.L_43ae41
  %4403 = add i64 %4267, -120
  %4404 = add i64 %4282, 3
  store i64 %4404, i64* %3, align 8
  %4405 = inttoptr i64 %4403 to i32*
  %4406 = load i32, i32* %4405, align 4
  %4407 = zext i32 %4406 to i64
  store i64 %4407, i64* %RAX.i1243, align 8
  %4408 = add i64 %4267, -452
  %4409 = add i64 %4282, 9
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i32*
  store i32 %4406, i32* %4410, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_43ae9a

block_.L_43ae9a:                                  ; preds = %block_.L_43ae91, %block_43ae68
  %4411 = phi i64 [ %.pre125, %block_.L_43ae91 ], [ %4402, %block_43ae68 ]
  %4412 = load i64, i64* %RBP.i, align 8
  %4413 = add i64 %4412, -452
  %4414 = add i64 %4411, 6
  store i64 %4414, i64* %3, align 8
  %4415 = inttoptr i64 %4413 to i32*
  %4416 = load i32, i32* %4415, align 4
  %4417 = zext i32 %4416 to i64
  store i64 %4417, i64* %RAX.i1243, align 8
  store i64 0, i64* %RCX.i2234, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4418 = trunc i32 %4416 to i16
  store i16 %4418, i16* %DX.i816, align 2
  %4419 = add i64 %4412, -200
  %4420 = add i64 %4411, 18
  store i64 %4420, i64* %3, align 8
  %4421 = inttoptr i64 %4419 to i64*
  %4422 = load i64, i64* %4421, align 8
  store i64 %4422, i64* %RSI.i2319, align 8
  %4423 = add i64 %4412, -92
  %4424 = add i64 %4411, 21
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = sub i32 0, %4426
  %4428 = lshr i32 %4427, 31
  %4429 = trunc i32 %4428 to i8
  %4430 = shl i32 %4427, 1
  %4431 = icmp slt i32 %4427, 0
  %4432 = icmp slt i32 %4430, 0
  %4433 = xor i1 %4431, %4432
  %4434 = zext i32 %4430 to i64
  store i64 %4434, i64* %RCX.i2234, align 8
  store i8 %4429, i8* %26, align 1
  %4435 = and i32 %4430, 254
  %4436 = tail call i32 @llvm.ctpop.i32(i32 %4435)
  %4437 = trunc i32 %4436 to i8
  %4438 = and i8 %4437, 1
  %4439 = xor i8 %4438, 1
  store i8 %4439, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4440 = icmp eq i32 %4430, 0
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %42, align 1
  %4442 = lshr i32 %4427, 30
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  store i8 %4444, i8* %45, align 1
  %4445 = zext i1 %4433 to i8
  store i8 %4445, i8* %51, align 1
  %4446 = sext i32 %4430 to i64
  store i64 %4446, i64* %RDI.i2322, align 8
  %4447 = shl nsw i64 %4446, 1
  %4448 = add i64 %4422, %4447
  %4449 = add i64 %4411, 30
  store i64 %4449, i64* %3, align 8
  %4450 = inttoptr i64 %4448 to i16*
  store i16 %4418, i16* %4450, align 2
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_43aeb9

block_.L_43aeb9:                                  ; preds = %block_.L_43ae9a, %block_43ac0c
  %4451 = phi i64 [ %.pre126, %block_.L_43ae9a ], [ %3322, %block_43ac0c ]
  %4452 = add i64 %4451, 1123
  br label %block_.L_43b31c

block_.L_43aebe:                                  ; preds = %block_.L_43abe9
  %.v151 = select i1 %3144, i64 27, i64 10
  %4453 = add i64 %3134, %.v151
  %4454 = add i64 %3107, -100
  %4455 = add i64 %4453, 3
  store i64 %4455, i64* %3, align 8
  %4456 = inttoptr i64 %4454 to i32*
  %4457 = load i32, i32* %4456, align 4
  %4458 = zext i32 %4457 to i64
  store i64 %4458, i64* %RAX.i1243, align 8
  br i1 %3144, label %block_.L_43aed9, label %block_43aec8

block_43aec8:                                     ; preds = %block_.L_43aebe
  %4459 = add i32 %4457, 1
  %4460 = zext i32 %4459 to i64
  store i64 %4460, i64* %RAX.i1243, align 8
  %4461 = icmp eq i32 %4457, -1
  %4462 = icmp eq i32 %4459, 0
  %4463 = or i1 %4461, %4462
  %4464 = zext i1 %4463 to i8
  store i8 %4464, i8* %26, align 1
  %4465 = and i32 %4459, 255
  %4466 = tail call i32 @llvm.ctpop.i32(i32 %4465)
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  %4469 = xor i8 %4468, 1
  store i8 %4469, i8* %33, align 1
  %4470 = xor i32 %4459, %4457
  %4471 = lshr i32 %4470, 4
  %4472 = trunc i32 %4471 to i8
  %4473 = and i8 %4472, 1
  store i8 %4473, i8* %39, align 1
  %4474 = zext i1 %4462 to i8
  store i8 %4474, i8* %42, align 1
  %4475 = lshr i32 %4459, 31
  %4476 = trunc i32 %4475 to i8
  store i8 %4476, i8* %45, align 1
  %4477 = lshr i32 %4457, 31
  %4478 = xor i32 %4475, %4477
  %4479 = add nuw nsw i32 %4478, %4475
  %4480 = icmp eq i32 %4479, 2
  %4481 = zext i1 %4480 to i8
  store i8 %4481, i8* %51, align 1
  %4482 = add i64 %3107, -456
  %4483 = add i64 %4453, 12
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  store i32 %4459, i32* %4484, align 4
  %4485 = load i64, i64* %3, align 8
  %4486 = add i64 %4485, 20
  store i64 %4486, i64* %3, align 8
  br label %block_.L_43aee8

block_.L_43aed9:                                  ; preds = %block_.L_43aebe
  %4487 = add i64 %3107, -80
  %4488 = add i64 %4453, 6
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4487 to i32*
  %4490 = load i32, i32* %4489, align 4
  %4491 = add i32 %4490, %4457
  %4492 = zext i32 %4491 to i64
  store i64 %4492, i64* %RAX.i1243, align 8
  %4493 = icmp ult i32 %4491, %4457
  %4494 = icmp ult i32 %4491, %4490
  %4495 = or i1 %4493, %4494
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %26, align 1
  %4497 = and i32 %4491, 255
  %4498 = tail call i32 @llvm.ctpop.i32(i32 %4497)
  %4499 = trunc i32 %4498 to i8
  %4500 = and i8 %4499, 1
  %4501 = xor i8 %4500, 1
  store i8 %4501, i8* %33, align 1
  %4502 = xor i32 %4490, %4457
  %4503 = xor i32 %4502, %4491
  %4504 = lshr i32 %4503, 4
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  store i8 %4506, i8* %39, align 1
  %4507 = icmp eq i32 %4491, 0
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %42, align 1
  %4509 = lshr i32 %4491, 31
  %4510 = trunc i32 %4509 to i8
  store i8 %4510, i8* %45, align 1
  %4511 = lshr i32 %4457, 31
  %4512 = lshr i32 %4490, 31
  %4513 = xor i32 %4509, %4511
  %4514 = xor i32 %4509, %4512
  %4515 = add nuw nsw i32 %4513, %4514
  %4516 = icmp eq i32 %4515, 2
  %4517 = zext i1 %4516 to i8
  store i8 %4517, i8* %51, align 1
  %4518 = add i64 %3107, -84
  %4519 = add i64 %4453, 9
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i32*
  %4521 = load i32, i32* %4520, align 4
  %4522 = add i32 %4521, %4491
  %4523 = zext i32 %4522 to i64
  store i64 %4523, i64* %RAX.i1243, align 8
  %4524 = icmp ult i32 %4522, %4491
  %4525 = icmp ult i32 %4522, %4521
  %4526 = or i1 %4524, %4525
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %26, align 1
  %4528 = and i32 %4522, 255
  %4529 = tail call i32 @llvm.ctpop.i32(i32 %4528)
  %4530 = trunc i32 %4529 to i8
  %4531 = and i8 %4530, 1
  %4532 = xor i8 %4531, 1
  store i8 %4532, i8* %33, align 1
  %4533 = xor i32 %4521, %4491
  %4534 = xor i32 %4533, %4522
  %4535 = lshr i32 %4534, 4
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  store i8 %4537, i8* %39, align 1
  %4538 = icmp eq i32 %4522, 0
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %42, align 1
  %4540 = lshr i32 %4522, 31
  %4541 = trunc i32 %4540 to i8
  store i8 %4541, i8* %45, align 1
  %4542 = lshr i32 %4521, 31
  %4543 = xor i32 %4540, %4509
  %4544 = xor i32 %4540, %4542
  %4545 = add nuw nsw i32 %4543, %4544
  %4546 = icmp eq i32 %4545, 2
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %51, align 1
  %4548 = add i64 %3107, -456
  %4549 = add i64 %4453, 15
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  store i32 %4522, i32* %4550, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_43aee8

block_.L_43aee8:                                  ; preds = %block_.L_43aed9, %block_43aec8
  %4551 = phi i64 [ %.pre127, %block_.L_43aed9 ], [ %4486, %block_43aec8 ]
  %4552 = load i64, i64* %RBP.i, align 8
  %4553 = add i64 %4552, -456
  %4554 = add i64 %4551, 6
  store i64 %4554, i64* %3, align 8
  %4555 = inttoptr i64 %4553 to i32*
  %4556 = load i32, i32* %4555, align 4
  %4557 = zext i32 %4556 to i64
  store i64 %4557, i64* %RAX.i1243, align 8
  store i64 0, i64* %RCX.i2234, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4558 = add i64 %4552, -104
  %4559 = add i64 %4551, 11
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i32*
  store i32 %4556, i32* %4560, align 4
  %4561 = load i64, i64* %RBP.i, align 8
  %4562 = add i64 %4561, -108
  %4563 = load i64, i64* %3, align 8
  %4564 = add i64 %4563, 3
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4562 to i32*
  %4566 = load i32, i32* %4565, align 4
  %4567 = shl i32 %4566, 2
  %4568 = zext i32 %4567 to i64
  store i64 %4568, i64* %RAX.i1243, align 8
  %4569 = lshr i32 %4566, 30
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  store i8 %4571, i8* %26, align 1
  %4572 = and i32 %4567, 252
  %4573 = tail call i32 @llvm.ctpop.i32(i32 %4572)
  %4574 = trunc i32 %4573 to i8
  %4575 = and i8 %4574, 1
  %4576 = xor i8 %4575, 1
  store i8 %4576, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4577 = icmp eq i32 %4567, 0
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %42, align 1
  %4579 = lshr i32 %4566, 29
  %4580 = trunc i32 %4579 to i8
  %4581 = and i8 %4580, 1
  store i8 %4581, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4582 = add i64 %4561, -124
  %4583 = add i64 %4563, 9
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4582 to i32*
  %4585 = load i32, i32* %4584, align 4
  %4586 = zext i32 %4585 to i64
  store i64 %4586, i64* %RDX.i2316, align 8
  %4587 = add i64 %4561, -136
  %4588 = add i64 %4563, 15
  store i64 %4588, i64* %3, align 8
  %4589 = inttoptr i64 %4587 to i32*
  %4590 = load i32, i32* %4589, align 4
  %4591 = sub i32 %4585, %4590
  %4592 = zext i32 %4591 to i64
  store i64 %4592, i64* %RDX.i2316, align 8
  %4593 = add i32 %4591, %4567
  %4594 = add i32 %4593, 4
  %4595 = zext i32 %4594 to i64
  %4596 = shl nuw i64 %4595, 32
  %4597 = ashr i64 %4596, 34
  %4598 = lshr i64 %4597, 1
  %4599 = trunc i64 %4597 to i8
  %4600 = and i8 %4599, 1
  %4601 = trunc i64 %4598 to i32
  %4602 = and i64 %4598, 4294967295
  store i64 %4602, i64* %RAX.i1243, align 8
  store i8 %4600, i8* %26, align 1
  %4603 = and i32 %4601, 255
  %4604 = tail call i32 @llvm.ctpop.i32(i32 %4603)
  %4605 = trunc i32 %4604 to i8
  %4606 = and i8 %4605, 1
  %4607 = xor i8 %4606, 1
  store i8 %4607, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4608 = icmp eq i32 %4601, 0
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %42, align 1
  %4610 = lshr i64 %4597, 32
  %4611 = trunc i64 %4610 to i8
  %4612 = and i8 %4611, 1
  store i8 %4612, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4613 = load i64, i64* %RCX.i2234, align 8
  %4614 = load i64, i64* %RBP.i, align 8
  %4615 = add i64 %4614, -104
  %4616 = add i64 %4563, 26
  store i64 %4616, i64* %3, align 8
  %4617 = trunc i64 %4613 to i32
  %4618 = inttoptr i64 %4615 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = sub i32 %4617, %4619
  %4621 = zext i32 %4620 to i64
  store i64 %4621, i64* %RCX.i2234, align 8
  %4622 = lshr i32 %4620, 31
  %4623 = trunc i64 %4598 to i32
  %4624 = sub i32 %4623, %4620
  %4625 = icmp ult i32 %4623, %4620
  %4626 = zext i1 %4625 to i8
  store i8 %4626, i8* %26, align 1
  %4627 = and i32 %4624, 255
  %4628 = tail call i32 @llvm.ctpop.i32(i32 %4627)
  %4629 = trunc i32 %4628 to i8
  %4630 = and i8 %4629, 1
  %4631 = xor i8 %4630, 1
  store i8 %4631, i8* %33, align 1
  %4632 = xor i32 %4620, %4623
  %4633 = xor i32 %4632, %4624
  %4634 = lshr i32 %4633, 4
  %4635 = trunc i32 %4634 to i8
  %4636 = and i8 %4635, 1
  store i8 %4636, i8* %39, align 1
  %4637 = icmp eq i32 %4624, 0
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %42, align 1
  %4639 = lshr i32 %4624, 31
  %4640 = trunc i32 %4639 to i8
  store i8 %4640, i8* %45, align 1
  %4641 = lshr i64 %4597, 32
  %4642 = trunc i64 %4641 to i32
  %4643 = and i32 %4642, 1
  %4644 = xor i32 %4622, %4643
  %4645 = xor i32 %4639, %4643
  %4646 = add nuw nsw i32 %4645, %4644
  %4647 = icmp eq i32 %4646, 2
  %4648 = zext i1 %4647 to i8
  store i8 %4648, i8* %51, align 1
  %4649 = icmp ne i8 %4640, 0
  %4650 = xor i1 %4649, %4647
  %.v177 = select i1 %4650, i64 34, i64 50
  %4651 = add i64 %4563, %.v177
  store i64 %4651, i64* %3, align 8
  br i1 %4650, label %block_43af15, label %block_.L_43af25

block_43af15:                                     ; preds = %block_.L_43aee8
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4652 = add i64 %4651, 5
  store i64 %4652, i64* %3, align 8
  %4653 = load i32, i32* %4618, align 4
  %4654 = sub i32 0, %4653
  %4655 = zext i32 %4654 to i64
  store i64 %4655, i64* %RAX.i1243, align 8
  %4656 = icmp ne i32 %4653, 0
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %26, align 1
  %4658 = and i32 %4654, 255
  %4659 = tail call i32 @llvm.ctpop.i32(i32 %4658)
  %4660 = trunc i32 %4659 to i8
  %4661 = and i8 %4660, 1
  %4662 = xor i8 %4661, 1
  store i8 %4662, i8* %33, align 1
  %4663 = xor i32 %4653, %4654
  %4664 = lshr i32 %4663, 4
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  store i8 %4666, i8* %39, align 1
  %4667 = icmp eq i32 %4653, 0
  %4668 = zext i1 %4667 to i8
  store i8 %4668, i8* %42, align 1
  %4669 = lshr i32 %4654, 31
  %4670 = trunc i32 %4669 to i8
  store i8 %4670, i8* %45, align 1
  %4671 = lshr i32 %4653, 31
  %4672 = add nuw nsw i32 %4669, %4671
  %4673 = icmp eq i32 %4672, 2
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %51, align 1
  %4675 = add i64 %4614, -460
  %4676 = add i64 %4651, 11
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i32*
  store i32 %4654, i32* %4677, align 4
  %4678 = load i64, i64* %3, align 8
  %4679 = add i64 %4678, 92
  store i64 %4679, i64* %3, align 8
  br label %block_.L_43af7c

block_.L_43af25:                                  ; preds = %block_.L_43aee8
  %4680 = add i64 %4614, -108
  %4681 = add i64 %4651, 3
  store i64 %4681, i64* %3, align 8
  %4682 = inttoptr i64 %4680 to i32*
  %4683 = load i32, i32* %4682, align 4
  %4684 = shl i32 %4683, 2
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RAX.i1243, align 8
  %4686 = lshr i32 %4683, 30
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  store i8 %4688, i8* %26, align 1
  %4689 = and i32 %4684, 252
  %4690 = tail call i32 @llvm.ctpop.i32(i32 %4689)
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = xor i8 %4692, 1
  store i8 %4693, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4694 = icmp eq i32 %4684, 0
  %4695 = zext i1 %4694 to i8
  store i8 %4695, i8* %42, align 1
  %4696 = lshr i32 %4683, 29
  %4697 = trunc i32 %4696 to i8
  %4698 = and i8 %4697, 1
  store i8 %4698, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4699 = add i64 %4614, -124
  %4700 = add i64 %4651, 9
  store i64 %4700, i64* %3, align 8
  %4701 = inttoptr i64 %4699 to i32*
  %4702 = load i32, i32* %4701, align 4
  %4703 = zext i32 %4702 to i64
  store i64 %4703, i64* %RCX.i2234, align 8
  %4704 = add i64 %4614, -136
  %4705 = add i64 %4651, 15
  store i64 %4705, i64* %3, align 8
  %4706 = inttoptr i64 %4704 to i32*
  %4707 = load i32, i32* %4706, align 4
  %4708 = sub i32 %4702, %4707
  %4709 = zext i32 %4708 to i64
  store i64 %4709, i64* %RCX.i2234, align 8
  %4710 = add i32 %4708, %4684
  %4711 = add i32 %4710, 4
  %4712 = zext i32 %4711 to i64
  %4713 = shl nuw i64 %4712, 32
  %4714 = ashr i64 %4713, 34
  %4715 = lshr i64 %4714, 1
  %4716 = trunc i64 %4714 to i8
  %4717 = and i8 %4716, 1
  %4718 = trunc i64 %4715 to i32
  %4719 = and i64 %4715, 4294967295
  store i64 %4719, i64* %RAX.i1243, align 8
  store i8 %4717, i8* %26, align 1
  %4720 = and i32 %4718, 255
  %4721 = tail call i32 @llvm.ctpop.i32(i32 %4720)
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  %4724 = xor i8 %4723, 1
  store i8 %4724, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4725 = icmp eq i32 %4718, 0
  %4726 = zext i1 %4725 to i8
  store i8 %4726, i8* %42, align 1
  %4727 = lshr i64 %4714, 32
  %4728 = trunc i64 %4727 to i8
  %4729 = and i8 %4728, 1
  store i8 %4729, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4730 = trunc i64 %4715 to i32
  %4731 = load i64, i64* %RBP.i, align 8
  %4732 = add i64 %4731, -104
  %4733 = add i64 %4651, 26
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = sub i32 %4730, %4735
  %4737 = icmp ult i32 %4730, %4735
  %4738 = zext i1 %4737 to i8
  store i8 %4738, i8* %26, align 1
  %4739 = and i32 %4736, 255
  %4740 = tail call i32 @llvm.ctpop.i32(i32 %4739)
  %4741 = trunc i32 %4740 to i8
  %4742 = and i8 %4741, 1
  %4743 = xor i8 %4742, 1
  store i8 %4743, i8* %33, align 1
  %4744 = xor i32 %4735, %4730
  %4745 = xor i32 %4744, %4736
  %4746 = lshr i32 %4745, 4
  %4747 = trunc i32 %4746 to i8
  %4748 = and i8 %4747, 1
  store i8 %4748, i8* %39, align 1
  %4749 = icmp eq i32 %4736, 0
  %4750 = zext i1 %4749 to i8
  store i8 %4750, i8* %42, align 1
  %4751 = lshr i32 %4736, 31
  %4752 = trunc i32 %4751 to i8
  store i8 %4752, i8* %45, align 1
  %4753 = lshr i64 %4714, 32
  %4754 = trunc i64 %4753 to i32
  %4755 = and i32 %4754, 1
  %4756 = lshr i32 %4735, 31
  %4757 = xor i32 %4756, %4755
  %4758 = xor i32 %4751, %4755
  %4759 = add nuw nsw i32 %4758, %4757
  %4760 = icmp eq i32 %4759, 2
  %4761 = zext i1 %4760 to i8
  store i8 %4761, i8* %51, align 1
  %4762 = icmp ne i8 %4752, 0
  %4763 = xor i1 %4762, %4760
  %4764 = or i1 %4749, %4763
  %.v178 = select i1 %4764, i64 46, i64 32
  %4765 = add i64 %4651, %.v178
  store i64 %4765, i64* %3, align 8
  br i1 %4764, label %block_.L_43af53, label %block_43af45

block_43af45:                                     ; preds = %block_.L_43af25
  %4766 = add i64 %4765, 3
  store i64 %4766, i64* %3, align 8
  %4767 = load i32, i32* %4734, align 4
  %4768 = zext i32 %4767 to i64
  store i64 %4768, i64* %RAX.i1243, align 8
  %4769 = add i64 %4731, -464
  %4770 = add i64 %4765, 9
  store i64 %4770, i64* %3, align 8
  %4771 = inttoptr i64 %4769 to i32*
  store i32 %4767, i32* %4771, align 4
  %4772 = load i64, i64* %3, align 8
  %4773 = add i64 %4772, 34
  store i64 %4773, i64* %3, align 8
  br label %block_.L_43af70

block_.L_43af53:                                  ; preds = %block_.L_43af25
  %4774 = add i64 %4731, -108
  %4775 = add i64 %4765, 3
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i32*
  %4777 = load i32, i32* %4776, align 4
  %4778 = shl i32 %4777, 2
  %4779 = zext i32 %4778 to i64
  store i64 %4779, i64* %RAX.i1243, align 8
  %4780 = lshr i32 %4777, 30
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  store i8 %4782, i8* %26, align 1
  %4783 = and i32 %4778, 252
  %4784 = tail call i32 @llvm.ctpop.i32(i32 %4783)
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  store i8 %4787, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4788 = icmp eq i32 %4778, 0
  %4789 = zext i1 %4788 to i8
  store i8 %4789, i8* %42, align 1
  %4790 = lshr i32 %4777, 29
  %4791 = trunc i32 %4790 to i8
  %4792 = and i8 %4791, 1
  store i8 %4792, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4793 = add i64 %4731, -124
  %4794 = add i64 %4765, 9
  store i64 %4794, i64* %3, align 8
  %4795 = inttoptr i64 %4793 to i32*
  %4796 = load i32, i32* %4795, align 4
  %4797 = zext i32 %4796 to i64
  store i64 %4797, i64* %RCX.i2234, align 8
  %4798 = add i64 %4731, -136
  %4799 = add i64 %4765, 15
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = sub i32 %4796, %4801
  %4803 = zext i32 %4802 to i64
  store i64 %4803, i64* %RCX.i2234, align 8
  %4804 = add i32 %4802, %4778
  %4805 = add i32 %4804, 4
  %4806 = zext i32 %4805 to i64
  %4807 = shl nuw i64 %4806, 32
  %4808 = ashr i64 %4807, 34
  %4809 = lshr i64 %4808, 1
  %4810 = trunc i64 %4808 to i8
  %4811 = and i8 %4810, 1
  %4812 = trunc i64 %4809 to i32
  %4813 = and i64 %4809, 4294967295
  store i64 %4813, i64* %RAX.i1243, align 8
  store i8 %4811, i8* %26, align 1
  %4814 = and i32 %4812, 255
  %4815 = tail call i32 @llvm.ctpop.i32(i32 %4814)
  %4816 = trunc i32 %4815 to i8
  %4817 = and i8 %4816, 1
  %4818 = xor i8 %4817, 1
  store i8 %4818, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4819 = icmp eq i32 %4812, 0
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %42, align 1
  %4821 = lshr i64 %4808, 32
  %4822 = trunc i64 %4821 to i8
  %4823 = and i8 %4822, 1
  store i8 %4823, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4824 = load i64, i64* %RBP.i, align 8
  %4825 = add i64 %4824, -464
  %4826 = trunc i64 %4809 to i32
  %4827 = add i64 %4765, 29
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4825 to i32*
  store i32 %4826, i32* %4828, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_43af70

block_.L_43af70:                                  ; preds = %block_.L_43af53, %block_43af45
  %4829 = phi i64 [ %.pre128, %block_.L_43af53 ], [ %4773, %block_43af45 ]
  %4830 = load i64, i64* %RBP.i, align 8
  %4831 = add i64 %4830, -464
  %4832 = add i64 %4829, 6
  store i64 %4832, i64* %3, align 8
  %4833 = inttoptr i64 %4831 to i32*
  %4834 = load i32, i32* %4833, align 4
  %4835 = zext i32 %4834 to i64
  store i64 %4835, i64* %RAX.i1243, align 8
  %4836 = add i64 %4830, -460
  %4837 = add i64 %4829, 12
  store i64 %4837, i64* %3, align 8
  %4838 = inttoptr i64 %4836 to i32*
  store i32 %4834, i32* %4838, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_43af7c

block_.L_43af7c:                                  ; preds = %block_.L_43af70, %block_43af15
  %4839 = phi i64 [ %.pre129, %block_.L_43af70 ], [ %4679, %block_43af15 ]
  %4840 = load i64, i64* %RBP.i, align 8
  %4841 = add i64 %4840, -460
  %4842 = add i64 %4839, 6
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i32*
  %4844 = load i32, i32* %4843, align 4
  %4845 = zext i32 %4844 to i64
  store i64 %4845, i64* %RAX.i1243, align 8
  %4846 = add i64 %4840, -112
  %4847 = add i64 %4839, 9
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  store i32 %4844, i32* %4848, align 4
  %4849 = load i64, i64* %RBP.i, align 8
  %4850 = add i64 %4849, -68
  %4851 = load i64, i64* %3, align 8
  %4852 = add i64 %4851, 4
  store i64 %4852, i64* %3, align 8
  %4853 = inttoptr i64 %4850 to i32*
  %4854 = load i32, i32* %4853, align 4
  store i8 0, i8* %26, align 1
  %4855 = and i32 %4854, 255
  %4856 = tail call i32 @llvm.ctpop.i32(i32 %4855)
  %4857 = trunc i32 %4856 to i8
  %4858 = and i8 %4857, 1
  %4859 = xor i8 %4858, 1
  store i8 %4859, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4860 = icmp eq i32 %4854, 0
  %4861 = zext i1 %4860 to i8
  store i8 %4861, i8* %42, align 1
  %4862 = lshr i32 %4854, 31
  %4863 = trunc i32 %4862 to i8
  store i8 %4863, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v152 = select i1 %4860, i64 10, i64 252
  %4864 = add i64 %4851, %.v152
  %4865 = add i64 %4849, -128
  %4866 = add i64 %4864, 3
  store i64 %4866, i64* %3, align 8
  %4867 = inttoptr i64 %4865 to i32*
  %4868 = load i32, i32* %4867, align 4
  %4869 = zext i32 %4868 to i64
  store i64 %4869, i64* %RAX.i1243, align 8
  %4870 = add i64 %4849, -112
  %4871 = add i64 %4864, 6
  store i64 %4871, i64* %3, align 8
  %4872 = inttoptr i64 %4870 to i32*
  %4873 = load i32, i32* %4872, align 4
  %4874 = add i32 %4873, %4868
  %4875 = zext i32 %4874 to i64
  store i64 %4875, i64* %RAX.i1243, align 8
  %4876 = and i32 %4874, 255
  %4877 = tail call i32 @llvm.ctpop.i32(i32 %4876)
  %4878 = trunc i32 %4877 to i8
  %4879 = and i8 %4878, 1
  %4880 = xor i8 %4879, 1
  %4881 = icmp eq i32 %4874, 0
  %4882 = zext i1 %4881 to i8
  %4883 = lshr i32 %4874, 31
  %4884 = trunc i32 %4883 to i8
  %4885 = add i64 %4864, 9
  store i8 0, i8* %26, align 1
  store i8 %4880, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %4882, i8* %42, align 1
  store i8 %4884, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4886 = icmp ne i8 %4884, 0
  %.v95 = select i1 %4886, i64 6, i64 19
  %4887 = add i64 %4885, %.v95
  store i64 %4887, i64* %3, align 8
  br i1 %4860, label %block_43af8f, label %block_.L_43b081

block_43af8f:                                     ; preds = %block_.L_43af7c
  br i1 %4886, label %block_43af9e, label %block_.L_43afab

block_43af9e:                                     ; preds = %block_43af8f
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4888 = add i64 %4849, -468
  %4889 = add i64 %4887, 8
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4888 to i32*
  store i32 0, i32* %4890, align 4
  %4891 = load i64, i64* %3, align 8
  %4892 = add i64 %4891, 72
  store i64 %4892, i64* %3, align 8
  br label %block_.L_43afee

block_.L_43afab:                                  ; preds = %block_43af8f
  %4893 = add i64 %4887, 3
  store i64 %4893, i64* %3, align 8
  %4894 = load i32, i32* %4867, align 4
  %4895 = zext i32 %4894 to i64
  store i64 %4895, i64* %RAX.i1243, align 8
  %4896 = add i64 %4887, 6
  store i64 %4896, i64* %3, align 8
  %4897 = load i32, i32* %4872, align 4
  %4898 = add i32 %4897, %4894
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RAX.i1243, align 8
  %4900 = icmp ult i32 %4898, %4894
  %4901 = icmp ult i32 %4898, %4897
  %4902 = or i1 %4900, %4901
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %26, align 1
  %4904 = and i32 %4898, 255
  %4905 = tail call i32 @llvm.ctpop.i32(i32 %4904)
  %4906 = trunc i32 %4905 to i8
  %4907 = and i8 %4906, 1
  %4908 = xor i8 %4907, 1
  store i8 %4908, i8* %33, align 1
  %4909 = xor i32 %4897, %4894
  %4910 = xor i32 %4909, %4898
  %4911 = lshr i32 %4910, 4
  %4912 = trunc i32 %4911 to i8
  %4913 = and i8 %4912, 1
  store i8 %4913, i8* %39, align 1
  %4914 = icmp eq i32 %4898, 0
  %4915 = zext i1 %4914 to i8
  store i8 %4915, i8* %42, align 1
  %4916 = lshr i32 %4898, 31
  %4917 = trunc i32 %4916 to i8
  store i8 %4917, i8* %45, align 1
  %4918 = lshr i32 %4894, 31
  %4919 = lshr i32 %4897, 31
  %4920 = xor i32 %4916, %4918
  %4921 = xor i32 %4916, %4919
  %4922 = add nuw nsw i32 %4920, %4921
  %4923 = icmp eq i32 %4922, 2
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %51, align 1
  %4925 = add i64 %4849, -40
  %4926 = add i64 %4887, 10
  store i64 %4926, i64* %3, align 8
  %4927 = inttoptr i64 %4925 to i64*
  %4928 = load i64, i64* %4927, align 8
  store i64 %4928, i64* %RCX.i2234, align 8
  %4929 = add i64 %4928, 72684
  %4930 = add i64 %4887, 16
  store i64 %4930, i64* %3, align 8
  %4931 = inttoptr i64 %4929 to i32*
  %4932 = load i32, i32* %4931, align 4
  %4933 = sub i32 %4898, %4932
  %4934 = icmp ult i32 %4898, %4932
  %4935 = zext i1 %4934 to i8
  store i8 %4935, i8* %26, align 1
  %4936 = and i32 %4933, 255
  %4937 = tail call i32 @llvm.ctpop.i32(i32 %4936)
  %4938 = trunc i32 %4937 to i8
  %4939 = and i8 %4938, 1
  %4940 = xor i8 %4939, 1
  store i8 %4940, i8* %33, align 1
  %4941 = xor i32 %4932, %4898
  %4942 = xor i32 %4941, %4933
  %4943 = lshr i32 %4942, 4
  %4944 = trunc i32 %4943 to i8
  %4945 = and i8 %4944, 1
  store i8 %4945, i8* %39, align 1
  %4946 = icmp eq i32 %4933, 0
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %42, align 1
  %4948 = lshr i32 %4933, 31
  %4949 = trunc i32 %4948 to i8
  store i8 %4949, i8* %45, align 1
  %4950 = lshr i32 %4932, 31
  %4951 = xor i32 %4950, %4916
  %4952 = xor i32 %4948, %4916
  %4953 = add nuw nsw i32 %4952, %4951
  %4954 = icmp eq i32 %4953, 2
  %4955 = zext i1 %4954 to i8
  store i8 %4955, i8* %51, align 1
  %4956 = icmp ne i8 %4949, 0
  %4957 = xor i1 %4956, %4954
  %4958 = or i1 %4946, %4957
  %.v188 = select i1 %4958, i64 43, i64 22
  %4959 = add i64 %4887, %.v188
  store i64 %4959, i64* %3, align 8
  br i1 %4958, label %block_.L_43afd6, label %block_43afc1

block_43afc1:                                     ; preds = %block_.L_43afab
  %4960 = add i64 %4959, 4
  store i64 %4960, i64* %3, align 8
  %4961 = load i64, i64* %4927, align 8
  store i64 %4961, i64* %RAX.i1243, align 8
  %4962 = add i64 %4961, 72684
  %4963 = add i64 %4959, 10
  store i64 %4963, i64* %3, align 8
  %4964 = inttoptr i64 %4962 to i32*
  %4965 = load i32, i32* %4964, align 4
  %4966 = zext i32 %4965 to i64
  store i64 %4966, i64* %RCX.i2234, align 8
  %4967 = add i64 %4849, -472
  %4968 = add i64 %4959, 16
  store i64 %4968, i64* %3, align 8
  %4969 = inttoptr i64 %4967 to i32*
  store i32 %4965, i32* %4969, align 4
  %4970 = load i64, i64* %3, align 8
  %4971 = add i64 %4970, 17
  store i64 %4971, i64* %3, align 8
  br label %block_.L_43afe2

block_.L_43afd6:                                  ; preds = %block_.L_43afab
  %4972 = add i64 %4959, 3
  store i64 %4972, i64* %3, align 8
  %4973 = load i32, i32* %4867, align 4
  %4974 = zext i32 %4973 to i64
  store i64 %4974, i64* %RAX.i1243, align 8
  %4975 = add i64 %4959, 6
  store i64 %4975, i64* %3, align 8
  %4976 = load i32, i32* %4872, align 4
  %4977 = add i32 %4976, %4973
  %4978 = zext i32 %4977 to i64
  store i64 %4978, i64* %RAX.i1243, align 8
  %4979 = icmp ult i32 %4977, %4973
  %4980 = icmp ult i32 %4977, %4976
  %4981 = or i1 %4979, %4980
  %4982 = zext i1 %4981 to i8
  store i8 %4982, i8* %26, align 1
  %4983 = and i32 %4977, 255
  %4984 = tail call i32 @llvm.ctpop.i32(i32 %4983)
  %4985 = trunc i32 %4984 to i8
  %4986 = and i8 %4985, 1
  %4987 = xor i8 %4986, 1
  store i8 %4987, i8* %33, align 1
  %4988 = xor i32 %4976, %4973
  %4989 = xor i32 %4988, %4977
  %4990 = lshr i32 %4989, 4
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  store i8 %4992, i8* %39, align 1
  %4993 = icmp eq i32 %4977, 0
  %4994 = zext i1 %4993 to i8
  store i8 %4994, i8* %42, align 1
  %4995 = lshr i32 %4977, 31
  %4996 = trunc i32 %4995 to i8
  store i8 %4996, i8* %45, align 1
  %4997 = lshr i32 %4973, 31
  %4998 = lshr i32 %4976, 31
  %4999 = xor i32 %4995, %4997
  %5000 = xor i32 %4995, %4998
  %5001 = add nuw nsw i32 %4999, %5000
  %5002 = icmp eq i32 %5001, 2
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %51, align 1
  %5004 = add i64 %4849, -472
  %5005 = add i64 %4959, 12
  store i64 %5005, i64* %3, align 8
  %5006 = inttoptr i64 %5004 to i32*
  store i32 %4977, i32* %5006, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_43afe2

block_.L_43afe2:                                  ; preds = %block_.L_43afd6, %block_43afc1
  %5007 = phi i64 [ %.pre130, %block_.L_43afd6 ], [ %4971, %block_43afc1 ]
  %5008 = load i64, i64* %RBP.i, align 8
  %5009 = add i64 %5008, -472
  %5010 = add i64 %5007, 6
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i32*
  %5012 = load i32, i32* %5011, align 4
  %5013 = zext i32 %5012 to i64
  store i64 %5013, i64* %RAX.i1243, align 8
  %5014 = add i64 %5008, -468
  %5015 = add i64 %5007, 12
  store i64 %5015, i64* %3, align 8
  %5016 = inttoptr i64 %5014 to i32*
  store i32 %5012, i32* %5016, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_43afee

block_.L_43afee:                                  ; preds = %block_.L_43afe2, %block_43af9e
  %5017 = phi i64 [ %.pre131, %block_.L_43afe2 ], [ %4892, %block_43af9e ]
  %5018 = load i64, i64* %RBP.i, align 8
  %5019 = add i64 %5018, -468
  %5020 = add i64 %5017, 6
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i32*
  %5022 = load i32, i32* %5021, align 4
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RAX.i1243, align 8
  %5024 = trunc i32 %5022 to i16
  store i16 %5024, i16* %CX.i365, align 2
  %5025 = add i64 %5018, -200
  %5026 = add i64 %5017, 16
  store i64 %5026, i64* %3, align 8
  %5027 = inttoptr i64 %5025 to i64*
  %5028 = load i64, i64* %5027, align 8
  store i64 %5028, i64* %RDX.i2316, align 8
  %5029 = add i64 %5017, 19
  store i64 %5029, i64* %3, align 8
  %5030 = inttoptr i64 %5028 to i16*
  store i16 %5024, i16* %5030, align 2
  %5031 = load i64, i64* %RBP.i, align 8
  %5032 = add i64 %5031, -132
  %5033 = load i64, i64* %3, align 8
  %5034 = add i64 %5033, 6
  store i64 %5034, i64* %3, align 8
  %5035 = inttoptr i64 %5032 to i32*
  %5036 = load i32, i32* %5035, align 4
  %5037 = zext i32 %5036 to i64
  store i64 %5037, i64* %RAX.i1243, align 8
  %5038 = add i64 %5031, -112
  %5039 = add i64 %5033, 9
  store i64 %5039, i64* %3, align 8
  %5040 = inttoptr i64 %5038 to i32*
  %5041 = load i32, i32* %5040, align 4
  %5042 = sub i32 %5036, %5041
  %5043 = zext i32 %5042 to i64
  store i64 %5043, i64* %RAX.i1243, align 8
  %5044 = and i32 %5042, 255
  %5045 = tail call i32 @llvm.ctpop.i32(i32 %5044)
  %5046 = trunc i32 %5045 to i8
  %5047 = and i8 %5046, 1
  %5048 = xor i8 %5047, 1
  %5049 = icmp eq i32 %5042, 0
  %5050 = zext i1 %5049 to i8
  %5051 = lshr i32 %5042, 31
  %5052 = trunc i32 %5051 to i8
  %5053 = add i64 %5033, 12
  store i8 0, i8* %26, align 1
  store i8 %5048, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %5050, i8* %42, align 1
  store i8 %5052, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5054 = icmp ne i8 %5052, 0
  %.v96 = select i1 %5054, i64 6, i64 19
  %5055 = add i64 %5053, %.v96
  store i64 %5055, i64* %3, align 8
  br i1 %5054, label %block_43b013, label %block_.L_43b020

block_43b013:                                     ; preds = %block_.L_43afee
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5056 = add i64 %5031, -476
  %5057 = add i64 %5055, 8
  store i64 %5057, i64* %3, align 8
  %5058 = inttoptr i64 %5056 to i32*
  store i32 0, i32* %5058, align 4
  %5059 = load i64, i64* %3, align 8
  %5060 = add i64 %5059, 78
  store i64 %5060, i64* %3, align 8
  br label %block_.L_43b069

block_.L_43b020:                                  ; preds = %block_.L_43afee
  %5061 = add i64 %5055, 6
  store i64 %5061, i64* %3, align 8
  %5062 = load i32, i32* %5035, align 4
  %5063 = zext i32 %5062 to i64
  store i64 %5063, i64* %RAX.i1243, align 8
  %5064 = add i64 %5055, 9
  store i64 %5064, i64* %3, align 8
  %5065 = load i32, i32* %5040, align 4
  %5066 = sub i32 %5062, %5065
  %5067 = zext i32 %5066 to i64
  store i64 %5067, i64* %RAX.i1243, align 8
  %5068 = icmp ult i32 %5062, %5065
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %26, align 1
  %5070 = and i32 %5066, 255
  %5071 = tail call i32 @llvm.ctpop.i32(i32 %5070)
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = xor i8 %5073, 1
  store i8 %5074, i8* %33, align 1
  %5075 = xor i32 %5065, %5062
  %5076 = xor i32 %5075, %5066
  %5077 = lshr i32 %5076, 4
  %5078 = trunc i32 %5077 to i8
  %5079 = and i8 %5078, 1
  store i8 %5079, i8* %39, align 1
  %5080 = icmp eq i32 %5066, 0
  %5081 = zext i1 %5080 to i8
  store i8 %5081, i8* %42, align 1
  %5082 = lshr i32 %5066, 31
  %5083 = trunc i32 %5082 to i8
  store i8 %5083, i8* %45, align 1
  %5084 = lshr i32 %5062, 31
  %5085 = lshr i32 %5065, 31
  %5086 = xor i32 %5085, %5084
  %5087 = xor i32 %5082, %5084
  %5088 = add nuw nsw i32 %5087, %5086
  %5089 = icmp eq i32 %5088, 2
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %51, align 1
  %5091 = add i64 %5031, -40
  %5092 = add i64 %5055, 13
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i64*
  %5094 = load i64, i64* %5093, align 8
  store i64 %5094, i64* %RCX.i2234, align 8
  %5095 = add i64 %5094, 72684
  %5096 = add i64 %5055, 19
  store i64 %5096, i64* %3, align 8
  %5097 = inttoptr i64 %5095 to i32*
  %5098 = load i32, i32* %5097, align 4
  %5099 = sub i32 %5066, %5098
  %5100 = icmp ult i32 %5066, %5098
  %5101 = zext i1 %5100 to i8
  store i8 %5101, i8* %26, align 1
  %5102 = and i32 %5099, 255
  %5103 = tail call i32 @llvm.ctpop.i32(i32 %5102)
  %5104 = trunc i32 %5103 to i8
  %5105 = and i8 %5104, 1
  %5106 = xor i8 %5105, 1
  store i8 %5106, i8* %33, align 1
  %5107 = xor i32 %5098, %5066
  %5108 = xor i32 %5107, %5099
  %5109 = lshr i32 %5108, 4
  %5110 = trunc i32 %5109 to i8
  %5111 = and i8 %5110, 1
  store i8 %5111, i8* %39, align 1
  %5112 = icmp eq i32 %5099, 0
  %5113 = zext i1 %5112 to i8
  store i8 %5113, i8* %42, align 1
  %5114 = lshr i32 %5099, 31
  %5115 = trunc i32 %5114 to i8
  store i8 %5115, i8* %45, align 1
  %5116 = lshr i32 %5098, 31
  %5117 = xor i32 %5116, %5082
  %5118 = xor i32 %5114, %5082
  %5119 = add nuw nsw i32 %5118, %5117
  %5120 = icmp eq i32 %5119, 2
  %5121 = zext i1 %5120 to i8
  store i8 %5121, i8* %51, align 1
  %5122 = icmp ne i8 %5115, 0
  %5123 = xor i1 %5122, %5120
  %5124 = or i1 %5112, %5123
  %.v189 = select i1 %5124, i64 46, i64 25
  %5125 = add i64 %5055, %.v189
  store i64 %5125, i64* %3, align 8
  br i1 %5124, label %block_.L_43b04e, label %block_43b039

block_43b039:                                     ; preds = %block_.L_43b020
  %5126 = add i64 %5125, 4
  store i64 %5126, i64* %3, align 8
  %5127 = load i64, i64* %5093, align 8
  store i64 %5127, i64* %RAX.i1243, align 8
  %5128 = add i64 %5127, 72684
  %5129 = add i64 %5125, 10
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i32*
  %5131 = load i32, i32* %5130, align 4
  %5132 = zext i32 %5131 to i64
  store i64 %5132, i64* %RCX.i2234, align 8
  %5133 = add i64 %5031, -480
  %5134 = add i64 %5125, 16
  store i64 %5134, i64* %3, align 8
  %5135 = inttoptr i64 %5133 to i32*
  store i32 %5131, i32* %5135, align 4
  %5136 = load i64, i64* %3, align 8
  %5137 = add i64 %5136, 20
  store i64 %5137, i64* %3, align 8
  br label %block_.L_43b05d

block_.L_43b04e:                                  ; preds = %block_.L_43b020
  %5138 = add i64 %5125, 6
  store i64 %5138, i64* %3, align 8
  %5139 = load i32, i32* %5035, align 4
  %5140 = zext i32 %5139 to i64
  store i64 %5140, i64* %RAX.i1243, align 8
  %5141 = add i64 %5125, 9
  store i64 %5141, i64* %3, align 8
  %5142 = load i32, i32* %5040, align 4
  %5143 = sub i32 %5139, %5142
  %5144 = zext i32 %5143 to i64
  store i64 %5144, i64* %RAX.i1243, align 8
  %5145 = icmp ult i32 %5139, %5142
  %5146 = zext i1 %5145 to i8
  store i8 %5146, i8* %26, align 1
  %5147 = and i32 %5143, 255
  %5148 = tail call i32 @llvm.ctpop.i32(i32 %5147)
  %5149 = trunc i32 %5148 to i8
  %5150 = and i8 %5149, 1
  %5151 = xor i8 %5150, 1
  store i8 %5151, i8* %33, align 1
  %5152 = xor i32 %5142, %5139
  %5153 = xor i32 %5152, %5143
  %5154 = lshr i32 %5153, 4
  %5155 = trunc i32 %5154 to i8
  %5156 = and i8 %5155, 1
  store i8 %5156, i8* %39, align 1
  %5157 = icmp eq i32 %5143, 0
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %42, align 1
  %5159 = lshr i32 %5143, 31
  %5160 = trunc i32 %5159 to i8
  store i8 %5160, i8* %45, align 1
  %5161 = lshr i32 %5139, 31
  %5162 = lshr i32 %5142, 31
  %5163 = xor i32 %5162, %5161
  %5164 = xor i32 %5159, %5161
  %5165 = add nuw nsw i32 %5164, %5163
  %5166 = icmp eq i32 %5165, 2
  %5167 = zext i1 %5166 to i8
  store i8 %5167, i8* %51, align 1
  %5168 = add i64 %5031, -480
  %5169 = add i64 %5125, 15
  store i64 %5169, i64* %3, align 8
  %5170 = inttoptr i64 %5168 to i32*
  store i32 %5143, i32* %5170, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_43b05d

block_.L_43b05d:                                  ; preds = %block_.L_43b04e, %block_43b039
  %5171 = phi i64 [ %.pre132, %block_.L_43b04e ], [ %5137, %block_43b039 ]
  %5172 = load i64, i64* %RBP.i, align 8
  %5173 = add i64 %5172, -480
  %5174 = add i64 %5171, 6
  store i64 %5174, i64* %3, align 8
  %5175 = inttoptr i64 %5173 to i32*
  %5176 = load i32, i32* %5175, align 4
  %5177 = zext i32 %5176 to i64
  store i64 %5177, i64* %RAX.i1243, align 8
  %5178 = add i64 %5172, -476
  %5179 = add i64 %5171, 12
  store i64 %5179, i64* %3, align 8
  %5180 = inttoptr i64 %5178 to i32*
  store i32 %5176, i32* %5180, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_43b069

block_.L_43b069:                                  ; preds = %block_.L_43b05d, %block_43b013
  %5181 = phi i64 [ %.pre133, %block_.L_43b05d ], [ %5060, %block_43b013 ]
  %5182 = load i64, i64* %RBP.i, align 8
  %5183 = add i64 %5182, -476
  %5184 = add i64 %5181, 6
  store i64 %5184, i64* %3, align 8
  %5185 = inttoptr i64 %5183 to i32*
  %5186 = load i32, i32* %5185, align 4
  %5187 = zext i32 %5186 to i64
  store i64 %5187, i64* %RAX.i1243, align 8
  %5188 = trunc i32 %5186 to i16
  store i16 %5188, i16* %CX.i365, align 2
  %5189 = add i64 %5182, -208
  %5190 = add i64 %5181, 16
  store i64 %5190, i64* %3, align 8
  %5191 = inttoptr i64 %5189 to i64*
  %5192 = load i64, i64* %5191, align 8
  store i64 %5192, i64* %RDX.i2316, align 8
  %5193 = add i64 %5181, 19
  store i64 %5193, i64* %3, align 8
  %5194 = inttoptr i64 %5192 to i16*
  store i16 %5188, i16* %5194, align 2
  %5195 = load i64, i64* %3, align 8
  %5196 = add i64 %5195, 242
  store i64 %5196, i64* %3, align 8
  br label %block_.L_43b16e

block_.L_43b081:                                  ; preds = %block_.L_43af7c
  br i1 %4886, label %block_43b090, label %block_.L_43b09d

block_43b090:                                     ; preds = %block_.L_43b081
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5197 = add i64 %4849, -484
  %5198 = add i64 %4887, 8
  store i64 %5198, i64* %3, align 8
  %5199 = inttoptr i64 %5197 to i32*
  store i32 0, i32* %5199, align 4
  %5200 = load i64, i64* %3, align 8
  %5201 = add i64 %5200, 72
  store i64 %5201, i64* %3, align 8
  br label %block_.L_43b0e0

block_.L_43b09d:                                  ; preds = %block_.L_43b081
  %5202 = add i64 %4887, 3
  store i64 %5202, i64* %3, align 8
  %5203 = load i32, i32* %4867, align 4
  %5204 = zext i32 %5203 to i64
  store i64 %5204, i64* %RAX.i1243, align 8
  %5205 = add i64 %4887, 6
  store i64 %5205, i64* %3, align 8
  %5206 = load i32, i32* %4872, align 4
  %5207 = add i32 %5206, %5203
  %5208 = zext i32 %5207 to i64
  store i64 %5208, i64* %RAX.i1243, align 8
  %5209 = icmp ult i32 %5207, %5203
  %5210 = icmp ult i32 %5207, %5206
  %5211 = or i1 %5209, %5210
  %5212 = zext i1 %5211 to i8
  store i8 %5212, i8* %26, align 1
  %5213 = and i32 %5207, 255
  %5214 = tail call i32 @llvm.ctpop.i32(i32 %5213)
  %5215 = trunc i32 %5214 to i8
  %5216 = and i8 %5215, 1
  %5217 = xor i8 %5216, 1
  store i8 %5217, i8* %33, align 1
  %5218 = xor i32 %5206, %5203
  %5219 = xor i32 %5218, %5207
  %5220 = lshr i32 %5219, 4
  %5221 = trunc i32 %5220 to i8
  %5222 = and i8 %5221, 1
  store i8 %5222, i8* %39, align 1
  %5223 = icmp eq i32 %5207, 0
  %5224 = zext i1 %5223 to i8
  store i8 %5224, i8* %42, align 1
  %5225 = lshr i32 %5207, 31
  %5226 = trunc i32 %5225 to i8
  store i8 %5226, i8* %45, align 1
  %5227 = lshr i32 %5203, 31
  %5228 = lshr i32 %5206, 31
  %5229 = xor i32 %5225, %5227
  %5230 = xor i32 %5225, %5228
  %5231 = add nuw nsw i32 %5229, %5230
  %5232 = icmp eq i32 %5231, 2
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %51, align 1
  %5234 = add i64 %4849, -40
  %5235 = add i64 %4887, 10
  store i64 %5235, i64* %3, align 8
  %5236 = inttoptr i64 %5234 to i64*
  %5237 = load i64, i64* %5236, align 8
  store i64 %5237, i64* %RCX.i2234, align 8
  %5238 = add i64 %5237, 72688
  %5239 = add i64 %4887, 16
  store i64 %5239, i64* %3, align 8
  %5240 = inttoptr i64 %5238 to i32*
  %5241 = load i32, i32* %5240, align 4
  %5242 = sub i32 %5207, %5241
  %5243 = icmp ult i32 %5207, %5241
  %5244 = zext i1 %5243 to i8
  store i8 %5244, i8* %26, align 1
  %5245 = and i32 %5242, 255
  %5246 = tail call i32 @llvm.ctpop.i32(i32 %5245)
  %5247 = trunc i32 %5246 to i8
  %5248 = and i8 %5247, 1
  %5249 = xor i8 %5248, 1
  store i8 %5249, i8* %33, align 1
  %5250 = xor i32 %5241, %5207
  %5251 = xor i32 %5250, %5242
  %5252 = lshr i32 %5251, 4
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  store i8 %5254, i8* %39, align 1
  %5255 = icmp eq i32 %5242, 0
  %5256 = zext i1 %5255 to i8
  store i8 %5256, i8* %42, align 1
  %5257 = lshr i32 %5242, 31
  %5258 = trunc i32 %5257 to i8
  store i8 %5258, i8* %45, align 1
  %5259 = lshr i32 %5241, 31
  %5260 = xor i32 %5259, %5225
  %5261 = xor i32 %5257, %5225
  %5262 = add nuw nsw i32 %5261, %5260
  %5263 = icmp eq i32 %5262, 2
  %5264 = zext i1 %5263 to i8
  store i8 %5264, i8* %51, align 1
  %5265 = icmp ne i8 %5258, 0
  %5266 = xor i1 %5265, %5263
  %5267 = or i1 %5255, %5266
  %.v179 = select i1 %5267, i64 43, i64 22
  %5268 = add i64 %4887, %.v179
  store i64 %5268, i64* %3, align 8
  br i1 %5267, label %block_.L_43b0c8, label %block_43b0b3

block_43b0b3:                                     ; preds = %block_.L_43b09d
  %5269 = add i64 %5268, 4
  store i64 %5269, i64* %3, align 8
  %5270 = load i64, i64* %5236, align 8
  store i64 %5270, i64* %RAX.i1243, align 8
  %5271 = add i64 %5270, 72688
  %5272 = add i64 %5268, 10
  store i64 %5272, i64* %3, align 8
  %5273 = inttoptr i64 %5271 to i32*
  %5274 = load i32, i32* %5273, align 4
  %5275 = zext i32 %5274 to i64
  store i64 %5275, i64* %RCX.i2234, align 8
  %5276 = add i64 %4849, -488
  %5277 = add i64 %5268, 16
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i32*
  store i32 %5274, i32* %5278, align 4
  %5279 = load i64, i64* %3, align 8
  %5280 = add i64 %5279, 17
  store i64 %5280, i64* %3, align 8
  br label %block_.L_43b0d4

block_.L_43b0c8:                                  ; preds = %block_.L_43b09d
  %5281 = add i64 %5268, 3
  store i64 %5281, i64* %3, align 8
  %5282 = load i32, i32* %4867, align 4
  %5283 = zext i32 %5282 to i64
  store i64 %5283, i64* %RAX.i1243, align 8
  %5284 = add i64 %5268, 6
  store i64 %5284, i64* %3, align 8
  %5285 = load i32, i32* %4872, align 4
  %5286 = add i32 %5285, %5282
  %5287 = zext i32 %5286 to i64
  store i64 %5287, i64* %RAX.i1243, align 8
  %5288 = icmp ult i32 %5286, %5282
  %5289 = icmp ult i32 %5286, %5285
  %5290 = or i1 %5288, %5289
  %5291 = zext i1 %5290 to i8
  store i8 %5291, i8* %26, align 1
  %5292 = and i32 %5286, 255
  %5293 = tail call i32 @llvm.ctpop.i32(i32 %5292)
  %5294 = trunc i32 %5293 to i8
  %5295 = and i8 %5294, 1
  %5296 = xor i8 %5295, 1
  store i8 %5296, i8* %33, align 1
  %5297 = xor i32 %5285, %5282
  %5298 = xor i32 %5297, %5286
  %5299 = lshr i32 %5298, 4
  %5300 = trunc i32 %5299 to i8
  %5301 = and i8 %5300, 1
  store i8 %5301, i8* %39, align 1
  %5302 = icmp eq i32 %5286, 0
  %5303 = zext i1 %5302 to i8
  store i8 %5303, i8* %42, align 1
  %5304 = lshr i32 %5286, 31
  %5305 = trunc i32 %5304 to i8
  store i8 %5305, i8* %45, align 1
  %5306 = lshr i32 %5282, 31
  %5307 = lshr i32 %5285, 31
  %5308 = xor i32 %5304, %5306
  %5309 = xor i32 %5304, %5307
  %5310 = add nuw nsw i32 %5308, %5309
  %5311 = icmp eq i32 %5310, 2
  %5312 = zext i1 %5311 to i8
  store i8 %5312, i8* %51, align 1
  %5313 = add i64 %4849, -488
  %5314 = add i64 %5268, 12
  store i64 %5314, i64* %3, align 8
  %5315 = inttoptr i64 %5313 to i32*
  store i32 %5286, i32* %5315, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_43b0d4

block_.L_43b0d4:                                  ; preds = %block_.L_43b0c8, %block_43b0b3
  %5316 = phi i64 [ %.pre134, %block_.L_43b0c8 ], [ %5280, %block_43b0b3 ]
  %5317 = load i64, i64* %RBP.i, align 8
  %5318 = add i64 %5317, -488
  %5319 = add i64 %5316, 6
  store i64 %5319, i64* %3, align 8
  %5320 = inttoptr i64 %5318 to i32*
  %5321 = load i32, i32* %5320, align 4
  %5322 = zext i32 %5321 to i64
  store i64 %5322, i64* %RAX.i1243, align 8
  %5323 = add i64 %5317, -484
  %5324 = add i64 %5316, 12
  store i64 %5324, i64* %3, align 8
  %5325 = inttoptr i64 %5323 to i32*
  store i32 %5321, i32* %5325, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_43b0e0

block_.L_43b0e0:                                  ; preds = %block_.L_43b0d4, %block_43b090
  %5326 = phi i64 [ %.pre135, %block_.L_43b0d4 ], [ %5201, %block_43b090 ]
  %5327 = load i64, i64* %RBP.i, align 8
  %5328 = add i64 %5327, -484
  %5329 = add i64 %5326, 6
  store i64 %5329, i64* %3, align 8
  %5330 = inttoptr i64 %5328 to i32*
  %5331 = load i32, i32* %5330, align 4
  %5332 = zext i32 %5331 to i64
  store i64 %5332, i64* %RAX.i1243, align 8
  %5333 = trunc i32 %5331 to i16
  store i16 %5333, i16* %CX.i365, align 2
  %5334 = add i64 %5327, -200
  %5335 = add i64 %5326, 16
  store i64 %5335, i64* %3, align 8
  %5336 = inttoptr i64 %5334 to i64*
  %5337 = load i64, i64* %5336, align 8
  store i64 %5337, i64* %RDX.i2316, align 8
  %5338 = add i64 %5326, 19
  store i64 %5338, i64* %3, align 8
  %5339 = inttoptr i64 %5337 to i16*
  store i16 %5333, i16* %5339, align 2
  %5340 = load i64, i64* %RBP.i, align 8
  %5341 = add i64 %5340, -132
  %5342 = load i64, i64* %3, align 8
  %5343 = add i64 %5342, 6
  store i64 %5343, i64* %3, align 8
  %5344 = inttoptr i64 %5341 to i32*
  %5345 = load i32, i32* %5344, align 4
  %5346 = zext i32 %5345 to i64
  store i64 %5346, i64* %RAX.i1243, align 8
  %5347 = add i64 %5340, -112
  %5348 = add i64 %5342, 9
  store i64 %5348, i64* %3, align 8
  %5349 = inttoptr i64 %5347 to i32*
  %5350 = load i32, i32* %5349, align 4
  %5351 = sub i32 %5345, %5350
  %5352 = zext i32 %5351 to i64
  store i64 %5352, i64* %RAX.i1243, align 8
  %5353 = and i32 %5351, 255
  %5354 = tail call i32 @llvm.ctpop.i32(i32 %5353)
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  %5358 = icmp eq i32 %5351, 0
  %5359 = zext i1 %5358 to i8
  %5360 = lshr i32 %5351, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = add i64 %5342, 12
  store i8 0, i8* %26, align 1
  store i8 %5357, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %5359, i8* %42, align 1
  store i8 %5361, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5363 = icmp ne i8 %5361, 0
  %.v97 = select i1 %5363, i64 6, i64 19
  %5364 = add i64 %5362, %.v97
  store i64 %5364, i64* %3, align 8
  br i1 %5363, label %block_43b105, label %block_.L_43b112

block_43b105:                                     ; preds = %block_.L_43b0e0
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5365 = add i64 %5340, -492
  %5366 = add i64 %5364, 8
  store i64 %5366, i64* %3, align 8
  %5367 = inttoptr i64 %5365 to i32*
  store i32 0, i32* %5367, align 4
  %5368 = load i64, i64* %3, align 8
  %5369 = add i64 %5368, 78
  store i64 %5369, i64* %3, align 8
  br label %block_.L_43b15b

block_.L_43b112:                                  ; preds = %block_.L_43b0e0
  %5370 = add i64 %5364, 6
  store i64 %5370, i64* %3, align 8
  %5371 = load i32, i32* %5344, align 4
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RAX.i1243, align 8
  %5373 = add i64 %5364, 9
  store i64 %5373, i64* %3, align 8
  %5374 = load i32, i32* %5349, align 4
  %5375 = sub i32 %5371, %5374
  %5376 = zext i32 %5375 to i64
  store i64 %5376, i64* %RAX.i1243, align 8
  %5377 = icmp ult i32 %5371, %5374
  %5378 = zext i1 %5377 to i8
  store i8 %5378, i8* %26, align 1
  %5379 = and i32 %5375, 255
  %5380 = tail call i32 @llvm.ctpop.i32(i32 %5379)
  %5381 = trunc i32 %5380 to i8
  %5382 = and i8 %5381, 1
  %5383 = xor i8 %5382, 1
  store i8 %5383, i8* %33, align 1
  %5384 = xor i32 %5374, %5371
  %5385 = xor i32 %5384, %5375
  %5386 = lshr i32 %5385, 4
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  store i8 %5388, i8* %39, align 1
  %5389 = icmp eq i32 %5375, 0
  %5390 = zext i1 %5389 to i8
  store i8 %5390, i8* %42, align 1
  %5391 = lshr i32 %5375, 31
  %5392 = trunc i32 %5391 to i8
  store i8 %5392, i8* %45, align 1
  %5393 = lshr i32 %5371, 31
  %5394 = lshr i32 %5374, 31
  %5395 = xor i32 %5394, %5393
  %5396 = xor i32 %5391, %5393
  %5397 = add nuw nsw i32 %5396, %5395
  %5398 = icmp eq i32 %5397, 2
  %5399 = zext i1 %5398 to i8
  store i8 %5399, i8* %51, align 1
  %5400 = add i64 %5340, -40
  %5401 = add i64 %5364, 13
  store i64 %5401, i64* %3, align 8
  %5402 = inttoptr i64 %5400 to i64*
  %5403 = load i64, i64* %5402, align 8
  store i64 %5403, i64* %RCX.i2234, align 8
  %5404 = add i64 %5403, 72688
  %5405 = add i64 %5364, 19
  store i64 %5405, i64* %3, align 8
  %5406 = inttoptr i64 %5404 to i32*
  %5407 = load i32, i32* %5406, align 4
  %5408 = sub i32 %5375, %5407
  %5409 = icmp ult i32 %5375, %5407
  %5410 = zext i1 %5409 to i8
  store i8 %5410, i8* %26, align 1
  %5411 = and i32 %5408, 255
  %5412 = tail call i32 @llvm.ctpop.i32(i32 %5411)
  %5413 = trunc i32 %5412 to i8
  %5414 = and i8 %5413, 1
  %5415 = xor i8 %5414, 1
  store i8 %5415, i8* %33, align 1
  %5416 = xor i32 %5407, %5375
  %5417 = xor i32 %5416, %5408
  %5418 = lshr i32 %5417, 4
  %5419 = trunc i32 %5418 to i8
  %5420 = and i8 %5419, 1
  store i8 %5420, i8* %39, align 1
  %5421 = icmp eq i32 %5408, 0
  %5422 = zext i1 %5421 to i8
  store i8 %5422, i8* %42, align 1
  %5423 = lshr i32 %5408, 31
  %5424 = trunc i32 %5423 to i8
  store i8 %5424, i8* %45, align 1
  %5425 = lshr i32 %5407, 31
  %5426 = xor i32 %5425, %5391
  %5427 = xor i32 %5423, %5391
  %5428 = add nuw nsw i32 %5427, %5426
  %5429 = icmp eq i32 %5428, 2
  %5430 = zext i1 %5429 to i8
  store i8 %5430, i8* %51, align 1
  %5431 = icmp ne i8 %5424, 0
  %5432 = xor i1 %5431, %5429
  %5433 = or i1 %5421, %5432
  %.v180 = select i1 %5433, i64 46, i64 25
  %5434 = add i64 %5364, %.v180
  store i64 %5434, i64* %3, align 8
  br i1 %5433, label %block_.L_43b140, label %block_43b12b

block_43b12b:                                     ; preds = %block_.L_43b112
  %5435 = add i64 %5434, 4
  store i64 %5435, i64* %3, align 8
  %5436 = load i64, i64* %5402, align 8
  store i64 %5436, i64* %RAX.i1243, align 8
  %5437 = add i64 %5436, 72688
  %5438 = add i64 %5434, 10
  store i64 %5438, i64* %3, align 8
  %5439 = inttoptr i64 %5437 to i32*
  %5440 = load i32, i32* %5439, align 4
  %5441 = zext i32 %5440 to i64
  store i64 %5441, i64* %RCX.i2234, align 8
  %5442 = add i64 %5340, -496
  %5443 = add i64 %5434, 16
  store i64 %5443, i64* %3, align 8
  %5444 = inttoptr i64 %5442 to i32*
  store i32 %5440, i32* %5444, align 4
  %5445 = load i64, i64* %3, align 8
  %5446 = add i64 %5445, 20
  store i64 %5446, i64* %3, align 8
  br label %block_.L_43b14f

block_.L_43b140:                                  ; preds = %block_.L_43b112
  %5447 = add i64 %5434, 6
  store i64 %5447, i64* %3, align 8
  %5448 = load i32, i32* %5344, align 4
  %5449 = zext i32 %5448 to i64
  store i64 %5449, i64* %RAX.i1243, align 8
  %5450 = add i64 %5434, 9
  store i64 %5450, i64* %3, align 8
  %5451 = load i32, i32* %5349, align 4
  %5452 = sub i32 %5448, %5451
  %5453 = zext i32 %5452 to i64
  store i64 %5453, i64* %RAX.i1243, align 8
  %5454 = icmp ult i32 %5448, %5451
  %5455 = zext i1 %5454 to i8
  store i8 %5455, i8* %26, align 1
  %5456 = and i32 %5452, 255
  %5457 = tail call i32 @llvm.ctpop.i32(i32 %5456)
  %5458 = trunc i32 %5457 to i8
  %5459 = and i8 %5458, 1
  %5460 = xor i8 %5459, 1
  store i8 %5460, i8* %33, align 1
  %5461 = xor i32 %5451, %5448
  %5462 = xor i32 %5461, %5452
  %5463 = lshr i32 %5462, 4
  %5464 = trunc i32 %5463 to i8
  %5465 = and i8 %5464, 1
  store i8 %5465, i8* %39, align 1
  %5466 = icmp eq i32 %5452, 0
  %5467 = zext i1 %5466 to i8
  store i8 %5467, i8* %42, align 1
  %5468 = lshr i32 %5452, 31
  %5469 = trunc i32 %5468 to i8
  store i8 %5469, i8* %45, align 1
  %5470 = lshr i32 %5448, 31
  %5471 = lshr i32 %5451, 31
  %5472 = xor i32 %5471, %5470
  %5473 = xor i32 %5468, %5470
  %5474 = add nuw nsw i32 %5473, %5472
  %5475 = icmp eq i32 %5474, 2
  %5476 = zext i1 %5475 to i8
  store i8 %5476, i8* %51, align 1
  %5477 = add i64 %5340, -496
  %5478 = add i64 %5434, 15
  store i64 %5478, i64* %3, align 8
  %5479 = inttoptr i64 %5477 to i32*
  store i32 %5452, i32* %5479, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_43b14f

block_.L_43b14f:                                  ; preds = %block_.L_43b140, %block_43b12b
  %5480 = phi i64 [ %.pre136, %block_.L_43b140 ], [ %5446, %block_43b12b ]
  %5481 = load i64, i64* %RBP.i, align 8
  %5482 = add i64 %5481, -496
  %5483 = add i64 %5480, 6
  store i64 %5483, i64* %3, align 8
  %5484 = inttoptr i64 %5482 to i32*
  %5485 = load i32, i32* %5484, align 4
  %5486 = zext i32 %5485 to i64
  store i64 %5486, i64* %RAX.i1243, align 8
  %5487 = add i64 %5481, -492
  %5488 = add i64 %5480, 12
  store i64 %5488, i64* %3, align 8
  %5489 = inttoptr i64 %5487 to i32*
  store i32 %5485, i32* %5489, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_43b15b

block_.L_43b15b:                                  ; preds = %block_.L_43b14f, %block_43b105
  %5490 = phi i64 [ %.pre137, %block_.L_43b14f ], [ %5369, %block_43b105 ]
  %5491 = load i64, i64* %RBP.i, align 8
  %5492 = add i64 %5491, -492
  %5493 = add i64 %5490, 6
  store i64 %5493, i64* %3, align 8
  %5494 = inttoptr i64 %5492 to i32*
  %5495 = load i32, i32* %5494, align 4
  %5496 = zext i32 %5495 to i64
  store i64 %5496, i64* %RAX.i1243, align 8
  %5497 = trunc i32 %5495 to i16
  store i16 %5497, i16* %CX.i365, align 2
  %5498 = add i64 %5491, -208
  %5499 = add i64 %5490, 16
  store i64 %5499, i64* %3, align 8
  %5500 = inttoptr i64 %5498 to i64*
  %5501 = load i64, i64* %5500, align 8
  store i64 %5501, i64* %RDX.i2316, align 8
  %5502 = add i64 %5490, 19
  store i64 %5502, i64* %3, align 8
  %5503 = inttoptr i64 %5501 to i16*
  store i16 %5497, i16* %5503, align 2
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_43b16e

block_.L_43b16e:                                  ; preds = %block_.L_43b15b, %block_.L_43b069
  %5504 = phi i64 [ %.pre138, %block_.L_43b15b ], [ %5196, %block_.L_43b069 ]
  %5505 = load i64, i64* %RBP.i, align 8
  %5506 = add i64 %5505, -68
  %5507 = add i64 %5504, 4
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  store i8 0, i8* %26, align 1
  %5510 = and i32 %5509, 255
  %5511 = tail call i32 @llvm.ctpop.i32(i32 %5510)
  %5512 = trunc i32 %5511 to i8
  %5513 = and i8 %5512, 1
  %5514 = xor i8 %5513, 1
  store i8 %5514, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5515 = icmp eq i32 %5509, 0
  %5516 = zext i1 %5515 to i8
  store i8 %5516, i8* %42, align 1
  %5517 = lshr i32 %5509, 31
  %5518 = trunc i32 %5517 to i8
  store i8 %5518, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v181 = select i1 %5515, i64 10, i64 425
  %5519 = add i64 %5504, %.v181
  store i64 %5519, i64* %3, align 8
  br i1 %5515, label %block_43b178, label %block_.L_43b317

block_43b178:                                     ; preds = %block_.L_43b16e
  %5520 = add i64 %5505, -80
  %5521 = add i64 %5519, 4
  store i64 %5521, i64* %3, align 8
  %5522 = inttoptr i64 %5520 to i32*
  %5523 = load i32, i32* %5522, align 4
  store i8 0, i8* %26, align 1
  %5524 = and i32 %5523, 255
  %5525 = tail call i32 @llvm.ctpop.i32(i32 %5524)
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  %5528 = xor i8 %5527, 1
  store i8 %5528, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5529 = icmp eq i32 %5523, 0
  %5530 = zext i1 %5529 to i8
  store i8 %5530, i8* %42, align 1
  %5531 = lshr i32 %5523, 31
  %5532 = trunc i32 %5531 to i8
  store i8 %5532, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v182 = select i1 %5529, i64 198, i64 10
  %5533 = add i64 %5519, %.v182
  store i64 %5533, i64* %3, align 8
  br i1 %5529, label %block_.L_43b23e, label %block_43b182

block_43b182:                                     ; preds = %block_43b178
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5534 = add i64 %5505, -120
  %5535 = add i64 %5533, 5
  store i64 %5535, i64* %3, align 8
  %5536 = inttoptr i64 %5534 to i32*
  %5537 = load i32, i32* %5536, align 4
  %5538 = zext i32 %5537 to i64
  store i64 %5538, i64* %RCX.i2234, align 8
  %5539 = add i64 %5505, -144
  %5540 = add i64 %5533, 11
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5539 to i32*
  %5542 = load i32, i32* %5541, align 4
  %5543 = add i32 %5542, 1
  %5544 = zext i32 %5543 to i64
  %5545 = shl nuw i64 %5544, 32
  %5546 = ashr i64 %5545, 33
  %5547 = and i64 %5546, 4294967295
  store i64 %5547, i64* %RDX.i2316, align 8
  %5548 = trunc i64 %5546 to i32
  %5549 = add i32 %5548, %5537
  %5550 = zext i32 %5549 to i64
  store i64 %5550, i64* %RCX.i2234, align 8
  %5551 = icmp ult i32 %5549, %5537
  %5552 = icmp ult i32 %5549, %5548
  %5553 = or i1 %5551, %5552
  %5554 = zext i1 %5553 to i8
  store i8 %5554, i8* %26, align 1
  %5555 = and i32 %5549, 255
  %5556 = tail call i32 @llvm.ctpop.i32(i32 %5555)
  %5557 = trunc i32 %5556 to i8
  %5558 = and i8 %5557, 1
  %5559 = xor i8 %5558, 1
  store i8 %5559, i8* %33, align 1
  %5560 = xor i64 %5546, %5538
  %5561 = trunc i64 %5560 to i32
  %5562 = xor i32 %5561, %5549
  %5563 = lshr i32 %5562, 4
  %5564 = trunc i32 %5563 to i8
  %5565 = and i8 %5564, 1
  store i8 %5565, i8* %39, align 1
  %5566 = icmp eq i32 %5549, 0
  %5567 = zext i1 %5566 to i8
  store i8 %5567, i8* %42, align 1
  %5568 = lshr i32 %5549, 31
  %5569 = trunc i32 %5568 to i8
  store i8 %5569, i8* %45, align 1
  %5570 = lshr i32 %5537, 31
  %5571 = lshr i64 %5546, 31
  %5572 = trunc i64 %5571 to i32
  %5573 = and i32 %5572, 1
  %5574 = xor i32 %5568, %5570
  %5575 = xor i32 %5568, %5573
  %5576 = add nuw nsw i32 %5574, %5575
  %5577 = icmp eq i32 %5576, 2
  %5578 = zext i1 %5577 to i8
  store i8 %5578, i8* %51, align 1
  %5579 = load i64, i64* %RBP.i, align 8
  %5580 = add i64 %5579, -124
  %5581 = add i64 %5533, 21
  store i64 %5581, i64* %3, align 8
  %5582 = inttoptr i64 %5580 to i32*
  %5583 = load i32, i32* %5582, align 4
  %5584 = shl i32 %5583, 1
  %5585 = zext i32 %5584 to i64
  store i64 %5585, i64* %RDX.i2316, align 8
  %5586 = sub i32 %5549, %5584
  %5587 = zext i32 %5586 to i64
  %5588 = shl nuw i64 %5587, 32
  %5589 = ashr i64 %5588, 33
  %5590 = trunc i32 %5586 to i8
  %5591 = and i8 %5590, 1
  %5592 = trunc i64 %5589 to i32
  %5593 = and i64 %5589, 4294967295
  store i64 %5593, i64* %RCX.i2234, align 8
  store i8 %5591, i8* %26, align 1
  %5594 = and i32 %5592, 255
  %5595 = tail call i32 @llvm.ctpop.i32(i32 %5594)
  %5596 = trunc i32 %5595 to i8
  %5597 = and i8 %5596, 1
  %5598 = xor i8 %5597, 1
  store i8 %5598, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5599 = icmp eq i32 %5592, 0
  %5600 = zext i1 %5599 to i8
  store i8 %5600, i8* %42, align 1
  %5601 = lshr i64 %5589, 31
  %5602 = trunc i64 %5601 to i8
  %5603 = and i8 %5602, 1
  store i8 %5603, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5604 = load i64, i64* %RAX.i1243, align 8
  %5605 = add i64 %5579, -100
  %5606 = add i64 %5533, 30
  store i64 %5606, i64* %3, align 8
  %5607 = trunc i64 %5604 to i32
  %5608 = inttoptr i64 %5605 to i32*
  %5609 = load i32, i32* %5608, align 4
  %5610 = sub i32 %5607, %5609
  %5611 = zext i32 %5610 to i64
  store i64 %5611, i64* %RAX.i1243, align 8
  %5612 = lshr i32 %5610, 31
  %5613 = trunc i64 %5589 to i32
  %5614 = sub i32 %5613, %5610
  %5615 = icmp ult i32 %5613, %5610
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %26, align 1
  %5617 = and i32 %5614, 255
  %5618 = tail call i32 @llvm.ctpop.i32(i32 %5617)
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = xor i8 %5620, 1
  store i8 %5621, i8* %33, align 1
  %5622 = xor i32 %5610, %5613
  %5623 = xor i32 %5622, %5614
  %5624 = lshr i32 %5623, 4
  %5625 = trunc i32 %5624 to i8
  %5626 = and i8 %5625, 1
  store i8 %5626, i8* %39, align 1
  %5627 = icmp eq i32 %5614, 0
  %5628 = zext i1 %5627 to i8
  store i8 %5628, i8* %42, align 1
  %5629 = lshr i32 %5614, 31
  %5630 = trunc i32 %5629 to i8
  store i8 %5630, i8* %45, align 1
  %5631 = lshr i64 %5589, 31
  %5632 = trunc i64 %5631 to i32
  %5633 = and i32 %5632, 1
  %5634 = xor i32 %5612, %5633
  %5635 = xor i32 %5629, %5633
  %5636 = add nuw nsw i32 %5635, %5634
  %5637 = icmp eq i32 %5636, 2
  %5638 = zext i1 %5637 to i8
  store i8 %5638, i8* %51, align 1
  %5639 = icmp ne i8 %5630, 0
  %5640 = xor i1 %5639, %5637
  %.v183 = select i1 %5640, i64 38, i64 54
  %5641 = add i64 %5533, %.v183
  store i64 %5641, i64* %3, align 8
  br i1 %5640, label %block_43b1ab, label %block_.L_43b1bb

block_43b1ab:                                     ; preds = %block_43b182
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5642 = load i64, i64* %RBP.i, align 8
  %5643 = add i64 %5642, -100
  %5644 = add i64 %5641, 5
  store i64 %5644, i64* %3, align 8
  %5645 = inttoptr i64 %5643 to i32*
  %5646 = load i32, i32* %5645, align 4
  %5647 = sub i32 0, %5646
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RAX.i1243, align 8
  %5649 = icmp ne i32 %5646, 0
  %5650 = zext i1 %5649 to i8
  store i8 %5650, i8* %26, align 1
  %5651 = and i32 %5647, 255
  %5652 = tail call i32 @llvm.ctpop.i32(i32 %5651)
  %5653 = trunc i32 %5652 to i8
  %5654 = and i8 %5653, 1
  %5655 = xor i8 %5654, 1
  store i8 %5655, i8* %33, align 1
  %5656 = xor i32 %5646, %5647
  %5657 = lshr i32 %5656, 4
  %5658 = trunc i32 %5657 to i8
  %5659 = and i8 %5658, 1
  store i8 %5659, i8* %39, align 1
  %5660 = icmp eq i32 %5646, 0
  %5661 = zext i1 %5660 to i8
  store i8 %5661, i8* %42, align 1
  %5662 = lshr i32 %5647, 31
  %5663 = trunc i32 %5662 to i8
  store i8 %5663, i8* %45, align 1
  %5664 = lshr i32 %5646, 31
  %5665 = add nuw nsw i32 %5662, %5664
  %5666 = icmp eq i32 %5665, 2
  %5667 = zext i1 %5666 to i8
  store i8 %5667, i8* %51, align 1
  %5668 = add i64 %5642, -500
  %5669 = add i64 %5641, 11
  store i64 %5669, i64* %3, align 8
  %5670 = inttoptr i64 %5668 to i32*
  store i32 %5647, i32* %5670, align 4
  %5671 = load i64, i64* %3, align 8
  %5672 = add i64 %5671, 102
  store i64 %5672, i64* %3, align 8
  br label %block_.L_43b21c

block_.L_43b1bb:                                  ; preds = %block_43b182
  %5673 = load i64, i64* %RBP.i, align 8
  %5674 = add i64 %5673, -120
  %5675 = add i64 %5641, 3
  store i64 %5675, i64* %3, align 8
  %5676 = inttoptr i64 %5674 to i32*
  %5677 = load i32, i32* %5676, align 4
  %5678 = zext i32 %5677 to i64
  store i64 %5678, i64* %RAX.i1243, align 8
  %5679 = add i64 %5673, -144
  %5680 = add i64 %5641, 9
  store i64 %5680, i64* %3, align 8
  %5681 = inttoptr i64 %5679 to i32*
  %5682 = load i32, i32* %5681, align 4
  %5683 = add i32 %5682, 1
  %5684 = zext i32 %5683 to i64
  %5685 = shl nuw i64 %5684, 32
  %5686 = ashr i64 %5685, 33
  %5687 = and i64 %5686, 4294967295
  store i64 %5687, i64* %RCX.i2234, align 8
  %5688 = trunc i64 %5686 to i32
  %5689 = add i32 %5688, %5677
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RAX.i1243, align 8
  %5691 = icmp ult i32 %5689, %5677
  %5692 = icmp ult i32 %5689, %5688
  %5693 = or i1 %5691, %5692
  %5694 = zext i1 %5693 to i8
  store i8 %5694, i8* %26, align 1
  %5695 = and i32 %5689, 255
  %5696 = tail call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  store i8 %5699, i8* %33, align 1
  %5700 = xor i64 %5686, %5678
  %5701 = trunc i64 %5700 to i32
  %5702 = xor i32 %5701, %5689
  %5703 = lshr i32 %5702, 4
  %5704 = trunc i32 %5703 to i8
  %5705 = and i8 %5704, 1
  store i8 %5705, i8* %39, align 1
  %5706 = icmp eq i32 %5689, 0
  %5707 = zext i1 %5706 to i8
  store i8 %5707, i8* %42, align 1
  %5708 = lshr i32 %5689, 31
  %5709 = trunc i32 %5708 to i8
  store i8 %5709, i8* %45, align 1
  %5710 = lshr i32 %5677, 31
  %5711 = lshr i64 %5686, 31
  %5712 = trunc i64 %5711 to i32
  %5713 = and i32 %5712, 1
  %5714 = xor i32 %5708, %5710
  %5715 = xor i32 %5708, %5713
  %5716 = add nuw nsw i32 %5714, %5715
  %5717 = icmp eq i32 %5716, 2
  %5718 = zext i1 %5717 to i8
  store i8 %5718, i8* %51, align 1
  %5719 = load i64, i64* %RBP.i, align 8
  %5720 = add i64 %5719, -124
  %5721 = add i64 %5641, 19
  store i64 %5721, i64* %3, align 8
  %5722 = inttoptr i64 %5720 to i32*
  %5723 = load i32, i32* %5722, align 4
  %5724 = shl i32 %5723, 1
  %5725 = zext i32 %5724 to i64
  store i64 %5725, i64* %RCX.i2234, align 8
  %5726 = sub i32 %5689, %5724
  %5727 = zext i32 %5726 to i64
  %5728 = shl nuw i64 %5727, 32
  %5729 = ashr i64 %5728, 33
  %5730 = trunc i32 %5726 to i8
  %5731 = and i8 %5730, 1
  %5732 = trunc i64 %5729 to i32
  %5733 = and i64 %5729, 4294967295
  store i64 %5733, i64* %RAX.i1243, align 8
  store i8 %5731, i8* %26, align 1
  %5734 = and i32 %5732, 255
  %5735 = tail call i32 @llvm.ctpop.i32(i32 %5734)
  %5736 = trunc i32 %5735 to i8
  %5737 = and i8 %5736, 1
  %5738 = xor i8 %5737, 1
  store i8 %5738, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5739 = icmp eq i32 %5732, 0
  %5740 = zext i1 %5739 to i8
  store i8 %5740, i8* %42, align 1
  %5741 = lshr i64 %5729, 31
  %5742 = trunc i64 %5741 to i8
  %5743 = and i8 %5742, 1
  store i8 %5743, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5744 = trunc i64 %5729 to i32
  %5745 = add i64 %5719, -100
  %5746 = add i64 %5641, 28
  store i64 %5746, i64* %3, align 8
  %5747 = inttoptr i64 %5745 to i32*
  %5748 = load i32, i32* %5747, align 4
  %5749 = sub i32 %5744, %5748
  %5750 = icmp ult i32 %5744, %5748
  %5751 = zext i1 %5750 to i8
  store i8 %5751, i8* %26, align 1
  %5752 = and i32 %5749, 255
  %5753 = tail call i32 @llvm.ctpop.i32(i32 %5752)
  %5754 = trunc i32 %5753 to i8
  %5755 = and i8 %5754, 1
  %5756 = xor i8 %5755, 1
  store i8 %5756, i8* %33, align 1
  %5757 = xor i32 %5748, %5744
  %5758 = xor i32 %5757, %5749
  %5759 = lshr i32 %5758, 4
  %5760 = trunc i32 %5759 to i8
  %5761 = and i8 %5760, 1
  store i8 %5761, i8* %39, align 1
  %5762 = icmp eq i32 %5749, 0
  %5763 = zext i1 %5762 to i8
  store i8 %5763, i8* %42, align 1
  %5764 = lshr i32 %5749, 31
  %5765 = trunc i32 %5764 to i8
  store i8 %5765, i8* %45, align 1
  %5766 = lshr i64 %5729, 31
  %5767 = trunc i64 %5766 to i32
  %5768 = and i32 %5767, 1
  %5769 = lshr i32 %5748, 31
  %5770 = xor i32 %5769, %5768
  %5771 = xor i32 %5764, %5768
  %5772 = add nuw nsw i32 %5771, %5770
  %5773 = icmp eq i32 %5772, 2
  %5774 = zext i1 %5773 to i8
  store i8 %5774, i8* %51, align 1
  %5775 = icmp ne i8 %5765, 0
  %5776 = xor i1 %5775, %5773
  %5777 = or i1 %5762, %5776
  %.v184 = select i1 %5777, i64 48, i64 34
  %5778 = add i64 %5641, %.v184
  store i64 %5778, i64* %3, align 8
  %5779 = load i64, i64* %RBP.i, align 8
  br i1 %5777, label %block_.L_43b1ee, label %block_43b1e0

block_43b1e0:                                     ; preds = %block_.L_43b1bb
  %5780 = add i64 %5779, -100
  %5781 = add i64 %5778, 3
  store i64 %5781, i64* %3, align 8
  %5782 = inttoptr i64 %5780 to i32*
  %5783 = load i32, i32* %5782, align 4
  %5784 = zext i32 %5783 to i64
  store i64 %5784, i64* %RAX.i1243, align 8
  %5785 = add i64 %5779, -504
  %5786 = add i64 %5778, 9
  store i64 %5786, i64* %3, align 8
  %5787 = inttoptr i64 %5785 to i32*
  store i32 %5783, i32* %5787, align 4
  %5788 = load i64, i64* %3, align 8
  %5789 = add i64 %5788, 39
  store i64 %5789, i64* %3, align 8
  br label %block_.L_43b210

block_.L_43b1ee:                                  ; preds = %block_.L_43b1bb
  %5790 = add i64 %5779, -120
  %5791 = add i64 %5778, 3
  store i64 %5791, i64* %3, align 8
  %5792 = inttoptr i64 %5790 to i32*
  %5793 = load i32, i32* %5792, align 4
  %5794 = zext i32 %5793 to i64
  store i64 %5794, i64* %RAX.i1243, align 8
  %5795 = add i64 %5779, -144
  %5796 = add i64 %5778, 9
  store i64 %5796, i64* %3, align 8
  %5797 = inttoptr i64 %5795 to i32*
  %5798 = load i32, i32* %5797, align 4
  %5799 = add i32 %5798, 1
  %5800 = zext i32 %5799 to i64
  %5801 = shl nuw i64 %5800, 32
  %5802 = ashr i64 %5801, 33
  %5803 = and i64 %5802, 4294967295
  store i64 %5803, i64* %RCX.i2234, align 8
  %5804 = trunc i64 %5802 to i32
  %5805 = add i32 %5804, %5793
  %5806 = zext i32 %5805 to i64
  store i64 %5806, i64* %RAX.i1243, align 8
  %5807 = icmp ult i32 %5805, %5793
  %5808 = icmp ult i32 %5805, %5804
  %5809 = or i1 %5807, %5808
  %5810 = zext i1 %5809 to i8
  store i8 %5810, i8* %26, align 1
  %5811 = and i32 %5805, 255
  %5812 = tail call i32 @llvm.ctpop.i32(i32 %5811)
  %5813 = trunc i32 %5812 to i8
  %5814 = and i8 %5813, 1
  %5815 = xor i8 %5814, 1
  store i8 %5815, i8* %33, align 1
  %5816 = xor i64 %5802, %5794
  %5817 = trunc i64 %5816 to i32
  %5818 = xor i32 %5817, %5805
  %5819 = lshr i32 %5818, 4
  %5820 = trunc i32 %5819 to i8
  %5821 = and i8 %5820, 1
  store i8 %5821, i8* %39, align 1
  %5822 = icmp eq i32 %5805, 0
  %5823 = zext i1 %5822 to i8
  store i8 %5823, i8* %42, align 1
  %5824 = lshr i32 %5805, 31
  %5825 = trunc i32 %5824 to i8
  store i8 %5825, i8* %45, align 1
  %5826 = lshr i32 %5793, 31
  %5827 = lshr i64 %5802, 31
  %5828 = trunc i64 %5827 to i32
  %5829 = and i32 %5828, 1
  %5830 = xor i32 %5824, %5826
  %5831 = xor i32 %5824, %5829
  %5832 = add nuw nsw i32 %5830, %5831
  %5833 = icmp eq i32 %5832, 2
  %5834 = zext i1 %5833 to i8
  store i8 %5834, i8* %51, align 1
  %5835 = load i64, i64* %RBP.i, align 8
  %5836 = add i64 %5835, -124
  %5837 = add i64 %5778, 19
  store i64 %5837, i64* %3, align 8
  %5838 = inttoptr i64 %5836 to i32*
  %5839 = load i32, i32* %5838, align 4
  %5840 = shl i32 %5839, 1
  %5841 = zext i32 %5840 to i64
  store i64 %5841, i64* %RCX.i2234, align 8
  %5842 = sub i32 %5805, %5840
  %5843 = zext i32 %5842 to i64
  %5844 = shl nuw i64 %5843, 32
  %5845 = ashr i64 %5844, 33
  %5846 = trunc i32 %5842 to i8
  %5847 = and i8 %5846, 1
  %5848 = trunc i64 %5845 to i32
  %5849 = and i64 %5845, 4294967295
  store i64 %5849, i64* %RAX.i1243, align 8
  store i8 %5847, i8* %26, align 1
  %5850 = and i32 %5848, 255
  %5851 = tail call i32 @llvm.ctpop.i32(i32 %5850)
  %5852 = trunc i32 %5851 to i8
  %5853 = and i8 %5852, 1
  %5854 = xor i8 %5853, 1
  store i8 %5854, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5855 = icmp eq i32 %5848, 0
  %5856 = zext i1 %5855 to i8
  store i8 %5856, i8* %42, align 1
  %5857 = lshr i64 %5845, 31
  %5858 = trunc i64 %5857 to i8
  %5859 = and i8 %5858, 1
  store i8 %5859, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5860 = add i64 %5835, -504
  %5861 = trunc i64 %5845 to i32
  %5862 = add i64 %5778, 31
  store i64 %5862, i64* %3, align 8
  %5863 = inttoptr i64 %5860 to i32*
  store i32 %5861, i32* %5863, align 4
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_43b210

block_.L_43b210:                                  ; preds = %block_.L_43b1ee, %block_43b1e0
  %5864 = phi i64 [ %.pre139, %block_.L_43b1ee ], [ %5789, %block_43b1e0 ]
  %5865 = load i64, i64* %RBP.i, align 8
  %5866 = add i64 %5865, -504
  %5867 = add i64 %5864, 6
  store i64 %5867, i64* %3, align 8
  %5868 = inttoptr i64 %5866 to i32*
  %5869 = load i32, i32* %5868, align 4
  %5870 = zext i32 %5869 to i64
  store i64 %5870, i64* %RAX.i1243, align 8
  %5871 = add i64 %5865, -500
  %5872 = add i64 %5864, 12
  store i64 %5872, i64* %3, align 8
  %5873 = inttoptr i64 %5871 to i32*
  store i32 %5869, i32* %5873, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_43b21c

block_.L_43b21c:                                  ; preds = %block_.L_43b210, %block_43b1ab
  %5874 = phi i64 [ %.pre140, %block_.L_43b210 ], [ %5672, %block_43b1ab ]
  %5875 = load i64, i64* %RBP.i, align 8
  %5876 = add i64 %5875, -500
  %5877 = add i64 %5874, 6
  store i64 %5877, i64* %3, align 8
  %5878 = inttoptr i64 %5876 to i32*
  %5879 = load i32, i32* %5878, align 4
  %5880 = zext i32 %5879 to i64
  store i64 %5880, i64* %RAX.i1243, align 8
  store i64 0, i64* %RCX.i2234, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5881 = add i64 %5875, -200
  %5882 = add i64 %5874, 15
  store i64 %5882, i64* %3, align 8
  %5883 = inttoptr i64 %5881 to i64*
  %5884 = load i64, i64* %5883, align 8
  store i64 %5884, i64* %RDX.i2316, align 8
  %5885 = add i64 %5875, -92
  %5886 = add i64 %5874, 18
  store i64 %5886, i64* %3, align 8
  %5887 = inttoptr i64 %5885 to i32*
  %5888 = load i32, i32* %5887, align 4
  %5889 = sub i32 0, %5888
  %5890 = zext i32 %5889 to i64
  store i64 %5890, i64* %RCX.i2234, align 8
  %5891 = icmp ne i32 %5888, 0
  %5892 = zext i1 %5891 to i8
  store i8 %5892, i8* %26, align 1
  %5893 = and i32 %5889, 255
  %5894 = tail call i32 @llvm.ctpop.i32(i32 %5893)
  %5895 = trunc i32 %5894 to i8
  %5896 = and i8 %5895, 1
  %5897 = xor i8 %5896, 1
  store i8 %5897, i8* %33, align 1
  %5898 = xor i32 %5888, %5889
  %5899 = lshr i32 %5898, 4
  %5900 = trunc i32 %5899 to i8
  %5901 = and i8 %5900, 1
  store i8 %5901, i8* %39, align 1
  %5902 = icmp eq i32 %5888, 0
  %5903 = zext i1 %5902 to i8
  store i8 %5903, i8* %42, align 1
  %5904 = lshr i32 %5889, 31
  %5905 = trunc i32 %5904 to i8
  store i8 %5905, i8* %45, align 1
  %5906 = lshr i32 %5888, 31
  %5907 = add nuw nsw i32 %5904, %5906
  %5908 = icmp eq i32 %5907, 2
  %5909 = zext i1 %5908 to i8
  store i8 %5909, i8* %51, align 1
  %5910 = sext i32 %5889 to i64
  store i64 %5910, i64* %RSI.i2319, align 8
  %5911 = shl nsw i64 %5910, 1
  %5912 = add i64 %5884, %5911
  %5913 = add i64 %5874, 25
  store i64 %5913, i64* %3, align 8
  %5914 = inttoptr i64 %5912 to i16*
  %5915 = load i16, i16* %5914, align 2
  %5916 = zext i16 %5915 to i32
  %5917 = zext i16 %5915 to i32
  %5918 = add i32 %5879, %5917
  %5919 = zext i32 %5918 to i64
  store i64 %5919, i64* %RCX.i2234, align 8
  %5920 = icmp ult i32 %5918, %5917
  %5921 = icmp ult i32 %5918, %5879
  %5922 = or i1 %5920, %5921
  %5923 = zext i1 %5922 to i8
  store i8 %5923, i8* %26, align 1
  %5924 = and i32 %5918, 255
  %5925 = tail call i32 @llvm.ctpop.i32(i32 %5924)
  %5926 = trunc i32 %5925 to i8
  %5927 = and i8 %5926, 1
  %5928 = xor i8 %5927, 1
  store i8 %5928, i8* %33, align 1
  %5929 = xor i32 %5879, %5916
  %5930 = xor i32 %5929, %5918
  %5931 = lshr i32 %5930, 4
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  store i8 %5933, i8* %39, align 1
  %5934 = icmp eq i32 %5918, 0
  %5935 = zext i1 %5934 to i8
  store i8 %5935, i8* %42, align 1
  %5936 = lshr i32 %5918, 31
  %5937 = trunc i32 %5936 to i8
  store i8 %5937, i8* %45, align 1
  %5938 = lshr i32 %5879, 31
  %5939 = xor i32 %5936, %5938
  %5940 = add nuw nsw i32 %5939, %5936
  %5941 = icmp eq i32 %5940, 2
  %5942 = zext i1 %5941 to i8
  store i8 %5942, i8* %51, align 1
  %5943 = trunc i32 %5918 to i16
  store i16 %5943, i16* %DI.i23, align 2
  %5944 = add i64 %5874, 34
  store i64 %5944, i64* %3, align 8
  store i16 %5943, i16* %5914, align 2
  %.pre141 = load i64, i64* %RBP.i, align 8
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_43b23e

block_.L_43b23e:                                  ; preds = %block_.L_43b21c, %block_43b178
  %5945 = phi i64 [ %.pre142, %block_.L_43b21c ], [ %5533, %block_43b178 ]
  %5946 = phi i64 [ %.pre141, %block_.L_43b21c ], [ %5505, %block_43b178 ]
  %5947 = add i64 %5946, -84
  %5948 = add i64 %5945, 4
  store i64 %5948, i64* %3, align 8
  %5949 = inttoptr i64 %5947 to i32*
  %5950 = load i32, i32* %5949, align 4
  store i8 0, i8* %26, align 1
  %5951 = and i32 %5950, 255
  %5952 = tail call i32 @llvm.ctpop.i32(i32 %5951)
  %5953 = trunc i32 %5952 to i8
  %5954 = and i8 %5953, 1
  %5955 = xor i8 %5954, 1
  store i8 %5955, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5956 = icmp eq i32 %5950, 0
  %5957 = zext i1 %5956 to i8
  store i8 %5957, i8* %42, align 1
  %5958 = lshr i32 %5950, 31
  %5959 = trunc i32 %5958 to i8
  store i8 %5959, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v185 = select i1 %5956, i64 212, i64 10
  %5960 = add i64 %5945, %.v185
  store i64 %5960, i64* %3, align 8
  br i1 %5956, label %block_.L_43b312, label %block_43b248

block_43b248:                                     ; preds = %block_.L_43b23e
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5961 = add i64 %5946, -140
  %5962 = add i64 %5960, 8
  store i64 %5962, i64* %3, align 8
  %5963 = inttoptr i64 %5961 to i32*
  %5964 = load i32, i32* %5963, align 4
  %5965 = zext i32 %5964 to i64
  store i64 %5965, i64* %RCX.i2234, align 8
  %5966 = add i64 %5946, -144
  %5967 = add i64 %5960, 14
  store i64 %5967, i64* %3, align 8
  %5968 = inttoptr i64 %5966 to i32*
  %5969 = load i32, i32* %5968, align 4
  %5970 = add i32 %5969, 1
  %5971 = zext i32 %5970 to i64
  %5972 = shl nuw i64 %5971, 32
  %5973 = ashr i64 %5972, 33
  %5974 = and i64 %5973, 4294967295
  store i64 %5974, i64* %RDX.i2316, align 8
  %5975 = trunc i64 %5973 to i32
  %5976 = add i32 %5975, %5964
  %5977 = zext i32 %5976 to i64
  store i64 %5977, i64* %RCX.i2234, align 8
  %5978 = icmp ult i32 %5976, %5964
  %5979 = icmp ult i32 %5976, %5975
  %5980 = or i1 %5978, %5979
  %5981 = zext i1 %5980 to i8
  store i8 %5981, i8* %26, align 1
  %5982 = and i32 %5976, 255
  %5983 = tail call i32 @llvm.ctpop.i32(i32 %5982)
  %5984 = trunc i32 %5983 to i8
  %5985 = and i8 %5984, 1
  %5986 = xor i8 %5985, 1
  store i8 %5986, i8* %33, align 1
  %5987 = xor i64 %5973, %5965
  %5988 = trunc i64 %5987 to i32
  %5989 = xor i32 %5988, %5976
  %5990 = lshr i32 %5989, 4
  %5991 = trunc i32 %5990 to i8
  %5992 = and i8 %5991, 1
  store i8 %5992, i8* %39, align 1
  %5993 = icmp eq i32 %5976, 0
  %5994 = zext i1 %5993 to i8
  store i8 %5994, i8* %42, align 1
  %5995 = lshr i32 %5976, 31
  %5996 = trunc i32 %5995 to i8
  store i8 %5996, i8* %45, align 1
  %5997 = lshr i32 %5964, 31
  %5998 = lshr i64 %5973, 31
  %5999 = trunc i64 %5998 to i32
  %6000 = and i32 %5999, 1
  %6001 = xor i32 %5995, %5997
  %6002 = xor i32 %5995, %6000
  %6003 = add nuw nsw i32 %6001, %6002
  %6004 = icmp eq i32 %6003, 2
  %6005 = zext i1 %6004 to i8
  store i8 %6005, i8* %51, align 1
  %6006 = load i64, i64* %RBP.i, align 8
  %6007 = add i64 %6006, -136
  %6008 = add i64 %5960, 27
  store i64 %6008, i64* %3, align 8
  %6009 = inttoptr i64 %6007 to i32*
  %6010 = load i32, i32* %6009, align 4
  %6011 = shl i32 %6010, 1
  %6012 = zext i32 %6011 to i64
  store i64 %6012, i64* %RDX.i2316, align 8
  %6013 = sub i32 %5976, %6011
  %6014 = zext i32 %6013 to i64
  %6015 = shl nuw i64 %6014, 32
  %6016 = ashr i64 %6015, 33
  %6017 = trunc i32 %6013 to i8
  %6018 = and i8 %6017, 1
  %6019 = trunc i64 %6016 to i32
  %6020 = and i64 %6016, 4294967295
  store i64 %6020, i64* %RCX.i2234, align 8
  store i8 %6018, i8* %26, align 1
  %6021 = and i32 %6019, 255
  %6022 = tail call i32 @llvm.ctpop.i32(i32 %6021)
  %6023 = trunc i32 %6022 to i8
  %6024 = and i8 %6023, 1
  %6025 = xor i8 %6024, 1
  store i8 %6025, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6026 = icmp eq i32 %6019, 0
  %6027 = zext i1 %6026 to i8
  store i8 %6027, i8* %42, align 1
  %6028 = lshr i64 %6016, 31
  %6029 = trunc i64 %6028 to i8
  %6030 = and i8 %6029, 1
  store i8 %6030, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %6031 = load i64, i64* %RAX.i1243, align 8
  %6032 = add i64 %6006, -100
  %6033 = add i64 %5960, 36
  store i64 %6033, i64* %3, align 8
  %6034 = trunc i64 %6031 to i32
  %6035 = inttoptr i64 %6032 to i32*
  %6036 = load i32, i32* %6035, align 4
  %6037 = sub i32 %6034, %6036
  %6038 = zext i32 %6037 to i64
  store i64 %6038, i64* %RAX.i1243, align 8
  %6039 = lshr i32 %6037, 31
  %6040 = trunc i64 %6016 to i32
  %6041 = sub i32 %6040, %6037
  %6042 = icmp ult i32 %6040, %6037
  %6043 = zext i1 %6042 to i8
  store i8 %6043, i8* %26, align 1
  %6044 = and i32 %6041, 255
  %6045 = tail call i32 @llvm.ctpop.i32(i32 %6044)
  %6046 = trunc i32 %6045 to i8
  %6047 = and i8 %6046, 1
  %6048 = xor i8 %6047, 1
  store i8 %6048, i8* %33, align 1
  %6049 = xor i32 %6037, %6040
  %6050 = xor i32 %6049, %6041
  %6051 = lshr i32 %6050, 4
  %6052 = trunc i32 %6051 to i8
  %6053 = and i8 %6052, 1
  store i8 %6053, i8* %39, align 1
  %6054 = icmp eq i32 %6041, 0
  %6055 = zext i1 %6054 to i8
  store i8 %6055, i8* %42, align 1
  %6056 = lshr i32 %6041, 31
  %6057 = trunc i32 %6056 to i8
  store i8 %6057, i8* %45, align 1
  %6058 = lshr i64 %6016, 31
  %6059 = trunc i64 %6058 to i32
  %6060 = and i32 %6059, 1
  %6061 = xor i32 %6039, %6060
  %6062 = xor i32 %6056, %6060
  %6063 = add nuw nsw i32 %6062, %6061
  %6064 = icmp eq i32 %6063, 2
  %6065 = zext i1 %6064 to i8
  store i8 %6065, i8* %51, align 1
  %6066 = icmp ne i8 %6057, 0
  %6067 = xor i1 %6066, %6064
  %.v186 = select i1 %6067, i64 44, i64 60
  %6068 = add i64 %5960, %.v186
  store i64 %6068, i64* %3, align 8
  br i1 %6067, label %block_43b277, label %block_.L_43b287

block_43b277:                                     ; preds = %block_43b248
  store i64 0, i64* %RAX.i1243, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %6069 = load i64, i64* %RBP.i, align 8
  %6070 = add i64 %6069, -100
  %6071 = add i64 %6068, 5
  store i64 %6071, i64* %3, align 8
  %6072 = inttoptr i64 %6070 to i32*
  %6073 = load i32, i32* %6072, align 4
  %6074 = sub i32 0, %6073
  %6075 = zext i32 %6074 to i64
  store i64 %6075, i64* %RAX.i1243, align 8
  %6076 = icmp ne i32 %6073, 0
  %6077 = zext i1 %6076 to i8
  store i8 %6077, i8* %26, align 1
  %6078 = and i32 %6074, 255
  %6079 = tail call i32 @llvm.ctpop.i32(i32 %6078)
  %6080 = trunc i32 %6079 to i8
  %6081 = and i8 %6080, 1
  %6082 = xor i8 %6081, 1
  store i8 %6082, i8* %33, align 1
  %6083 = xor i32 %6073, %6074
  %6084 = lshr i32 %6083, 4
  %6085 = trunc i32 %6084 to i8
  %6086 = and i8 %6085, 1
  store i8 %6086, i8* %39, align 1
  %6087 = icmp eq i32 %6073, 0
  %6088 = zext i1 %6087 to i8
  store i8 %6088, i8* %42, align 1
  %6089 = lshr i32 %6074, 31
  %6090 = trunc i32 %6089 to i8
  store i8 %6090, i8* %45, align 1
  %6091 = lshr i32 %6073, 31
  %6092 = add nuw nsw i32 %6089, %6091
  %6093 = icmp eq i32 %6092, 2
  %6094 = zext i1 %6093 to i8
  store i8 %6094, i8* %51, align 1
  %6095 = add i64 %6069, -508
  %6096 = add i64 %6068, 11
  store i64 %6096, i64* %3, align 8
  %6097 = inttoptr i64 %6095 to i32*
  store i32 %6074, i32* %6097, align 4
  %6098 = load i64, i64* %3, align 8
  %6099 = add i64 %6098, 114
  store i64 %6099, i64* %3, align 8
  br label %block_.L_43b2f4

block_.L_43b287:                                  ; preds = %block_43b248
  %6100 = load i64, i64* %RBP.i, align 8
  %6101 = add i64 %6100, -140
  %6102 = add i64 %6068, 6
  store i64 %6102, i64* %3, align 8
  %6103 = inttoptr i64 %6101 to i32*
  %6104 = load i32, i32* %6103, align 4
  %6105 = zext i32 %6104 to i64
  store i64 %6105, i64* %RAX.i1243, align 8
  %6106 = add i64 %6100, -144
  %6107 = add i64 %6068, 12
  store i64 %6107, i64* %3, align 8
  %6108 = inttoptr i64 %6106 to i32*
  %6109 = load i32, i32* %6108, align 4
  %6110 = add i32 %6109, 1
  %6111 = zext i32 %6110 to i64
  %6112 = shl nuw i64 %6111, 32
  %6113 = ashr i64 %6112, 33
  %6114 = and i64 %6113, 4294967295
  store i64 %6114, i64* %RCX.i2234, align 8
  %6115 = trunc i64 %6113 to i32
  %6116 = add i32 %6115, %6104
  %6117 = zext i32 %6116 to i64
  store i64 %6117, i64* %RAX.i1243, align 8
  %6118 = icmp ult i32 %6116, %6104
  %6119 = icmp ult i32 %6116, %6115
  %6120 = or i1 %6118, %6119
  %6121 = zext i1 %6120 to i8
  store i8 %6121, i8* %26, align 1
  %6122 = and i32 %6116, 255
  %6123 = tail call i32 @llvm.ctpop.i32(i32 %6122)
  %6124 = trunc i32 %6123 to i8
  %6125 = and i8 %6124, 1
  %6126 = xor i8 %6125, 1
  store i8 %6126, i8* %33, align 1
  %6127 = xor i64 %6113, %6105
  %6128 = trunc i64 %6127 to i32
  %6129 = xor i32 %6128, %6116
  %6130 = lshr i32 %6129, 4
  %6131 = trunc i32 %6130 to i8
  %6132 = and i8 %6131, 1
  store i8 %6132, i8* %39, align 1
  %6133 = icmp eq i32 %6116, 0
  %6134 = zext i1 %6133 to i8
  store i8 %6134, i8* %42, align 1
  %6135 = lshr i32 %6116, 31
  %6136 = trunc i32 %6135 to i8
  store i8 %6136, i8* %45, align 1
  %6137 = lshr i32 %6104, 31
  %6138 = lshr i64 %6113, 31
  %6139 = trunc i64 %6138 to i32
  %6140 = and i32 %6139, 1
  %6141 = xor i32 %6135, %6137
  %6142 = xor i32 %6135, %6140
  %6143 = add nuw nsw i32 %6141, %6142
  %6144 = icmp eq i32 %6143, 2
  %6145 = zext i1 %6144 to i8
  store i8 %6145, i8* %51, align 1
  %6146 = load i64, i64* %RBP.i, align 8
  %6147 = add i64 %6146, -136
  %6148 = add i64 %6068, 25
  store i64 %6148, i64* %3, align 8
  %6149 = inttoptr i64 %6147 to i32*
  %6150 = load i32, i32* %6149, align 4
  %6151 = shl i32 %6150, 1
  %6152 = zext i32 %6151 to i64
  store i64 %6152, i64* %RCX.i2234, align 8
  %6153 = sub i32 %6116, %6151
  %6154 = zext i32 %6153 to i64
  %6155 = shl nuw i64 %6154, 32
  %6156 = ashr i64 %6155, 33
  %6157 = trunc i32 %6153 to i8
  %6158 = and i8 %6157, 1
  %6159 = trunc i64 %6156 to i32
  %6160 = and i64 %6156, 4294967295
  store i64 %6160, i64* %RAX.i1243, align 8
  store i8 %6158, i8* %26, align 1
  %6161 = and i32 %6159, 255
  %6162 = tail call i32 @llvm.ctpop.i32(i32 %6161)
  %6163 = trunc i32 %6162 to i8
  %6164 = and i8 %6163, 1
  %6165 = xor i8 %6164, 1
  store i8 %6165, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6166 = icmp eq i32 %6159, 0
  %6167 = zext i1 %6166 to i8
  store i8 %6167, i8* %42, align 1
  %6168 = lshr i64 %6156, 31
  %6169 = trunc i64 %6168 to i8
  %6170 = and i8 %6169, 1
  store i8 %6170, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %6171 = trunc i64 %6156 to i32
  %6172 = add i64 %6146, -100
  %6173 = add i64 %6068, 34
  store i64 %6173, i64* %3, align 8
  %6174 = inttoptr i64 %6172 to i32*
  %6175 = load i32, i32* %6174, align 4
  %6176 = sub i32 %6171, %6175
  %6177 = icmp ult i32 %6171, %6175
  %6178 = zext i1 %6177 to i8
  store i8 %6178, i8* %26, align 1
  %6179 = and i32 %6176, 255
  %6180 = tail call i32 @llvm.ctpop.i32(i32 %6179)
  %6181 = trunc i32 %6180 to i8
  %6182 = and i8 %6181, 1
  %6183 = xor i8 %6182, 1
  store i8 %6183, i8* %33, align 1
  %6184 = xor i32 %6175, %6171
  %6185 = xor i32 %6184, %6176
  %6186 = lshr i32 %6185, 4
  %6187 = trunc i32 %6186 to i8
  %6188 = and i8 %6187, 1
  store i8 %6188, i8* %39, align 1
  %6189 = icmp eq i32 %6176, 0
  %6190 = zext i1 %6189 to i8
  store i8 %6190, i8* %42, align 1
  %6191 = lshr i32 %6176, 31
  %6192 = trunc i32 %6191 to i8
  store i8 %6192, i8* %45, align 1
  %6193 = lshr i64 %6156, 31
  %6194 = trunc i64 %6193 to i32
  %6195 = and i32 %6194, 1
  %6196 = lshr i32 %6175, 31
  %6197 = xor i32 %6196, %6195
  %6198 = xor i32 %6191, %6195
  %6199 = add nuw nsw i32 %6198, %6197
  %6200 = icmp eq i32 %6199, 2
  %6201 = zext i1 %6200 to i8
  store i8 %6201, i8* %51, align 1
  %6202 = icmp ne i8 %6192, 0
  %6203 = xor i1 %6202, %6200
  %6204 = or i1 %6189, %6203
  %.v187 = select i1 %6204, i64 54, i64 40
  %6205 = add i64 %6068, %.v187
  store i64 %6205, i64* %3, align 8
  %6206 = load i64, i64* %RBP.i, align 8
  br i1 %6204, label %block_.L_43b2c0, label %block_43b2b2

block_43b2b2:                                     ; preds = %block_.L_43b287
  %6207 = add i64 %6206, -100
  %6208 = add i64 %6205, 3
  store i64 %6208, i64* %3, align 8
  %6209 = inttoptr i64 %6207 to i32*
  %6210 = load i32, i32* %6209, align 4
  %6211 = zext i32 %6210 to i64
  store i64 %6211, i64* %RAX.i1243, align 8
  %6212 = add i64 %6206, -512
  %6213 = add i64 %6205, 9
  store i64 %6213, i64* %3, align 8
  %6214 = inttoptr i64 %6212 to i32*
  store i32 %6210, i32* %6214, align 4
  %6215 = load i64, i64* %3, align 8
  %6216 = add i64 %6215, 45
  store i64 %6216, i64* %3, align 8
  br label %block_.L_43b2e8

block_.L_43b2c0:                                  ; preds = %block_.L_43b287
  %6217 = add i64 %6206, -140
  %6218 = add i64 %6205, 6
  store i64 %6218, i64* %3, align 8
  %6219 = inttoptr i64 %6217 to i32*
  %6220 = load i32, i32* %6219, align 4
  %6221 = zext i32 %6220 to i64
  store i64 %6221, i64* %RAX.i1243, align 8
  %6222 = add i64 %6206, -144
  %6223 = add i64 %6205, 12
  store i64 %6223, i64* %3, align 8
  %6224 = inttoptr i64 %6222 to i32*
  %6225 = load i32, i32* %6224, align 4
  %6226 = add i32 %6225, 1
  %6227 = zext i32 %6226 to i64
  %6228 = shl nuw i64 %6227, 32
  %6229 = ashr i64 %6228, 33
  %6230 = and i64 %6229, 4294967295
  store i64 %6230, i64* %RCX.i2234, align 8
  %6231 = trunc i64 %6229 to i32
  %6232 = add i32 %6231, %6220
  %6233 = zext i32 %6232 to i64
  store i64 %6233, i64* %RAX.i1243, align 8
  %6234 = icmp ult i32 %6232, %6220
  %6235 = icmp ult i32 %6232, %6231
  %6236 = or i1 %6234, %6235
  %6237 = zext i1 %6236 to i8
  store i8 %6237, i8* %26, align 1
  %6238 = and i32 %6232, 255
  %6239 = tail call i32 @llvm.ctpop.i32(i32 %6238)
  %6240 = trunc i32 %6239 to i8
  %6241 = and i8 %6240, 1
  %6242 = xor i8 %6241, 1
  store i8 %6242, i8* %33, align 1
  %6243 = xor i64 %6229, %6221
  %6244 = trunc i64 %6243 to i32
  %6245 = xor i32 %6244, %6232
  %6246 = lshr i32 %6245, 4
  %6247 = trunc i32 %6246 to i8
  %6248 = and i8 %6247, 1
  store i8 %6248, i8* %39, align 1
  %6249 = icmp eq i32 %6232, 0
  %6250 = zext i1 %6249 to i8
  store i8 %6250, i8* %42, align 1
  %6251 = lshr i32 %6232, 31
  %6252 = trunc i32 %6251 to i8
  store i8 %6252, i8* %45, align 1
  %6253 = lshr i32 %6220, 31
  %6254 = lshr i64 %6229, 31
  %6255 = trunc i64 %6254 to i32
  %6256 = and i32 %6255, 1
  %6257 = xor i32 %6251, %6253
  %6258 = xor i32 %6251, %6256
  %6259 = add nuw nsw i32 %6257, %6258
  %6260 = icmp eq i32 %6259, 2
  %6261 = zext i1 %6260 to i8
  store i8 %6261, i8* %51, align 1
  %6262 = load i64, i64* %RBP.i, align 8
  %6263 = add i64 %6262, -136
  %6264 = add i64 %6205, 25
  store i64 %6264, i64* %3, align 8
  %6265 = inttoptr i64 %6263 to i32*
  %6266 = load i32, i32* %6265, align 4
  %6267 = shl i32 %6266, 1
  %6268 = zext i32 %6267 to i64
  store i64 %6268, i64* %RCX.i2234, align 8
  %6269 = sub i32 %6232, %6267
  %6270 = zext i32 %6269 to i64
  %6271 = shl nuw i64 %6270, 32
  %6272 = ashr i64 %6271, 33
  %6273 = trunc i32 %6269 to i8
  %6274 = and i8 %6273, 1
  %6275 = trunc i64 %6272 to i32
  %6276 = and i64 %6272, 4294967295
  store i64 %6276, i64* %RAX.i1243, align 8
  store i8 %6274, i8* %26, align 1
  %6277 = and i32 %6275, 255
  %6278 = tail call i32 @llvm.ctpop.i32(i32 %6277)
  %6279 = trunc i32 %6278 to i8
  %6280 = and i8 %6279, 1
  %6281 = xor i8 %6280, 1
  store i8 %6281, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6282 = icmp eq i32 %6275, 0
  %6283 = zext i1 %6282 to i8
  store i8 %6283, i8* %42, align 1
  %6284 = lshr i64 %6272, 31
  %6285 = trunc i64 %6284 to i8
  %6286 = and i8 %6285, 1
  store i8 %6286, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %6287 = add i64 %6262, -512
  %6288 = trunc i64 %6272 to i32
  %6289 = add i64 %6205, 37
  store i64 %6289, i64* %3, align 8
  %6290 = inttoptr i64 %6287 to i32*
  store i32 %6288, i32* %6290, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_43b2e8

block_.L_43b2e8:                                  ; preds = %block_.L_43b2c0, %block_43b2b2
  %6291 = phi i64 [ %.pre143, %block_.L_43b2c0 ], [ %6216, %block_43b2b2 ]
  %6292 = load i64, i64* %RBP.i, align 8
  %6293 = add i64 %6292, -512
  %6294 = add i64 %6291, 6
  store i64 %6294, i64* %3, align 8
  %6295 = inttoptr i64 %6293 to i32*
  %6296 = load i32, i32* %6295, align 4
  %6297 = zext i32 %6296 to i64
  store i64 %6297, i64* %RAX.i1243, align 8
  %6298 = add i64 %6292, -508
  %6299 = add i64 %6291, 12
  store i64 %6299, i64* %3, align 8
  %6300 = inttoptr i64 %6298 to i32*
  store i32 %6296, i32* %6300, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_43b2f4

block_.L_43b2f4:                                  ; preds = %block_.L_43b2e8, %block_43b277
  %6301 = phi i64 [ %.pre144, %block_.L_43b2e8 ], [ %6099, %block_43b277 ]
  %6302 = load i64, i64* %RBP.i, align 8
  %6303 = add i64 %6302, -508
  %6304 = add i64 %6301, 6
  store i64 %6304, i64* %3, align 8
  %6305 = inttoptr i64 %6303 to i32*
  %6306 = load i32, i32* %6305, align 4
  %6307 = zext i32 %6306 to i64
  store i64 %6307, i64* %RAX.i1243, align 8
  %6308 = add i64 %6302, -208
  %6309 = add i64 %6301, 13
  store i64 %6309, i64* %3, align 8
  %6310 = inttoptr i64 %6308 to i64*
  %6311 = load i64, i64* %6310, align 8
  store i64 %6311, i64* %RCX.i2234, align 8
  %6312 = add i64 %6302, -96
  %6313 = add i64 %6301, 17
  store i64 %6313, i64* %3, align 8
  %6314 = inttoptr i64 %6312 to i32*
  %6315 = load i32, i32* %6314, align 4
  %6316 = sext i32 %6315 to i64
  store i64 %6316, i64* %RDX.i2316, align 8
  %6317 = shl nsw i64 %6316, 1
  %6318 = add i64 %6317, %6311
  %6319 = add i64 %6301, 21
  store i64 %6319, i64* %3, align 8
  %6320 = inttoptr i64 %6318 to i16*
  %6321 = load i16, i16* %6320, align 2
  %6322 = zext i16 %6321 to i32
  %6323 = zext i16 %6321 to i32
  %6324 = add i32 %6306, %6323
  %6325 = zext i32 %6324 to i64
  store i64 %6325, i64* %RSI.i2319, align 8
  %6326 = icmp ult i32 %6324, %6323
  %6327 = icmp ult i32 %6324, %6306
  %6328 = or i1 %6326, %6327
  %6329 = zext i1 %6328 to i8
  store i8 %6329, i8* %26, align 1
  %6330 = and i32 %6324, 255
  %6331 = tail call i32 @llvm.ctpop.i32(i32 %6330)
  %6332 = trunc i32 %6331 to i8
  %6333 = and i8 %6332, 1
  %6334 = xor i8 %6333, 1
  store i8 %6334, i8* %33, align 1
  %6335 = xor i32 %6306, %6322
  %6336 = xor i32 %6335, %6324
  %6337 = lshr i32 %6336, 4
  %6338 = trunc i32 %6337 to i8
  %6339 = and i8 %6338, 1
  store i8 %6339, i8* %39, align 1
  %6340 = icmp eq i32 %6324, 0
  %6341 = zext i1 %6340 to i8
  store i8 %6341, i8* %42, align 1
  %6342 = lshr i32 %6324, 31
  %6343 = trunc i32 %6342 to i8
  store i8 %6343, i8* %45, align 1
  %6344 = lshr i32 %6306, 31
  %6345 = xor i32 %6342, %6344
  %6346 = add nuw nsw i32 %6345, %6342
  %6347 = icmp eq i32 %6346, 2
  %6348 = zext i1 %6347 to i8
  store i8 %6348, i8* %51, align 1
  %6349 = trunc i32 %6324 to i16
  store i16 %6349, i16* %DI.i23, align 2
  %6350 = add i64 %6301, 30
  store i64 %6350, i64* %3, align 8
  store i16 %6349, i16* %6320, align 2
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_43b312

block_.L_43b312:                                  ; preds = %block_.L_43b2f4, %block_.L_43b23e
  %6351 = phi i64 [ %.pre145, %block_.L_43b2f4 ], [ %5960, %block_.L_43b23e ]
  %6352 = add i64 %6351, 5
  store i64 %6352, i64* %3, align 8
  br label %block_.L_43b317

block_.L_43b317:                                  ; preds = %block_.L_43b16e, %block_.L_43b312
  %6353 = phi i64 [ %6352, %block_.L_43b312 ], [ %5519, %block_.L_43b16e ]
  %6354 = add i64 %6353, 5
  store i64 %6354, i64* %3, align 8
  br label %block_.L_43b31c

block_.L_43b31c:                                  ; preds = %block_.L_43b317, %block_.L_43aeb9
  %storemerge71 = phi i64 [ %4452, %block_.L_43aeb9 ], [ %6354, %block_.L_43b317 ]
  %6355 = add i64 %storemerge71, 5
  store i64 %6355, i64* %3, align 8
  br label %block_.L_43b321

block_.L_43b321:                                  ; preds = %block_43ab39, %block_.L_43b31c
  %6356 = phi i64 [ %2931, %block_43ab39 ], [ %6355, %block_.L_43b31c ]
  %MEMORY.55 = phi %struct.Memory* [ %2880, %block_43ab39 ], [ %MEMORY.27, %block_.L_43b31c ]
  %6357 = add i64 %6356, 5
  store i64 %6357, i64* %3, align 8
  br label %block_.L_43b326

block_.L_43b326:                                  ; preds = %block_43ab14, %block_.L_43b321
  %6358 = phi i64 [ %2724, %block_43ab14 ], [ %6357, %block_.L_43b321 ]
  %MEMORY.56 = phi %struct.Memory* [ %2680, %block_43ab14 ], [ %MEMORY.55, %block_.L_43b321 ]
  %6359 = add i64 %6358, 5
  store i64 %6359, i64* %3, align 8
  br label %block_.L_43b32b

block_.L_43b32b:                                  ; preds = %block_.L_43b326, %block_.L_43a9e7
  %6360 = phi i64 [ %2633, %block_.L_43a9e7 ], [ %6359, %block_.L_43b326 ]
  %MEMORY.57 = phi %struct.Memory* [ %MEMORY.10, %block_.L_43a9e7 ], [ %MEMORY.56, %block_.L_43b326 ]
  %6361 = add i64 %6360, 5
  store i64 %6361, i64* %3, align 8
  %.pre146 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43b330

block_.L_43b330:                                  ; preds = %block_43a652, %block_.L_43b32b
  %6362 = phi i64 [ %.pre146, %block_.L_43b32b ], [ %1201, %block_43a652 ]
  %6363 = phi i64 [ %6361, %block_.L_43b32b ], [ %1234, %block_43a652 ]
  %MEMORY.58 = phi %struct.Memory* [ %MEMORY.57, %block_.L_43b32b ], [ %MEMORY.10, %block_43a652 ]
  %6364 = add i64 %6362, -76
  %6365 = add i64 %6363, 8
  store i64 %6365, i64* %3, align 8
  %6366 = inttoptr i64 %6364 to i32*
  %6367 = load i32, i32* %6366, align 4
  %6368 = add i32 %6367, 1
  %6369 = zext i32 %6368 to i64
  store i64 %6369, i64* %RAX.i1243, align 8
  %6370 = icmp eq i32 %6367, -1
  %6371 = icmp eq i32 %6368, 0
  %6372 = or i1 %6370, %6371
  %6373 = zext i1 %6372 to i8
  store i8 %6373, i8* %26, align 1
  %6374 = and i32 %6368, 255
  %6375 = tail call i32 @llvm.ctpop.i32(i32 %6374)
  %6376 = trunc i32 %6375 to i8
  %6377 = and i8 %6376, 1
  %6378 = xor i8 %6377, 1
  store i8 %6378, i8* %33, align 1
  %6379 = xor i32 %6368, %6367
  %6380 = lshr i32 %6379, 4
  %6381 = trunc i32 %6380 to i8
  %6382 = and i8 %6381, 1
  store i8 %6382, i8* %39, align 1
  %6383 = zext i1 %6371 to i8
  store i8 %6383, i8* %42, align 1
  %6384 = lshr i32 %6368, 31
  %6385 = trunc i32 %6384 to i8
  store i8 %6385, i8* %45, align 1
  %6386 = lshr i32 %6367, 31
  %6387 = xor i32 %6384, %6386
  %6388 = add nuw nsw i32 %6387, %6384
  %6389 = icmp eq i32 %6388, 2
  %6390 = zext i1 %6389 to i8
  store i8 %6390, i8* %51, align 1
  %6391 = add i64 %6363, 14
  store i64 %6391, i64* %3, align 8
  store i32 %6368, i32* %6366, align 4
  %6392 = load i64, i64* %3, align 8
  %6393 = add i64 %6392, -3884
  store i64 %6393, i64* %3, align 8
  br label %block_.L_43a412

block_.L_43b343:                                  ; preds = %block_.L_43a412
  %6394 = load i64, i64* %6, align 8
  %6395 = add i64 %6394, 496
  store i64 %6395, i64* %6, align 8
  %6396 = icmp ugt i64 %6394, -497
  %6397 = zext i1 %6396 to i8
  store i8 %6397, i8* %26, align 1
  %6398 = trunc i64 %6395 to i32
  %6399 = and i32 %6398, 255
  %6400 = tail call i32 @llvm.ctpop.i32(i32 %6399)
  %6401 = trunc i32 %6400 to i8
  %6402 = and i8 %6401, 1
  %6403 = xor i8 %6402, 1
  store i8 %6403, i8* %33, align 1
  %6404 = xor i64 %6394, 16
  %6405 = xor i64 %6404, %6395
  %6406 = lshr i64 %6405, 4
  %6407 = trunc i64 %6406 to i8
  %6408 = and i8 %6407, 1
  store i8 %6408, i8* %39, align 1
  %6409 = icmp eq i64 %6395, 0
  %6410 = zext i1 %6409 to i8
  store i8 %6410, i8* %42, align 1
  %6411 = lshr i64 %6395, 63
  %6412 = trunc i64 %6411 to i8
  store i8 %6412, i8* %45, align 1
  %6413 = lshr i64 %6394, 63
  %6414 = xor i64 %6411, %6413
  %6415 = add nuw nsw i64 %6414, %6411
  %6416 = icmp eq i64 %6415, 2
  %6417 = zext i1 %6416 to i8
  store i8 %6417, i8* %51, align 1
  %6418 = add i64 %471, 8
  store i64 %6418, i64* %3, align 8
  %6419 = add i64 %6394, 504
  %6420 = inttoptr i64 %6395 to i64*
  %6421 = load i64, i64* %6420, align 8
  store i64 %6421, i64* %RBX.i1187, align 8
  store i64 %6419, i64* %6, align 8
  %6422 = add i64 %471, 10
  store i64 %6422, i64* %3, align 8
  %6423 = add i64 %6394, 512
  %6424 = inttoptr i64 %6419 to i64*
  %6425 = load i64, i64* %6424, align 8
  store i64 %6425, i64* %R14.i1160, align 8
  store i64 %6423, i64* %6, align 8
  %6426 = add i64 %471, 11
  store i64 %6426, i64* %3, align 8
  %6427 = add i64 %6394, 520
  %6428 = inttoptr i64 %6423 to i64*
  %6429 = load i64, i64* %6428, align 8
  store i64 %6429, i64* %RBP.i, align 8
  store i64 %6427, i64* %6, align 8
  %6430 = add i64 %471, 12
  store i64 %6430, i64* %3, align 8
  %6431 = inttoptr i64 %6427 to i64*
  %6432 = load i64, i64* %6431, align 8
  store i64 %6432, i64* %3, align 8
  %6433 = add i64 %6394, 528
  store i64 %6433, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_0x28__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 40
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
define %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
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
define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4c37e0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4c37e0_type* @G_0x4c37e0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4c37e8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4c37e8_type* @G_0x4c37e8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4c37f0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4c37f0_type* @G_0x4c37f0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4c37f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4c37f8_type* @G_0x4c37f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jne_.L_43a39e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bd4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72660
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
define %struct.Memory* @routine_subl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a3ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72664
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
define %struct.Memory* @routine_je_.L_43a3ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x150__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movslq_0x11bfc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -340
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a3ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x154__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -340
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
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0xb8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -184
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
define %struct.Memory* @routine_jge_.L_43b343(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_je_.L_43a439(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -344
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a445(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x158__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
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
define %struct.Memory* @routine_je_.L_43a497(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_43a476(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a486(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x15c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -348
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
define %struct.Memory* @routine_movl__eax__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a4a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x160__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
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
define %struct.Memory* @routine_leaq_MINUS0x128__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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
define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x110__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_subl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__0x1___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_movl_MINUS0x104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___r10___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R10, align 8
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
define %struct.Memory* @routine_addq__r10___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__r8__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10c__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x214__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movb__r9b__MINUS0x161__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -353
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43a591(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_setne__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x161__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -353
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x161__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -353
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
define %struct.Memory* @routine_movb__al__0x723694(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i8 %4, i8* getelementptr inbounds (%G_0x723694_type, %G_0x723694_type* @G_0x723694, i64 0, i32 0, i64 0), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43a630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jne_.L_43a630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43a5f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43a5f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a61f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
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
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x16c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x168__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
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
define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a639(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x170__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
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
define %struct.Memory* @routine_jne_.L_43a666(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x264__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 612
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
define %struct.Memory* @routine_jne_.L_43b330(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43a6c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x723694___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i8, i8* getelementptr inbounds (%G_0x723694_type, %G_0x723694_type* @G_0x723694, i64 0, i32 0, i64 0), align 8
  %6 = zext i8 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_43a6a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43a6a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a6af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x174__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -372
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
define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a6d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x178__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43a733(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43a719(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43a719(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a722(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x17c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -380
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
define %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -384
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a743(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x180__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x114__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
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
define %struct.Memory* @routine_movslq_MINUS0x118__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RDX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xfc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
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
define %struct.Memory* @routine_movslq_MINUS0x100__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_movq__rcx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43a8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 72716
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
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
define %struct.Memory* @routine_jge_.L_43a7cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a82a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -51
  %8 = icmp ult i32 %4, 51
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43a7ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x33___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 51, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43a81e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -392
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x188__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
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
define %struct.Memory* @routine_movl_MINUS0x184__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -388
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
define %struct.Memory* @routine_movzbl_0x4b2320___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4924192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11c0c__rcx__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 72716
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43a870(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -400
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a8cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43a8a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a8c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x194__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -404
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x194__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -404
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
define %struct.Memory* @routine_movl_MINUS0x190__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
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
define %struct.Memory* @routine_movl_MINUS0x18c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -396
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
define %struct.Memory* @routine_addl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -408
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -408
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x198__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_43a942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a97f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x33___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -51
  %8 = icmp ult i32 %4, 51
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43a964(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a973(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1a0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
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
define %struct.Memory* @routine_movl_MINUS0x19c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -412
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_43a9aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a9e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43a9cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -424
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a9db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
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
define %struct.Memory* @routine_movl_MINUS0x1a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -420
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
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x6cb9c0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cb9c0_type* @G__0x6cb9c0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x6cb940___rsi_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 7125312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x12c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x6cb980___rsi_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 7125376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 5
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
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
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_imull__0x3___ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 3
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967295
  store i64 %10, i64* %RAX, align 8
  %11 = mul i64 %7, 12884901888
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rdx__rsi_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b32b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -156
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
define %struct.Memory* @routine_jge_.L_43b326(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x12c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x88__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x7c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1ac__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -428
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
define %struct.Memory* @routine_andl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = and i64 %6, %4
  %10 = trunc i64 %9 to i32
  store i64 %9, i64* %RDX, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %10, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %10, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43b321(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43abe9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_setl__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %CL, align 1
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
define %struct.Memory* @routine_movzbl__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %CL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jne_.L_43aebe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43ac58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movw__ax___cx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %CX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__cx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %CX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
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
define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43aeb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setl__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DL, align 1
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
define %struct.Memory* @routine_movzbl__dl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %DL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_andl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_je_.L_43acc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_addl_MINUS0x90__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
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
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 34
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -432
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ace3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_je_.L_43ad28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ad43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_43ad86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ad92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %CX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43add4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43addd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -444
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
define %struct.Memory* @routine_movw__ax___dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43ae35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_addl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -448
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ae41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -448
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
define %struct.Memory* @routine_je_.L_43ae91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -452
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ae9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43b31c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43aed9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aee8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1c8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_43af25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43af7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x88__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_jle_.L_43af53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -464
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43af70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1d0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -464
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
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43b081(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_43afab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -468
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43afee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11bec__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72684
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
define %struct.Memory* @routine_jle_.L_43afd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -472
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43afe2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
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
define %struct.Memory* @routine_movl_MINUS0x1d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -468
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
define %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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
define %struct.Memory* @routine_jge_.L_43b020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -476
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43b04e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -480
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b05d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -480
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1e0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
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
define %struct.Memory* @routine_jmpq_.L_43b16e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43b09d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -484
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b0e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11bf0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72688
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
define %struct.Memory* @routine_jle_.L_43b0c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -488
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b0d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -488
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
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
define %struct.Memory* @routine_jge_.L_43b112(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b15b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43b140(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -496
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b14f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -496
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
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
define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
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
define %struct.Memory* @routine_jne_.L_43b317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43b23e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x90__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43b1bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -500
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b21c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jle_.L_43b1ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -504
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b210(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_movw__cx___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di____rdx__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b312(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_43b287(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b2f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43b2c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -512
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b2e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
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
define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -508
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
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movw__si___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di____rcx__rdx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b321(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b326(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b32b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b330(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b335(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a412(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
