; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x726418_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x726418 = local_unnamed_addr global %G_0x726418_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @find_sad_16x16(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -2664
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 2656
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i490 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i490, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %45, i64* %RDI.i490, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1400 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %47 = add i64 %45, 12
  %48 = add i64 %44, 11
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RAX.i1400, align 8
  %EAX.i1420 = bitcast %union.anon* %46 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -2168
  %54 = add i64 %44, 17
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i32*
  store i32 %50, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -2148
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 10
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1859 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %RCX.i1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8.i1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_448f3a

block_.L_448f3a:                                  ; preds = %block_448f47, %entry
  %62 = phi i64 [ %190, %block_448f47 ], [ %.pre, %entry ]
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -2148
  %65 = add i64 %62, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -17
  %69 = icmp ult i32 %67, 17
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %67, 16
  %77 = xor i32 %76, %68
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %26, align 1
  %81 = icmp eq i32 %68, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i32 %68, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %32, align 1
  %85 = lshr i32 %67, 31
  %86 = xor i32 %83, %85
  %87 = add nuw nsw i32 %86, %85
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %38, align 1
  %90 = icmp ne i8 %84, 0
  %91 = xor i1 %90, %88
  %.v200 = select i1 %91, i64 13, i64 87
  %92 = add i64 %62, %.v200
  store i64 %92, i64* %3, align 8
  br i1 %91, label %block_448f47, label %block_.L_448f91

block_448f47:                                     ; preds = %block_.L_448f3a
  store i64 4294967295, i64* %RSI.i1859, align 8
  store i64 1, i64* %RCX.i1857, align 8
  %93 = add i64 %63, -2608
  store i64 %93, i64* %RAX.i1400, align 8
  %94 = add i64 %63, -2168
  %95 = add i64 %92, 23
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RDI.i490, align 8
  %99 = add i64 %92, 29
  store i64 %99, i64* %3, align 8
  %100 = load i32, i32* %66, align 4
  %101 = add i32 %100, -1
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RDX.i1848, align 8
  %103 = icmp eq i32 %100, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = and i32 %101, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  %110 = xor i32 %101, %100
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %26, align 1
  %114 = icmp eq i32 %101, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %29, align 1
  %116 = lshr i32 %101, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %32, align 1
  %118 = lshr i32 %100, 31
  %119 = xor i32 %116, %118
  %120 = add nuw nsw i32 %119, %118
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %38, align 1
  %123 = add i64 %92, 39
  store i64 %123, i64* %3, align 8
  %124 = load i32, i32* %66, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 24
  %127 = lshr i64 %126, 63
  %128 = add i64 %126, %93
  store i64 %128, i64* %RAX.i1400, align 8
  %129 = icmp ult i64 %128, %93
  %130 = icmp ult i64 %128, %126
  %131 = or i1 %129, %130
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %14, align 1
  %133 = trunc i64 %128 to i32
  %134 = and i32 %133, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %21, align 1
  %139 = xor i64 %126, %93
  %140 = xor i64 %139, %128
  %141 = lshr i64 %140, 4
  %142 = trunc i64 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %26, align 1
  %144 = icmp eq i64 %128, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %29, align 1
  %146 = lshr i64 %128, 63
  %147 = trunc i64 %146 to i8
  store i8 %147, i8* %32, align 1
  %148 = lshr i64 %93, 63
  %149 = xor i64 %146, %148
  %150 = xor i64 %146, %127
  %151 = add nuw nsw i64 %149, %150
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %38, align 1
  store i64 %128, i64* %R8.i1844, align 8
  %154 = add i64 %92, 8809
  %155 = add i64 %92, 54
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %6, align 8
  store i64 %154, i64* %3, align 8
  %call2_448f78 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %154, %struct.Memory* %2)
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -2148
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 6
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RAX.i1400, align 8
  %167 = icmp eq i32 %164, -1
  %168 = icmp eq i32 %165, 0
  %169 = or i1 %167, %168
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %14, align 1
  %171 = and i32 %165, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %21, align 1
  %176 = xor i32 %165, %164
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %26, align 1
  %180 = zext i1 %168 to i8
  store i8 %180, i8* %29, align 1
  %181 = lshr i32 %165, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %32, align 1
  %183 = lshr i32 %164, 31
  %184 = xor i32 %181, %183
  %185 = add nuw nsw i32 %184, %181
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %38, align 1
  %188 = add i64 %161, 15
  store i64 %188, i64* %3, align 8
  store i32 %165, i32* %163, align 4
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, -82
  store i64 %190, i64* %3, align 8
  br label %block_.L_448f3a

block_.L_448f91:                                  ; preds = %block_.L_448f3a
  %ESI.i1822 = bitcast %union.anon* %61 to i32*
  store i64 0, i64* %RSI.i1859, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1820 = getelementptr inbounds %union.anon, %union.anon* %191, i64 0, i32 0
  store i64 4294967295, i64* %RDX.i1820, align 8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1818 = getelementptr inbounds %union.anon, %union.anon* %192, i64 0, i32 0
  store i64 1, i64* %RCX.i1818, align 8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1816 = getelementptr inbounds %union.anon, %union.anon* %193, i64 0, i32 0
  %194 = add i64 %63, -2192
  store i64 %194, i64* %R8.i1816, align 8
  %195 = add i64 %63, -2168
  %196 = add i64 %92, 25
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RDI.i490, align 8
  %200 = add i64 %92, 8735
  %201 = add i64 %92, 30
  %202 = load i64, i64* %6, align 8
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %6, align 8
  store i64 %200, i64* %3, align 8
  %call2_448faa = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %200, %struct.Memory* %2)
  %205 = load i64, i64* %3, align 8
  %206 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %206, i64* %R8.i1816, align 8
  %207 = add i64 %206, 216
  %208 = add i64 %205, 16
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  store i8 0, i8* %14, align 1
  %211 = and i32 %210, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %216 = icmp eq i32 %210, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %29, align 1
  %218 = lshr i32 %210, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v201 = select i1 %216, i64 22, i64 63
  %220 = add i64 %205, %.v201
  store i64 %220, i64* %3, align 8
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -2192
  br i1 %216, label %block_448fc5, label %block_.L_448fee

block_448fc5:                                     ; preds = %block_.L_448f91
  %223 = add i64 %220, 6
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RAX.i1400, align 8
  %227 = add i64 %221, -2612
  %228 = add i64 %220, 12
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  store i32 %225, i32* %229, align 4
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -2584
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX.i1400, align 8
  %237 = add i64 %230, -2616
  %238 = add i64 %232, 12
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  store i32 %235, i32* %239, align 4
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -2608
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 6
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %RAX.i1400, align 8
  %247 = add i64 %240, -2620
  %248 = add i64 %242, 12
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  store i32 %245, i32* %249, align 4
  %250 = load i64, i64* %3, align 8
  %251 = add i64 %250, 321
  store i64 %251, i64* %3, align 8
  br label %block_.L_44912a

block_.L_448fee:                                  ; preds = %block_.L_448f91
  %252 = add i64 %220, 7
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %222 to i32*
  %254 = load i32, i32* %253, align 4
  store i8 0, i8* %14, align 1
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %260 = icmp eq i32 %254, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %29, align 1
  %262 = lshr i32 %254, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v202 = select i1 %260, i64 49, i64 13
  %264 = add i64 %220, %.v202
  store i64 %264, i64* %3, align 8
  br i1 %260, label %block_.L_44901f, label %block_448ffb

block_448ffb:                                     ; preds = %block_.L_448fee
  %265 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %265, i64* %RAX.i1400, align 8
  %266 = add i64 %265, 71784
  %267 = add i64 %264, 15
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RAX.i1400, align 8
  %270 = add i64 %221, -2188
  %271 = add i64 %264, 22
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RCX.i1818, align 8
  %275 = shl nsw i64 %274, 2
  %276 = add i64 %275, %269
  %277 = add i64 %264, 25
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RDX.i1820, align 8
  %281 = add i64 %221, -2624
  %282 = add i64 %264, 31
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  store i32 %279, i32* %283, align 4
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 18
  br label %block_.L_44902c

block_.L_44901f:                                  ; preds = %block_.L_448fee
  store i64 0, i64* %RAX.i1400, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %286 = add i64 %221, -2624
  %287 = add i64 %264, 8
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 0, i32* %288, align 4
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 5
  store i64 %290, i64* %3, align 8
  br label %block_.L_44902c

block_.L_44902c:                                  ; preds = %block_.L_44901f, %block_448ffb
  %storemerge108 = phi i64 [ %285, %block_448ffb ], [ %290, %block_.L_44901f ]
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -2624
  %293 = add i64 %storemerge108, 6
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RAX.i1400, align 8
  %297 = add i64 %291, -2612
  %298 = add i64 %storemerge108, 12
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  store i32 %295, i32* %299, align 4
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -2148
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, 10
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %301 to i32*
  store i32 1, i32* %304, align 4
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -2616
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 10
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %306 to i32*
  store i32 1, i32* %309, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_44904c

block_.L_44904c:                                  ; preds = %block_.L_4490ba, %block_.L_44902c
  %310 = phi i64 [ %496, %block_.L_4490ba ], [ %.pre152, %block_.L_44902c ]
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -2148
  %313 = add i64 %310, 7
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = add i32 %315, -17
  %317 = icmp ult i32 %315, 17
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %14, align 1
  %319 = and i32 %316, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %21, align 1
  %324 = xor i32 %315, 16
  %325 = xor i32 %324, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %26, align 1
  %329 = icmp eq i32 %316, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %29, align 1
  %331 = lshr i32 %316, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %32, align 1
  %333 = lshr i32 %315, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %38, align 1
  %338 = icmp ne i8 %332, 0
  %339 = xor i1 %338, %336
  %.v199 = select i1 %339, i64 13, i64 148
  %340 = add i64 %310, %.v199
  %341 = add i64 %311, -2608
  %342 = add i64 %340, 7
  store i64 %342, i64* %3, align 8
  br i1 %339, label %block_449059, label %block_.L_4490e0

block_449059:                                     ; preds = %block_.L_44904c
  store i64 %341, i64* %RAX.i1400, align 8
  %343 = add i64 %340, 14
  store i64 %343, i64* %3, align 8
  %344 = load i32, i32* %314, align 4
  %345 = sext i32 %344 to i64
  %346 = mul nsw i64 %345, 24
  store i64 %346, i64* %RCX.i1818, align 8
  %347 = lshr i64 %346, 63
  %348 = add i64 %346, %341
  store i64 %348, i64* %RAX.i1400, align 8
  %349 = icmp ult i64 %348, %341
  %350 = icmp ult i64 %348, %346
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %14, align 1
  %353 = trunc i64 %348 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %21, align 1
  %359 = xor i64 %346, %341
  %360 = xor i64 %359, %348
  %361 = lshr i64 %360, 4
  %362 = trunc i64 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %26, align 1
  %364 = icmp eq i64 %348, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %29, align 1
  %366 = lshr i64 %348, 63
  %367 = trunc i64 %366 to i8
  store i8 %367, i8* %32, align 1
  %368 = lshr i64 %341, 63
  %369 = xor i64 %366, %368
  %370 = xor i64 %366, %347
  %371 = add nuw nsw i64 %369, %370
  %372 = icmp eq i64 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %38, align 1
  %374 = inttoptr i64 %348 to i32*
  %375 = add i64 %340, 24
  store i64 %375, i64* %3, align 8
  %376 = load i32, i32* %374, align 4
  store i8 0, i8* %14, align 1
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %382 = icmp eq i32 %376, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %29, align 1
  %384 = lshr i32 %376, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v229 = select i1 %382, i64 84, i64 30
  %386 = add i64 %340, %.v229
  store i64 %386, i64* %3, align 8
  br i1 %382, label %block_.L_4490ad, label %block_449077

block_449077:                                     ; preds = %block_449059
  store i64 %341, i64* %RAX.i1400, align 8
  %387 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %387, i64* %RCX.i1818, align 8
  %388 = add i64 %387, 71784
  %389 = add i64 %386, 22
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RCX.i1818, align 8
  %392 = add i64 %386, 29
  store i64 %392, i64* %3, align 8
  %393 = load i32, i32* %314, align 4
  %394 = sext i32 %393 to i64
  %395 = mul nsw i64 %394, 24
  store i64 %395, i64* %RDX.i1820, align 8
  %396 = lshr i64 %395, 63
  %397 = add i64 %395, %341
  store i64 %397, i64* %RAX.i1400, align 8
  %398 = icmp ult i64 %397, %341
  %399 = icmp ult i64 %397, %395
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %14, align 1
  %402 = trunc i64 %397 to i32
  %403 = and i32 %402, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  %408 = xor i64 %395, %341
  %409 = xor i64 %408, %397
  %410 = lshr i64 %409, 4
  %411 = trunc i64 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %26, align 1
  %413 = icmp eq i64 %397, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %29, align 1
  %415 = lshr i64 %397, 63
  %416 = trunc i64 %415 to i8
  store i8 %416, i8* %32, align 1
  %417 = xor i64 %415, %368
  %418 = xor i64 %415, %396
  %419 = add nuw nsw i64 %417, %418
  %420 = icmp eq i64 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %38, align 1
  %422 = add i64 %397, 4
  %423 = add i64 %386, 40
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %RAX.i1400, align 8
  %427 = shl nsw i64 %426, 2
  %428 = add i64 %427, %391
  %429 = add i64 %386, 43
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RSI.i1859, align 8
  %433 = add i64 %311, -2628
  %434 = add i64 %386, 49
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  store i32 %431, i32* %435, align 4
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, 18
  br label %block_.L_4490ba

block_.L_4490ad:                                  ; preds = %block_449059
  store i64 0, i64* %RAX.i1400, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %438 = add i64 %311, -2628
  %439 = add i64 %386, 8
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 0, i32* %440, align 4
  %441 = load i64, i64* %3, align 8
  %442 = add i64 %441, 5
  store i64 %442, i64* %3, align 8
  br label %block_.L_4490ba

block_.L_4490ba:                                  ; preds = %block_.L_4490ad, %block_449077
  %storemerge109 = phi i64 [ %437, %block_449077 ], [ %442, %block_.L_4490ad ]
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -2628
  %445 = add i64 %storemerge109, 6
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RAX.i1400, align 8
  %449 = add i64 %443, -2616
  %450 = add i64 %storemerge109, 12
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = and i32 %452, %447
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RAX.i1400, align 8
  store i8 0, i8* %14, align 1
  %455 = and i32 %453, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = icmp eq i32 %453, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %29, align 1
  %462 = lshr i32 %453, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %464 = add i64 %storemerge109, 18
  store i64 %464, i64* %3, align 8
  store i32 %453, i32* %451, align 4
  %465 = load i64, i64* %RBP.i, align 8
  %466 = add i64 %465, -2148
  %467 = load i64, i64* %3, align 8
  %468 = add i64 %467, 6
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = add i32 %470, 1
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i1400, align 8
  %473 = icmp eq i32 %470, -1
  %474 = icmp eq i32 %471, 0
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %21, align 1
  %482 = xor i32 %471, %470
  %483 = lshr i32 %482, 4
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %26, align 1
  %486 = zext i1 %474 to i8
  store i8 %486, i8* %29, align 1
  %487 = lshr i32 %471, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %32, align 1
  %489 = lshr i32 %470, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %487
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %38, align 1
  %494 = add i64 %467, 15
  store i64 %494, i64* %3, align 8
  store i32 %471, i32* %469, align 4
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, -143
  store i64 %496, i64* %3, align 8
  br label %block_.L_44904c

block_.L_4490e0:                                  ; preds = %block_.L_44904c
  %497 = inttoptr i64 %341 to i32*
  %498 = load i32, i32* %497, align 4
  store i8 0, i8* %14, align 1
  %499 = and i32 %498, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %504 = icmp eq i32 %498, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %29, align 1
  %506 = lshr i32 %498, 31
  %507 = trunc i32 %506 to i8
  store i8 %507, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v203 = select i1 %504, i64 49, i64 13
  %508 = add i64 %340, %.v203
  store i64 %508, i64* %3, align 8
  br i1 %504, label %block_.L_449111, label %block_4490ed

block_4490ed:                                     ; preds = %block_.L_4490e0
  %509 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %509, i64* %RAX.i1400, align 8
  %510 = add i64 %509, 71784
  %511 = add i64 %508, 15
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %RAX.i1400, align 8
  %514 = add i64 %311, -2604
  %515 = add i64 %508, 22
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  store i64 %518, i64* %RCX.i1818, align 8
  %519 = shl nsw i64 %518, 2
  %520 = add i64 %519, %513
  %521 = add i64 %508, 25
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RDX.i1820, align 8
  %525 = add i64 %311, -2632
  %526 = add i64 %508, 31
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  store i32 %523, i32* %527, align 4
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 18
  br label %block_.L_44911e

block_.L_449111:                                  ; preds = %block_.L_4490e0
  store i64 0, i64* %RAX.i1400, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %530 = add i64 %311, -2632
  %531 = add i64 %508, 8
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  store i32 0, i32* %532, align 4
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 5
  store i64 %534, i64* %3, align 8
  br label %block_.L_44911e

block_.L_44911e:                                  ; preds = %block_.L_449111, %block_4490ed
  %storemerge110 = phi i64 [ %529, %block_4490ed ], [ %534, %block_.L_449111 ]
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -2632
  %537 = add i64 %storemerge110, 6
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RAX.i1400, align 8
  %541 = add i64 %535, -2620
  %542 = add i64 %storemerge110, 12
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  store i32 %539, i32* %543, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_44912a

block_.L_44912a:                                  ; preds = %block_.L_44911e, %block_448fc5
  %544 = phi i64 [ %.pre153, %block_.L_44911e ], [ %251, %block_448fc5 ]
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -16
  %547 = add i64 %544, 7
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  store i32 999999, i32* %548, align 4
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -8
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 4
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %550 to i64*
  %554 = load i64, i64* %553, align 8
  store i64 %554, i64* %RAX.i1400, align 8
  %555 = add i64 %551, 10
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  store i32 2, i32* %556, align 4
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -2156
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 10
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %558 to i32*
  store i32 0, i32* %561, align 4
  %R8D.i1560 = bitcast %union.anon* %193 to i32*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1509 = bitcast %union.anon* %562 to i32*
  %563 = getelementptr inbounds %union.anon, %union.anon* %562, i64 0, i32 0
  %564 = bitcast %union.anon* %191 to i32*
  %EDI.i = bitcast %union.anon* %39 to i32*
  %ECX.i487 = bitcast %union.anon* %192 to i32*
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_449145

block_.L_449145:                                  ; preds = %block_.L_449d7f, %block_.L_44912a
  %565 = phi i64 [ %.pre154, %block_.L_44912a ], [ %6255, %block_.L_449d7f ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_448faa, %block_.L_44912a ], [ %MEMORY.31, %block_.L_449d7f ]
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -2156
  %568 = add i64 %565, 7
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = add i32 %570, -4
  %572 = icmp ult i32 %570, 4
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = and i32 %571, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i32 %571, %570
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %26, align 1
  %583 = icmp eq i32 %571, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %29, align 1
  %585 = lshr i32 %571, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %32, align 1
  %587 = lshr i32 %570, 31
  %588 = xor i32 %585, %587
  %589 = add nuw nsw i32 %588, %587
  %590 = icmp eq i32 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %38, align 1
  %592 = icmp ne i8 %586, 0
  %593 = xor i1 %592, %590
  %.v204 = select i1 %593, i64 13, i64 3150
  %594 = add i64 %565, %.v204
  store i64 %594, i64* %3, align 8
  br i1 %593, label %block_449152, label %block_.L_449d93

block_449152:                                     ; preds = %block_.L_449145
  %595 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %595, i64* %RAX.i1400, align 8
  %596 = add i64 %595, 2396
  %597 = add i64 %594, 15
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  store i8 0, i8* %14, align 1
  %600 = and i32 %599, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %605 = icmp eq i32 %599, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %29, align 1
  %607 = lshr i32 %599, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v205 = select i1 %605, i64 39, i64 21
  %609 = add i64 %594, %.v205
  store i64 %609, i64* %3, align 8
  br i1 %605, label %block_.L_449179, label %block_449167

block_449167:                                     ; preds = %block_449152
  %610 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %610, i64* %RAX.i1400, align 8
  %611 = add i64 %610, 24
  %612 = add i64 %609, 12
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, -2
  %616 = icmp ult i32 %614, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = and i32 %615, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  %623 = xor i32 %615, %614
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %26, align 1
  %627 = icmp eq i32 %615, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %29, align 1
  %629 = lshr i32 %615, 31
  %630 = trunc i32 %629 to i8
  store i8 %630, i8* %32, align 1
  %631 = lshr i32 %614, 31
  %632 = xor i32 %629, %631
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %38, align 1
  %.v206 = select i1 %627, i64 114, i64 18
  %636 = add i64 %609, %.v206
  store i64 %636, i64* %3, align 8
  br i1 %627, label %block_.L_4491d9, label %block_.L_449179

block_.L_449179:                                  ; preds = %block_449167, %block_449152
  %637 = phi i64 [ %636, %block_449167 ], [ %609, %block_449152 ]
  store i64 %595, i64* %RAX.i1400, align 8
  %638 = add i64 %595, 2412
  %639 = add i64 %637, 15
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  store i8 0, i8* %14, align 1
  %642 = and i32 %641, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %647 = icmp eq i32 %641, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %29, align 1
  %649 = lshr i32 %641, 31
  %650 = trunc i32 %649 to i8
  store i8 %650, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v207 = select i1 %647, i64 52, i64 21
  %651 = add i64 %637, %.v207
  store i64 %651, i64* %3, align 8
  br i1 %647, label %block_.L_4491ad, label %block_44918e

block_44918e:                                     ; preds = %block_.L_449179
  %652 = add i64 %651, 7
  store i64 %652, i64* %3, align 8
  %653 = load i32, i32* %569, align 4
  store i8 0, i8* %14, align 1
  %654 = and i32 %653, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %659 = icmp eq i32 %653, 0
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %29, align 1
  %661 = lshr i32 %653, 31
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v208 = select i1 %659, i64 26, i64 13
  %663 = add i64 %651, %.v208
  store i64 %663, i64* %3, align 8
  br i1 %659, label %block_.L_4491a8, label %block_44919b

block_44919b:                                     ; preds = %block_44918e
  %664 = add i64 %663, 7
  store i64 %664, i64* %3, align 8
  %665 = load i32, i32* %569, align 4
  %666 = add i32 %665, -1
  %667 = icmp eq i32 %665, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %14, align 1
  %669 = and i32 %666, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  %674 = xor i32 %666, %665
  %675 = lshr i32 %674, 4
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %26, align 1
  %678 = icmp eq i32 %666, 0
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %29, align 1
  %680 = lshr i32 %666, 31
  %681 = trunc i32 %680 to i8
  store i8 %681, i8* %32, align 1
  %682 = lshr i32 %665, 31
  %683 = xor i32 %680, %682
  %684 = add nuw nsw i32 %683, %682
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %38, align 1
  %.v209 = select i1 %678, i64 13, i64 18
  %687 = add i64 %663, %.v209
  store i64 %687, i64* %3, align 8
  br i1 %678, label %block_.L_4491a8, label %block_.L_4491ad

block_.L_4491a8:                                  ; preds = %block_44919b, %block_44918e
  %688 = phi i64 [ %687, %block_44919b ], [ %663, %block_44918e ]
  %689 = add i64 %688, 3031
  br label %block_.L_449d7f

block_.L_4491ad:                                  ; preds = %block_44919b, %block_.L_449179
  %690 = phi i64 [ %687, %block_44919b ], [ %651, %block_.L_449179 ]
  store i64 %595, i64* %RAX.i1400, align 8
  %691 = add i64 %595, 2416
  %692 = add i64 %690, 15
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  store i8 0, i8* %14, align 1
  %695 = and i32 %694, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %700 = icmp eq i32 %694, 0
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %29, align 1
  %702 = lshr i32 %694, 31
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v210 = select i1 %700, i64 39, i64 21
  %704 = add i64 %690, %.v210
  store i64 %704, i64* %3, align 8
  br i1 %700, label %block_.L_4491d4, label %block_4491c2

block_4491c2:                                     ; preds = %block_.L_4491ad
  %705 = add i64 %704, 7
  store i64 %705, i64* %3, align 8
  %706 = load i32, i32* %569, align 4
  %707 = add i32 %706, -3
  %708 = icmp ult i32 %706, 3
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %14, align 1
  %710 = and i32 %707, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %21, align 1
  %715 = xor i32 %707, %706
  %716 = lshr i32 %715, 4
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %26, align 1
  %719 = icmp eq i32 %707, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %29, align 1
  %721 = lshr i32 %707, 31
  %722 = trunc i32 %721 to i8
  store i8 %722, i8* %32, align 1
  %723 = lshr i32 %706, 31
  %724 = xor i32 %721, %723
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %38, align 1
  %.v211 = select i1 %719, i64 13, i64 18
  %728 = add i64 %704, %.v211
  store i64 %728, i64* %3, align 8
  br i1 %719, label %block_4491cf, label %block_.L_4491d4

block_4491cf:                                     ; preds = %block_4491c2
  %729 = add i64 %728, 2992
  br label %block_.L_449d7f

block_.L_4491d4:                                  ; preds = %block_4491c2, %block_.L_4491ad
  %730 = phi i64 [ %728, %block_4491c2 ], [ %704, %block_.L_4491ad ]
  %731 = add i64 %730, 5
  store i64 %731, i64* %3, align 8
  br label %block_.L_4491d9

block_.L_4491d9:                                  ; preds = %block_.L_4491d4, %block_449167
  %732 = phi i64 [ %731, %block_.L_4491d4 ], [ %636, %block_449167 ]
  %733 = add i64 %732, 7
  store i64 %733, i64* %3, align 8
  %734 = load i32, i32* %569, align 4
  store i8 0, i8* %14, align 1
  %735 = and i32 %734, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %740 = icmp eq i32 %734, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %29, align 1
  %742 = lshr i32 %734, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v212 = select i1 %740, i64 13, i64 26
  %744 = add i64 %732, %.v212
  store i64 %744, i64* %3, align 8
  br i1 %740, label %block_4491e6, label %block_.L_4491f3

block_4491e6:                                     ; preds = %block_.L_4491d9
  %745 = add i64 %566, -2612
  %746 = add i64 %744, 7
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  store i8 0, i8* %14, align 1
  %749 = and i32 %748, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %754 = icmp eq i32 %748, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %29, align 1
  %756 = lshr i32 %748, 31
  %757 = trunc i32 %756 to i8
  store i8 %757, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v228 = select i1 %754, i64 91, i64 13
  %758 = add i64 %744, %.v228
  store i64 %758, i64* %3, align 8
  br i1 %754, label %block_.L_449241, label %block_.L_4491f3

block_.L_4491f3:                                  ; preds = %block_.L_4491d9, %block_4491e6
  %759 = phi i64 [ %758, %block_4491e6 ], [ %744, %block_.L_4491d9 ]
  %760 = add i64 %759, 7
  store i64 %760, i64* %3, align 8
  %761 = load i32, i32* %569, align 4
  %762 = add i32 %761, -1
  %763 = icmp eq i32 %761, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %14, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i32 %762, %761
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %26, align 1
  %774 = icmp eq i32 %762, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %29, align 1
  %776 = lshr i32 %762, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %32, align 1
  %778 = lshr i32 %761, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %38, align 1
  %.v213 = select i1 %774, i64 13, i64 26
  %783 = add i64 %759, %.v213
  store i64 %783, i64* %3, align 8
  br i1 %774, label %block_449200, label %block_.L_44920d

block_449200:                                     ; preds = %block_.L_4491f3
  %784 = add i64 %566, -2616
  %785 = add i64 %783, 7
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  %787 = load i32, i32* %786, align 4
  store i8 0, i8* %14, align 1
  %788 = and i32 %787, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788)
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %793 = icmp eq i32 %787, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %29, align 1
  %795 = lshr i32 %787, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v227 = select i1 %793, i64 65, i64 13
  %797 = add i64 %783, %.v227
  store i64 %797, i64* %3, align 8
  br i1 %793, label %block_.L_449241, label %block_.L_44920d

block_.L_44920d:                                  ; preds = %block_.L_4491f3, %block_449200
  %798 = phi i64 [ %797, %block_449200 ], [ %783, %block_.L_4491f3 ]
  %799 = add i64 %798, 7
  store i64 %799, i64* %3, align 8
  %800 = load i32, i32* %569, align 4
  %801 = add i32 %800, -3
  %802 = icmp ult i32 %800, 3
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %14, align 1
  %804 = and i32 %801, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  %809 = xor i32 %801, %800
  %810 = lshr i32 %809, 4
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  store i8 %812, i8* %26, align 1
  %813 = icmp eq i32 %801, 0
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %29, align 1
  %815 = lshr i32 %801, 31
  %816 = trunc i32 %815 to i8
  store i8 %816, i8* %32, align 1
  %817 = lshr i32 %800, 31
  %818 = xor i32 %815, %817
  %819 = add nuw nsw i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %38, align 1
  %.v214 = select i1 %813, i64 13, i64 57
  %822 = add i64 %798, %.v214
  store i64 %822, i64* %3, align 8
  br i1 %813, label %block_44921a, label %block_.L_449246

block_44921a:                                     ; preds = %block_.L_44920d
  %823 = add i64 %566, -2616
  %824 = add i64 %822, 7
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  store i8 0, i8* %14, align 1
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %832 = icmp eq i32 %826, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %826, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v224 = select i1 %832, i64 39, i64 13
  %836 = add i64 %822, %.v224
  store i64 %836, i64* %3, align 8
  br i1 %832, label %block_.L_449241, label %block_449227

block_449227:                                     ; preds = %block_44921a
  %837 = add i64 %566, -2612
  %838 = add i64 %836, 7
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  store i8 0, i8* %14, align 1
  %841 = and i32 %840, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %846 = icmp eq i32 %840, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %29, align 1
  %848 = lshr i32 %840, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v225 = select i1 %846, i64 26, i64 13
  %850 = add i64 %836, %.v225
  store i64 %850, i64* %3, align 8
  br i1 %846, label %block_.L_449241, label %block_449234

block_449234:                                     ; preds = %block_449227
  %851 = add i64 %566, -2620
  %852 = add i64 %850, 7
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  store i8 0, i8* %14, align 1
  %855 = and i32 %854, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %860 = icmp eq i32 %854, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  %862 = lshr i32 %854, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v226 = select i1 %860, i64 13, i64 18
  %864 = add i64 %850, %.v226
  store i64 %864, i64* %3, align 8
  br i1 %860, label %block_.L_449241, label %block_.L_449246

block_.L_449241:                                  ; preds = %block_449234, %block_449227, %block_44921a, %block_449200, %block_4491e6
  %865 = phi i64 [ %864, %block_449234 ], [ %850, %block_449227 ], [ %836, %block_44921a ], [ %797, %block_449200 ], [ %758, %block_4491e6 ]
  %866 = add i64 %865, 2873
  br label %block_.L_449d7a

block_.L_449246:                                  ; preds = %block_449234, %block_.L_44920d
  %867 = phi i64 [ %864, %block_449234 ], [ %822, %block_.L_44920d ]
  %868 = add i64 %566, -2152
  %869 = add i64 %867, 10
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  store i32 0, i32* %870, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_449250

block_.L_449250:                                  ; preds = %block_.L_4493af, %block_.L_449246
  %871 = phi i64 [ %.pre158, %block_.L_449246 ], [ %1516, %block_.L_4493af ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.6, %block_.L_449246 ], [ %MEMORY.17, %block_.L_4493af ]
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -2152
  %874 = add i64 %871, 7
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = add i32 %876, -16
  %878 = icmp ult i32 %876, 16
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %877, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %876, 16
  %886 = xor i32 %885, %877
  %887 = lshr i32 %886, 4
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  store i8 %889, i8* %26, align 1
  %890 = icmp eq i32 %877, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %29, align 1
  %892 = lshr i32 %877, 31
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %32, align 1
  %894 = lshr i32 %876, 31
  %895 = xor i32 %892, %894
  %896 = add nuw nsw i32 %895, %894
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %38, align 1
  %899 = icmp ne i8 %893, 0
  %900 = xor i1 %899, %897
  %.v215 = select i1 %900, i64 13, i64 376
  %901 = add i64 %871, %.v215
  store i64 %901, i64* %3, align 8
  br i1 %900, label %block_44925d, label %block_.L_4493c8

block_44925d:                                     ; preds = %block_.L_449250
  %902 = add i64 %872, -2148
  %903 = add i64 %901, 10
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  store i32 0, i32* %904, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_449267

block_.L_449267:                                  ; preds = %routine_idivl__r9d.exit, %block_44925d
  %905 = phi i64 [ %.pre175, %block_44925d ], [ %1486, %routine_idivl__r9d.exit ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_44925d ], [ %1448, %routine_idivl__r9d.exit ]
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -2148
  %908 = add i64 %905, 7
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = add i32 %910, -16
  %912 = icmp ult i32 %910, 16
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %14, align 1
  %914 = and i32 %911, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %21, align 1
  %919 = xor i32 %910, 16
  %920 = xor i32 %919, %911
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %26, align 1
  %924 = icmp eq i32 %911, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %29, align 1
  %926 = lshr i32 %911, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %32, align 1
  %928 = lshr i32 %910, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %38, align 1
  %933 = icmp ne i8 %927, 0
  %934 = xor i1 %933, %931
  %.v223 = select i1 %934, i64 13, i64 328
  %935 = add i64 %905, %.v223
  %936 = add i64 %935, 5
  store i64 %936, i64* %3, align 8
  br i1 %934, label %block_449274, label %block_.L_4493af

block_449274:                                     ; preds = %block_.L_449267
  store i64 4, i64* %RAX.i1400, align 8
  %937 = add i64 %906, -2064
  store i64 %937, i64* %RCX.i1818, align 8
  %938 = add i64 %906, -1040
  store i64 %938, i64* %RDX.i1820, align 8
  %939 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %939, i64* %RSI.i1859, align 8
  %940 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %940, i64* %RDI.i490, align 8
  %941 = add i64 %940, 172
  %942 = add i64 %935, 42
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %R8.i1816, align 8
  %946 = add i64 %906, -2152
  %947 = add i64 %935, 49
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = add i32 %949, %944
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %R8.i1816, align 8
  %952 = icmp ult i32 %950, %944
  %953 = icmp ult i32 %950, %949
  %954 = or i1 %952, %953
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %14, align 1
  %956 = and i32 %950, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %21, align 1
  %961 = xor i32 %949, %944
  %962 = xor i32 %961, %950
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %26, align 1
  %966 = icmp eq i32 %950, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %29, align 1
  %968 = lshr i32 %950, 31
  %969 = trunc i32 %968 to i8
  store i8 %969, i8* %32, align 1
  %970 = lshr i32 %944, 31
  %971 = lshr i32 %949, 31
  %972 = xor i32 %968, %970
  %973 = xor i32 %968, %971
  %974 = add nuw nsw i32 %972, %973
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %38, align 1
  %977 = sext i32 %950 to i64
  store i64 %977, i64* %RDI.i490, align 8
  %978 = shl nsw i64 %977, 3
  %979 = add i64 %939, %978
  %980 = add i64 %935, 56
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RSI.i1859, align 8
  store i64 %940, i64* %RDI.i490, align 8
  %983 = add i64 %940, 168
  %984 = add i64 %935, 71
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %R8.i1816, align 8
  %988 = add i64 %935, 78
  store i64 %988, i64* %3, align 8
  %989 = load i32, i32* %909, align 4
  %990 = add i32 %989, %986
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %R8.i1816, align 8
  %992 = icmp ult i32 %990, %986
  %993 = icmp ult i32 %990, %989
  %994 = or i1 %992, %993
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %14, align 1
  %996 = and i32 %990, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %21, align 1
  %1001 = xor i32 %989, %986
  %1002 = xor i32 %1001, %990
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %26, align 1
  %1006 = icmp eq i32 %990, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %29, align 1
  %1008 = lshr i32 %990, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %32, align 1
  %1010 = lshr i32 %986, 31
  %1011 = lshr i32 %989, 31
  %1012 = xor i32 %1008, %1010
  %1013 = xor i32 %1008, %1011
  %1014 = add nuw nsw i32 %1012, %1013
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %38, align 1
  %1017 = sext i32 %990 to i64
  store i64 %1017, i64* %RDI.i490, align 8
  %1018 = shl nsw i64 %1017, 1
  %1019 = add i64 %982, %1018
  %1020 = add i64 %935, 86
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i16*
  %1022 = load i16, i16* %1021, align 2
  %1023 = zext i16 %1022 to i64
  store i64 %1023, i64* %R8.i1816, align 8
  %1024 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1025 = add i64 %1024, 4792
  store i64 %1025, i64* %RSI.i1859, align 8
  %1026 = icmp ugt i64 %1024, -4793
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %14, align 1
  %1028 = trunc i64 %1025 to i32
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i64 %1024, 16
  %1035 = xor i64 %1034, %1025
  %1036 = lshr i64 %1035, 4
  %1037 = trunc i64 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %26, align 1
  %1039 = icmp eq i64 %1025, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %29, align 1
  %1041 = lshr i64 %1025, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %32, align 1
  %1043 = lshr i64 %1024, 63
  %1044 = xor i64 %1041, %1043
  %1045 = add nuw nsw i64 %1044, %1041
  %1046 = icmp eq i64 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %38, align 1
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -2156
  %1050 = add i64 %935, 108
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = shl nsw i64 %1053, 9
  store i64 %1054, i64* %RDI.i490, align 8
  %1055 = add i64 %1054, %1025
  store i64 %1055, i64* %RSI.i1859, align 8
  %1056 = icmp ult i64 %1055, %1025
  %1057 = icmp ult i64 %1055, %1054
  %1058 = or i1 %1056, %1057
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %14, align 1
  %1060 = trunc i64 %1055 to i32
  %1061 = and i32 %1060, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %21, align 1
  %1066 = xor i64 %1025, %1055
  %1067 = lshr i64 %1066, 4
  %1068 = trunc i64 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %26, align 1
  %1070 = icmp eq i64 %1055, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %29, align 1
  %1072 = lshr i64 %1055, 63
  %1073 = trunc i64 %1072 to i8
  store i8 %1073, i8* %32, align 1
  %1074 = lshr i64 %1053, 54
  %1075 = and i64 %1074, 1
  %1076 = xor i64 %1072, %1041
  %1077 = xor i64 %1072, %1075
  %1078 = add nuw nsw i64 %1076, %1077
  %1079 = icmp eq i64 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %38, align 1
  %1081 = add i64 %1048, -2152
  %1082 = add i64 %935, 122
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = shl nsw i64 %1085, 5
  store i64 %1086, i64* %RDI.i490, align 8
  %1087 = add i64 %1086, %1055
  store i64 %1087, i64* %RSI.i1859, align 8
  %1088 = icmp ult i64 %1087, %1055
  %1089 = icmp ult i64 %1087, %1086
  %1090 = or i1 %1088, %1089
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %14, align 1
  %1092 = trunc i64 %1087 to i32
  %1093 = and i32 %1092, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  %1098 = xor i64 %1055, %1087
  %1099 = lshr i64 %1098, 4
  %1100 = trunc i64 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %26, align 1
  %1102 = icmp eq i64 %1087, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %29, align 1
  %1104 = lshr i64 %1087, 63
  %1105 = trunc i64 %1104 to i8
  store i8 %1105, i8* %32, align 1
  %1106 = lshr i64 %1085, 58
  %1107 = and i64 %1106, 1
  %1108 = xor i64 %1104, %1072
  %1109 = xor i64 %1104, %1107
  %1110 = add nuw nsw i64 %1108, %1109
  %1111 = icmp eq i64 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %38, align 1
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -2148
  %1115 = add i64 %935, 136
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = sext i32 %1117 to i64
  store i64 %1118, i64* %RDI.i490, align 8
  %1119 = shl nsw i64 %1118, 1
  %1120 = add i64 %1119, %1087
  %1121 = add i64 %935, 141
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i16*
  %1123 = load i16, i16* %1122, align 2
  %1124 = zext i16 %1123 to i64
  store i64 %1124, i64* %563, align 8
  %1125 = load i32, i32* %R8D.i1560, align 4
  %1126 = zext i16 %1123 to i32
  %1127 = sub i32 %1125, %1126
  %1128 = zext i32 %1127 to i64
  store i64 %1128, i64* %R8.i1816, align 8
  %1129 = icmp ult i32 %1125, %1126
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %14, align 1
  %1131 = and i32 %1127, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  %1136 = xor i32 %1126, %1125
  %1137 = xor i32 %1136, %1127
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %26, align 1
  %1141 = icmp eq i32 %1127, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %29, align 1
  %1143 = lshr i32 %1127, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %32, align 1
  %1145 = lshr i32 %1125, 31
  %1146 = xor i32 %1143, %1145
  %1147 = add nuw nsw i32 %1146, %1145
  %1148 = icmp eq i32 %1147, 2
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %38, align 1
  %1150 = add i64 %935, 151
  store i64 %1150, i64* %3, align 8
  %1151 = load i32, i32* %1116, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = shl nsw i64 %1152, 6
  store i64 %1153, i64* %RSI.i1859, align 8
  %1154 = load i64, i64* %RDX.i1820, align 8
  %1155 = add i64 %1153, %1154
  store i64 %1155, i64* %RDI.i490, align 8
  %1156 = icmp ult i64 %1155, %1154
  %1157 = icmp ult i64 %1155, %1153
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %14, align 1
  %1160 = trunc i64 %1155 to i32
  %1161 = and i32 %1160, 255
  %1162 = tail call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  store i8 %1165, i8* %21, align 1
  %1166 = xor i64 %1154, %1155
  %1167 = lshr i64 %1166, 4
  %1168 = trunc i64 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %26, align 1
  %1170 = icmp eq i64 %1155, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %29, align 1
  %1172 = lshr i64 %1155, 63
  %1173 = trunc i64 %1172 to i8
  store i8 %1173, i8* %32, align 1
  %1174 = lshr i64 %1154, 63
  %1175 = lshr i64 %1152, 57
  %1176 = and i64 %1175, 1
  %1177 = xor i64 %1172, %1174
  %1178 = xor i64 %1172, %1176
  %1179 = add nuw nsw i64 %1177, %1178
  %1180 = icmp eq i64 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %38, align 1
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -2152
  %1184 = add i64 %935, 168
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = sext i32 %1186 to i64
  store i64 %1187, i64* %RSI.i1859, align 8
  %1188 = shl nsw i64 %1187, 2
  %1189 = add i64 %1188, %1155
  %1190 = load i32, i32* %R8D.i1560, align 4
  %1191 = add i64 %935, 172
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1189 to i32*
  store i32 %1190, i32* %1192, align 4
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -2148
  %1195 = load i64, i64* %3, align 8
  %1196 = add i64 %1195, 7
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1194 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = sext i32 %1198 to i64
  %1200 = shl nsw i64 %1199, 6
  store i64 %1200, i64* %RSI.i1859, align 8
  %1201 = load i64, i64* %RDX.i1820, align 8
  %1202 = add i64 %1200, %1201
  store i64 %1202, i64* %RDX.i1820, align 8
  %1203 = icmp ult i64 %1202, %1201
  %1204 = icmp ult i64 %1202, %1200
  %1205 = or i1 %1203, %1204
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %14, align 1
  %1207 = trunc i64 %1202 to i32
  %1208 = and i32 %1207, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %21, align 1
  %1213 = xor i64 %1201, %1202
  %1214 = lshr i64 %1213, 4
  %1215 = trunc i64 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %26, align 1
  %1217 = icmp eq i64 %1202, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %29, align 1
  %1219 = lshr i64 %1202, 63
  %1220 = trunc i64 %1219 to i8
  store i8 %1220, i8* %32, align 1
  %1221 = lshr i64 %1201, 63
  %1222 = lshr i64 %1199, 57
  %1223 = and i64 %1222, 1
  %1224 = xor i64 %1219, %1221
  %1225 = xor i64 %1219, %1223
  %1226 = add nuw nsw i64 %1224, %1225
  %1227 = icmp eq i64 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %38, align 1
  %1229 = add i64 %1193, -2152
  %1230 = add i64 %1195, 21
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sext i32 %1232 to i64
  store i64 %1233, i64* %RSI.i1859, align 8
  %1234 = shl nsw i64 %1233, 2
  %1235 = add i64 %1234, %1202
  %1236 = add i64 %1195, 25
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %R8.i1816, align 8
  %1240 = add i64 %1195, 32
  store i64 %1240, i64* %3, align 8
  %1241 = load i32, i32* %1197, align 4
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %563, align 8
  %1243 = add i64 %1193, -2636
  %1244 = load i32, i32* %EAX.i1420, align 4
  %1245 = add i64 %1195, 38
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1243 to i32*
  store i32 %1244, i32* %1246, align 4
  %1247 = load i32, i32* %R9D.i1509, align 4
  %1248 = zext i32 %1247 to i64
  %1249 = load i64, i64* %3, align 8
  store i64 %1248, i64* %RAX.i1400, align 8
  %1250 = sext i32 %1247 to i64
  %1251 = lshr i64 %1250, 32
  store i64 %1251, i64* %RDX.i1848, align 8
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -2636
  %1254 = add i64 %1249, 11
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %563, align 8
  %1258 = add i64 %1249, 14
  store i64 %1258, i64* %3, align 8
  %1259 = sext i32 %1256 to i64
  %1260 = shl nuw i64 %1251, 32
  %1261 = or i64 %1260, %1248
  %1262 = sdiv i64 %1261, %1259
  %1263 = shl i64 %1262, 32
  %1264 = ashr exact i64 %1263, 32
  %1265 = icmp eq i64 %1262, %1264
  br i1 %1265, label %1268, label %1266

; <label>:1266:                                   ; preds = %block_449274
  %1267 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1258, %struct.Memory* %MEMORY.17)
  %.pre176 = load i32, i32* %564, align 4
  %.pre177 = load i64, i64* %3, align 8
  %.pre178 = load i64, i64* %RBP.i, align 8
  %.pre179 = load i32, i32* %R9D.i1509, align 4
  br label %routine_idivl__r9d.exit1456

; <label>:1268:                                   ; preds = %block_449274
  %1269 = srem i64 %1261, %1259
  %1270 = and i64 %1262, 4294967295
  store i64 %1270, i64* %RAX.i1400, align 8
  %1271 = and i64 %1269, 4294967295
  store i64 %1271, i64* %RDX.i1820, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1272 = trunc i64 %1269 to i32
  br label %routine_idivl__r9d.exit1456

routine_idivl__r9d.exit1456:                      ; preds = %1268, %1266
  %1273 = phi i32 [ %.pre179, %1266 ], [ %1256, %1268 ]
  %1274 = phi i64 [ %.pre178, %1266 ], [ %1252, %1268 ]
  %1275 = phi i64 [ %.pre177, %1266 ], [ %1258, %1268 ]
  %1276 = phi i32 [ %.pre176, %1266 ], [ %1272, %1268 ]
  %1277 = phi %struct.Memory* [ %1267, %1266 ], [ %MEMORY.17, %1268 ]
  %1278 = sext i32 %1276 to i64
  %1279 = shl nsw i64 %1278, 8
  store i64 %1279, i64* %RSI.i1859, align 8
  %1280 = load i64, i64* %RCX.i1818, align 8
  %1281 = add i64 %1279, %1280
  store i64 %1281, i64* %RCX.i1818, align 8
  %1282 = icmp ult i64 %1281, %1280
  %1283 = icmp ult i64 %1281, %1279
  %1284 = or i1 %1282, %1283
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %14, align 1
  %1286 = trunc i64 %1281 to i32
  %1287 = and i32 %1286, 255
  %1288 = tail call i32 @llvm.ctpop.i32(i32 %1287)
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %21, align 1
  %1292 = xor i64 %1280, %1281
  %1293 = lshr i64 %1292, 4
  %1294 = trunc i64 %1293 to i8
  %1295 = and i8 %1294, 1
  store i8 %1295, i8* %26, align 1
  %1296 = icmp eq i64 %1281, 0
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %29, align 1
  %1298 = lshr i64 %1281, 63
  %1299 = trunc i64 %1298 to i8
  store i8 %1299, i8* %32, align 1
  %1300 = lshr i64 %1280, 63
  %1301 = lshr i64 %1278, 55
  %1302 = and i64 %1301, 1
  %1303 = xor i64 %1298, %1300
  %1304 = xor i64 %1298, %1302
  %1305 = add nuw nsw i64 %1303, %1304
  %1306 = icmp eq i64 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %38, align 1
  %1308 = add i64 %1274, -2148
  %1309 = add i64 %1275, 16
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i1400, align 8
  %1313 = sext i32 %1311 to i64
  %1314 = lshr i64 %1313, 32
  store i64 %1314, i64* %RDX.i1848, align 8
  %1315 = add i64 %1275, 22
  store i64 %1315, i64* %3, align 8
  %1316 = sext i32 %1273 to i64
  %1317 = shl nuw i64 %1314, 32
  %1318 = or i64 %1317, %1312
  %1319 = sdiv i64 %1318, %1316
  %1320 = shl i64 %1319, 32
  %1321 = ashr exact i64 %1320, 32
  %1322 = icmp eq i64 %1319, %1321
  br i1 %1322, label %1325, label %1323

; <label>:1323:                                   ; preds = %routine_idivl__r9d.exit1456
  %1324 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1315, %struct.Memory* %1277)
  %.pre180 = load i32, i32* %EAX.i1420, align 4
  %.pre181 = load i64, i64* %3, align 8
  %.pre182 = load i64, i64* %RCX.i1818, align 8
  %.pre183 = load i64, i64* %RBP.i, align 8
  %.pre184 = load i32, i32* %R9D.i1509, align 4
  br label %routine_idivl__r9d.exit1436

; <label>:1325:                                   ; preds = %routine_idivl__r9d.exit1456
  %1326 = srem i64 %1318, %1316
  %1327 = and i64 %1319, 4294967295
  store i64 %1327, i64* %RAX.i1400, align 8
  %1328 = and i64 %1326, 4294967295
  store i64 %1328, i64* %RDX.i1820, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1329 = trunc i64 %1319 to i32
  br label %routine_idivl__r9d.exit1436

routine_idivl__r9d.exit1436:                      ; preds = %1325, %1323
  %1330 = phi i32 [ %.pre184, %1323 ], [ %1273, %1325 ]
  %1331 = phi i64 [ %.pre183, %1323 ], [ %1274, %1325 ]
  %1332 = phi i64 [ %.pre182, %1323 ], [ %1281, %1325 ]
  %1333 = phi i64 [ %.pre181, %1323 ], [ %1315, %1325 ]
  %1334 = phi i32 [ %.pre180, %1323 ], [ %1329, %1325 ]
  %1335 = phi %struct.Memory* [ %1324, %1323 ], [ %1277, %1325 ]
  %1336 = sext i32 %1334 to i64
  %1337 = shl nsw i64 %1336, 6
  store i64 %1337, i64* %RSI.i1859, align 8
  %1338 = add i64 %1337, %1332
  store i64 %1338, i64* %RCX.i1818, align 8
  %1339 = icmp ult i64 %1338, %1332
  %1340 = icmp ult i64 %1338, %1337
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = trunc i64 %1338 to i32
  %1344 = and i32 %1343, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %21, align 1
  %1349 = xor i64 %1332, %1338
  %1350 = lshr i64 %1349, 4
  %1351 = trunc i64 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %26, align 1
  %1353 = icmp eq i64 %1338, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %29, align 1
  %1355 = lshr i64 %1338, 63
  %1356 = trunc i64 %1355 to i8
  store i8 %1356, i8* %32, align 1
  %1357 = lshr i64 %1332, 63
  %1358 = lshr i64 %1336, 57
  %1359 = and i64 %1358, 1
  %1360 = xor i64 %1355, %1357
  %1361 = xor i64 %1355, %1359
  %1362 = add nuw nsw i64 %1360, %1361
  %1363 = icmp eq i64 %1362, 2
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %38, align 1
  %1365 = add i64 %1331, -2152
  %1366 = add i64 %1333, 16
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %RAX.i1400, align 8
  %1370 = sext i32 %1368 to i64
  %1371 = lshr i64 %1370, 32
  store i64 %1371, i64* %RDX.i1848, align 8
  %1372 = add i64 %1333, 20
  store i64 %1372, i64* %3, align 8
  %1373 = sext i32 %1330 to i64
  %1374 = shl nuw i64 %1371, 32
  %1375 = or i64 %1374, %1369
  %1376 = sdiv i64 %1375, %1373
  %1377 = shl i64 %1376, 32
  %1378 = ashr exact i64 %1377, 32
  %1379 = icmp eq i64 %1376, %1378
  br i1 %1379, label %1382, label %1380

; <label>:1380:                                   ; preds = %routine_idivl__r9d.exit1436
  %1381 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1372, %struct.Memory* %1335)
  %.pre185 = load i32, i32* %564, align 4
  %.pre186 = load i64, i64* %3, align 8
  %.pre187 = load i64, i64* %RCX.i1818, align 8
  %.pre188 = load i64, i64* %RBP.i, align 8
  %.pre189 = load i32, i32* %R9D.i1509, align 4
  br label %routine_idivl__r9d.exit1418

; <label>:1382:                                   ; preds = %routine_idivl__r9d.exit1436
  %1383 = srem i64 %1375, %1373
  %1384 = and i64 %1376, 4294967295
  store i64 %1384, i64* %RAX.i1400, align 8
  %1385 = and i64 %1383, 4294967295
  store i64 %1385, i64* %RDX.i1820, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1386 = trunc i64 %1383 to i32
  br label %routine_idivl__r9d.exit1418

routine_idivl__r9d.exit1418:                      ; preds = %1382, %1380
  %1387 = phi i32 [ %.pre189, %1380 ], [ %1330, %1382 ]
  %1388 = phi i64 [ %.pre188, %1380 ], [ %1331, %1382 ]
  %1389 = phi i64 [ %.pre187, %1380 ], [ %1338, %1382 ]
  %1390 = phi i64 [ %.pre186, %1380 ], [ %1372, %1382 ]
  %1391 = phi i32 [ %.pre185, %1380 ], [ %1386, %1382 ]
  %1392 = phi %struct.Memory* [ %1381, %1380 ], [ %1335, %1382 ]
  %1393 = sext i32 %1391 to i64
  %1394 = shl nsw i64 %1393, 4
  store i64 %1394, i64* %RSI.i1859, align 8
  %1395 = add i64 %1394, %1389
  store i64 %1395, i64* %RCX.i1818, align 8
  %1396 = icmp ult i64 %1395, %1389
  %1397 = icmp ult i64 %1395, %1394
  %1398 = or i1 %1396, %1397
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %14, align 1
  %1400 = trunc i64 %1395 to i32
  %1401 = and i32 %1400, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  %1406 = xor i64 %1394, %1389
  %1407 = xor i64 %1406, %1395
  %1408 = lshr i64 %1407, 4
  %1409 = trunc i64 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %26, align 1
  %1411 = icmp eq i64 %1395, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %29, align 1
  %1413 = lshr i64 %1395, 63
  %1414 = trunc i64 %1413 to i8
  store i8 %1414, i8* %32, align 1
  %1415 = lshr i64 %1389, 63
  %1416 = lshr i64 %1393, 59
  %1417 = and i64 %1416, 1
  %1418 = xor i64 %1413, %1415
  %1419 = xor i64 %1413, %1417
  %1420 = add nuw nsw i64 %1418, %1419
  %1421 = icmp eq i64 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %38, align 1
  %1423 = add i64 %1388, -2152
  %1424 = add i64 %1390, 16
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RAX.i1400, align 8
  %1428 = sext i32 %1426 to i64
  %1429 = lshr i64 %1428, 32
  store i64 %1429, i64* %RDX.i1848, align 8
  %1430 = add i64 %1390, 22
  store i64 %1430, i64* %3, align 8
  %1431 = sext i32 %1387 to i64
  %1432 = shl nuw i64 %1429, 32
  %1433 = or i64 %1432, %1427
  %1434 = sdiv i64 %1433, %1431
  %1435 = shl i64 %1434, 32
  %1436 = ashr exact i64 %1435, 32
  %1437 = icmp eq i64 %1434, %1436
  br i1 %1437, label %1440, label %1438

; <label>:1438:                                   ; preds = %routine_idivl__r9d.exit1418
  %1439 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1430, %struct.Memory* %1392)
  %.pre190 = load i32, i32* %EAX.i1420, align 4
  %.pre191 = load i64, i64* %3, align 8
  %.pre192 = load i64, i64* %RCX.i1818, align 8
  br label %routine_idivl__r9d.exit

; <label>:1440:                                   ; preds = %routine_idivl__r9d.exit1418
  %1441 = srem i64 %1433, %1431
  %1442 = and i64 %1434, 4294967295
  store i64 %1442, i64* %RAX.i1400, align 8
  %1443 = and i64 %1441, 4294967295
  store i64 %1443, i64* %RDX.i1820, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1444 = trunc i64 %1434 to i32
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %1440, %1438
  %1445 = phi i64 [ %.pre192, %1438 ], [ %1395, %1440 ]
  %1446 = phi i64 [ %.pre191, %1438 ], [ %1430, %1440 ]
  %1447 = phi i32 [ %.pre190, %1438 ], [ %1444, %1440 ]
  %1448 = phi %struct.Memory* [ %1439, %1438 ], [ %1392, %1440 ]
  %1449 = sext i32 %1447 to i64
  store i64 %1449, i64* %RSI.i1859, align 8
  %1450 = shl nsw i64 %1449, 2
  %1451 = add i64 %1445, %1450
  %1452 = load i32, i32* %R8D.i1560, align 4
  %1453 = add i64 %1446, 7
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1451 to i32*
  store i32 %1452, i32* %1454, align 4
  %1455 = load i64, i64* %RBP.i, align 8
  %1456 = add i64 %1455, -2148
  %1457 = load i64, i64* %3, align 8
  %1458 = add i64 %1457, 6
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1456 to i32*
  %1460 = load i32, i32* %1459, align 4
  %1461 = add i32 %1460, 1
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RAX.i1400, align 8
  %1463 = icmp eq i32 %1460, -1
  %1464 = icmp eq i32 %1461, 0
  %1465 = or i1 %1463, %1464
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %14, align 1
  %1467 = and i32 %1461, 255
  %1468 = tail call i32 @llvm.ctpop.i32(i32 %1467)
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = xor i8 %1470, 1
  store i8 %1471, i8* %21, align 1
  %1472 = xor i32 %1461, %1460
  %1473 = lshr i32 %1472, 4
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %26, align 1
  %1476 = zext i1 %1464 to i8
  store i8 %1476, i8* %29, align 1
  %1477 = lshr i32 %1461, 31
  %1478 = trunc i32 %1477 to i8
  store i8 %1478, i8* %32, align 1
  %1479 = lshr i32 %1460, 31
  %1480 = xor i32 %1477, %1479
  %1481 = add nuw nsw i32 %1480, %1477
  %1482 = icmp eq i32 %1481, 2
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %38, align 1
  %1484 = add i64 %1457, 15
  store i64 %1484, i64* %3, align 8
  store i32 %1461, i32* %1459, align 4
  %1485 = load i64, i64* %3, align 8
  %1486 = add i64 %1485, -323
  store i64 %1486, i64* %3, align 8
  br label %block_.L_449267

block_.L_4493af:                                  ; preds = %block_.L_449267
  %1487 = add i64 %906, -2152
  %1488 = add i64 %935, 11
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = add i32 %1490, 1
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RAX.i1400, align 8
  %1493 = icmp eq i32 %1490, -1
  %1494 = icmp eq i32 %1491, 0
  %1495 = or i1 %1493, %1494
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %14, align 1
  %1497 = and i32 %1491, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %21, align 1
  %1502 = xor i32 %1491, %1490
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  store i8 %1505, i8* %26, align 1
  %1506 = zext i1 %1494 to i8
  store i8 %1506, i8* %29, align 1
  %1507 = lshr i32 %1491, 31
  %1508 = trunc i32 %1507 to i8
  store i8 %1508, i8* %32, align 1
  %1509 = lshr i32 %1490, 31
  %1510 = xor i32 %1507, %1509
  %1511 = add nuw nsw i32 %1510, %1507
  %1512 = icmp eq i32 %1511, 2
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %38, align 1
  %1514 = add i64 %935, 20
  store i64 %1514, i64* %3, align 8
  store i32 %1491, i32* %1489, align 4
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, -371
  store i64 %1516, i64* %3, align 8
  br label %block_.L_449250

block_.L_4493c8:                                  ; preds = %block_.L_449250
  %1517 = add i64 %872, -12
  %1518 = add i64 %901, 7
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  store i32 0, i32* %1519, align 4
  %1520 = load i64, i64* %RBP.i, align 8
  %1521 = add i64 %1520, -2164
  %1522 = load i64, i64* %3, align 8
  %1523 = add i64 %1522, 10
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1521 to i32*
  store i32 0, i32* %1524, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_4493d9

block_.L_4493d9:                                  ; preds = %block_.L_4499b3, %block_.L_4493c8
  %1525 = phi i64 [ %.pre159, %block_.L_4493c8 ], [ %4512, %block_.L_4499b3 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.16, %block_.L_4493c8 ], [ %MEMORY.19, %block_.L_4499b3 ]
  %1526 = load i64, i64* %RBP.i, align 8
  %1527 = add i64 %1526, -2164
  %1528 = add i64 %1525, 7
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = add i32 %1530, -4
  %1532 = icmp ult i32 %1530, 4
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %14, align 1
  %1534 = and i32 %1531, 255
  %1535 = tail call i32 @llvm.ctpop.i32(i32 %1534)
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  store i8 %1538, i8* %21, align 1
  %1539 = xor i32 %1531, %1530
  %1540 = lshr i32 %1539, 4
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  store i8 %1542, i8* %26, align 1
  %1543 = icmp eq i32 %1531, 0
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %29, align 1
  %1545 = lshr i32 %1531, 31
  %1546 = trunc i32 %1545 to i8
  store i8 %1546, i8* %32, align 1
  %1547 = lshr i32 %1530, 31
  %1548 = xor i32 %1545, %1547
  %1549 = add nuw nsw i32 %1548, %1547
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %38, align 1
  %1552 = icmp ne i8 %1546, 0
  %1553 = xor i1 %1552, %1550
  %.v216 = select i1 %1553, i64 13, i64 1523
  %1554 = add i64 %1525, %.v216
  store i64 %1554, i64* %3, align 8
  br i1 %1553, label %block_4493e6, label %block_.L_4499cc

block_4493e6:                                     ; preds = %block_.L_4493d9
  %1555 = add i64 %1526, -2160
  %1556 = add i64 %1554, 10
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  store i32 0, i32* %1557, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_4493f0

block_.L_4493f0:                                  ; preds = %block_.L_44999a, %block_4493e6
  %1558 = phi i64 [ %.pre169, %block_4493e6 ], [ %4482, %block_.L_44999a ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_4493e6 ], [ %MEMORY.21, %block_.L_44999a ]
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -2160
  %1561 = add i64 %1558, 7
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i32*
  %1563 = load i32, i32* %1562, align 4
  %1564 = add i32 %1563, -4
  %1565 = icmp ult i32 %1563, 4
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %14, align 1
  %1567 = and i32 %1564, 255
  %1568 = tail call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %21, align 1
  %1572 = xor i32 %1564, %1563
  %1573 = lshr i32 %1572, 4
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  store i8 %1575, i8* %26, align 1
  %1576 = icmp eq i32 %1564, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %29, align 1
  %1578 = lshr i32 %1564, 31
  %1579 = trunc i32 %1578 to i8
  store i8 %1579, i8* %32, align 1
  %1580 = lshr i32 %1563, 31
  %1581 = xor i32 %1578, %1580
  %1582 = add nuw nsw i32 %1581, %1580
  %1583 = icmp eq i32 %1582, 2
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %38, align 1
  %1585 = icmp ne i8 %1579, 0
  %1586 = xor i1 %1585, %1583
  %.v196 = select i1 %1586, i64 13, i64 1475
  %1587 = add i64 %1558, %.v196
  store i64 %1587, i64* %3, align 8
  br i1 %1586, label %block_4493fd, label %block_.L_4499b3

block_4493fd:                                     ; preds = %block_.L_4493f0
  %1588 = add i64 %1559, -2152
  %1589 = add i64 %1587, 10
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  store i32 0, i32* %1590, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_449407

block_.L_449407:                                  ; preds = %block_449414, %block_4493fd
  %1591 = phi i64 [ %2940, %block_449414 ], [ %.pre170, %block_4493fd ]
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -2152
  %1594 = add i64 %1591, 7
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i32*
  %1596 = load i32, i32* %1595, align 4
  %1597 = add i32 %1596, -4
  %1598 = icmp ult i32 %1596, 4
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %14, align 1
  %1600 = and i32 %1597, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %21, align 1
  %1605 = xor i32 %1597, %1596
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  store i8 %1608, i8* %26, align 1
  %1609 = icmp eq i32 %1597, 0
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %29, align 1
  %1611 = lshr i32 %1597, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %32, align 1
  %1613 = lshr i32 %1596, 31
  %1614 = xor i32 %1611, %1613
  %1615 = add nuw nsw i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %38, align 1
  %1618 = icmp ne i8 %1612, 0
  %1619 = xor i1 %1618, %1616
  %.v221 = select i1 %1619, i64 13, i64 663
  %1620 = add i64 %1591, %.v221
  store i64 %1620, i64* %3, align 8
  br i1 %1619, label %block_449414, label %block_.L_44969e

block_449414:                                     ; preds = %block_.L_449407
  %1621 = add i64 %1592, -2064
  store i64 %1621, i64* %RAX.i1400, align 8
  %1622 = add i64 %1592, -2160
  %1623 = add i64 %1620, 14
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = shl nsw i64 %1626, 6
  store i64 %1627, i64* %RCX.i1818, align 8
  %1628 = add i64 %1627, %1621
  store i64 %1628, i64* %RDX.i1820, align 8
  %1629 = icmp ult i64 %1628, %1621
  %1630 = icmp ult i64 %1628, %1627
  %1631 = or i1 %1629, %1630
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %14, align 1
  %1633 = trunc i64 %1628 to i32
  %1634 = and i32 %1633, 255
  %1635 = tail call i32 @llvm.ctpop.i32(i32 %1634)
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  %1638 = xor i8 %1637, 1
  store i8 %1638, i8* %21, align 1
  %1639 = xor i64 %1621, %1628
  %1640 = lshr i64 %1639, 4
  %1641 = trunc i64 %1640 to i8
  %1642 = and i8 %1641, 1
  store i8 %1642, i8* %26, align 1
  %1643 = icmp eq i64 %1628, 0
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %29, align 1
  %1645 = lshr i64 %1628, 63
  %1646 = trunc i64 %1645 to i8
  store i8 %1646, i8* %32, align 1
  %1647 = lshr i64 %1621, 63
  %1648 = lshr i64 %1626, 57
  %1649 = and i64 %1648, 1
  %1650 = xor i64 %1645, %1647
  %1651 = xor i64 %1645, %1649
  %1652 = add nuw nsw i64 %1650, %1651
  %1653 = icmp eq i64 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %38, align 1
  %1655 = add i64 %1620, 31
  store i64 %1655, i64* %3, align 8
  %1656 = load i32, i32* %1595, align 4
  %1657 = sext i32 %1656 to i64
  %1658 = shl nsw i64 %1657, 4
  store i64 %1658, i64* %RCX.i1818, align 8
  %1659 = add i64 %1658, %1628
  store i64 %1659, i64* %RDX.i1820, align 8
  %1660 = icmp ult i64 %1659, %1628
  %1661 = icmp ult i64 %1659, %1658
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %14, align 1
  %1664 = trunc i64 %1659 to i32
  %1665 = and i32 %1664, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %21, align 1
  %1670 = xor i64 %1658, %1628
  %1671 = xor i64 %1670, %1659
  %1672 = lshr i64 %1671, 4
  %1673 = trunc i64 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %26, align 1
  %1675 = icmp eq i64 %1659, 0
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %29, align 1
  %1677 = lshr i64 %1659, 63
  %1678 = trunc i64 %1677 to i8
  store i8 %1678, i8* %32, align 1
  %1679 = lshr i64 %1657, 59
  %1680 = and i64 %1679, 1
  %1681 = xor i64 %1677, %1645
  %1682 = xor i64 %1677, %1680
  %1683 = add nuw nsw i64 %1681, %1682
  %1684 = icmp eq i64 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %38, align 1
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -2164
  %1688 = add i64 %1620, 45
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = sext i32 %1690 to i64
  store i64 %1691, i64* %RCX.i1818, align 8
  %1692 = shl nsw i64 %1691, 2
  %1693 = add i64 %1692, %1659
  %1694 = add i64 %1620, 48
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RSI.i1859, align 8
  %1698 = load i64, i64* %RAX.i1400, align 8
  %1699 = add i64 %1698, 768
  store i64 %1699, i64* %RCX.i1818, align 8
  %1700 = icmp ugt i64 %1698, -769
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %14, align 1
  %1702 = trunc i64 %1699 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %21, align 1
  %1708 = xor i64 %1699, %1698
  %1709 = lshr i64 %1708, 4
  %1710 = trunc i64 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %26, align 1
  %1712 = icmp eq i64 %1699, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %29, align 1
  %1714 = lshr i64 %1699, 63
  %1715 = trunc i64 %1714 to i8
  store i8 %1715, i8* %32, align 1
  %1716 = lshr i64 %1698, 63
  %1717 = xor i64 %1714, %1716
  %1718 = add nuw nsw i64 %1717, %1714
  %1719 = icmp eq i64 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %38, align 1
  %1721 = add i64 %1686, -2160
  %1722 = add i64 %1620, 65
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = sext i32 %1724 to i64
  %1726 = shl nsw i64 %1725, 6
  store i64 %1726, i64* %RDX.i1820, align 8
  %1727 = add i64 %1726, %1699
  store i64 %1727, i64* %RCX.i1818, align 8
  %1728 = icmp ult i64 %1727, %1699
  %1729 = icmp ult i64 %1727, %1726
  %1730 = or i1 %1728, %1729
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %14, align 1
  %1732 = trunc i64 %1727 to i32
  %1733 = and i32 %1732, 255
  %1734 = tail call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %21, align 1
  %1738 = xor i64 %1699, %1727
  %1739 = lshr i64 %1738, 4
  %1740 = trunc i64 %1739 to i8
  %1741 = and i8 %1740, 1
  store i8 %1741, i8* %26, align 1
  %1742 = icmp eq i64 %1727, 0
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %29, align 1
  %1744 = lshr i64 %1727, 63
  %1745 = trunc i64 %1744 to i8
  store i8 %1745, i8* %32, align 1
  %1746 = lshr i64 %1725, 57
  %1747 = and i64 %1746, 1
  %1748 = xor i64 %1744, %1714
  %1749 = xor i64 %1744, %1747
  %1750 = add nuw nsw i64 %1748, %1749
  %1751 = icmp eq i64 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %38, align 1
  %1753 = load i64, i64* %RBP.i, align 8
  %1754 = add i64 %1753, -2152
  %1755 = add i64 %1620, 79
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = sext i32 %1757 to i64
  %1759 = shl nsw i64 %1758, 4
  store i64 %1759, i64* %RDX.i1820, align 8
  %1760 = add i64 %1759, %1727
  store i64 %1760, i64* %RCX.i1818, align 8
  %1761 = icmp ult i64 %1760, %1727
  %1762 = icmp ult i64 %1760, %1759
  %1763 = or i1 %1761, %1762
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = trunc i64 %1760 to i32
  %1766 = and i32 %1765, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %21, align 1
  %1771 = xor i64 %1759, %1727
  %1772 = xor i64 %1771, %1760
  %1773 = lshr i64 %1772, 4
  %1774 = trunc i64 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %26, align 1
  %1776 = icmp eq i64 %1760, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %29, align 1
  %1778 = lshr i64 %1760, 63
  %1779 = trunc i64 %1778 to i8
  store i8 %1779, i8* %32, align 1
  %1780 = lshr i64 %1758, 59
  %1781 = and i64 %1780, 1
  %1782 = xor i64 %1778, %1744
  %1783 = xor i64 %1778, %1781
  %1784 = add nuw nsw i64 %1782, %1783
  %1785 = icmp eq i64 %1784, 2
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %38, align 1
  %1787 = add i64 %1753, -2164
  %1788 = add i64 %1620, 93
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RDX.i1820, align 8
  %1792 = load i64, i64* %RSI.i1859, align 8
  %1793 = shl nsw i64 %1791, 2
  %1794 = add i64 %1760, %1793
  %1795 = add i64 %1620, 96
  store i64 %1795, i64* %3, align 8
  %1796 = trunc i64 %1792 to i32
  %1797 = inttoptr i64 %1794 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = add i32 %1798, %1796
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RSI.i1859, align 8
  %1801 = load i64, i64* %RBP.i, align 8
  %1802 = add i64 %1801, -2080
  %1803 = add i64 %1620, 102
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  store i32 %1799, i32* %1804, align 4
  %1805 = load i64, i64* %RAX.i1400, align 8
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1805, 256
  store i64 %1807, i64* %RCX.i1818, align 8
  %1808 = icmp ugt i64 %1805, -257
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %14, align 1
  %1810 = trunc i64 %1807 to i32
  %1811 = and i32 %1810, 255
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %21, align 1
  %1816 = xor i64 %1807, %1805
  %1817 = lshr i64 %1816, 4
  %1818 = trunc i64 %1817 to i8
  %1819 = and i8 %1818, 1
  store i8 %1819, i8* %26, align 1
  %1820 = icmp eq i64 %1807, 0
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %29, align 1
  %1822 = lshr i64 %1807, 63
  %1823 = trunc i64 %1822 to i8
  store i8 %1823, i8* %32, align 1
  %1824 = lshr i64 %1805, 63
  %1825 = xor i64 %1822, %1824
  %1826 = add nuw nsw i64 %1825, %1822
  %1827 = icmp eq i64 %1826, 2
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %38, align 1
  %1829 = load i64, i64* %RBP.i, align 8
  %1830 = add i64 %1829, -2160
  %1831 = add i64 %1806, 17
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = shl nsw i64 %1834, 6
  store i64 %1835, i64* %RDX.i1820, align 8
  %1836 = add i64 %1835, %1807
  store i64 %1836, i64* %RCX.i1818, align 8
  %1837 = icmp ult i64 %1836, %1807
  %1838 = icmp ult i64 %1836, %1835
  %1839 = or i1 %1837, %1838
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %14, align 1
  %1841 = trunc i64 %1836 to i32
  %1842 = and i32 %1841, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %21, align 1
  %1847 = xor i64 %1807, %1836
  %1848 = lshr i64 %1847, 4
  %1849 = trunc i64 %1848 to i8
  %1850 = and i8 %1849, 1
  store i8 %1850, i8* %26, align 1
  %1851 = icmp eq i64 %1836, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i64 %1836, 63
  %1854 = trunc i64 %1853 to i8
  store i8 %1854, i8* %32, align 1
  %1855 = lshr i64 %1834, 57
  %1856 = and i64 %1855, 1
  %1857 = xor i64 %1853, %1822
  %1858 = xor i64 %1853, %1856
  %1859 = add nuw nsw i64 %1857, %1858
  %1860 = icmp eq i64 %1859, 2
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %38, align 1
  %1862 = add i64 %1829, -2152
  %1863 = add i64 %1806, 31
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = sext i32 %1865 to i64
  %1867 = shl nsw i64 %1866, 4
  store i64 %1867, i64* %RDX.i1820, align 8
  %1868 = add i64 %1867, %1836
  store i64 %1868, i64* %RCX.i1818, align 8
  %1869 = icmp ult i64 %1868, %1836
  %1870 = icmp ult i64 %1868, %1867
  %1871 = or i1 %1869, %1870
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %14, align 1
  %1873 = trunc i64 %1868 to i32
  %1874 = and i32 %1873, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %21, align 1
  %1879 = xor i64 %1867, %1836
  %1880 = xor i64 %1879, %1868
  %1881 = lshr i64 %1880, 4
  %1882 = trunc i64 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %26, align 1
  %1884 = icmp eq i64 %1868, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %29, align 1
  %1886 = lshr i64 %1868, 63
  %1887 = trunc i64 %1886 to i8
  store i8 %1887, i8* %32, align 1
  %1888 = lshr i64 %1866, 59
  %1889 = and i64 %1888, 1
  %1890 = xor i64 %1886, %1853
  %1891 = xor i64 %1886, %1889
  %1892 = add nuw nsw i64 %1890, %1891
  %1893 = icmp eq i64 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %38, align 1
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -2164
  %1897 = add i64 %1806, 45
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1896 to i32*
  %1899 = load i32, i32* %1898, align 4
  %1900 = sext i32 %1899 to i64
  store i64 %1900, i64* %RDX.i1820, align 8
  %1901 = shl nsw i64 %1900, 2
  %1902 = add i64 %1901, %1868
  %1903 = add i64 %1806, 48
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = zext i32 %1905 to i64
  store i64 %1906, i64* %RSI.i1859, align 8
  %1907 = load i64, i64* %RAX.i1400, align 8
  %1908 = add i64 %1907, 512
  store i64 %1908, i64* %RCX.i1818, align 8
  %1909 = icmp ugt i64 %1907, -513
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %14, align 1
  %1911 = trunc i64 %1908 to i32
  %1912 = and i32 %1911, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %21, align 1
  %1917 = xor i64 %1908, %1907
  %1918 = lshr i64 %1917, 4
  %1919 = trunc i64 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %26, align 1
  %1921 = icmp eq i64 %1908, 0
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %29, align 1
  %1923 = lshr i64 %1908, 63
  %1924 = trunc i64 %1923 to i8
  store i8 %1924, i8* %32, align 1
  %1925 = lshr i64 %1907, 63
  %1926 = xor i64 %1923, %1925
  %1927 = add nuw nsw i64 %1926, %1923
  %1928 = icmp eq i64 %1927, 2
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %38, align 1
  %1930 = add i64 %1895, -2160
  %1931 = add i64 %1806, 65
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  %1934 = sext i32 %1933 to i64
  %1935 = shl nsw i64 %1934, 6
  store i64 %1935, i64* %RDX.i1820, align 8
  %1936 = add i64 %1935, %1908
  store i64 %1936, i64* %RCX.i1818, align 8
  %1937 = icmp ult i64 %1936, %1908
  %1938 = icmp ult i64 %1936, %1935
  %1939 = or i1 %1937, %1938
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %14, align 1
  %1941 = trunc i64 %1936 to i32
  %1942 = and i32 %1941, 255
  %1943 = tail call i32 @llvm.ctpop.i32(i32 %1942)
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = xor i8 %1945, 1
  store i8 %1946, i8* %21, align 1
  %1947 = xor i64 %1908, %1936
  %1948 = lshr i64 %1947, 4
  %1949 = trunc i64 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %26, align 1
  %1951 = icmp eq i64 %1936, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %29, align 1
  %1953 = lshr i64 %1936, 63
  %1954 = trunc i64 %1953 to i8
  store i8 %1954, i8* %32, align 1
  %1955 = lshr i64 %1934, 57
  %1956 = and i64 %1955, 1
  %1957 = xor i64 %1953, %1923
  %1958 = xor i64 %1953, %1956
  %1959 = add nuw nsw i64 %1957, %1958
  %1960 = icmp eq i64 %1959, 2
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %38, align 1
  %1962 = load i64, i64* %RBP.i, align 8
  %1963 = add i64 %1962, -2152
  %1964 = add i64 %1806, 79
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i32*
  %1966 = load i32, i32* %1965, align 4
  %1967 = sext i32 %1966 to i64
  %1968 = shl nsw i64 %1967, 4
  store i64 %1968, i64* %RDX.i1820, align 8
  %1969 = add i64 %1968, %1936
  store i64 %1969, i64* %RCX.i1818, align 8
  %1970 = icmp ult i64 %1969, %1936
  %1971 = icmp ult i64 %1969, %1968
  %1972 = or i1 %1970, %1971
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %14, align 1
  %1974 = trunc i64 %1969 to i32
  %1975 = and i32 %1974, 255
  %1976 = tail call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  store i8 %1979, i8* %21, align 1
  %1980 = xor i64 %1968, %1936
  %1981 = xor i64 %1980, %1969
  %1982 = lshr i64 %1981, 4
  %1983 = trunc i64 %1982 to i8
  %1984 = and i8 %1983, 1
  store i8 %1984, i8* %26, align 1
  %1985 = icmp eq i64 %1969, 0
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %29, align 1
  %1987 = lshr i64 %1969, 63
  %1988 = trunc i64 %1987 to i8
  store i8 %1988, i8* %32, align 1
  %1989 = lshr i64 %1967, 59
  %1990 = and i64 %1989, 1
  %1991 = xor i64 %1987, %1953
  %1992 = xor i64 %1987, %1990
  %1993 = add nuw nsw i64 %1991, %1992
  %1994 = icmp eq i64 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %38, align 1
  %1996 = add i64 %1962, -2164
  %1997 = add i64 %1806, 93
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = sext i32 %1999 to i64
  store i64 %2000, i64* %RDX.i1820, align 8
  %2001 = load i64, i64* %RSI.i1859, align 8
  %2002 = shl nsw i64 %2000, 2
  %2003 = add i64 %1969, %2002
  %2004 = add i64 %1806, 96
  store i64 %2004, i64* %3, align 8
  %2005 = trunc i64 %2001 to i32
  %2006 = inttoptr i64 %2003 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = add i32 %2007, %2005
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RSI.i1859, align 8
  %2010 = load i64, i64* %RBP.i, align 8
  %2011 = add i64 %2010, -2076
  %2012 = add i64 %1806, 102
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  store i32 %2008, i32* %2013, align 4
  %2014 = load i64, i64* %RAX.i1400, align 8
  %2015 = load i64, i64* %3, align 8
  %2016 = add i64 %2014, 256
  store i64 %2016, i64* %RCX.i1818, align 8
  %2017 = icmp ugt i64 %2014, -257
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %14, align 1
  %2019 = trunc i64 %2016 to i32
  %2020 = and i32 %2019, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %21, align 1
  %2025 = xor i64 %2016, %2014
  %2026 = lshr i64 %2025, 4
  %2027 = trunc i64 %2026 to i8
  %2028 = and i8 %2027, 1
  store i8 %2028, i8* %26, align 1
  %2029 = icmp eq i64 %2016, 0
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %29, align 1
  %2031 = lshr i64 %2016, 63
  %2032 = trunc i64 %2031 to i8
  store i8 %2032, i8* %32, align 1
  %2033 = lshr i64 %2014, 63
  %2034 = xor i64 %2031, %2033
  %2035 = add nuw nsw i64 %2034, %2031
  %2036 = icmp eq i64 %2035, 2
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %38, align 1
  %2038 = load i64, i64* %RBP.i, align 8
  %2039 = add i64 %2038, -2160
  %2040 = add i64 %2015, 17
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = sext i32 %2042 to i64
  %2044 = shl nsw i64 %2043, 6
  store i64 %2044, i64* %RDX.i1820, align 8
  %2045 = add i64 %2044, %2016
  store i64 %2045, i64* %RCX.i1818, align 8
  %2046 = icmp ult i64 %2045, %2016
  %2047 = icmp ult i64 %2045, %2044
  %2048 = or i1 %2046, %2047
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %14, align 1
  %2050 = trunc i64 %2045 to i32
  %2051 = and i32 %2050, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %21, align 1
  %2056 = xor i64 %2016, %2045
  %2057 = lshr i64 %2056, 4
  %2058 = trunc i64 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %26, align 1
  %2060 = icmp eq i64 %2045, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %29, align 1
  %2062 = lshr i64 %2045, 63
  %2063 = trunc i64 %2062 to i8
  store i8 %2063, i8* %32, align 1
  %2064 = lshr i64 %2043, 57
  %2065 = and i64 %2064, 1
  %2066 = xor i64 %2062, %2031
  %2067 = xor i64 %2062, %2065
  %2068 = add nuw nsw i64 %2066, %2067
  %2069 = icmp eq i64 %2068, 2
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %38, align 1
  %2071 = add i64 %2038, -2152
  %2072 = add i64 %2015, 31
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = sext i32 %2074 to i64
  %2076 = shl nsw i64 %2075, 4
  store i64 %2076, i64* %RDX.i1820, align 8
  %2077 = add i64 %2076, %2045
  store i64 %2077, i64* %RCX.i1818, align 8
  %2078 = icmp ult i64 %2077, %2045
  %2079 = icmp ult i64 %2077, %2076
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = trunc i64 %2077 to i32
  %2083 = and i32 %2082, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %21, align 1
  %2088 = xor i64 %2076, %2045
  %2089 = xor i64 %2088, %2077
  %2090 = lshr i64 %2089, 4
  %2091 = trunc i64 %2090 to i8
  %2092 = and i8 %2091, 1
  store i8 %2092, i8* %26, align 1
  %2093 = icmp eq i64 %2077, 0
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %29, align 1
  %2095 = lshr i64 %2077, 63
  %2096 = trunc i64 %2095 to i8
  store i8 %2096, i8* %32, align 1
  %2097 = lshr i64 %2075, 59
  %2098 = and i64 %2097, 1
  %2099 = xor i64 %2095, %2062
  %2100 = xor i64 %2095, %2098
  %2101 = add nuw nsw i64 %2099, %2100
  %2102 = icmp eq i64 %2101, 2
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %38, align 1
  %2104 = load i64, i64* %RBP.i, align 8
  %2105 = add i64 %2104, -2164
  %2106 = add i64 %2015, 45
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = sext i32 %2108 to i64
  store i64 %2109, i64* %RDX.i1820, align 8
  %2110 = shl nsw i64 %2109, 2
  %2111 = add i64 %2110, %2077
  %2112 = add i64 %2015, 48
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RSI.i1859, align 8
  %2116 = load i64, i64* %RAX.i1400, align 8
  %2117 = add i64 %2116, 512
  store i64 %2117, i64* %RCX.i1818, align 8
  %2118 = icmp ugt i64 %2116, -513
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %14, align 1
  %2120 = trunc i64 %2117 to i32
  %2121 = and i32 %2120, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %21, align 1
  %2126 = xor i64 %2117, %2116
  %2127 = lshr i64 %2126, 4
  %2128 = trunc i64 %2127 to i8
  %2129 = and i8 %2128, 1
  store i8 %2129, i8* %26, align 1
  %2130 = icmp eq i64 %2117, 0
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %29, align 1
  %2132 = lshr i64 %2117, 63
  %2133 = trunc i64 %2132 to i8
  store i8 %2133, i8* %32, align 1
  %2134 = lshr i64 %2116, 63
  %2135 = xor i64 %2132, %2134
  %2136 = add nuw nsw i64 %2135, %2132
  %2137 = icmp eq i64 %2136, 2
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %38, align 1
  %2139 = add i64 %2104, -2160
  %2140 = add i64 %2015, 65
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = shl nsw i64 %2143, 6
  store i64 %2144, i64* %RDX.i1820, align 8
  %2145 = add i64 %2144, %2117
  store i64 %2145, i64* %RCX.i1818, align 8
  %2146 = icmp ult i64 %2145, %2117
  %2147 = icmp ult i64 %2145, %2144
  %2148 = or i1 %2146, %2147
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %14, align 1
  %2150 = trunc i64 %2145 to i32
  %2151 = and i32 %2150, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %21, align 1
  %2156 = xor i64 %2117, %2145
  %2157 = lshr i64 %2156, 4
  %2158 = trunc i64 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %26, align 1
  %2160 = icmp eq i64 %2145, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %29, align 1
  %2162 = lshr i64 %2145, 63
  %2163 = trunc i64 %2162 to i8
  store i8 %2163, i8* %32, align 1
  %2164 = lshr i64 %2143, 57
  %2165 = and i64 %2164, 1
  %2166 = xor i64 %2162, %2132
  %2167 = xor i64 %2162, %2165
  %2168 = add nuw nsw i64 %2166, %2167
  %2169 = icmp eq i64 %2168, 2
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %38, align 1
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -2152
  %2173 = add i64 %2015, 79
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = sext i32 %2175 to i64
  %2177 = shl nsw i64 %2176, 4
  store i64 %2177, i64* %RDX.i1820, align 8
  %2178 = add i64 %2177, %2145
  store i64 %2178, i64* %RCX.i1818, align 8
  %2179 = icmp ult i64 %2178, %2145
  %2180 = icmp ult i64 %2178, %2177
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %14, align 1
  %2183 = trunc i64 %2178 to i32
  %2184 = and i32 %2183, 255
  %2185 = tail call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %21, align 1
  %2189 = xor i64 %2177, %2145
  %2190 = xor i64 %2189, %2178
  %2191 = lshr i64 %2190, 4
  %2192 = trunc i64 %2191 to i8
  %2193 = and i8 %2192, 1
  store i8 %2193, i8* %26, align 1
  %2194 = icmp eq i64 %2178, 0
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %29, align 1
  %2196 = lshr i64 %2178, 63
  %2197 = trunc i64 %2196 to i8
  store i8 %2197, i8* %32, align 1
  %2198 = lshr i64 %2176, 59
  %2199 = and i64 %2198, 1
  %2200 = xor i64 %2196, %2162
  %2201 = xor i64 %2196, %2199
  %2202 = add nuw nsw i64 %2200, %2201
  %2203 = icmp eq i64 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %38, align 1
  %2205 = add i64 %2171, -2164
  %2206 = add i64 %2015, 93
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = sext i32 %2208 to i64
  store i64 %2209, i64* %RDX.i1820, align 8
  %2210 = load i64, i64* %RSI.i1859, align 8
  %2211 = shl nsw i64 %2209, 2
  %2212 = add i64 %2178, %2211
  %2213 = add i64 %2015, 96
  store i64 %2213, i64* %3, align 8
  %2214 = trunc i64 %2210 to i32
  %2215 = inttoptr i64 %2212 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = sub i32 %2214, %2216
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RSI.i1859, align 8
  %2219 = icmp ult i32 %2214, %2216
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %14, align 1
  %2221 = and i32 %2217, 255
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  %2226 = xor i32 %2216, %2214
  %2227 = xor i32 %2226, %2217
  %2228 = lshr i32 %2227, 4
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  store i8 %2230, i8* %26, align 1
  %2231 = icmp eq i32 %2217, 0
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %29, align 1
  %2233 = lshr i32 %2217, 31
  %2234 = trunc i32 %2233 to i8
  store i8 %2234, i8* %32, align 1
  %2235 = lshr i32 %2214, 31
  %2236 = lshr i32 %2216, 31
  %2237 = xor i32 %2236, %2235
  %2238 = xor i32 %2233, %2235
  %2239 = add nuw nsw i32 %2238, %2237
  %2240 = icmp eq i32 %2239, 2
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %38, align 1
  %2242 = load i64, i64* %RBP.i, align 8
  %2243 = add i64 %2242, -2072
  %2244 = add i64 %2015, 102
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  store i32 %2217, i32* %2245, align 4
  %2246 = load i64, i64* %RBP.i, align 8
  %2247 = add i64 %2246, -2160
  %2248 = load i64, i64* %3, align 8
  %2249 = add i64 %2248, 7
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = sext i32 %2251 to i64
  %2253 = shl nsw i64 %2252, 6
  store i64 %2253, i64* %RCX.i1818, align 8
  %2254 = load i64, i64* %RAX.i1400, align 8
  %2255 = add i64 %2253, %2254
  store i64 %2255, i64* %RDX.i1820, align 8
  %2256 = icmp ult i64 %2255, %2254
  %2257 = icmp ult i64 %2255, %2253
  %2258 = or i1 %2256, %2257
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %14, align 1
  %2260 = trunc i64 %2255 to i32
  %2261 = and i32 %2260, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %21, align 1
  %2266 = xor i64 %2254, %2255
  %2267 = lshr i64 %2266, 4
  %2268 = trunc i64 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %26, align 1
  %2270 = icmp eq i64 %2255, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %29, align 1
  %2272 = lshr i64 %2255, 63
  %2273 = trunc i64 %2272 to i8
  store i8 %2273, i8* %32, align 1
  %2274 = lshr i64 %2254, 63
  %2275 = lshr i64 %2252, 57
  %2276 = and i64 %2275, 1
  %2277 = xor i64 %2272, %2274
  %2278 = xor i64 %2272, %2276
  %2279 = add nuw nsw i64 %2277, %2278
  %2280 = icmp eq i64 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %38, align 1
  %2282 = add i64 %2246, -2152
  %2283 = add i64 %2248, 24
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = sext i32 %2285 to i64
  %2287 = shl nsw i64 %2286, 4
  store i64 %2287, i64* %RCX.i1818, align 8
  %2288 = add i64 %2287, %2255
  store i64 %2288, i64* %RDX.i1820, align 8
  %2289 = icmp ult i64 %2288, %2255
  %2290 = icmp ult i64 %2288, %2287
  %2291 = or i1 %2289, %2290
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %14, align 1
  %2293 = trunc i64 %2288 to i32
  %2294 = and i32 %2293, 255
  %2295 = tail call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  store i8 %2298, i8* %21, align 1
  %2299 = xor i64 %2287, %2255
  %2300 = xor i64 %2299, %2288
  %2301 = lshr i64 %2300, 4
  %2302 = trunc i64 %2301 to i8
  %2303 = and i8 %2302, 1
  store i8 %2303, i8* %26, align 1
  %2304 = icmp eq i64 %2288, 0
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %29, align 1
  %2306 = lshr i64 %2288, 63
  %2307 = trunc i64 %2306 to i8
  store i8 %2307, i8* %32, align 1
  %2308 = lshr i64 %2286, 59
  %2309 = and i64 %2308, 1
  %2310 = xor i64 %2306, %2272
  %2311 = xor i64 %2306, %2309
  %2312 = add nuw nsw i64 %2310, %2311
  %2313 = icmp eq i64 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %38, align 1
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -2164
  %2317 = add i64 %2248, 38
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = sext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i1818, align 8
  %2321 = shl nsw i64 %2320, 2
  %2322 = add i64 %2321, %2288
  %2323 = add i64 %2248, 41
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RSI.i1859, align 8
  %2327 = load i64, i64* %RAX.i1400, align 8
  %2328 = add i64 %2327, 768
  store i64 %2328, i64* %RCX.i1818, align 8
  %2329 = icmp ugt i64 %2327, -769
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %14, align 1
  %2331 = trunc i64 %2328 to i32
  %2332 = and i32 %2331, 255
  %2333 = tail call i32 @llvm.ctpop.i32(i32 %2332)
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  store i8 %2336, i8* %21, align 1
  %2337 = xor i64 %2328, %2327
  %2338 = lshr i64 %2337, 4
  %2339 = trunc i64 %2338 to i8
  %2340 = and i8 %2339, 1
  store i8 %2340, i8* %26, align 1
  %2341 = icmp eq i64 %2328, 0
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %29, align 1
  %2343 = lshr i64 %2328, 63
  %2344 = trunc i64 %2343 to i8
  store i8 %2344, i8* %32, align 1
  %2345 = lshr i64 %2327, 63
  %2346 = xor i64 %2343, %2345
  %2347 = add nuw nsw i64 %2346, %2343
  %2348 = icmp eq i64 %2347, 2
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %38, align 1
  %2350 = add i64 %2315, -2160
  %2351 = add i64 %2248, 58
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2350 to i32*
  %2353 = load i32, i32* %2352, align 4
  %2354 = sext i32 %2353 to i64
  %2355 = shl nsw i64 %2354, 6
  store i64 %2355, i64* %RDX.i1820, align 8
  %2356 = add i64 %2355, %2328
  store i64 %2356, i64* %RCX.i1818, align 8
  %2357 = icmp ult i64 %2356, %2328
  %2358 = icmp ult i64 %2356, %2355
  %2359 = or i1 %2357, %2358
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %14, align 1
  %2361 = trunc i64 %2356 to i32
  %2362 = and i32 %2361, 255
  %2363 = tail call i32 @llvm.ctpop.i32(i32 %2362)
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  %2366 = xor i8 %2365, 1
  store i8 %2366, i8* %21, align 1
  %2367 = xor i64 %2328, %2356
  %2368 = lshr i64 %2367, 4
  %2369 = trunc i64 %2368 to i8
  %2370 = and i8 %2369, 1
  store i8 %2370, i8* %26, align 1
  %2371 = icmp eq i64 %2356, 0
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %29, align 1
  %2373 = lshr i64 %2356, 63
  %2374 = trunc i64 %2373 to i8
  store i8 %2374, i8* %32, align 1
  %2375 = lshr i64 %2354, 57
  %2376 = and i64 %2375, 1
  %2377 = xor i64 %2373, %2343
  %2378 = xor i64 %2373, %2376
  %2379 = add nuw nsw i64 %2377, %2378
  %2380 = icmp eq i64 %2379, 2
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %38, align 1
  %2382 = load i64, i64* %RBP.i, align 8
  %2383 = add i64 %2382, -2152
  %2384 = add i64 %2248, 72
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  %2387 = sext i32 %2386 to i64
  %2388 = shl nsw i64 %2387, 4
  store i64 %2388, i64* %RDX.i1820, align 8
  %2389 = add i64 %2388, %2356
  store i64 %2389, i64* %RCX.i1818, align 8
  %2390 = icmp ult i64 %2389, %2356
  %2391 = icmp ult i64 %2389, %2388
  %2392 = or i1 %2390, %2391
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %14, align 1
  %2394 = trunc i64 %2389 to i32
  %2395 = and i32 %2394, 255
  %2396 = tail call i32 @llvm.ctpop.i32(i32 %2395)
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = xor i8 %2398, 1
  store i8 %2399, i8* %21, align 1
  %2400 = xor i64 %2388, %2356
  %2401 = xor i64 %2400, %2389
  %2402 = lshr i64 %2401, 4
  %2403 = trunc i64 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %26, align 1
  %2405 = icmp eq i64 %2389, 0
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %29, align 1
  %2407 = lshr i64 %2389, 63
  %2408 = trunc i64 %2407 to i8
  store i8 %2408, i8* %32, align 1
  %2409 = lshr i64 %2387, 59
  %2410 = and i64 %2409, 1
  %2411 = xor i64 %2407, %2373
  %2412 = xor i64 %2407, %2410
  %2413 = add nuw nsw i64 %2411, %2412
  %2414 = icmp eq i64 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %38, align 1
  %2416 = add i64 %2382, -2164
  %2417 = add i64 %2248, 86
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = sext i32 %2419 to i64
  store i64 %2420, i64* %RDX.i1820, align 8
  %2421 = load i64, i64* %RSI.i1859, align 8
  %2422 = shl nsw i64 %2420, 2
  %2423 = add i64 %2389, %2422
  %2424 = add i64 %2248, 89
  store i64 %2424, i64* %3, align 8
  %2425 = trunc i64 %2421 to i32
  %2426 = inttoptr i64 %2423 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = sub i32 %2425, %2427
  %2429 = zext i32 %2428 to i64
  store i64 %2429, i64* %RSI.i1859, align 8
  %2430 = icmp ult i32 %2425, %2427
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %14, align 1
  %2432 = and i32 %2428, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %21, align 1
  %2437 = xor i32 %2427, %2425
  %2438 = xor i32 %2437, %2428
  %2439 = lshr i32 %2438, 4
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  store i8 %2441, i8* %26, align 1
  %2442 = icmp eq i32 %2428, 0
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %29, align 1
  %2444 = lshr i32 %2428, 31
  %2445 = trunc i32 %2444 to i8
  store i8 %2445, i8* %32, align 1
  %2446 = lshr i32 %2425, 31
  %2447 = lshr i32 %2427, 31
  %2448 = xor i32 %2447, %2446
  %2449 = xor i32 %2444, %2446
  %2450 = add nuw nsw i32 %2449, %2448
  %2451 = icmp eq i32 %2450, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %38, align 1
  %2453 = load i64, i64* %RBP.i, align 8
  %2454 = add i64 %2453, -2068
  %2455 = add i64 %2248, 95
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  store i32 %2428, i32* %2456, align 4
  %2457 = load i64, i64* %RBP.i, align 8
  %2458 = add i64 %2457, -2080
  %2459 = load i64, i64* %3, align 8
  %2460 = add i64 %2459, 6
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2458 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = zext i32 %2462 to i64
  store i64 %2463, i64* %RSI.i1859, align 8
  %2464 = add i64 %2457, -2076
  %2465 = add i64 %2459, 12
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = add i32 %2467, %2462
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RSI.i1859, align 8
  %2470 = icmp ult i32 %2468, %2462
  %2471 = icmp ult i32 %2468, %2467
  %2472 = or i1 %2470, %2471
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %14, align 1
  %2474 = and i32 %2468, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %21, align 1
  %2479 = xor i32 %2467, %2462
  %2480 = xor i32 %2479, %2468
  %2481 = lshr i32 %2480, 4
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  store i8 %2483, i8* %26, align 1
  %2484 = icmp eq i32 %2468, 0
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %29, align 1
  %2486 = lshr i32 %2468, 31
  %2487 = trunc i32 %2486 to i8
  store i8 %2487, i8* %32, align 1
  %2488 = lshr i32 %2462, 31
  %2489 = lshr i32 %2467, 31
  %2490 = xor i32 %2486, %2488
  %2491 = xor i32 %2486, %2489
  %2492 = add nuw nsw i32 %2490, %2491
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %38, align 1
  %2495 = add i64 %2457, -2160
  %2496 = add i64 %2459, 19
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  %2498 = load i32, i32* %2497, align 4
  %2499 = sext i32 %2498 to i64
  %2500 = shl nsw i64 %2499, 6
  store i64 %2500, i64* %RCX.i1818, align 8
  %2501 = load i64, i64* %RAX.i1400, align 8
  %2502 = add i64 %2500, %2501
  store i64 %2502, i64* %RDX.i1820, align 8
  %2503 = icmp ult i64 %2502, %2501
  %2504 = icmp ult i64 %2502, %2500
  %2505 = or i1 %2503, %2504
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %14, align 1
  %2507 = trunc i64 %2502 to i32
  %2508 = and i32 %2507, 255
  %2509 = tail call i32 @llvm.ctpop.i32(i32 %2508)
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = xor i8 %2511, 1
  store i8 %2512, i8* %21, align 1
  %2513 = xor i64 %2501, %2502
  %2514 = lshr i64 %2513, 4
  %2515 = trunc i64 %2514 to i8
  %2516 = and i8 %2515, 1
  store i8 %2516, i8* %26, align 1
  %2517 = icmp eq i64 %2502, 0
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %29, align 1
  %2519 = lshr i64 %2502, 63
  %2520 = trunc i64 %2519 to i8
  store i8 %2520, i8* %32, align 1
  %2521 = lshr i64 %2501, 63
  %2522 = lshr i64 %2499, 57
  %2523 = and i64 %2522, 1
  %2524 = xor i64 %2519, %2521
  %2525 = xor i64 %2519, %2523
  %2526 = add nuw nsw i64 %2524, %2525
  %2527 = icmp eq i64 %2526, 2
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %38, align 1
  %2529 = load i64, i64* %RBP.i, align 8
  %2530 = add i64 %2529, -2152
  %2531 = add i64 %2459, 36
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = sext i32 %2533 to i64
  %2535 = shl nsw i64 %2534, 4
  store i64 %2535, i64* %RCX.i1818, align 8
  %2536 = add i64 %2535, %2502
  store i64 %2536, i64* %RDX.i1820, align 8
  %2537 = icmp ult i64 %2536, %2502
  %2538 = icmp ult i64 %2536, %2535
  %2539 = or i1 %2537, %2538
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %14, align 1
  %2541 = trunc i64 %2536 to i32
  %2542 = and i32 %2541, 255
  %2543 = tail call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %21, align 1
  %2547 = xor i64 %2535, %2502
  %2548 = xor i64 %2547, %2536
  %2549 = lshr i64 %2548, 4
  %2550 = trunc i64 %2549 to i8
  %2551 = and i8 %2550, 1
  store i8 %2551, i8* %26, align 1
  %2552 = icmp eq i64 %2536, 0
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %29, align 1
  %2554 = lshr i64 %2536, 63
  %2555 = trunc i64 %2554 to i8
  store i8 %2555, i8* %32, align 1
  %2556 = lshr i64 %2534, 59
  %2557 = and i64 %2556, 1
  %2558 = xor i64 %2554, %2519
  %2559 = xor i64 %2554, %2557
  %2560 = add nuw nsw i64 %2558, %2559
  %2561 = icmp eq i64 %2560, 2
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %38, align 1
  %2563 = add i64 %2529, -2164
  %2564 = add i64 %2459, 50
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = sext i32 %2566 to i64
  store i64 %2567, i64* %RCX.i1818, align 8
  %2568 = shl nsw i64 %2567, 2
  %2569 = add i64 %2568, %2536
  %2570 = load i32, i32* %ESI.i1822, align 4
  %2571 = add i64 %2459, 53
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2569 to i32*
  store i32 %2570, i32* %2572, align 4
  %2573 = load i64, i64* %RBP.i, align 8
  %2574 = add i64 %2573, -2080
  %2575 = load i64, i64* %3, align 8
  %2576 = add i64 %2575, 6
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2574 to i32*
  %2578 = load i32, i32* %2577, align 4
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RSI.i1859, align 8
  %2580 = add i64 %2573, -2076
  %2581 = add i64 %2575, 12
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = sub i32 %2578, %2583
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RSI.i1859, align 8
  %2586 = load i64, i64* %RAX.i1400, align 8
  %2587 = add i64 %2586, 512
  store i64 %2587, i64* %RCX.i1818, align 8
  %2588 = icmp ugt i64 %2586, -513
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %14, align 1
  %2590 = trunc i64 %2587 to i32
  %2591 = and i32 %2590, 255
  %2592 = tail call i32 @llvm.ctpop.i32(i32 %2591)
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  store i8 %2595, i8* %21, align 1
  %2596 = xor i64 %2587, %2586
  %2597 = lshr i64 %2596, 4
  %2598 = trunc i64 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %26, align 1
  %2600 = icmp eq i64 %2587, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %29, align 1
  %2602 = lshr i64 %2587, 63
  %2603 = trunc i64 %2602 to i8
  store i8 %2603, i8* %32, align 1
  %2604 = lshr i64 %2586, 63
  %2605 = xor i64 %2602, %2604
  %2606 = add nuw nsw i64 %2605, %2602
  %2607 = icmp eq i64 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %38, align 1
  %2609 = add i64 %2573, -2160
  %2610 = add i64 %2575, 29
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = sext i32 %2612 to i64
  %2614 = shl nsw i64 %2613, 6
  store i64 %2614, i64* %RDX.i1820, align 8
  %2615 = add i64 %2614, %2587
  store i64 %2615, i64* %RCX.i1818, align 8
  %2616 = icmp ult i64 %2615, %2587
  %2617 = icmp ult i64 %2615, %2614
  %2618 = or i1 %2616, %2617
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %14, align 1
  %2620 = trunc i64 %2615 to i32
  %2621 = and i32 %2620, 255
  %2622 = tail call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  store i8 %2625, i8* %21, align 1
  %2626 = xor i64 %2587, %2615
  %2627 = lshr i64 %2626, 4
  %2628 = trunc i64 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %26, align 1
  %2630 = icmp eq i64 %2615, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %29, align 1
  %2632 = lshr i64 %2615, 63
  %2633 = trunc i64 %2632 to i8
  store i8 %2633, i8* %32, align 1
  %2634 = lshr i64 %2613, 57
  %2635 = and i64 %2634, 1
  %2636 = xor i64 %2632, %2602
  %2637 = xor i64 %2632, %2635
  %2638 = add nuw nsw i64 %2636, %2637
  %2639 = icmp eq i64 %2638, 2
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %38, align 1
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -2152
  %2643 = add i64 %2575, 43
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  %2645 = load i32, i32* %2644, align 4
  %2646 = sext i32 %2645 to i64
  %2647 = shl nsw i64 %2646, 4
  store i64 %2647, i64* %RDX.i1820, align 8
  %2648 = add i64 %2647, %2615
  store i64 %2648, i64* %RCX.i1818, align 8
  %2649 = icmp ult i64 %2648, %2615
  %2650 = icmp ult i64 %2648, %2647
  %2651 = or i1 %2649, %2650
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %14, align 1
  %2653 = trunc i64 %2648 to i32
  %2654 = and i32 %2653, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %21, align 1
  %2659 = xor i64 %2647, %2615
  %2660 = xor i64 %2659, %2648
  %2661 = lshr i64 %2660, 4
  %2662 = trunc i64 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %26, align 1
  %2664 = icmp eq i64 %2648, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %29, align 1
  %2666 = lshr i64 %2648, 63
  %2667 = trunc i64 %2666 to i8
  store i8 %2667, i8* %32, align 1
  %2668 = lshr i64 %2646, 59
  %2669 = and i64 %2668, 1
  %2670 = xor i64 %2666, %2632
  %2671 = xor i64 %2666, %2669
  %2672 = add nuw nsw i64 %2670, %2671
  %2673 = icmp eq i64 %2672, 2
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %38, align 1
  %2675 = add i64 %2641, -2164
  %2676 = add i64 %2575, 57
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i32*
  %2678 = load i32, i32* %2677, align 4
  %2679 = sext i32 %2678 to i64
  store i64 %2679, i64* %RDX.i1820, align 8
  %2680 = shl nsw i64 %2679, 2
  %2681 = add i64 %2680, %2648
  %2682 = load i32, i32* %ESI.i1822, align 4
  %2683 = add i64 %2575, 60
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2681 to i32*
  store i32 %2682, i32* %2684, align 4
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -2072
  %2687 = load i64, i64* %3, align 8
  %2688 = add i64 %2687, 6
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2686 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = zext i32 %2690 to i64
  store i64 %2691, i64* %RSI.i1859, align 8
  %2692 = add i64 %2685, -2068
  %2693 = add i64 %2687, 12
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = add i32 %2695, %2690
  %2697 = zext i32 %2696 to i64
  store i64 %2697, i64* %RSI.i1859, align 8
  %2698 = load i64, i64* %RAX.i1400, align 8
  %2699 = add i64 %2698, 256
  store i64 %2699, i64* %RCX.i1818, align 8
  %2700 = icmp ugt i64 %2698, -257
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %14, align 1
  %2702 = trunc i64 %2699 to i32
  %2703 = and i32 %2702, 255
  %2704 = tail call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  store i8 %2707, i8* %21, align 1
  %2708 = xor i64 %2699, %2698
  %2709 = lshr i64 %2708, 4
  %2710 = trunc i64 %2709 to i8
  %2711 = and i8 %2710, 1
  store i8 %2711, i8* %26, align 1
  %2712 = icmp eq i64 %2699, 0
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %29, align 1
  %2714 = lshr i64 %2699, 63
  %2715 = trunc i64 %2714 to i8
  store i8 %2715, i8* %32, align 1
  %2716 = lshr i64 %2698, 63
  %2717 = xor i64 %2714, %2716
  %2718 = add nuw nsw i64 %2717, %2714
  %2719 = icmp eq i64 %2718, 2
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %38, align 1
  %2721 = add i64 %2685, -2160
  %2722 = add i64 %2687, 29
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = sext i32 %2724 to i64
  %2726 = shl nsw i64 %2725, 6
  store i64 %2726, i64* %RDX.i1820, align 8
  %2727 = add i64 %2726, %2699
  store i64 %2727, i64* %RCX.i1818, align 8
  %2728 = icmp ult i64 %2727, %2699
  %2729 = icmp ult i64 %2727, %2726
  %2730 = or i1 %2728, %2729
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %14, align 1
  %2732 = trunc i64 %2727 to i32
  %2733 = and i32 %2732, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %21, align 1
  %2738 = xor i64 %2699, %2727
  %2739 = lshr i64 %2738, 4
  %2740 = trunc i64 %2739 to i8
  %2741 = and i8 %2740, 1
  store i8 %2741, i8* %26, align 1
  %2742 = icmp eq i64 %2727, 0
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %29, align 1
  %2744 = lshr i64 %2727, 63
  %2745 = trunc i64 %2744 to i8
  store i8 %2745, i8* %32, align 1
  %2746 = lshr i64 %2725, 57
  %2747 = and i64 %2746, 1
  %2748 = xor i64 %2744, %2714
  %2749 = xor i64 %2744, %2747
  %2750 = add nuw nsw i64 %2748, %2749
  %2751 = icmp eq i64 %2750, 2
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %38, align 1
  %2753 = load i64, i64* %RBP.i, align 8
  %2754 = add i64 %2753, -2152
  %2755 = add i64 %2687, 43
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = sext i32 %2757 to i64
  %2759 = shl nsw i64 %2758, 4
  store i64 %2759, i64* %RDX.i1820, align 8
  %2760 = add i64 %2759, %2727
  store i64 %2760, i64* %RCX.i1818, align 8
  %2761 = icmp ult i64 %2760, %2727
  %2762 = icmp ult i64 %2760, %2759
  %2763 = or i1 %2761, %2762
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %14, align 1
  %2765 = trunc i64 %2760 to i32
  %2766 = and i32 %2765, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  %2771 = xor i64 %2759, %2727
  %2772 = xor i64 %2771, %2760
  %2773 = lshr i64 %2772, 4
  %2774 = trunc i64 %2773 to i8
  %2775 = and i8 %2774, 1
  store i8 %2775, i8* %26, align 1
  %2776 = icmp eq i64 %2760, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %29, align 1
  %2778 = lshr i64 %2760, 63
  %2779 = trunc i64 %2778 to i8
  store i8 %2779, i8* %32, align 1
  %2780 = lshr i64 %2758, 59
  %2781 = and i64 %2780, 1
  %2782 = xor i64 %2778, %2744
  %2783 = xor i64 %2778, %2781
  %2784 = add nuw nsw i64 %2782, %2783
  %2785 = icmp eq i64 %2784, 2
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %38, align 1
  %2787 = add i64 %2753, -2164
  %2788 = add i64 %2687, 57
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = sext i32 %2790 to i64
  store i64 %2791, i64* %RDX.i1820, align 8
  %2792 = shl nsw i64 %2791, 2
  %2793 = add i64 %2792, %2760
  %2794 = load i32, i32* %ESI.i1822, align 4
  %2795 = add i64 %2687, 60
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2793 to i32*
  store i32 %2794, i32* %2796, align 4
  %2797 = load i64, i64* %RBP.i, align 8
  %2798 = add i64 %2797, -2068
  %2799 = load i64, i64* %3, align 8
  %2800 = add i64 %2799, 6
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2798 to i32*
  %2802 = load i32, i32* %2801, align 4
  %2803 = zext i32 %2802 to i64
  store i64 %2803, i64* %RSI.i1859, align 8
  %2804 = add i64 %2797, -2072
  %2805 = add i64 %2799, 12
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = sub i32 %2802, %2807
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RSI.i1859, align 8
  %2810 = load i64, i64* %RAX.i1400, align 8
  %2811 = add i64 %2810, 768
  store i64 %2811, i64* %RAX.i1400, align 8
  %2812 = icmp ugt i64 %2810, -769
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %14, align 1
  %2814 = trunc i64 %2811 to i32
  %2815 = and i32 %2814, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %21, align 1
  %2820 = xor i64 %2811, %2810
  %2821 = lshr i64 %2820, 4
  %2822 = trunc i64 %2821 to i8
  %2823 = and i8 %2822, 1
  store i8 %2823, i8* %26, align 1
  %2824 = icmp eq i64 %2811, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %29, align 1
  %2826 = lshr i64 %2811, 63
  %2827 = trunc i64 %2826 to i8
  store i8 %2827, i8* %32, align 1
  %2828 = lshr i64 %2810, 63
  %2829 = xor i64 %2826, %2828
  %2830 = add nuw nsw i64 %2829, %2826
  %2831 = icmp eq i64 %2830, 2
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %38, align 1
  %2833 = add i64 %2797, -2160
  %2834 = add i64 %2799, 25
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = sext i32 %2836 to i64
  %2838 = shl nsw i64 %2837, 6
  store i64 %2838, i64* %RCX.i1818, align 8
  %2839 = add i64 %2838, %2811
  store i64 %2839, i64* %RAX.i1400, align 8
  %2840 = icmp ult i64 %2839, %2811
  %2841 = icmp ult i64 %2839, %2838
  %2842 = or i1 %2840, %2841
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %14, align 1
  %2844 = trunc i64 %2839 to i32
  %2845 = and i32 %2844, 255
  %2846 = tail call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  store i8 %2849, i8* %21, align 1
  %2850 = xor i64 %2811, %2839
  %2851 = lshr i64 %2850, 4
  %2852 = trunc i64 %2851 to i8
  %2853 = and i8 %2852, 1
  store i8 %2853, i8* %26, align 1
  %2854 = icmp eq i64 %2839, 0
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %29, align 1
  %2856 = lshr i64 %2839, 63
  %2857 = trunc i64 %2856 to i8
  store i8 %2857, i8* %32, align 1
  %2858 = lshr i64 %2837, 57
  %2859 = and i64 %2858, 1
  %2860 = xor i64 %2856, %2826
  %2861 = xor i64 %2856, %2859
  %2862 = add nuw nsw i64 %2860, %2861
  %2863 = icmp eq i64 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %38, align 1
  %2865 = load i64, i64* %RBP.i, align 8
  %2866 = add i64 %2865, -2152
  %2867 = add i64 %2799, 39
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = sext i32 %2869 to i64
  %2871 = shl nsw i64 %2870, 4
  store i64 %2871, i64* %RCX.i1818, align 8
  %2872 = add i64 %2871, %2839
  store i64 %2872, i64* %RAX.i1400, align 8
  %2873 = icmp ult i64 %2872, %2839
  %2874 = icmp ult i64 %2872, %2871
  %2875 = or i1 %2873, %2874
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %14, align 1
  %2877 = trunc i64 %2872 to i32
  %2878 = and i32 %2877, 255
  %2879 = tail call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  store i8 %2882, i8* %21, align 1
  %2883 = xor i64 %2871, %2839
  %2884 = xor i64 %2883, %2872
  %2885 = lshr i64 %2884, 4
  %2886 = trunc i64 %2885 to i8
  %2887 = and i8 %2886, 1
  store i8 %2887, i8* %26, align 1
  %2888 = icmp eq i64 %2872, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %29, align 1
  %2890 = lshr i64 %2872, 63
  %2891 = trunc i64 %2890 to i8
  store i8 %2891, i8* %32, align 1
  %2892 = lshr i64 %2870, 59
  %2893 = and i64 %2892, 1
  %2894 = xor i64 %2890, %2856
  %2895 = xor i64 %2890, %2893
  %2896 = add nuw nsw i64 %2894, %2895
  %2897 = icmp eq i64 %2896, 2
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %38, align 1
  %2899 = add i64 %2865, -2164
  %2900 = add i64 %2799, 53
  store i64 %2900, i64* %3, align 8
  %2901 = inttoptr i64 %2899 to i32*
  %2902 = load i32, i32* %2901, align 4
  %2903 = sext i32 %2902 to i64
  store i64 %2903, i64* %RCX.i1818, align 8
  %2904 = shl nsw i64 %2903, 2
  %2905 = add i64 %2904, %2872
  %2906 = load i32, i32* %ESI.i1822, align 4
  %2907 = add i64 %2799, 56
  store i64 %2907, i64* %3, align 8
  %2908 = inttoptr i64 %2905 to i32*
  store i32 %2906, i32* %2908, align 4
  %2909 = load i64, i64* %RBP.i, align 8
  %2910 = add i64 %2909, -2152
  %2911 = load i64, i64* %3, align 8
  %2912 = add i64 %2911, 6
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2910 to i32*
  %2914 = load i32, i32* %2913, align 4
  %2915 = add i32 %2914, 1
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RAX.i1400, align 8
  %2917 = icmp eq i32 %2914, -1
  %2918 = icmp eq i32 %2915, 0
  %2919 = or i1 %2917, %2918
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %14, align 1
  %2921 = and i32 %2915, 255
  %2922 = tail call i32 @llvm.ctpop.i32(i32 %2921)
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = xor i8 %2924, 1
  store i8 %2925, i8* %21, align 1
  %2926 = xor i32 %2915, %2914
  %2927 = lshr i32 %2926, 4
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  store i8 %2929, i8* %26, align 1
  %2930 = zext i1 %2918 to i8
  store i8 %2930, i8* %29, align 1
  %2931 = lshr i32 %2915, 31
  %2932 = trunc i32 %2931 to i8
  store i8 %2932, i8* %32, align 1
  %2933 = lshr i32 %2914, 31
  %2934 = xor i32 %2931, %2933
  %2935 = add nuw nsw i32 %2934, %2931
  %2936 = icmp eq i32 %2935, 2
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %38, align 1
  %2938 = add i64 %2911, 15
  store i64 %2938, i64* %3, align 8
  store i32 %2915, i32* %2913, align 4
  %2939 = load i64, i64* %3, align 8
  %2940 = add i64 %2939, -658
  store i64 %2940, i64* %3, align 8
  br label %block_.L_449407

block_.L_44969e:                                  ; preds = %block_.L_449407
  %2941 = add i64 %1592, -2148
  %2942 = add i64 %1620, 10
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i32*
  store i32 0, i32* %2943, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_4496a8

block_.L_4496a8:                                  ; preds = %block_.L_449981, %block_.L_44969e
  %2944 = phi i64 [ %.pre171, %block_.L_44969e ], [ %4452, %block_.L_449981 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_44969e ], [ %MEMORY.22, %block_.L_449981 ]
  %2945 = load i64, i64* %RBP.i, align 8
  %2946 = add i64 %2945, -2148
  %2947 = add i64 %2944, 7
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2946 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = add i32 %2949, -4
  %2951 = icmp ult i32 %2949, 4
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %14, align 1
  %2953 = and i32 %2950, 255
  %2954 = tail call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  store i8 %2957, i8* %21, align 1
  %2958 = xor i32 %2950, %2949
  %2959 = lshr i32 %2958, 4
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  store i8 %2961, i8* %26, align 1
  %2962 = icmp eq i32 %2950, 0
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %29, align 1
  %2964 = lshr i32 %2950, 31
  %2965 = trunc i32 %2964 to i8
  store i8 %2965, i8* %32, align 1
  %2966 = lshr i32 %2949, 31
  %2967 = xor i32 %2964, %2966
  %2968 = add nuw nsw i32 %2967, %2966
  %2969 = icmp eq i32 %2968, 2
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %38, align 1
  %2971 = icmp ne i8 %2965, 0
  %2972 = xor i1 %2971, %2969
  %.v197 = select i1 %2972, i64 13, i64 754
  %2973 = add i64 %2944, %.v197
  store i64 %2973, i64* %3, align 8
  br i1 %2972, label %block_4496b5, label %block_.L_44999a

block_4496b5:                                     ; preds = %block_.L_4496a8
  %2974 = add i64 %2945, -2064
  store i64 %2974, i64* %RAX.i1400, align 8
  %2975 = add i64 %2973, 14
  store i64 %2975, i64* %3, align 8
  %2976 = load i32, i32* %2948, align 4
  %2977 = sext i32 %2976 to i64
  %2978 = shl nsw i64 %2977, 8
  store i64 %2978, i64* %RCX.i1818, align 8
  %2979 = add i64 %2978, %2974
  store i64 %2979, i64* %RDX.i1820, align 8
  %2980 = icmp ult i64 %2979, %2974
  %2981 = icmp ult i64 %2979, %2978
  %2982 = or i1 %2980, %2981
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %14, align 1
  %2984 = trunc i64 %2979 to i32
  %2985 = and i32 %2984, 255
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %21, align 1
  %2990 = xor i64 %2974, %2979
  %2991 = lshr i64 %2990, 4
  %2992 = trunc i64 %2991 to i8
  %2993 = and i8 %2992, 1
  store i8 %2993, i8* %26, align 1
  %2994 = icmp eq i64 %2979, 0
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %29, align 1
  %2996 = lshr i64 %2979, 63
  %2997 = trunc i64 %2996 to i8
  store i8 %2997, i8* %32, align 1
  %2998 = lshr i64 %2974, 63
  %2999 = lshr i64 %2977, 55
  %3000 = and i64 %2999, 1
  %3001 = xor i64 %2996, %2998
  %3002 = xor i64 %2996, %3000
  %3003 = add nuw nsw i64 %3001, %3002
  %3004 = icmp eq i64 %3003, 2
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %38, align 1
  %3006 = add i64 %2945, -2160
  %3007 = add i64 %2973, 31
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3006 to i32*
  %3009 = load i32, i32* %3008, align 4
  %3010 = sext i32 %3009 to i64
  %3011 = shl nsw i64 %3010, 6
  store i64 %3011, i64* %RCX.i1818, align 8
  %3012 = add i64 %3011, %2979
  store i64 %3012, i64* %RDX.i1820, align 8
  %3013 = icmp ult i64 %3012, %2979
  %3014 = icmp ult i64 %3012, %3011
  %3015 = or i1 %3013, %3014
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %14, align 1
  %3017 = trunc i64 %3012 to i32
  %3018 = and i32 %3017, 255
  %3019 = tail call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  store i8 %3022, i8* %21, align 1
  %3023 = xor i64 %2979, %3012
  %3024 = lshr i64 %3023, 4
  %3025 = trunc i64 %3024 to i8
  %3026 = and i8 %3025, 1
  store i8 %3026, i8* %26, align 1
  %3027 = icmp eq i64 %3012, 0
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %29, align 1
  %3029 = lshr i64 %3012, 63
  %3030 = trunc i64 %3029 to i8
  store i8 %3030, i8* %32, align 1
  %3031 = lshr i64 %3010, 57
  %3032 = and i64 %3031, 1
  %3033 = xor i64 %3029, %2996
  %3034 = xor i64 %3029, %3032
  %3035 = add nuw nsw i64 %3033, %3034
  %3036 = icmp eq i64 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %38, align 1
  %3038 = load i64, i64* %RBP.i, align 8
  %3039 = add i64 %3038, -2164
  %3040 = add i64 %2973, 45
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i32*
  %3042 = load i32, i32* %3041, align 4
  %3043 = sext i32 %3042 to i64
  store i64 %3043, i64* %RCX.i1818, align 8
  %3044 = shl nsw i64 %3043, 2
  %3045 = add i64 %3044, %3012
  %3046 = add i64 %2973, 48
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3045 to i32*
  %3048 = load i32, i32* %3047, align 4
  %3049 = zext i32 %3048 to i64
  store i64 %3049, i64* %RSI.i1859, align 8
  %3050 = add i64 %3038, -2148
  %3051 = add i64 %2973, 55
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3050 to i32*
  %3053 = load i32, i32* %3052, align 4
  %3054 = sext i32 %3053 to i64
  %3055 = shl nsw i64 %3054, 8
  store i64 %3055, i64* %RCX.i1818, align 8
  %3056 = load i64, i64* %RAX.i1400, align 8
  %3057 = add i64 %3055, %3056
  store i64 %3057, i64* %RDX.i1820, align 8
  %3058 = icmp ult i64 %3057, %3056
  %3059 = icmp ult i64 %3057, %3055
  %3060 = or i1 %3058, %3059
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %14, align 1
  %3062 = trunc i64 %3057 to i32
  %3063 = and i32 %3062, 255
  %3064 = tail call i32 @llvm.ctpop.i32(i32 %3063)
  %3065 = trunc i32 %3064 to i8
  %3066 = and i8 %3065, 1
  %3067 = xor i8 %3066, 1
  store i8 %3067, i8* %21, align 1
  %3068 = xor i64 %3056, %3057
  %3069 = lshr i64 %3068, 4
  %3070 = trunc i64 %3069 to i8
  %3071 = and i8 %3070, 1
  store i8 %3071, i8* %26, align 1
  %3072 = icmp eq i64 %3057, 0
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %29, align 1
  %3074 = lshr i64 %3057, 63
  %3075 = trunc i64 %3074 to i8
  store i8 %3075, i8* %32, align 1
  %3076 = lshr i64 %3056, 63
  %3077 = lshr i64 %3054, 55
  %3078 = and i64 %3077, 1
  %3079 = xor i64 %3074, %3076
  %3080 = xor i64 %3074, %3078
  %3081 = add nuw nsw i64 %3079, %3080
  %3082 = icmp eq i64 %3081, 2
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %38, align 1
  %3084 = add i64 %3038, -2160
  %3085 = add i64 %2973, 72
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  %3088 = sext i32 %3087 to i64
  %3089 = shl nsw i64 %3088, 6
  store i64 %3089, i64* %RCX.i1818, align 8
  %3090 = add i64 %3089, %3057
  store i64 %3090, i64* %RDX.i1820, align 8
  %3091 = icmp ult i64 %3090, %3057
  %3092 = icmp ult i64 %3090, %3089
  %3093 = or i1 %3091, %3092
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %14, align 1
  %3095 = trunc i64 %3090 to i32
  %3096 = and i32 %3095, 255
  %3097 = tail call i32 @llvm.ctpop.i32(i32 %3096)
  %3098 = trunc i32 %3097 to i8
  %3099 = and i8 %3098, 1
  %3100 = xor i8 %3099, 1
  store i8 %3100, i8* %21, align 1
  %3101 = xor i64 %3057, %3090
  %3102 = lshr i64 %3101, 4
  %3103 = trunc i64 %3102 to i8
  %3104 = and i8 %3103, 1
  store i8 %3104, i8* %26, align 1
  %3105 = icmp eq i64 %3090, 0
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %29, align 1
  %3107 = lshr i64 %3090, 63
  %3108 = trunc i64 %3107 to i8
  store i8 %3108, i8* %32, align 1
  %3109 = lshr i64 %3088, 57
  %3110 = and i64 %3109, 1
  %3111 = xor i64 %3107, %3074
  %3112 = xor i64 %3107, %3110
  %3113 = add nuw nsw i64 %3111, %3112
  %3114 = icmp eq i64 %3113, 2
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %38, align 1
  %3116 = load i64, i64* %RBP.i, align 8
  %3117 = add i64 %3116, -2164
  %3118 = add i64 %2973, 86
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  %3120 = load i32, i32* %3119, align 4
  %3121 = sext i32 %3120 to i64
  store i64 %3121, i64* %RCX.i1818, align 8
  %3122 = load i64, i64* %RSI.i1859, align 8
  %3123 = shl nsw i64 %3121, 2
  %3124 = add nsw i64 %3123, 48
  %3125 = add i64 %3124, %3090
  %3126 = add i64 %2973, 90
  store i64 %3126, i64* %3, align 8
  %3127 = trunc i64 %3122 to i32
  %3128 = inttoptr i64 %3125 to i32*
  %3129 = load i32, i32* %3128, align 4
  %3130 = add i32 %3129, %3127
  %3131 = zext i32 %3130 to i64
  store i64 %3131, i64* %RSI.i1859, align 8
  %3132 = icmp ult i32 %3130, %3127
  %3133 = icmp ult i32 %3130, %3129
  %3134 = or i1 %3132, %3133
  %3135 = zext i1 %3134 to i8
  store i8 %3135, i8* %14, align 1
  %3136 = and i32 %3130, 255
  %3137 = tail call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  store i8 %3140, i8* %21, align 1
  %3141 = xor i32 %3129, %3127
  %3142 = xor i32 %3141, %3130
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %26, align 1
  %3146 = icmp eq i32 %3130, 0
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %29, align 1
  %3148 = lshr i32 %3130, 31
  %3149 = trunc i32 %3148 to i8
  store i8 %3149, i8* %32, align 1
  %3150 = lshr i32 %3127, 31
  %3151 = lshr i32 %3129, 31
  %3152 = xor i32 %3148, %3150
  %3153 = xor i32 %3148, %3151
  %3154 = add nuw nsw i32 %3152, %3153
  %3155 = icmp eq i32 %3154, 2
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %38, align 1
  %3157 = add i64 %3116, -2080
  %3158 = add i64 %2973, 96
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  store i32 %3130, i32* %3159, align 4
  %3160 = load i64, i64* %RBP.i, align 8
  %3161 = add i64 %3160, -2148
  %3162 = load i64, i64* %3, align 8
  %3163 = add i64 %3162, 7
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3161 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = sext i32 %3165 to i64
  %3167 = shl nsw i64 %3166, 8
  store i64 %3167, i64* %RCX.i1818, align 8
  %3168 = load i64, i64* %RAX.i1400, align 8
  %3169 = add i64 %3167, %3168
  store i64 %3169, i64* %RDX.i1820, align 8
  %3170 = icmp ult i64 %3169, %3168
  %3171 = icmp ult i64 %3169, %3167
  %3172 = or i1 %3170, %3171
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %14, align 1
  %3174 = trunc i64 %3169 to i32
  %3175 = and i32 %3174, 255
  %3176 = tail call i32 @llvm.ctpop.i32(i32 %3175)
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  %3179 = xor i8 %3178, 1
  store i8 %3179, i8* %21, align 1
  %3180 = xor i64 %3168, %3169
  %3181 = lshr i64 %3180, 4
  %3182 = trunc i64 %3181 to i8
  %3183 = and i8 %3182, 1
  store i8 %3183, i8* %26, align 1
  %3184 = icmp eq i64 %3169, 0
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %29, align 1
  %3186 = lshr i64 %3169, 63
  %3187 = trunc i64 %3186 to i8
  store i8 %3187, i8* %32, align 1
  %3188 = lshr i64 %3168, 63
  %3189 = lshr i64 %3166, 55
  %3190 = and i64 %3189, 1
  %3191 = xor i64 %3186, %3188
  %3192 = xor i64 %3186, %3190
  %3193 = add nuw nsw i64 %3191, %3192
  %3194 = icmp eq i64 %3193, 2
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %38, align 1
  %3196 = add i64 %3160, -2160
  %3197 = add i64 %3162, 24
  store i64 %3197, i64* %3, align 8
  %3198 = inttoptr i64 %3196 to i32*
  %3199 = load i32, i32* %3198, align 4
  %3200 = sext i32 %3199 to i64
  %3201 = shl nsw i64 %3200, 6
  store i64 %3201, i64* %RCX.i1818, align 8
  %3202 = add i64 %3201, %3169
  store i64 %3202, i64* %RDX.i1820, align 8
  %3203 = icmp ult i64 %3202, %3169
  %3204 = icmp ult i64 %3202, %3201
  %3205 = or i1 %3203, %3204
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %14, align 1
  %3207 = trunc i64 %3202 to i32
  %3208 = and i32 %3207, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %21, align 1
  %3213 = xor i64 %3169, %3202
  %3214 = lshr i64 %3213, 4
  %3215 = trunc i64 %3214 to i8
  %3216 = and i8 %3215, 1
  store i8 %3216, i8* %26, align 1
  %3217 = icmp eq i64 %3202, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %29, align 1
  %3219 = lshr i64 %3202, 63
  %3220 = trunc i64 %3219 to i8
  store i8 %3220, i8* %32, align 1
  %3221 = lshr i64 %3200, 57
  %3222 = and i64 %3221, 1
  %3223 = xor i64 %3219, %3186
  %3224 = xor i64 %3219, %3222
  %3225 = add nuw nsw i64 %3223, %3224
  %3226 = icmp eq i64 %3225, 2
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %38, align 1
  %3228 = load i64, i64* %RBP.i, align 8
  %3229 = add i64 %3228, -2164
  %3230 = add i64 %3162, 38
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = sext i32 %3232 to i64
  store i64 %3233, i64* %RCX.i1818, align 8
  %3234 = shl nsw i64 %3233, 2
  %3235 = add i64 %3202, 16
  %3236 = add i64 %3235, %3234
  %3237 = add i64 %3162, 42
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3236 to i32*
  %3239 = load i32, i32* %3238, align 4
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RSI.i1859, align 8
  %3241 = add i64 %3228, -2148
  %3242 = add i64 %3162, 49
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3241 to i32*
  %3244 = load i32, i32* %3243, align 4
  %3245 = sext i32 %3244 to i64
  %3246 = shl nsw i64 %3245, 8
  store i64 %3246, i64* %RCX.i1818, align 8
  %3247 = load i64, i64* %RAX.i1400, align 8
  %3248 = add i64 %3246, %3247
  store i64 %3248, i64* %RDX.i1820, align 8
  %3249 = icmp ult i64 %3248, %3247
  %3250 = icmp ult i64 %3248, %3246
  %3251 = or i1 %3249, %3250
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %14, align 1
  %3253 = trunc i64 %3248 to i32
  %3254 = and i32 %3253, 255
  %3255 = tail call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  store i8 %3258, i8* %21, align 1
  %3259 = xor i64 %3247, %3248
  %3260 = lshr i64 %3259, 4
  %3261 = trunc i64 %3260 to i8
  %3262 = and i8 %3261, 1
  store i8 %3262, i8* %26, align 1
  %3263 = icmp eq i64 %3248, 0
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %29, align 1
  %3265 = lshr i64 %3248, 63
  %3266 = trunc i64 %3265 to i8
  store i8 %3266, i8* %32, align 1
  %3267 = lshr i64 %3247, 63
  %3268 = lshr i64 %3245, 55
  %3269 = and i64 %3268, 1
  %3270 = xor i64 %3265, %3267
  %3271 = xor i64 %3265, %3269
  %3272 = add nuw nsw i64 %3270, %3271
  %3273 = icmp eq i64 %3272, 2
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %38, align 1
  %3275 = add i64 %3228, -2160
  %3276 = add i64 %3162, 66
  store i64 %3276, i64* %3, align 8
  %3277 = inttoptr i64 %3275 to i32*
  %3278 = load i32, i32* %3277, align 4
  %3279 = sext i32 %3278 to i64
  %3280 = shl nsw i64 %3279, 6
  store i64 %3280, i64* %RCX.i1818, align 8
  %3281 = add i64 %3280, %3248
  store i64 %3281, i64* %RDX.i1820, align 8
  %3282 = icmp ult i64 %3281, %3248
  %3283 = icmp ult i64 %3281, %3280
  %3284 = or i1 %3282, %3283
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %14, align 1
  %3286 = trunc i64 %3281 to i32
  %3287 = and i32 %3286, 255
  %3288 = tail call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %21, align 1
  %3292 = xor i64 %3248, %3281
  %3293 = lshr i64 %3292, 4
  %3294 = trunc i64 %3293 to i8
  %3295 = and i8 %3294, 1
  store i8 %3295, i8* %26, align 1
  %3296 = icmp eq i64 %3281, 0
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %29, align 1
  %3298 = lshr i64 %3281, 63
  %3299 = trunc i64 %3298 to i8
  store i8 %3299, i8* %32, align 1
  %3300 = lshr i64 %3279, 57
  %3301 = and i64 %3300, 1
  %3302 = xor i64 %3298, %3265
  %3303 = xor i64 %3298, %3301
  %3304 = add nuw nsw i64 %3302, %3303
  %3305 = icmp eq i64 %3304, 2
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %38, align 1
  %3307 = load i64, i64* %RBP.i, align 8
  %3308 = add i64 %3307, -2164
  %3309 = add i64 %3162, 80
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = sext i32 %3311 to i64
  store i64 %3312, i64* %RCX.i1818, align 8
  %3313 = load i64, i64* %RSI.i1859, align 8
  %3314 = shl nsw i64 %3312, 2
  %3315 = add nsw i64 %3314, 32
  %3316 = add i64 %3315, %3281
  %3317 = add i64 %3162, 84
  store i64 %3317, i64* %3, align 8
  %3318 = trunc i64 %3313 to i32
  %3319 = inttoptr i64 %3316 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = add i32 %3320, %3318
  %3322 = zext i32 %3321 to i64
  store i64 %3322, i64* %RSI.i1859, align 8
  %3323 = icmp ult i32 %3321, %3318
  %3324 = icmp ult i32 %3321, %3320
  %3325 = or i1 %3323, %3324
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %14, align 1
  %3327 = and i32 %3321, 255
  %3328 = tail call i32 @llvm.ctpop.i32(i32 %3327)
  %3329 = trunc i32 %3328 to i8
  %3330 = and i8 %3329, 1
  %3331 = xor i8 %3330, 1
  store i8 %3331, i8* %21, align 1
  %3332 = xor i32 %3320, %3318
  %3333 = xor i32 %3332, %3321
  %3334 = lshr i32 %3333, 4
  %3335 = trunc i32 %3334 to i8
  %3336 = and i8 %3335, 1
  store i8 %3336, i8* %26, align 1
  %3337 = icmp eq i32 %3321, 0
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %29, align 1
  %3339 = lshr i32 %3321, 31
  %3340 = trunc i32 %3339 to i8
  store i8 %3340, i8* %32, align 1
  %3341 = lshr i32 %3318, 31
  %3342 = lshr i32 %3320, 31
  %3343 = xor i32 %3339, %3341
  %3344 = xor i32 %3339, %3342
  %3345 = add nuw nsw i32 %3343, %3344
  %3346 = icmp eq i32 %3345, 2
  %3347 = zext i1 %3346 to i8
  store i8 %3347, i8* %38, align 1
  %3348 = add i64 %3307, -2076
  %3349 = add i64 %3162, 90
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  store i32 %3321, i32* %3350, align 4
  %3351 = load i64, i64* %RBP.i, align 8
  %3352 = add i64 %3351, -2148
  %3353 = load i64, i64* %3, align 8
  %3354 = add i64 %3353, 7
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3352 to i32*
  %3356 = load i32, i32* %3355, align 4
  %3357 = sext i32 %3356 to i64
  %3358 = shl nsw i64 %3357, 8
  store i64 %3358, i64* %RCX.i1818, align 8
  %3359 = load i64, i64* %RAX.i1400, align 8
  %3360 = add i64 %3358, %3359
  store i64 %3360, i64* %RDX.i1820, align 8
  %3361 = icmp ult i64 %3360, %3359
  %3362 = icmp ult i64 %3360, %3358
  %3363 = or i1 %3361, %3362
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %14, align 1
  %3365 = trunc i64 %3360 to i32
  %3366 = and i32 %3365, 255
  %3367 = tail call i32 @llvm.ctpop.i32(i32 %3366)
  %3368 = trunc i32 %3367 to i8
  %3369 = and i8 %3368, 1
  %3370 = xor i8 %3369, 1
  store i8 %3370, i8* %21, align 1
  %3371 = xor i64 %3359, %3360
  %3372 = lshr i64 %3371, 4
  %3373 = trunc i64 %3372 to i8
  %3374 = and i8 %3373, 1
  store i8 %3374, i8* %26, align 1
  %3375 = icmp eq i64 %3360, 0
  %3376 = zext i1 %3375 to i8
  store i8 %3376, i8* %29, align 1
  %3377 = lshr i64 %3360, 63
  %3378 = trunc i64 %3377 to i8
  store i8 %3378, i8* %32, align 1
  %3379 = lshr i64 %3359, 63
  %3380 = lshr i64 %3357, 55
  %3381 = and i64 %3380, 1
  %3382 = xor i64 %3377, %3379
  %3383 = xor i64 %3377, %3381
  %3384 = add nuw nsw i64 %3382, %3383
  %3385 = icmp eq i64 %3384, 2
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %38, align 1
  %3387 = add i64 %3351, -2160
  %3388 = add i64 %3353, 24
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = sext i32 %3390 to i64
  %3392 = shl nsw i64 %3391, 6
  store i64 %3392, i64* %RCX.i1818, align 8
  %3393 = add i64 %3392, %3360
  store i64 %3393, i64* %RDX.i1820, align 8
  %3394 = icmp ult i64 %3393, %3360
  %3395 = icmp ult i64 %3393, %3392
  %3396 = or i1 %3394, %3395
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %14, align 1
  %3398 = trunc i64 %3393 to i32
  %3399 = and i32 %3398, 255
  %3400 = tail call i32 @llvm.ctpop.i32(i32 %3399)
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  store i8 %3403, i8* %21, align 1
  %3404 = xor i64 %3360, %3393
  %3405 = lshr i64 %3404, 4
  %3406 = trunc i64 %3405 to i8
  %3407 = and i8 %3406, 1
  store i8 %3407, i8* %26, align 1
  %3408 = icmp eq i64 %3393, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %29, align 1
  %3410 = lshr i64 %3393, 63
  %3411 = trunc i64 %3410 to i8
  store i8 %3411, i8* %32, align 1
  %3412 = lshr i64 %3391, 57
  %3413 = and i64 %3412, 1
  %3414 = xor i64 %3410, %3377
  %3415 = xor i64 %3410, %3413
  %3416 = add nuw nsw i64 %3414, %3415
  %3417 = icmp eq i64 %3416, 2
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %38, align 1
  %3419 = load i64, i64* %RBP.i, align 8
  %3420 = add i64 %3419, -2164
  %3421 = add i64 %3353, 38
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = sext i32 %3423 to i64
  store i64 %3424, i64* %RCX.i1818, align 8
  %3425 = shl nsw i64 %3424, 2
  %3426 = add i64 %3393, 16
  %3427 = add i64 %3426, %3425
  %3428 = add i64 %3353, 42
  store i64 %3428, i64* %3, align 8
  %3429 = inttoptr i64 %3427 to i32*
  %3430 = load i32, i32* %3429, align 4
  %3431 = zext i32 %3430 to i64
  store i64 %3431, i64* %RSI.i1859, align 8
  %3432 = add i64 %3419, -2148
  %3433 = add i64 %3353, 49
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i32*
  %3435 = load i32, i32* %3434, align 4
  %3436 = sext i32 %3435 to i64
  %3437 = shl nsw i64 %3436, 8
  store i64 %3437, i64* %RCX.i1818, align 8
  %3438 = load i64, i64* %RAX.i1400, align 8
  %3439 = add i64 %3437, %3438
  store i64 %3439, i64* %RDX.i1820, align 8
  %3440 = icmp ult i64 %3439, %3438
  %3441 = icmp ult i64 %3439, %3437
  %3442 = or i1 %3440, %3441
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %14, align 1
  %3444 = trunc i64 %3439 to i32
  %3445 = and i32 %3444, 255
  %3446 = tail call i32 @llvm.ctpop.i32(i32 %3445)
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  %3449 = xor i8 %3448, 1
  store i8 %3449, i8* %21, align 1
  %3450 = xor i64 %3438, %3439
  %3451 = lshr i64 %3450, 4
  %3452 = trunc i64 %3451 to i8
  %3453 = and i8 %3452, 1
  store i8 %3453, i8* %26, align 1
  %3454 = icmp eq i64 %3439, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %29, align 1
  %3456 = lshr i64 %3439, 63
  %3457 = trunc i64 %3456 to i8
  store i8 %3457, i8* %32, align 1
  %3458 = lshr i64 %3438, 63
  %3459 = lshr i64 %3436, 55
  %3460 = and i64 %3459, 1
  %3461 = xor i64 %3456, %3458
  %3462 = xor i64 %3456, %3460
  %3463 = add nuw nsw i64 %3461, %3462
  %3464 = icmp eq i64 %3463, 2
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %38, align 1
  %3466 = add i64 %3419, -2160
  %3467 = add i64 %3353, 66
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i32*
  %3469 = load i32, i32* %3468, align 4
  %3470 = sext i32 %3469 to i64
  %3471 = shl nsw i64 %3470, 6
  store i64 %3471, i64* %RCX.i1818, align 8
  %3472 = add i64 %3471, %3439
  store i64 %3472, i64* %RDX.i1820, align 8
  %3473 = icmp ult i64 %3472, %3439
  %3474 = icmp ult i64 %3472, %3471
  %3475 = or i1 %3473, %3474
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %14, align 1
  %3477 = trunc i64 %3472 to i32
  %3478 = and i32 %3477, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %21, align 1
  %3483 = xor i64 %3439, %3472
  %3484 = lshr i64 %3483, 4
  %3485 = trunc i64 %3484 to i8
  %3486 = and i8 %3485, 1
  store i8 %3486, i8* %26, align 1
  %3487 = icmp eq i64 %3472, 0
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %29, align 1
  %3489 = lshr i64 %3472, 63
  %3490 = trunc i64 %3489 to i8
  store i8 %3490, i8* %32, align 1
  %3491 = lshr i64 %3470, 57
  %3492 = and i64 %3491, 1
  %3493 = xor i64 %3489, %3456
  %3494 = xor i64 %3489, %3492
  %3495 = add nuw nsw i64 %3493, %3494
  %3496 = icmp eq i64 %3495, 2
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %38, align 1
  %3498 = load i64, i64* %RBP.i, align 8
  %3499 = add i64 %3498, -2164
  %3500 = add i64 %3353, 80
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  %3502 = load i32, i32* %3501, align 4
  %3503 = sext i32 %3502 to i64
  store i64 %3503, i64* %RCX.i1818, align 8
  %3504 = load i64, i64* %RSI.i1859, align 8
  %3505 = shl nsw i64 %3503, 2
  %3506 = add nsw i64 %3505, 32
  %3507 = add i64 %3506, %3472
  %3508 = add i64 %3353, 84
  store i64 %3508, i64* %3, align 8
  %3509 = trunc i64 %3504 to i32
  %3510 = inttoptr i64 %3507 to i32*
  %3511 = load i32, i32* %3510, align 4
  %3512 = sub i32 %3509, %3511
  %3513 = zext i32 %3512 to i64
  store i64 %3513, i64* %RSI.i1859, align 8
  %3514 = icmp ult i32 %3509, %3511
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %14, align 1
  %3516 = and i32 %3512, 255
  %3517 = tail call i32 @llvm.ctpop.i32(i32 %3516)
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = xor i8 %3519, 1
  store i8 %3520, i8* %21, align 1
  %3521 = xor i32 %3511, %3509
  %3522 = xor i32 %3521, %3512
  %3523 = lshr i32 %3522, 4
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  store i8 %3525, i8* %26, align 1
  %3526 = icmp eq i32 %3512, 0
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %29, align 1
  %3528 = lshr i32 %3512, 31
  %3529 = trunc i32 %3528 to i8
  store i8 %3529, i8* %32, align 1
  %3530 = lshr i32 %3509, 31
  %3531 = lshr i32 %3511, 31
  %3532 = xor i32 %3531, %3530
  %3533 = xor i32 %3528, %3530
  %3534 = add nuw nsw i32 %3533, %3532
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %38, align 1
  %3537 = add i64 %3498, -2072
  %3538 = add i64 %3353, 90
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  store i32 %3512, i32* %3539, align 4
  %3540 = load i64, i64* %RBP.i, align 8
  %3541 = add i64 %3540, -2148
  %3542 = load i64, i64* %3, align 8
  %3543 = add i64 %3542, 7
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3541 to i32*
  %3545 = load i32, i32* %3544, align 4
  %3546 = sext i32 %3545 to i64
  %3547 = shl nsw i64 %3546, 8
  store i64 %3547, i64* %RCX.i1818, align 8
  %3548 = load i64, i64* %RAX.i1400, align 8
  %3549 = add i64 %3547, %3548
  store i64 %3549, i64* %RDX.i1820, align 8
  %3550 = icmp ult i64 %3549, %3548
  %3551 = icmp ult i64 %3549, %3547
  %3552 = or i1 %3550, %3551
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %14, align 1
  %3554 = trunc i64 %3549 to i32
  %3555 = and i32 %3554, 255
  %3556 = tail call i32 @llvm.ctpop.i32(i32 %3555)
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  %3559 = xor i8 %3558, 1
  store i8 %3559, i8* %21, align 1
  %3560 = xor i64 %3548, %3549
  %3561 = lshr i64 %3560, 4
  %3562 = trunc i64 %3561 to i8
  %3563 = and i8 %3562, 1
  store i8 %3563, i8* %26, align 1
  %3564 = icmp eq i64 %3549, 0
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %29, align 1
  %3566 = lshr i64 %3549, 63
  %3567 = trunc i64 %3566 to i8
  store i8 %3567, i8* %32, align 1
  %3568 = lshr i64 %3548, 63
  %3569 = lshr i64 %3546, 55
  %3570 = and i64 %3569, 1
  %3571 = xor i64 %3566, %3568
  %3572 = xor i64 %3566, %3570
  %3573 = add nuw nsw i64 %3571, %3572
  %3574 = icmp eq i64 %3573, 2
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %38, align 1
  %3576 = add i64 %3540, -2160
  %3577 = add i64 %3542, 24
  store i64 %3577, i64* %3, align 8
  %3578 = inttoptr i64 %3576 to i32*
  %3579 = load i32, i32* %3578, align 4
  %3580 = sext i32 %3579 to i64
  %3581 = shl nsw i64 %3580, 6
  store i64 %3581, i64* %RCX.i1818, align 8
  %3582 = add i64 %3581, %3549
  store i64 %3582, i64* %RDX.i1820, align 8
  %3583 = icmp ult i64 %3582, %3549
  %3584 = icmp ult i64 %3582, %3581
  %3585 = or i1 %3583, %3584
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %14, align 1
  %3587 = trunc i64 %3582 to i32
  %3588 = and i32 %3587, 255
  %3589 = tail call i32 @llvm.ctpop.i32(i32 %3588)
  %3590 = trunc i32 %3589 to i8
  %3591 = and i8 %3590, 1
  %3592 = xor i8 %3591, 1
  store i8 %3592, i8* %21, align 1
  %3593 = xor i64 %3549, %3582
  %3594 = lshr i64 %3593, 4
  %3595 = trunc i64 %3594 to i8
  %3596 = and i8 %3595, 1
  store i8 %3596, i8* %26, align 1
  %3597 = icmp eq i64 %3582, 0
  %3598 = zext i1 %3597 to i8
  store i8 %3598, i8* %29, align 1
  %3599 = lshr i64 %3582, 63
  %3600 = trunc i64 %3599 to i8
  store i8 %3600, i8* %32, align 1
  %3601 = lshr i64 %3580, 57
  %3602 = and i64 %3601, 1
  %3603 = xor i64 %3599, %3566
  %3604 = xor i64 %3599, %3602
  %3605 = add nuw nsw i64 %3603, %3604
  %3606 = icmp eq i64 %3605, 2
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %38, align 1
  %3608 = load i64, i64* %RBP.i, align 8
  %3609 = add i64 %3608, -2164
  %3610 = add i64 %3542, 38
  store i64 %3610, i64* %3, align 8
  %3611 = inttoptr i64 %3609 to i32*
  %3612 = load i32, i32* %3611, align 4
  %3613 = sext i32 %3612 to i64
  store i64 %3613, i64* %RCX.i1818, align 8
  %3614 = shl nsw i64 %3613, 2
  %3615 = add i64 %3614, %3582
  %3616 = add i64 %3542, 41
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3615 to i32*
  %3618 = load i32, i32* %3617, align 4
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %RSI.i1859, align 8
  %3620 = add i64 %3608, -2148
  %3621 = add i64 %3542, 48
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = sext i32 %3623 to i64
  %3625 = shl nsw i64 %3624, 8
  store i64 %3625, i64* %RCX.i1818, align 8
  %3626 = load i64, i64* %RAX.i1400, align 8
  %3627 = add i64 %3625, %3626
  store i64 %3627, i64* %RDX.i1820, align 8
  %3628 = icmp ult i64 %3627, %3626
  %3629 = icmp ult i64 %3627, %3625
  %3630 = or i1 %3628, %3629
  %3631 = zext i1 %3630 to i8
  store i8 %3631, i8* %14, align 1
  %3632 = trunc i64 %3627 to i32
  %3633 = and i32 %3632, 255
  %3634 = tail call i32 @llvm.ctpop.i32(i32 %3633)
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = xor i8 %3636, 1
  store i8 %3637, i8* %21, align 1
  %3638 = xor i64 %3626, %3627
  %3639 = lshr i64 %3638, 4
  %3640 = trunc i64 %3639 to i8
  %3641 = and i8 %3640, 1
  store i8 %3641, i8* %26, align 1
  %3642 = icmp eq i64 %3627, 0
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %29, align 1
  %3644 = lshr i64 %3627, 63
  %3645 = trunc i64 %3644 to i8
  store i8 %3645, i8* %32, align 1
  %3646 = lshr i64 %3626, 63
  %3647 = lshr i64 %3624, 55
  %3648 = and i64 %3647, 1
  %3649 = xor i64 %3644, %3646
  %3650 = xor i64 %3644, %3648
  %3651 = add nuw nsw i64 %3649, %3650
  %3652 = icmp eq i64 %3651, 2
  %3653 = zext i1 %3652 to i8
  store i8 %3653, i8* %38, align 1
  %3654 = add i64 %3608, -2160
  %3655 = add i64 %3542, 65
  store i64 %3655, i64* %3, align 8
  %3656 = inttoptr i64 %3654 to i32*
  %3657 = load i32, i32* %3656, align 4
  %3658 = sext i32 %3657 to i64
  %3659 = shl nsw i64 %3658, 6
  store i64 %3659, i64* %RCX.i1818, align 8
  %3660 = add i64 %3659, %3627
  store i64 %3660, i64* %RDX.i1820, align 8
  %3661 = icmp ult i64 %3660, %3627
  %3662 = icmp ult i64 %3660, %3659
  %3663 = or i1 %3661, %3662
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %14, align 1
  %3665 = trunc i64 %3660 to i32
  %3666 = and i32 %3665, 255
  %3667 = tail call i32 @llvm.ctpop.i32(i32 %3666)
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  %3670 = xor i8 %3669, 1
  store i8 %3670, i8* %21, align 1
  %3671 = xor i64 %3627, %3660
  %3672 = lshr i64 %3671, 4
  %3673 = trunc i64 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %26, align 1
  %3675 = icmp eq i64 %3660, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %29, align 1
  %3677 = lshr i64 %3660, 63
  %3678 = trunc i64 %3677 to i8
  store i8 %3678, i8* %32, align 1
  %3679 = lshr i64 %3658, 57
  %3680 = and i64 %3679, 1
  %3681 = xor i64 %3677, %3644
  %3682 = xor i64 %3677, %3680
  %3683 = add nuw nsw i64 %3681, %3682
  %3684 = icmp eq i64 %3683, 2
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %38, align 1
  %3686 = load i64, i64* %RBP.i, align 8
  %3687 = add i64 %3686, -2164
  %3688 = add i64 %3542, 79
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i32*
  %3690 = load i32, i32* %3689, align 4
  %3691 = sext i32 %3690 to i64
  store i64 %3691, i64* %RCX.i1818, align 8
  %3692 = load i64, i64* %RSI.i1859, align 8
  %3693 = shl nsw i64 %3691, 2
  %3694 = add nsw i64 %3693, 48
  %3695 = add i64 %3694, %3660
  %3696 = add i64 %3542, 83
  store i64 %3696, i64* %3, align 8
  %3697 = trunc i64 %3692 to i32
  %3698 = inttoptr i64 %3695 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = sub i32 %3697, %3699
  %3701 = zext i32 %3700 to i64
  store i64 %3701, i64* %RSI.i1859, align 8
  %3702 = icmp ult i32 %3697, %3699
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %14, align 1
  %3704 = and i32 %3700, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %21, align 1
  %3709 = xor i32 %3699, %3697
  %3710 = xor i32 %3709, %3700
  %3711 = lshr i32 %3710, 4
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  store i8 %3713, i8* %26, align 1
  %3714 = icmp eq i32 %3700, 0
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %29, align 1
  %3716 = lshr i32 %3700, 31
  %3717 = trunc i32 %3716 to i8
  store i8 %3717, i8* %32, align 1
  %3718 = lshr i32 %3697, 31
  %3719 = lshr i32 %3699, 31
  %3720 = xor i32 %3719, %3718
  %3721 = xor i32 %3716, %3718
  %3722 = add nuw nsw i32 %3721, %3720
  %3723 = icmp eq i32 %3722, 2
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %38, align 1
  %3725 = add i64 %3686, -2068
  %3726 = add i64 %3542, 89
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  store i32 %3700, i32* %3727, align 4
  %3728 = load i64, i64* %RBP.i, align 8
  %3729 = add i64 %3728, -2080
  %3730 = load i64, i64* %3, align 8
  %3731 = add i64 %3730, 6
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3729 to i32*
  %3733 = load i32, i32* %3732, align 4
  %3734 = zext i32 %3733 to i64
  store i64 %3734, i64* %RSI.i1859, align 8
  %3735 = add i64 %3728, -2076
  %3736 = add i64 %3730, 12
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3735 to i32*
  %3738 = load i32, i32* %3737, align 4
  %3739 = add i32 %3738, %3733
  %3740 = zext i32 %3739 to i64
  store i64 %3740, i64* %RSI.i1859, align 8
  %3741 = icmp ult i32 %3739, %3733
  %3742 = icmp ult i32 %3739, %3738
  %3743 = or i1 %3741, %3742
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %14, align 1
  %3745 = and i32 %3739, 255
  %3746 = tail call i32 @llvm.ctpop.i32(i32 %3745)
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  store i8 %3749, i8* %21, align 1
  %3750 = xor i32 %3738, %3733
  %3751 = xor i32 %3750, %3739
  %3752 = lshr i32 %3751, 4
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  store i8 %3754, i8* %26, align 1
  %3755 = icmp eq i32 %3739, 0
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %29, align 1
  %3757 = lshr i32 %3739, 31
  %3758 = trunc i32 %3757 to i8
  store i8 %3758, i8* %32, align 1
  %3759 = lshr i32 %3733, 31
  %3760 = lshr i32 %3738, 31
  %3761 = xor i32 %3757, %3759
  %3762 = xor i32 %3757, %3760
  %3763 = add nuw nsw i32 %3761, %3762
  %3764 = icmp eq i32 %3763, 2
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %38, align 1
  %3766 = add i64 %3728, -2148
  %3767 = add i64 %3730, 19
  store i64 %3767, i64* %3, align 8
  %3768 = inttoptr i64 %3766 to i32*
  %3769 = load i32, i32* %3768, align 4
  %3770 = sext i32 %3769 to i64
  %3771 = shl nsw i64 %3770, 8
  store i64 %3771, i64* %RCX.i1818, align 8
  %3772 = load i64, i64* %RAX.i1400, align 8
  %3773 = add i64 %3771, %3772
  store i64 %3773, i64* %RDX.i1820, align 8
  %3774 = icmp ult i64 %3773, %3772
  %3775 = icmp ult i64 %3773, %3771
  %3776 = or i1 %3774, %3775
  %3777 = zext i1 %3776 to i8
  store i8 %3777, i8* %14, align 1
  %3778 = trunc i64 %3773 to i32
  %3779 = and i32 %3778, 255
  %3780 = tail call i32 @llvm.ctpop.i32(i32 %3779)
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  %3783 = xor i8 %3782, 1
  store i8 %3783, i8* %21, align 1
  %3784 = xor i64 %3772, %3773
  %3785 = lshr i64 %3784, 4
  %3786 = trunc i64 %3785 to i8
  %3787 = and i8 %3786, 1
  store i8 %3787, i8* %26, align 1
  %3788 = icmp eq i64 %3773, 0
  %3789 = zext i1 %3788 to i8
  store i8 %3789, i8* %29, align 1
  %3790 = lshr i64 %3773, 63
  %3791 = trunc i64 %3790 to i8
  store i8 %3791, i8* %32, align 1
  %3792 = lshr i64 %3772, 63
  %3793 = lshr i64 %3770, 55
  %3794 = and i64 %3793, 1
  %3795 = xor i64 %3790, %3792
  %3796 = xor i64 %3790, %3794
  %3797 = add nuw nsw i64 %3795, %3796
  %3798 = icmp eq i64 %3797, 2
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %38, align 1
  %3800 = load i64, i64* %RBP.i, align 8
  %3801 = add i64 %3800, -2160
  %3802 = add i64 %3730, 36
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3801 to i32*
  %3804 = load i32, i32* %3803, align 4
  %3805 = sext i32 %3804 to i64
  %3806 = shl nsw i64 %3805, 6
  store i64 %3806, i64* %RCX.i1818, align 8
  %3807 = add i64 %3806, %3773
  store i64 %3807, i64* %RDX.i1820, align 8
  %3808 = icmp ult i64 %3807, %3773
  %3809 = icmp ult i64 %3807, %3806
  %3810 = or i1 %3808, %3809
  %3811 = zext i1 %3810 to i8
  store i8 %3811, i8* %14, align 1
  %3812 = trunc i64 %3807 to i32
  %3813 = and i32 %3812, 255
  %3814 = tail call i32 @llvm.ctpop.i32(i32 %3813)
  %3815 = trunc i32 %3814 to i8
  %3816 = and i8 %3815, 1
  %3817 = xor i8 %3816, 1
  store i8 %3817, i8* %21, align 1
  %3818 = xor i64 %3773, %3807
  %3819 = lshr i64 %3818, 4
  %3820 = trunc i64 %3819 to i8
  %3821 = and i8 %3820, 1
  store i8 %3821, i8* %26, align 1
  %3822 = icmp eq i64 %3807, 0
  %3823 = zext i1 %3822 to i8
  store i8 %3823, i8* %29, align 1
  %3824 = lshr i64 %3807, 63
  %3825 = trunc i64 %3824 to i8
  store i8 %3825, i8* %32, align 1
  %3826 = lshr i64 %3805, 57
  %3827 = and i64 %3826, 1
  %3828 = xor i64 %3824, %3790
  %3829 = xor i64 %3824, %3827
  %3830 = add nuw nsw i64 %3828, %3829
  %3831 = icmp eq i64 %3830, 2
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %38, align 1
  %3833 = add i64 %3800, -2164
  %3834 = add i64 %3730, 50
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i32*
  %3836 = load i32, i32* %3835, align 4
  %3837 = sext i32 %3836 to i64
  store i64 %3837, i64* %RCX.i1818, align 8
  %3838 = shl nsw i64 %3837, 2
  %3839 = add i64 %3838, %3807
  %3840 = load i32, i32* %ESI.i1822, align 4
  %3841 = add i64 %3730, 53
  store i64 %3841, i64* %3, align 8
  %3842 = inttoptr i64 %3839 to i32*
  store i32 %3840, i32* %3842, align 4
  %3843 = load i64, i64* %RBP.i, align 8
  %3844 = add i64 %3843, -2080
  %3845 = load i64, i64* %3, align 8
  %3846 = add i64 %3845, 6
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3844 to i32*
  %3848 = load i32, i32* %3847, align 4
  %3849 = zext i32 %3848 to i64
  store i64 %3849, i64* %RSI.i1859, align 8
  %3850 = add i64 %3843, -2076
  %3851 = add i64 %3845, 12
  store i64 %3851, i64* %3, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = sub i32 %3848, %3853
  %3855 = zext i32 %3854 to i64
  store i64 %3855, i64* %RSI.i1859, align 8
  %3856 = icmp ult i32 %3848, %3853
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %14, align 1
  %3858 = and i32 %3854, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858)
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %21, align 1
  %3863 = xor i32 %3853, %3848
  %3864 = xor i32 %3863, %3854
  %3865 = lshr i32 %3864, 4
  %3866 = trunc i32 %3865 to i8
  %3867 = and i8 %3866, 1
  store i8 %3867, i8* %26, align 1
  %3868 = icmp eq i32 %3854, 0
  %3869 = zext i1 %3868 to i8
  store i8 %3869, i8* %29, align 1
  %3870 = lshr i32 %3854, 31
  %3871 = trunc i32 %3870 to i8
  store i8 %3871, i8* %32, align 1
  %3872 = lshr i32 %3848, 31
  %3873 = lshr i32 %3853, 31
  %3874 = xor i32 %3873, %3872
  %3875 = xor i32 %3870, %3872
  %3876 = add nuw nsw i32 %3875, %3874
  %3877 = icmp eq i32 %3876, 2
  %3878 = zext i1 %3877 to i8
  store i8 %3878, i8* %38, align 1
  %3879 = add i64 %3843, -2148
  %3880 = add i64 %3845, 19
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3879 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = sext i32 %3882 to i64
  %3884 = shl nsw i64 %3883, 8
  store i64 %3884, i64* %RCX.i1818, align 8
  %3885 = load i64, i64* %RAX.i1400, align 8
  %3886 = add i64 %3884, %3885
  store i64 %3886, i64* %RDX.i1820, align 8
  %3887 = icmp ult i64 %3886, %3885
  %3888 = icmp ult i64 %3886, %3884
  %3889 = or i1 %3887, %3888
  %3890 = zext i1 %3889 to i8
  store i8 %3890, i8* %14, align 1
  %3891 = trunc i64 %3886 to i32
  %3892 = and i32 %3891, 255
  %3893 = tail call i32 @llvm.ctpop.i32(i32 %3892)
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = xor i8 %3895, 1
  store i8 %3896, i8* %21, align 1
  %3897 = xor i64 %3885, %3886
  %3898 = lshr i64 %3897, 4
  %3899 = trunc i64 %3898 to i8
  %3900 = and i8 %3899, 1
  store i8 %3900, i8* %26, align 1
  %3901 = icmp eq i64 %3886, 0
  %3902 = zext i1 %3901 to i8
  store i8 %3902, i8* %29, align 1
  %3903 = lshr i64 %3886, 63
  %3904 = trunc i64 %3903 to i8
  store i8 %3904, i8* %32, align 1
  %3905 = lshr i64 %3885, 63
  %3906 = lshr i64 %3883, 55
  %3907 = and i64 %3906, 1
  %3908 = xor i64 %3903, %3905
  %3909 = xor i64 %3903, %3907
  %3910 = add nuw nsw i64 %3908, %3909
  %3911 = icmp eq i64 %3910, 2
  %3912 = zext i1 %3911 to i8
  store i8 %3912, i8* %38, align 1
  %3913 = load i64, i64* %RBP.i, align 8
  %3914 = add i64 %3913, -2160
  %3915 = add i64 %3845, 36
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3914 to i32*
  %3917 = load i32, i32* %3916, align 4
  %3918 = sext i32 %3917 to i64
  %3919 = shl nsw i64 %3918, 6
  store i64 %3919, i64* %RCX.i1818, align 8
  %3920 = add i64 %3919, %3886
  store i64 %3920, i64* %RDX.i1820, align 8
  %3921 = icmp ult i64 %3920, %3886
  %3922 = icmp ult i64 %3920, %3919
  %3923 = or i1 %3921, %3922
  %3924 = zext i1 %3923 to i8
  store i8 %3924, i8* %14, align 1
  %3925 = trunc i64 %3920 to i32
  %3926 = and i32 %3925, 255
  %3927 = tail call i32 @llvm.ctpop.i32(i32 %3926)
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = xor i8 %3929, 1
  store i8 %3930, i8* %21, align 1
  %3931 = xor i64 %3886, %3920
  %3932 = lshr i64 %3931, 4
  %3933 = trunc i64 %3932 to i8
  %3934 = and i8 %3933, 1
  store i8 %3934, i8* %26, align 1
  %3935 = icmp eq i64 %3920, 0
  %3936 = zext i1 %3935 to i8
  store i8 %3936, i8* %29, align 1
  %3937 = lshr i64 %3920, 63
  %3938 = trunc i64 %3937 to i8
  store i8 %3938, i8* %32, align 1
  %3939 = lshr i64 %3918, 57
  %3940 = and i64 %3939, 1
  %3941 = xor i64 %3937, %3903
  %3942 = xor i64 %3937, %3940
  %3943 = add nuw nsw i64 %3941, %3942
  %3944 = icmp eq i64 %3943, 2
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %38, align 1
  %3946 = add i64 %3913, -2164
  %3947 = add i64 %3845, 50
  store i64 %3947, i64* %3, align 8
  %3948 = inttoptr i64 %3946 to i32*
  %3949 = load i32, i32* %3948, align 4
  %3950 = sext i32 %3949 to i64
  store i64 %3950, i64* %RCX.i1818, align 8
  %3951 = shl nsw i64 %3950, 2
  %3952 = add i64 %3920, 32
  %3953 = add i64 %3952, %3951
  %3954 = load i32, i32* %ESI.i1822, align 4
  %3955 = add i64 %3845, 54
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3953 to i32*
  store i32 %3954, i32* %3956, align 4
  %3957 = load i64, i64* %RBP.i, align 8
  %3958 = add i64 %3957, -2072
  %3959 = load i64, i64* %3, align 8
  %3960 = add i64 %3959, 6
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3958 to i32*
  %3962 = load i32, i32* %3961, align 4
  %3963 = zext i32 %3962 to i64
  store i64 %3963, i64* %RSI.i1859, align 8
  %3964 = add i64 %3957, -2068
  %3965 = add i64 %3959, 12
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i32*
  %3967 = load i32, i32* %3966, align 4
  %3968 = add i32 %3967, %3962
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RSI.i1859, align 8
  %3970 = icmp ult i32 %3968, %3962
  %3971 = icmp ult i32 %3968, %3967
  %3972 = or i1 %3970, %3971
  %3973 = zext i1 %3972 to i8
  store i8 %3973, i8* %14, align 1
  %3974 = and i32 %3968, 255
  %3975 = tail call i32 @llvm.ctpop.i32(i32 %3974)
  %3976 = trunc i32 %3975 to i8
  %3977 = and i8 %3976, 1
  %3978 = xor i8 %3977, 1
  store i8 %3978, i8* %21, align 1
  %3979 = xor i32 %3967, %3962
  %3980 = xor i32 %3979, %3968
  %3981 = lshr i32 %3980, 4
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  store i8 %3983, i8* %26, align 1
  %3984 = icmp eq i32 %3968, 0
  %3985 = zext i1 %3984 to i8
  store i8 %3985, i8* %29, align 1
  %3986 = lshr i32 %3968, 31
  %3987 = trunc i32 %3986 to i8
  store i8 %3987, i8* %32, align 1
  %3988 = lshr i32 %3962, 31
  %3989 = lshr i32 %3967, 31
  %3990 = xor i32 %3986, %3988
  %3991 = xor i32 %3986, %3989
  %3992 = add nuw nsw i32 %3990, %3991
  %3993 = icmp eq i32 %3992, 2
  %3994 = zext i1 %3993 to i8
  store i8 %3994, i8* %38, align 1
  %3995 = add i64 %3957, -2148
  %3996 = add i64 %3959, 19
  store i64 %3996, i64* %3, align 8
  %3997 = inttoptr i64 %3995 to i32*
  %3998 = load i32, i32* %3997, align 4
  %3999 = sext i32 %3998 to i64
  %4000 = shl nsw i64 %3999, 8
  store i64 %4000, i64* %RCX.i1818, align 8
  %4001 = load i64, i64* %RAX.i1400, align 8
  %4002 = add i64 %4000, %4001
  store i64 %4002, i64* %RDX.i1820, align 8
  %4003 = icmp ult i64 %4002, %4001
  %4004 = icmp ult i64 %4002, %4000
  %4005 = or i1 %4003, %4004
  %4006 = zext i1 %4005 to i8
  store i8 %4006, i8* %14, align 1
  %4007 = trunc i64 %4002 to i32
  %4008 = and i32 %4007, 255
  %4009 = tail call i32 @llvm.ctpop.i32(i32 %4008)
  %4010 = trunc i32 %4009 to i8
  %4011 = and i8 %4010, 1
  %4012 = xor i8 %4011, 1
  store i8 %4012, i8* %21, align 1
  %4013 = xor i64 %4001, %4002
  %4014 = lshr i64 %4013, 4
  %4015 = trunc i64 %4014 to i8
  %4016 = and i8 %4015, 1
  store i8 %4016, i8* %26, align 1
  %4017 = icmp eq i64 %4002, 0
  %4018 = zext i1 %4017 to i8
  store i8 %4018, i8* %29, align 1
  %4019 = lshr i64 %4002, 63
  %4020 = trunc i64 %4019 to i8
  store i8 %4020, i8* %32, align 1
  %4021 = lshr i64 %4001, 63
  %4022 = lshr i64 %3999, 55
  %4023 = and i64 %4022, 1
  %4024 = xor i64 %4019, %4021
  %4025 = xor i64 %4019, %4023
  %4026 = add nuw nsw i64 %4024, %4025
  %4027 = icmp eq i64 %4026, 2
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %38, align 1
  %4029 = load i64, i64* %RBP.i, align 8
  %4030 = add i64 %4029, -2160
  %4031 = add i64 %3959, 36
  store i64 %4031, i64* %3, align 8
  %4032 = inttoptr i64 %4030 to i32*
  %4033 = load i32, i32* %4032, align 4
  %4034 = sext i32 %4033 to i64
  %4035 = shl nsw i64 %4034, 6
  store i64 %4035, i64* %RCX.i1818, align 8
  %4036 = add i64 %4035, %4002
  store i64 %4036, i64* %RDX.i1820, align 8
  %4037 = icmp ult i64 %4036, %4002
  %4038 = icmp ult i64 %4036, %4035
  %4039 = or i1 %4037, %4038
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %14, align 1
  %4041 = trunc i64 %4036 to i32
  %4042 = and i32 %4041, 255
  %4043 = tail call i32 @llvm.ctpop.i32(i32 %4042)
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = xor i8 %4045, 1
  store i8 %4046, i8* %21, align 1
  %4047 = xor i64 %4002, %4036
  %4048 = lshr i64 %4047, 4
  %4049 = trunc i64 %4048 to i8
  %4050 = and i8 %4049, 1
  store i8 %4050, i8* %26, align 1
  %4051 = icmp eq i64 %4036, 0
  %4052 = zext i1 %4051 to i8
  store i8 %4052, i8* %29, align 1
  %4053 = lshr i64 %4036, 63
  %4054 = trunc i64 %4053 to i8
  store i8 %4054, i8* %32, align 1
  %4055 = lshr i64 %4034, 57
  %4056 = and i64 %4055, 1
  %4057 = xor i64 %4053, %4019
  %4058 = xor i64 %4053, %4056
  %4059 = add nuw nsw i64 %4057, %4058
  %4060 = icmp eq i64 %4059, 2
  %4061 = zext i1 %4060 to i8
  store i8 %4061, i8* %38, align 1
  %4062 = add i64 %4029, -2164
  %4063 = add i64 %3959, 50
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i32*
  %4065 = load i32, i32* %4064, align 4
  %4066 = sext i32 %4065 to i64
  store i64 %4066, i64* %RCX.i1818, align 8
  %4067 = shl nsw i64 %4066, 2
  %4068 = add i64 %4036, 16
  %4069 = add i64 %4068, %4067
  %4070 = load i32, i32* %ESI.i1822, align 4
  %4071 = add i64 %3959, 54
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4069 to i32*
  store i32 %4070, i32* %4072, align 4
  %4073 = load i64, i64* %RBP.i, align 8
  %4074 = add i64 %4073, -2068
  %4075 = load i64, i64* %3, align 8
  %4076 = add i64 %4075, 6
  store i64 %4076, i64* %3, align 8
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077, align 4
  %4079 = zext i32 %4078 to i64
  store i64 %4079, i64* %RSI.i1859, align 8
  %4080 = add i64 %4073, -2072
  %4081 = add i64 %4075, 12
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = sub i32 %4078, %4083
  %4085 = zext i32 %4084 to i64
  store i64 %4085, i64* %RSI.i1859, align 8
  %4086 = icmp ult i32 %4078, %4083
  %4087 = zext i1 %4086 to i8
  store i8 %4087, i8* %14, align 1
  %4088 = and i32 %4084, 255
  %4089 = tail call i32 @llvm.ctpop.i32(i32 %4088)
  %4090 = trunc i32 %4089 to i8
  %4091 = and i8 %4090, 1
  %4092 = xor i8 %4091, 1
  store i8 %4092, i8* %21, align 1
  %4093 = xor i32 %4083, %4078
  %4094 = xor i32 %4093, %4084
  %4095 = lshr i32 %4094, 4
  %4096 = trunc i32 %4095 to i8
  %4097 = and i8 %4096, 1
  store i8 %4097, i8* %26, align 1
  %4098 = icmp eq i32 %4084, 0
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %29, align 1
  %4100 = lshr i32 %4084, 31
  %4101 = trunc i32 %4100 to i8
  store i8 %4101, i8* %32, align 1
  %4102 = lshr i32 %4078, 31
  %4103 = lshr i32 %4083, 31
  %4104 = xor i32 %4103, %4102
  %4105 = xor i32 %4100, %4102
  %4106 = add nuw nsw i32 %4105, %4104
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %38, align 1
  %4109 = add i64 %4073, -2148
  %4110 = add i64 %4075, 19
  store i64 %4110, i64* %3, align 8
  %4111 = inttoptr i64 %4109 to i32*
  %4112 = load i32, i32* %4111, align 4
  %4113 = sext i32 %4112 to i64
  %4114 = shl nsw i64 %4113, 8
  store i64 %4114, i64* %RCX.i1818, align 8
  %4115 = load i64, i64* %RAX.i1400, align 8
  %4116 = add i64 %4114, %4115
  store i64 %4116, i64* %RAX.i1400, align 8
  %4117 = icmp ult i64 %4116, %4115
  %4118 = icmp ult i64 %4116, %4114
  %4119 = or i1 %4117, %4118
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %14, align 1
  %4121 = trunc i64 %4116 to i32
  %4122 = and i32 %4121, 255
  %4123 = tail call i32 @llvm.ctpop.i32(i32 %4122)
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = xor i8 %4125, 1
  store i8 %4126, i8* %21, align 1
  %4127 = xor i64 %4115, %4116
  %4128 = lshr i64 %4127, 4
  %4129 = trunc i64 %4128 to i8
  %4130 = and i8 %4129, 1
  store i8 %4130, i8* %26, align 1
  %4131 = icmp eq i64 %4116, 0
  %4132 = zext i1 %4131 to i8
  store i8 %4132, i8* %29, align 1
  %4133 = lshr i64 %4116, 63
  %4134 = trunc i64 %4133 to i8
  store i8 %4134, i8* %32, align 1
  %4135 = lshr i64 %4115, 63
  %4136 = lshr i64 %4113, 55
  %4137 = and i64 %4136, 1
  %4138 = xor i64 %4133, %4135
  %4139 = xor i64 %4133, %4137
  %4140 = add nuw nsw i64 %4138, %4139
  %4141 = icmp eq i64 %4140, 2
  %4142 = zext i1 %4141 to i8
  store i8 %4142, i8* %38, align 1
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -2160
  %4145 = add i64 %4075, 33
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = sext i32 %4147 to i64
  %4149 = shl nsw i64 %4148, 6
  store i64 %4149, i64* %RCX.i1818, align 8
  %4150 = add i64 %4149, %4116
  store i64 %4150, i64* %RAX.i1400, align 8
  %4151 = icmp ult i64 %4150, %4116
  %4152 = icmp ult i64 %4150, %4149
  %4153 = or i1 %4151, %4152
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %14, align 1
  %4155 = trunc i64 %4150 to i32
  %4156 = and i32 %4155, 255
  %4157 = tail call i32 @llvm.ctpop.i32(i32 %4156)
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  store i8 %4160, i8* %21, align 1
  %4161 = xor i64 %4116, %4150
  %4162 = lshr i64 %4161, 4
  %4163 = trunc i64 %4162 to i8
  %4164 = and i8 %4163, 1
  store i8 %4164, i8* %26, align 1
  %4165 = icmp eq i64 %4150, 0
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %29, align 1
  %4167 = lshr i64 %4150, 63
  %4168 = trunc i64 %4167 to i8
  store i8 %4168, i8* %32, align 1
  %4169 = lshr i64 %4148, 57
  %4170 = and i64 %4169, 1
  %4171 = xor i64 %4167, %4133
  %4172 = xor i64 %4167, %4170
  %4173 = add nuw nsw i64 %4171, %4172
  %4174 = icmp eq i64 %4173, 2
  %4175 = zext i1 %4174 to i8
  store i8 %4175, i8* %38, align 1
  %4176 = add i64 %4143, -2164
  %4177 = add i64 %4075, 47
  store i64 %4177, i64* %3, align 8
  %4178 = inttoptr i64 %4176 to i32*
  %4179 = load i32, i32* %4178, align 4
  %4180 = sext i32 %4179 to i64
  store i64 %4180, i64* %RCX.i1818, align 8
  %4181 = shl nsw i64 %4180, 2
  %4182 = add i64 %4150, 48
  %4183 = add i64 %4182, %4181
  %4184 = load i32, i32* %ESI.i1822, align 4
  %4185 = add i64 %4075, 51
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4183 to i32*
  store i32 %4184, i32* %4186, align 4
  %4187 = load i64, i64* %RBP.i, align 8
  %4188 = add i64 %4187, -2152
  %4189 = load i64, i64* %3, align 8
  %4190 = add i64 %4189, 10
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4188 to i32*
  store i32 0, i32* %4191, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_449900

block_.L_449900:                                  ; preds = %block_.L_449968, %block_4496b5
  %4192 = phi i64 [ %.pre172, %block_4496b5 ], [ %4423, %block_.L_449968 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_4496b5 ], [ %MEMORY.23, %block_.L_449968 ]
  %4193 = load i64, i64* %RBP.i, align 8
  %4194 = add i64 %4193, -2152
  %4195 = add i64 %4192, 7
  store i64 %4195, i64* %3, align 8
  %4196 = inttoptr i64 %4194 to i32*
  %4197 = load i32, i32* %4196, align 4
  %4198 = add i32 %4197, -4
  %4199 = icmp ult i32 %4197, 4
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %14, align 1
  %4201 = and i32 %4198, 255
  %4202 = tail call i32 @llvm.ctpop.i32(i32 %4201)
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  %4205 = xor i8 %4204, 1
  store i8 %4205, i8* %21, align 1
  %4206 = xor i32 %4198, %4197
  %4207 = lshr i32 %4206, 4
  %4208 = trunc i32 %4207 to i8
  %4209 = and i8 %4208, 1
  store i8 %4209, i8* %26, align 1
  %4210 = icmp eq i32 %4198, 0
  %4211 = zext i1 %4210 to i8
  store i8 %4211, i8* %29, align 1
  %4212 = lshr i32 %4198, 31
  %4213 = trunc i32 %4212 to i8
  store i8 %4213, i8* %32, align 1
  %4214 = lshr i32 %4197, 31
  %4215 = xor i32 %4212, %4214
  %4216 = add nuw nsw i32 %4215, %4214
  %4217 = icmp eq i32 %4216, 2
  %4218 = zext i1 %4217 to i8
  store i8 %4218, i8* %38, align 1
  %4219 = icmp ne i8 %4213, 0
  %4220 = xor i1 %4219, %4217
  %.v198 = select i1 %4220, i64 13, i64 129
  %4221 = add i64 %4192, %.v198
  store i64 %4221, i64* %3, align 8
  %4222 = add i64 %4193, -2148
  br i1 %4220, label %block_44990d, label %block_.L_449981

block_44990d:                                     ; preds = %block_.L_449900
  %4223 = add i64 %4221, 6
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4222 to i32*
  %4225 = load i32, i32* %4224, align 4
  %4226 = zext i32 %4225 to i64
  store i64 %4226, i64* %RAX.i1400, align 8
  %4227 = add i64 %4221, 12
  store i64 %4227, i64* %3, align 8
  %4228 = load i32, i32* %4196, align 4
  %4229 = add i32 %4228, %4225
  %4230 = zext i32 %4229 to i64
  store i64 %4230, i64* %RAX.i1400, align 8
  %4231 = and i32 %4229, 255
  %4232 = tail call i32 @llvm.ctpop.i32(i32 %4231)
  %4233 = trunc i32 %4232 to i8
  %4234 = and i8 %4233, 1
  %4235 = xor i8 %4234, 1
  %4236 = icmp eq i32 %4229, 0
  %4237 = zext i1 %4236 to i8
  %4238 = lshr i32 %4229, 31
  %4239 = trunc i32 %4238 to i8
  store i8 0, i8* %14, align 1
  store i8 %4235, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %4237, i8* %29, align 1
  store i8 %4239, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v222 = select i1 %4236, i64 91, i64 21
  %4240 = add i64 %4221, %.v222
  store i64 %4240, i64* %3, align 8
  br i1 %4236, label %block_.L_449968, label %block_449922

block_449922:                                     ; preds = %block_44990d
  %4241 = add i64 %4193, -2064
  store i64 %4241, i64* %RAX.i1400, align 8
  %4242 = add i64 %4240, 14
  store i64 %4242, i64* %3, align 8
  %4243 = load i32, i32* %4224, align 4
  %4244 = sext i32 %4243 to i64
  %4245 = shl nsw i64 %4244, 8
  store i64 %4245, i64* %RCX.i1818, align 8
  %4246 = add i64 %4245, %4241
  store i64 %4246, i64* %RAX.i1400, align 8
  %4247 = icmp ult i64 %4246, %4241
  %4248 = icmp ult i64 %4246, %4245
  %4249 = or i1 %4247, %4248
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %14, align 1
  %4251 = trunc i64 %4246 to i32
  %4252 = and i32 %4251, 255
  %4253 = tail call i32 @llvm.ctpop.i32(i32 %4252)
  %4254 = trunc i32 %4253 to i8
  %4255 = and i8 %4254, 1
  %4256 = xor i8 %4255, 1
  store i8 %4256, i8* %21, align 1
  %4257 = xor i64 %4241, %4246
  %4258 = lshr i64 %4257, 4
  %4259 = trunc i64 %4258 to i8
  %4260 = and i8 %4259, 1
  store i8 %4260, i8* %26, align 1
  %4261 = icmp eq i64 %4246, 0
  %4262 = zext i1 %4261 to i8
  store i8 %4262, i8* %29, align 1
  %4263 = lshr i64 %4246, 63
  %4264 = trunc i64 %4263 to i8
  store i8 %4264, i8* %32, align 1
  %4265 = lshr i64 %4241, 63
  %4266 = lshr i64 %4244, 55
  %4267 = and i64 %4266, 1
  %4268 = xor i64 %4263, %4265
  %4269 = xor i64 %4263, %4267
  %4270 = add nuw nsw i64 %4268, %4269
  %4271 = icmp eq i64 %4270, 2
  %4272 = zext i1 %4271 to i8
  store i8 %4272, i8* %38, align 1
  %4273 = add i64 %4193, -2160
  %4274 = add i64 %4240, 28
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i32*
  %4276 = load i32, i32* %4275, align 4
  %4277 = sext i32 %4276 to i64
  %4278 = shl nsw i64 %4277, 6
  store i64 %4278, i64* %RCX.i1818, align 8
  %4279 = add i64 %4278, %4246
  store i64 %4279, i64* %RAX.i1400, align 8
  %4280 = icmp ult i64 %4279, %4246
  %4281 = icmp ult i64 %4279, %4278
  %4282 = or i1 %4280, %4281
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %14, align 1
  %4284 = trunc i64 %4279 to i32
  %4285 = and i32 %4284, 255
  %4286 = tail call i32 @llvm.ctpop.i32(i32 %4285)
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = xor i8 %4288, 1
  store i8 %4289, i8* %21, align 1
  %4290 = xor i64 %4246, %4279
  %4291 = lshr i64 %4290, 4
  %4292 = trunc i64 %4291 to i8
  %4293 = and i8 %4292, 1
  store i8 %4293, i8* %26, align 1
  %4294 = icmp eq i64 %4279, 0
  %4295 = zext i1 %4294 to i8
  store i8 %4295, i8* %29, align 1
  %4296 = lshr i64 %4279, 63
  %4297 = trunc i64 %4296 to i8
  store i8 %4297, i8* %32, align 1
  %4298 = lshr i64 %4277, 57
  %4299 = and i64 %4298, 1
  %4300 = xor i64 %4296, %4263
  %4301 = xor i64 %4296, %4299
  %4302 = add nuw nsw i64 %4300, %4301
  %4303 = icmp eq i64 %4302, 2
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %38, align 1
  %4305 = load i64, i64* %RBP.i, align 8
  %4306 = add i64 %4305, -2152
  %4307 = add i64 %4240, 42
  store i64 %4307, i64* %3, align 8
  %4308 = inttoptr i64 %4306 to i32*
  %4309 = load i32, i32* %4308, align 4
  %4310 = sext i32 %4309 to i64
  %4311 = shl nsw i64 %4310, 4
  store i64 %4311, i64* %RCX.i1818, align 8
  %4312 = add i64 %4311, %4279
  store i64 %4312, i64* %RAX.i1400, align 8
  %4313 = icmp ult i64 %4312, %4279
  %4314 = icmp ult i64 %4312, %4311
  %4315 = or i1 %4313, %4314
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %14, align 1
  %4317 = trunc i64 %4312 to i32
  %4318 = and i32 %4317, 255
  %4319 = tail call i32 @llvm.ctpop.i32(i32 %4318)
  %4320 = trunc i32 %4319 to i8
  %4321 = and i8 %4320, 1
  %4322 = xor i8 %4321, 1
  store i8 %4322, i8* %21, align 1
  %4323 = xor i64 %4311, %4279
  %4324 = xor i64 %4323, %4312
  %4325 = lshr i64 %4324, 4
  %4326 = trunc i64 %4325 to i8
  %4327 = and i8 %4326, 1
  store i8 %4327, i8* %26, align 1
  %4328 = icmp eq i64 %4312, 0
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %29, align 1
  %4330 = lshr i64 %4312, 63
  %4331 = trunc i64 %4330 to i8
  store i8 %4331, i8* %32, align 1
  %4332 = lshr i64 %4310, 59
  %4333 = and i64 %4332, 1
  %4334 = xor i64 %4330, %4296
  %4335 = xor i64 %4330, %4333
  %4336 = add nuw nsw i64 %4334, %4335
  %4337 = icmp eq i64 %4336, 2
  %4338 = zext i1 %4337 to i8
  store i8 %4338, i8* %38, align 1
  %4339 = add i64 %4305, -2164
  %4340 = add i64 %4240, 56
  store i64 %4340, i64* %3, align 8
  %4341 = inttoptr i64 %4339 to i32*
  %4342 = load i32, i32* %4341, align 4
  %4343 = sext i32 %4342 to i64
  store i64 %4343, i64* %RCX.i1818, align 8
  %4344 = shl nsw i64 %4343, 2
  %4345 = add i64 %4344, %4312
  %4346 = add i64 %4240, 59
  store i64 %4346, i64* %3, align 8
  %4347 = inttoptr i64 %4345 to i32*
  %4348 = load i32, i32* %4347, align 4
  %4349 = zext i32 %4348 to i64
  store i64 %4349, i64* %RDI.i490, align 8
  %4350 = add i64 %4240, -297250
  %4351 = add i64 %4240, 64
  %4352 = load i64, i64* %6, align 8
  %4353 = add i64 %4352, -8
  %4354 = inttoptr i64 %4353 to i64*
  store i64 %4351, i64* %4354, align 8
  store i64 %4353, i64* %6, align 8
  store i64 %4350, i64* %3, align 8
  %4355 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.22)
  %4356 = load i64, i64* %RAX.i1400, align 8
  %4357 = load i64, i64* %RBP.i, align 8
  %4358 = add i64 %4357, -12
  %4359 = load i64, i64* %3, align 8
  %4360 = add i64 %4359, 3
  store i64 %4360, i64* %3, align 8
  %4361 = trunc i64 %4356 to i32
  %4362 = inttoptr i64 %4358 to i32*
  %4363 = load i32, i32* %4362, align 4
  %4364 = add i32 %4363, %4361
  %4365 = zext i32 %4364 to i64
  store i64 %4365, i64* %RAX.i1400, align 8
  %4366 = icmp ult i32 %4364, %4361
  %4367 = icmp ult i32 %4364, %4363
  %4368 = or i1 %4366, %4367
  %4369 = zext i1 %4368 to i8
  store i8 %4369, i8* %14, align 1
  %4370 = and i32 %4364, 255
  %4371 = tail call i32 @llvm.ctpop.i32(i32 %4370)
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = xor i8 %4373, 1
  store i8 %4374, i8* %21, align 1
  %4375 = xor i32 %4363, %4361
  %4376 = xor i32 %4375, %4364
  %4377 = lshr i32 %4376, 4
  %4378 = trunc i32 %4377 to i8
  %4379 = and i8 %4378, 1
  store i8 %4379, i8* %26, align 1
  %4380 = icmp eq i32 %4364, 0
  %4381 = zext i1 %4380 to i8
  store i8 %4381, i8* %29, align 1
  %4382 = lshr i32 %4364, 31
  %4383 = trunc i32 %4382 to i8
  store i8 %4383, i8* %32, align 1
  %4384 = lshr i32 %4361, 31
  %4385 = lshr i32 %4363, 31
  %4386 = xor i32 %4382, %4384
  %4387 = xor i32 %4382, %4385
  %4388 = add nuw nsw i32 %4386, %4387
  %4389 = icmp eq i32 %4388, 2
  %4390 = zext i1 %4389 to i8
  store i8 %4390, i8* %38, align 1
  %4391 = add i64 %4359, 6
  store i64 %4391, i64* %3, align 8
  store i32 %4364, i32* %4362, align 4
  %.pre173 = load i64, i64* %3, align 8
  %.pre174 = load i64, i64* %RBP.i, align 8
  br label %block_.L_449968

block_.L_449968:                                  ; preds = %block_449922, %block_44990d
  %4392 = phi i64 [ %4193, %block_44990d ], [ %.pre174, %block_449922 ]
  %4393 = phi i64 [ %4240, %block_44990d ], [ %.pre173, %block_449922 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_44990d ], [ %4355, %block_449922 ]
  %4394 = add i64 %4392, -2152
  %4395 = add i64 %4393, 11
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i32*
  %4397 = load i32, i32* %4396, align 4
  %4398 = add i32 %4397, 1
  %4399 = zext i32 %4398 to i64
  store i64 %4399, i64* %RAX.i1400, align 8
  %4400 = icmp eq i32 %4397, -1
  %4401 = icmp eq i32 %4398, 0
  %4402 = or i1 %4400, %4401
  %4403 = zext i1 %4402 to i8
  store i8 %4403, i8* %14, align 1
  %4404 = and i32 %4398, 255
  %4405 = tail call i32 @llvm.ctpop.i32(i32 %4404)
  %4406 = trunc i32 %4405 to i8
  %4407 = and i8 %4406, 1
  %4408 = xor i8 %4407, 1
  store i8 %4408, i8* %21, align 1
  %4409 = xor i32 %4398, %4397
  %4410 = lshr i32 %4409, 4
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  store i8 %4412, i8* %26, align 1
  %4413 = zext i1 %4401 to i8
  store i8 %4413, i8* %29, align 1
  %4414 = lshr i32 %4398, 31
  %4415 = trunc i32 %4414 to i8
  store i8 %4415, i8* %32, align 1
  %4416 = lshr i32 %4397, 31
  %4417 = xor i32 %4414, %4416
  %4418 = add nuw nsw i32 %4417, %4414
  %4419 = icmp eq i32 %4418, 2
  %4420 = zext i1 %4419 to i8
  store i8 %4420, i8* %38, align 1
  %4421 = add i64 %4393, 20
  store i64 %4421, i64* %3, align 8
  store i32 %4398, i32* %4396, align 4
  %4422 = load i64, i64* %3, align 8
  %4423 = add i64 %4422, -124
  store i64 %4423, i64* %3, align 8
  br label %block_.L_449900

block_.L_449981:                                  ; preds = %block_.L_449900
  %4424 = add i64 %4221, 11
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4222 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = add i32 %4426, 1
  %4428 = zext i32 %4427 to i64
  store i64 %4428, i64* %RAX.i1400, align 8
  %4429 = icmp eq i32 %4426, -1
  %4430 = icmp eq i32 %4427, 0
  %4431 = or i1 %4429, %4430
  %4432 = zext i1 %4431 to i8
  store i8 %4432, i8* %14, align 1
  %4433 = and i32 %4427, 255
  %4434 = tail call i32 @llvm.ctpop.i32(i32 %4433)
  %4435 = trunc i32 %4434 to i8
  %4436 = and i8 %4435, 1
  %4437 = xor i8 %4436, 1
  store i8 %4437, i8* %21, align 1
  %4438 = xor i32 %4427, %4426
  %4439 = lshr i32 %4438, 4
  %4440 = trunc i32 %4439 to i8
  %4441 = and i8 %4440, 1
  store i8 %4441, i8* %26, align 1
  %4442 = zext i1 %4430 to i8
  store i8 %4442, i8* %29, align 1
  %4443 = lshr i32 %4427, 31
  %4444 = trunc i32 %4443 to i8
  store i8 %4444, i8* %32, align 1
  %4445 = lshr i32 %4426, 31
  %4446 = xor i32 %4443, %4445
  %4447 = add nuw nsw i32 %4446, %4443
  %4448 = icmp eq i32 %4447, 2
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %38, align 1
  %4450 = add i64 %4221, 20
  store i64 %4450, i64* %3, align 8
  store i32 %4427, i32* %4425, align 4
  %4451 = load i64, i64* %3, align 8
  %4452 = add i64 %4451, -749
  store i64 %4452, i64* %3, align 8
  br label %block_.L_4496a8

block_.L_44999a:                                  ; preds = %block_.L_4496a8
  %4453 = add i64 %2945, -2160
  %4454 = add i64 %2973, 11
  store i64 %4454, i64* %3, align 8
  %4455 = inttoptr i64 %4453 to i32*
  %4456 = load i32, i32* %4455, align 4
  %4457 = add i32 %4456, 1
  %4458 = zext i32 %4457 to i64
  store i64 %4458, i64* %RAX.i1400, align 8
  %4459 = icmp eq i32 %4456, -1
  %4460 = icmp eq i32 %4457, 0
  %4461 = or i1 %4459, %4460
  %4462 = zext i1 %4461 to i8
  store i8 %4462, i8* %14, align 1
  %4463 = and i32 %4457, 255
  %4464 = tail call i32 @llvm.ctpop.i32(i32 %4463)
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  %4467 = xor i8 %4466, 1
  store i8 %4467, i8* %21, align 1
  %4468 = xor i32 %4457, %4456
  %4469 = lshr i32 %4468, 4
  %4470 = trunc i32 %4469 to i8
  %4471 = and i8 %4470, 1
  store i8 %4471, i8* %26, align 1
  %4472 = zext i1 %4460 to i8
  store i8 %4472, i8* %29, align 1
  %4473 = lshr i32 %4457, 31
  %4474 = trunc i32 %4473 to i8
  store i8 %4474, i8* %32, align 1
  %4475 = lshr i32 %4456, 31
  %4476 = xor i32 %4473, %4475
  %4477 = add nuw nsw i32 %4476, %4473
  %4478 = icmp eq i32 %4477, 2
  %4479 = zext i1 %4478 to i8
  store i8 %4479, i8* %38, align 1
  %4480 = add i64 %2973, 20
  store i64 %4480, i64* %3, align 8
  store i32 %4457, i32* %4455, align 4
  %4481 = load i64, i64* %3, align 8
  %4482 = add i64 %4481, -1470
  store i64 %4482, i64* %3, align 8
  br label %block_.L_4493f0

block_.L_4499b3:                                  ; preds = %block_.L_4493f0
  %4483 = add i64 %1559, -2164
  %4484 = add i64 %1587, 11
  store i64 %4484, i64* %3, align 8
  %4485 = inttoptr i64 %4483 to i32*
  %4486 = load i32, i32* %4485, align 4
  %4487 = add i32 %4486, 1
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RAX.i1400, align 8
  %4489 = icmp eq i32 %4486, -1
  %4490 = icmp eq i32 %4487, 0
  %4491 = or i1 %4489, %4490
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %14, align 1
  %4493 = and i32 %4487, 255
  %4494 = tail call i32 @llvm.ctpop.i32(i32 %4493)
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  store i8 %4497, i8* %21, align 1
  %4498 = xor i32 %4487, %4486
  %4499 = lshr i32 %4498, 4
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  store i8 %4501, i8* %26, align 1
  %4502 = zext i1 %4490 to i8
  store i8 %4502, i8* %29, align 1
  %4503 = lshr i32 %4487, 31
  %4504 = trunc i32 %4503 to i8
  store i8 %4504, i8* %32, align 1
  %4505 = lshr i32 %4486, 31
  %4506 = xor i32 %4503, %4505
  %4507 = add nuw nsw i32 %4506, %4503
  %4508 = icmp eq i32 %4507, 2
  %4509 = zext i1 %4508 to i8
  store i8 %4509, i8* %38, align 1
  %4510 = add i64 %1587, 20
  store i64 %4510, i64* %3, align 8
  store i32 %4487, i32* %4485, align 4
  %4511 = load i64, i64* %3, align 8
  %4512 = add i64 %4511, -1518
  store i64 %4512, i64* %3, align 8
  br label %block_.L_4493d9

block_.L_4499cc:                                  ; preds = %block_.L_4493d9
  %4513 = add i64 %1526, -2152
  %4514 = add i64 %1554, 10
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i32*
  store i32 0, i32* %4515, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_4499d6

block_.L_4499d6:                                  ; preds = %block_.L_449a65, %block_.L_4499cc
  %4516 = phi i64 [ %.pre160, %block_.L_4499cc ], [ %4771, %block_.L_449a65 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.18, %block_.L_4499cc ], [ %MEMORY.25, %block_.L_449a65 ]
  %4517 = load i64, i64* %RBP.i, align 8
  %4518 = add i64 %4517, -2152
  %4519 = add i64 %4516, 7
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i32*
  %4521 = load i32, i32* %4520, align 4
  %4522 = add i32 %4521, -4
  %4523 = icmp ult i32 %4521, 4
  %4524 = zext i1 %4523 to i8
  store i8 %4524, i8* %14, align 1
  %4525 = and i32 %4522, 255
  %4526 = tail call i32 @llvm.ctpop.i32(i32 %4525)
  %4527 = trunc i32 %4526 to i8
  %4528 = and i8 %4527, 1
  %4529 = xor i8 %4528, 1
  store i8 %4529, i8* %21, align 1
  %4530 = xor i32 %4522, %4521
  %4531 = lshr i32 %4530, 4
  %4532 = trunc i32 %4531 to i8
  %4533 = and i8 %4532, 1
  store i8 %4533, i8* %26, align 1
  %4534 = icmp eq i32 %4522, 0
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %29, align 1
  %4536 = lshr i32 %4522, 31
  %4537 = trunc i32 %4536 to i8
  store i8 %4537, i8* %32, align 1
  %4538 = lshr i32 %4521, 31
  %4539 = xor i32 %4536, %4538
  %4540 = add nuw nsw i32 %4539, %4538
  %4541 = icmp eq i32 %4540, 2
  %4542 = zext i1 %4541 to i8
  store i8 %4542, i8* %38, align 1
  %4543 = icmp ne i8 %4537, 0
  %4544 = xor i1 %4543, %4541
  %.v217 = select i1 %4544, i64 13, i64 168
  %4545 = add i64 %4516, %.v217
  store i64 %4545, i64* %3, align 8
  br i1 %4544, label %block_4499e3, label %block_.L_449a7e

block_4499e3:                                     ; preds = %block_.L_4499d6
  %4546 = add i64 %4517, -2148
  %4547 = add i64 %4545, 10
  store i64 %4547, i64* %3, align 8
  %4548 = inttoptr i64 %4546 to i32*
  store i32 0, i32* %4548, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_4499ed

block_.L_4499ed:                                  ; preds = %routine_idivl__ecx.exit488, %block_4499e3
  %4549 = phi i64 [ %.pre166, %block_4499e3 ], [ %4741, %routine_idivl__ecx.exit488 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_4499e3 ], [ %4649, %routine_idivl__ecx.exit488 ]
  %4550 = load i64, i64* %RBP.i, align 8
  %4551 = add i64 %4550, -2148
  %4552 = add i64 %4549, 7
  store i64 %4552, i64* %3, align 8
  %4553 = inttoptr i64 %4551 to i32*
  %4554 = load i32, i32* %4553, align 4
  %4555 = add i32 %4554, -4
  %4556 = icmp ult i32 %4554, 4
  %4557 = zext i1 %4556 to i8
  store i8 %4557, i8* %14, align 1
  %4558 = and i32 %4555, 255
  %4559 = tail call i32 @llvm.ctpop.i32(i32 %4558)
  %4560 = trunc i32 %4559 to i8
  %4561 = and i8 %4560, 1
  %4562 = xor i8 %4561, 1
  store i8 %4562, i8* %21, align 1
  %4563 = xor i32 %4555, %4554
  %4564 = lshr i32 %4563, 4
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  store i8 %4566, i8* %26, align 1
  %4567 = icmp eq i32 %4555, 0
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %29, align 1
  %4569 = lshr i32 %4555, 31
  %4570 = trunc i32 %4569 to i8
  store i8 %4570, i8* %32, align 1
  %4571 = lshr i32 %4554, 31
  %4572 = xor i32 %4569, %4571
  %4573 = add nuw nsw i32 %4572, %4571
  %4574 = icmp eq i32 %4573, 2
  %4575 = zext i1 %4574 to i8
  store i8 %4575, i8* %38, align 1
  %4576 = icmp ne i8 %4570, 0
  %4577 = xor i1 %4576, %4574
  %.v195 = select i1 %4577, i64 13, i64 120
  %4578 = add i64 %4549, %.v195
  store i64 %4578, i64* %3, align 8
  br i1 %4577, label %block_4499fa, label %block_.L_449a65

block_4499fa:                                     ; preds = %block_.L_4499ed
  %4579 = add i64 %4550, -2144
  store i64 %4579, i64* %RAX.i1400, align 8
  store i64 4, i64* %RCX.i1818, align 8
  %4580 = add i64 %4550, -2064
  store i64 %4580, i64* %RDX.i1820, align 8
  %4581 = add i64 %4578, 26
  store i64 %4581, i64* %3, align 8
  %4582 = load i32, i32* %4553, align 4
  %4583 = sext i32 %4582 to i64
  %4584 = shl nsw i64 %4583, 6
  store i64 %4584, i64* %RSI.i1859, align 8
  %4585 = add i64 %4584, %4580
  store i64 %4585, i64* %RDX.i1820, align 8
  %4586 = icmp ult i64 %4585, %4580
  %4587 = icmp ult i64 %4585, %4584
  %4588 = or i1 %4586, %4587
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %14, align 1
  %4590 = trunc i64 %4585 to i32
  %4591 = and i32 %4590, 255
  %4592 = tail call i32 @llvm.ctpop.i32(i32 %4591)
  %4593 = trunc i32 %4592 to i8
  %4594 = and i8 %4593, 1
  %4595 = xor i8 %4594, 1
  store i8 %4595, i8* %21, align 1
  %4596 = xor i64 %4580, %4585
  %4597 = lshr i64 %4596, 4
  %4598 = trunc i64 %4597 to i8
  %4599 = and i8 %4598, 1
  store i8 %4599, i8* %26, align 1
  %4600 = icmp eq i64 %4585, 0
  %4601 = zext i1 %4600 to i8
  store i8 %4601, i8* %29, align 1
  %4602 = lshr i64 %4585, 63
  %4603 = trunc i64 %4602 to i8
  store i8 %4603, i8* %32, align 1
  %4604 = lshr i64 %4580, 63
  %4605 = lshr i64 %4583, 57
  %4606 = and i64 %4605, 1
  %4607 = xor i64 %4602, %4604
  %4608 = xor i64 %4602, %4606
  %4609 = add nuw nsw i64 %4607, %4608
  %4610 = icmp eq i64 %4609, 2
  %4611 = zext i1 %4610 to i8
  store i8 %4611, i8* %38, align 1
  %4612 = add i64 %4550, -2152
  %4613 = add i64 %4578, 40
  store i64 %4613, i64* %3, align 8
  %4614 = inttoptr i64 %4612 to i32*
  %4615 = load i32, i32* %4614, align 4
  %4616 = sext i32 %4615 to i64
  store i64 %4616, i64* %RSI.i1859, align 8
  %4617 = shl nsw i64 %4616, 2
  %4618 = add i64 %4617, %4585
  %4619 = add i64 %4578, 43
  store i64 %4619, i64* %3, align 8
  %4620 = inttoptr i64 %4618 to i32*
  %4621 = load i32, i32* %4620, align 4
  %4622 = zext i32 %4621 to i64
  store i64 %4622, i64* %RDI.i490, align 8
  %4623 = add i64 %4550, -2648
  %4624 = add i64 %4578, 50
  store i64 %4624, i64* %3, align 8
  %4625 = inttoptr i64 %4623 to i64*
  store i64 %4579, i64* %4625, align 8
  %4626 = load i32, i32* %EDI.i, align 4
  %4627 = zext i32 %4626 to i64
  %4628 = load i64, i64* %3, align 8
  store i64 %4627, i64* %RAX.i1400, align 8
  %4629 = sext i32 %4626 to i64
  %4630 = lshr i64 %4629, 32
  store i64 %4630, i64* %RDX.i1848, align 8
  %4631 = load i32, i32* %ECX.i487, align 4
  %4632 = add i64 %4628, 5
  store i64 %4632, i64* %3, align 8
  %4633 = sext i32 %4631 to i64
  %4634 = shl nuw i64 %4630, 32
  %4635 = or i64 %4634, %4627
  %4636 = sdiv i64 %4635, %4633
  %4637 = shl i64 %4636, 32
  %4638 = ashr exact i64 %4637, 32
  %4639 = icmp eq i64 %4636, %4638
  br i1 %4639, label %4642, label %4640

; <label>:4640:                                   ; preds = %block_4499fa
  %4641 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4632, %struct.Memory* %MEMORY.25)
  %.pre167 = load i64, i64* %3, align 8
  %.pre168 = load i32, i32* %EAX.i1420, align 4
  br label %routine_idivl__ecx.exit488

; <label>:4642:                                   ; preds = %block_4499fa
  %4643 = srem i64 %4635, %4633
  %4644 = and i64 %4636, 4294967295
  store i64 %4644, i64* %RAX.i1400, align 8
  %4645 = and i64 %4643, 4294967295
  store i64 %4645, i64* %RDX.i1820, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4646 = trunc i64 %4636 to i32
  br label %routine_idivl__ecx.exit488

routine_idivl__ecx.exit488:                       ; preds = %4642, %4640
  %4647 = phi i32 [ %.pre168, %4640 ], [ %4646, %4642 ]
  %4648 = phi i64 [ %.pre167, %4640 ], [ %4632, %4642 ]
  %4649 = phi %struct.Memory* [ %4641, %4640 ], [ %MEMORY.25, %4642 ]
  %4650 = load i64, i64* %RBP.i, align 8
  %4651 = add i64 %4650, -2148
  %4652 = add i64 %4648, 7
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to i32*
  %4654 = load i32, i32* %4653, align 4
  %4655 = sext i32 %4654 to i64
  %4656 = shl nsw i64 %4655, 4
  store i64 %4656, i64* %RSI.i1859, align 8
  %.lobit94 = lshr i32 %4654, 31
  %4657 = trunc i32 %.lobit94 to i8
  store i8 %4657, i8* %14, align 1
  %4658 = trunc i64 %4656 to i32
  %4659 = and i32 %4658, 240
  %4660 = tail call i32 @llvm.ctpop.i32(i32 %4659)
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  %4663 = xor i8 %4662, 1
  store i8 %4663, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4664 = icmp eq i32 %4654, 0
  %4665 = zext i1 %4664 to i8
  store i8 %4665, i8* %29, align 1
  %4666 = lshr i64 %4655, 59
  %4667 = trunc i64 %4666 to i8
  %4668 = and i8 %4667, 1
  store i8 %4668, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4669 = add i64 %4650, -2648
  %4670 = add i64 %4648, 18
  store i64 %4670, i64* %3, align 8
  %4671 = inttoptr i64 %4669 to i64*
  %4672 = load i64, i64* %4671, align 8
  %4673 = add i64 %4656, %4672
  store i64 %4673, i64* %R8.i1816, align 8
  %4674 = icmp ult i64 %4673, %4672
  %4675 = icmp ult i64 %4673, %4656
  %4676 = or i1 %4674, %4675
  %4677 = zext i1 %4676 to i8
  store i8 %4677, i8* %14, align 1
  %4678 = trunc i64 %4673 to i32
  %4679 = and i32 %4678, 255
  %4680 = tail call i32 @llvm.ctpop.i32(i32 %4679)
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = xor i8 %4682, 1
  store i8 %4683, i8* %21, align 1
  %4684 = xor i64 %4656, %4672
  %4685 = xor i64 %4684, %4673
  %4686 = lshr i64 %4685, 4
  %4687 = trunc i64 %4686 to i8
  %4688 = and i8 %4687, 1
  store i8 %4688, i8* %26, align 1
  %4689 = icmp eq i64 %4673, 0
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %29, align 1
  %4691 = lshr i64 %4673, 63
  %4692 = trunc i64 %4691 to i8
  store i8 %4692, i8* %32, align 1
  %4693 = lshr i64 %4672, 63
  %4694 = lshr i64 %4655, 59
  %4695 = and i64 %4694, 1
  %4696 = xor i64 %4691, %4693
  %4697 = xor i64 %4691, %4695
  %4698 = add nuw nsw i64 %4696, %4697
  %4699 = icmp eq i64 %4698, 2
  %4700 = zext i1 %4699 to i8
  store i8 %4700, i8* %38, align 1
  %4701 = add i64 %4650, -2152
  %4702 = add i64 %4648, 28
  store i64 %4702, i64* %3, align 8
  %4703 = inttoptr i64 %4701 to i32*
  %4704 = load i32, i32* %4703, align 4
  %4705 = sext i32 %4704 to i64
  store i64 %4705, i64* %RSI.i1859, align 8
  %4706 = shl nsw i64 %4705, 2
  %4707 = add i64 %4706, %4673
  %4708 = add i64 %4648, 32
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i32*
  store i32 %4647, i32* %4709, align 4
  %4710 = load i64, i64* %RBP.i, align 8
  %4711 = add i64 %4710, -2148
  %4712 = load i64, i64* %3, align 8
  %4713 = add i64 %4712, 6
  store i64 %4713, i64* %3, align 8
  %4714 = inttoptr i64 %4711 to i32*
  %4715 = load i32, i32* %4714, align 4
  %4716 = add i32 %4715, 1
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RAX.i1400, align 8
  %4718 = icmp eq i32 %4715, -1
  %4719 = icmp eq i32 %4716, 0
  %4720 = or i1 %4718, %4719
  %4721 = zext i1 %4720 to i8
  store i8 %4721, i8* %14, align 1
  %4722 = and i32 %4716, 255
  %4723 = tail call i32 @llvm.ctpop.i32(i32 %4722)
  %4724 = trunc i32 %4723 to i8
  %4725 = and i8 %4724, 1
  %4726 = xor i8 %4725, 1
  store i8 %4726, i8* %21, align 1
  %4727 = xor i32 %4716, %4715
  %4728 = lshr i32 %4727, 4
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  store i8 %4730, i8* %26, align 1
  %4731 = zext i1 %4719 to i8
  store i8 %4731, i8* %29, align 1
  %4732 = lshr i32 %4716, 31
  %4733 = trunc i32 %4732 to i8
  store i8 %4733, i8* %32, align 1
  %4734 = lshr i32 %4715, 31
  %4735 = xor i32 %4732, %4734
  %4736 = add nuw nsw i32 %4735, %4732
  %4737 = icmp eq i32 %4736, 2
  %4738 = zext i1 %4737 to i8
  store i8 %4738, i8* %38, align 1
  %4739 = add i64 %4712, 15
  store i64 %4739, i64* %3, align 8
  store i32 %4716, i32* %4714, align 4
  %4740 = load i64, i64* %3, align 8
  %4741 = add i64 %4740, -115
  store i64 %4741, i64* %3, align 8
  br label %block_.L_4499ed

block_.L_449a65:                                  ; preds = %block_.L_4499ed
  %4742 = add i64 %4550, -2152
  %4743 = add i64 %4578, 11
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = add i32 %4745, 1
  %4747 = zext i32 %4746 to i64
  store i64 %4747, i64* %RAX.i1400, align 8
  %4748 = icmp eq i32 %4745, -1
  %4749 = icmp eq i32 %4746, 0
  %4750 = or i1 %4748, %4749
  %4751 = zext i1 %4750 to i8
  store i8 %4751, i8* %14, align 1
  %4752 = and i32 %4746, 255
  %4753 = tail call i32 @llvm.ctpop.i32(i32 %4752)
  %4754 = trunc i32 %4753 to i8
  %4755 = and i8 %4754, 1
  %4756 = xor i8 %4755, 1
  store i8 %4756, i8* %21, align 1
  %4757 = xor i32 %4746, %4745
  %4758 = lshr i32 %4757, 4
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  store i8 %4760, i8* %26, align 1
  %4761 = zext i1 %4749 to i8
  store i8 %4761, i8* %29, align 1
  %4762 = lshr i32 %4746, 31
  %4763 = trunc i32 %4762 to i8
  store i8 %4763, i8* %32, align 1
  %4764 = lshr i32 %4745, 31
  %4765 = xor i32 %4762, %4764
  %4766 = add nuw nsw i32 %4765, %4762
  %4767 = icmp eq i32 %4766, 2
  %4768 = zext i1 %4767 to i8
  store i8 %4768, i8* %38, align 1
  %4769 = add i64 %4578, 20
  store i64 %4769, i64* %3, align 8
  store i32 %4746, i32* %4744, align 4
  %4770 = load i64, i64* %3, align 8
  %4771 = add i64 %4770, -163
  store i64 %4771, i64* %3, align 8
  br label %block_.L_4499d6

block_.L_449a7e:                                  ; preds = %block_.L_4499d6
  %4772 = add i64 %4545, 10
  store i64 %4772, i64* %3, align 8
  store i32 0, i32* %4520, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_449a88

block_.L_449a88:                                  ; preds = %block_449a95, %block_.L_449a7e
  %4773 = phi i64 [ %5226, %block_449a95 ], [ %.pre161, %block_.L_449a7e ]
  %4774 = load i64, i64* %RBP.i, align 8
  %4775 = add i64 %4774, -2152
  %4776 = add i64 %4773, 7
  store i64 %4776, i64* %3, align 8
  %4777 = inttoptr i64 %4775 to i32*
  %4778 = load i32, i32* %4777, align 4
  %4779 = add i32 %4778, -4
  %4780 = icmp ult i32 %4778, 4
  %4781 = zext i1 %4780 to i8
  store i8 %4781, i8* %14, align 1
  %4782 = and i32 %4779, 255
  %4783 = tail call i32 @llvm.ctpop.i32(i32 %4782)
  %4784 = trunc i32 %4783 to i8
  %4785 = and i8 %4784, 1
  %4786 = xor i8 %4785, 1
  store i8 %4786, i8* %21, align 1
  %4787 = xor i32 %4779, %4778
  %4788 = lshr i32 %4787, 4
  %4789 = trunc i32 %4788 to i8
  %4790 = and i8 %4789, 1
  store i8 %4790, i8* %26, align 1
  %4791 = icmp eq i32 %4779, 0
  %4792 = zext i1 %4791 to i8
  store i8 %4792, i8* %29, align 1
  %4793 = lshr i32 %4779, 31
  %4794 = trunc i32 %4793 to i8
  store i8 %4794, i8* %32, align 1
  %4795 = lshr i32 %4778, 31
  %4796 = xor i32 %4793, %4795
  %4797 = add nuw nsw i32 %4796, %4795
  %4798 = icmp eq i32 %4797, 2
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %38, align 1
  %4800 = icmp ne i8 %4794, 0
  %4801 = xor i1 %4800, %4798
  %.v218 = select i1 %4801, i64 13, i64 273
  %4802 = add i64 %4773, %.v218
  store i64 %4802, i64* %3, align 8
  br i1 %4801, label %block_449a95, label %block_.L_449b99

block_449a95:                                     ; preds = %block_.L_449a88
  %4803 = add i64 %4802, 7
  store i64 %4803, i64* %3, align 8
  %4804 = load i32, i32* %4777, align 4
  %4805 = sext i32 %4804 to i64
  store i64 %4805, i64* %RAX.i1400, align 8
  %4806 = shl nsw i64 %4805, 2
  %4807 = add i64 %4774, -2144
  %4808 = add i64 %4807, %4806
  %4809 = add i64 %4802, 14
  store i64 %4809, i64* %3, align 8
  %4810 = inttoptr i64 %4808 to i32*
  %4811 = load i32, i32* %4810, align 4
  %4812 = zext i32 %4811 to i64
  store i64 %4812, i64* %RCX.i1818, align 8
  %4813 = add i64 %4802, 21
  store i64 %4813, i64* %3, align 8
  %4814 = load i32, i32* %4777, align 4
  %4815 = sext i32 %4814 to i64
  store i64 %4815, i64* %RAX.i1400, align 8
  %4816 = shl nsw i64 %4815, 2
  %4817 = add nsw i64 %4816, -2096
  %4818 = add i64 %4817, %4774
  %4819 = add i64 %4802, 28
  store i64 %4819, i64* %3, align 8
  %4820 = inttoptr i64 %4818 to i32*
  %4821 = load i32, i32* %4820, align 4
  %4822 = add i32 %4821, %4811
  %4823 = zext i32 %4822 to i64
  store i64 %4823, i64* %RCX.i1818, align 8
  %4824 = icmp ult i32 %4822, %4811
  %4825 = icmp ult i32 %4822, %4821
  %4826 = or i1 %4824, %4825
  %4827 = zext i1 %4826 to i8
  store i8 %4827, i8* %14, align 1
  %4828 = and i32 %4822, 255
  %4829 = tail call i32 @llvm.ctpop.i32(i32 %4828)
  %4830 = trunc i32 %4829 to i8
  %4831 = and i8 %4830, 1
  %4832 = xor i8 %4831, 1
  store i8 %4832, i8* %21, align 1
  %4833 = xor i32 %4821, %4811
  %4834 = xor i32 %4833, %4822
  %4835 = lshr i32 %4834, 4
  %4836 = trunc i32 %4835 to i8
  %4837 = and i8 %4836, 1
  store i8 %4837, i8* %26, align 1
  %4838 = icmp eq i32 %4822, 0
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %29, align 1
  %4840 = lshr i32 %4822, 31
  %4841 = trunc i32 %4840 to i8
  store i8 %4841, i8* %32, align 1
  %4842 = lshr i32 %4811, 31
  %4843 = lshr i32 %4821, 31
  %4844 = xor i32 %4840, %4842
  %4845 = xor i32 %4840, %4843
  %4846 = add nuw nsw i32 %4844, %4845
  %4847 = icmp eq i32 %4846, 2
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %38, align 1
  %4849 = add i64 %4774, -2080
  %4850 = add i64 %4802, 34
  store i64 %4850, i64* %3, align 8
  %4851 = inttoptr i64 %4849 to i32*
  store i32 %4822, i32* %4851, align 4
  %4852 = load i64, i64* %RBP.i, align 8
  %4853 = add i64 %4852, -2152
  %4854 = load i64, i64* %3, align 8
  %4855 = add i64 %4854, 7
  store i64 %4855, i64* %3, align 8
  %4856 = inttoptr i64 %4853 to i32*
  %4857 = load i32, i32* %4856, align 4
  %4858 = sext i32 %4857 to i64
  store i64 %4858, i64* %RAX.i1400, align 8
  %4859 = shl nsw i64 %4858, 2
  %4860 = add i64 %4852, -2128
  %4861 = add i64 %4860, %4859
  %4862 = add i64 %4854, 14
  store i64 %4862, i64* %3, align 8
  %4863 = inttoptr i64 %4861 to i32*
  %4864 = load i32, i32* %4863, align 4
  %4865 = zext i32 %4864 to i64
  store i64 %4865, i64* %RCX.i1818, align 8
  %4866 = add i64 %4854, 21
  store i64 %4866, i64* %3, align 8
  %4867 = load i32, i32* %4856, align 4
  %4868 = sext i32 %4867 to i64
  store i64 %4868, i64* %RAX.i1400, align 8
  %4869 = shl nsw i64 %4868, 2
  %4870 = add nsw i64 %4869, -2112
  %4871 = add i64 %4870, %4852
  %4872 = add i64 %4854, 28
  store i64 %4872, i64* %3, align 8
  %4873 = inttoptr i64 %4871 to i32*
  %4874 = load i32, i32* %4873, align 4
  %4875 = add i32 %4874, %4864
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RCX.i1818, align 8
  %4877 = icmp ult i32 %4875, %4864
  %4878 = icmp ult i32 %4875, %4874
  %4879 = or i1 %4877, %4878
  %4880 = zext i1 %4879 to i8
  store i8 %4880, i8* %14, align 1
  %4881 = and i32 %4875, 255
  %4882 = tail call i32 @llvm.ctpop.i32(i32 %4881)
  %4883 = trunc i32 %4882 to i8
  %4884 = and i8 %4883, 1
  %4885 = xor i8 %4884, 1
  store i8 %4885, i8* %21, align 1
  %4886 = xor i32 %4874, %4864
  %4887 = xor i32 %4886, %4875
  %4888 = lshr i32 %4887, 4
  %4889 = trunc i32 %4888 to i8
  %4890 = and i8 %4889, 1
  store i8 %4890, i8* %26, align 1
  %4891 = icmp eq i32 %4875, 0
  %4892 = zext i1 %4891 to i8
  store i8 %4892, i8* %29, align 1
  %4893 = lshr i32 %4875, 31
  %4894 = trunc i32 %4893 to i8
  store i8 %4894, i8* %32, align 1
  %4895 = lshr i32 %4864, 31
  %4896 = lshr i32 %4874, 31
  %4897 = xor i32 %4893, %4895
  %4898 = xor i32 %4893, %4896
  %4899 = add nuw nsw i32 %4897, %4898
  %4900 = icmp eq i32 %4899, 2
  %4901 = zext i1 %4900 to i8
  store i8 %4901, i8* %38, align 1
  %4902 = add i64 %4852, -2076
  %4903 = add i64 %4854, 34
  store i64 %4903, i64* %3, align 8
  %4904 = inttoptr i64 %4902 to i32*
  store i32 %4875, i32* %4904, align 4
  %4905 = load i64, i64* %RBP.i, align 8
  %4906 = add i64 %4905, -2152
  %4907 = load i64, i64* %3, align 8
  %4908 = add i64 %4907, 7
  store i64 %4908, i64* %3, align 8
  %4909 = inttoptr i64 %4906 to i32*
  %4910 = load i32, i32* %4909, align 4
  %4911 = sext i32 %4910 to i64
  store i64 %4911, i64* %RAX.i1400, align 8
  %4912 = shl nsw i64 %4911, 2
  %4913 = add i64 %4905, -2128
  %4914 = add i64 %4913, %4912
  %4915 = add i64 %4907, 14
  store i64 %4915, i64* %3, align 8
  %4916 = inttoptr i64 %4914 to i32*
  %4917 = load i32, i32* %4916, align 4
  %4918 = zext i32 %4917 to i64
  store i64 %4918, i64* %RCX.i1818, align 8
  %4919 = add i64 %4907, 21
  store i64 %4919, i64* %3, align 8
  %4920 = load i32, i32* %4909, align 4
  %4921 = sext i32 %4920 to i64
  store i64 %4921, i64* %RAX.i1400, align 8
  %4922 = shl nsw i64 %4921, 2
  %4923 = add nsw i64 %4922, -2112
  %4924 = add i64 %4923, %4905
  %4925 = add i64 %4907, 28
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  %4927 = load i32, i32* %4926, align 4
  %4928 = sub i32 %4917, %4927
  %4929 = zext i32 %4928 to i64
  store i64 %4929, i64* %RCX.i1818, align 8
  %4930 = icmp ult i32 %4917, %4927
  %4931 = zext i1 %4930 to i8
  store i8 %4931, i8* %14, align 1
  %4932 = and i32 %4928, 255
  %4933 = tail call i32 @llvm.ctpop.i32(i32 %4932)
  %4934 = trunc i32 %4933 to i8
  %4935 = and i8 %4934, 1
  %4936 = xor i8 %4935, 1
  store i8 %4936, i8* %21, align 1
  %4937 = xor i32 %4927, %4917
  %4938 = xor i32 %4937, %4928
  %4939 = lshr i32 %4938, 4
  %4940 = trunc i32 %4939 to i8
  %4941 = and i8 %4940, 1
  store i8 %4941, i8* %26, align 1
  %4942 = icmp eq i32 %4928, 0
  %4943 = zext i1 %4942 to i8
  store i8 %4943, i8* %29, align 1
  %4944 = lshr i32 %4928, 31
  %4945 = trunc i32 %4944 to i8
  store i8 %4945, i8* %32, align 1
  %4946 = lshr i32 %4917, 31
  %4947 = lshr i32 %4927, 31
  %4948 = xor i32 %4947, %4946
  %4949 = xor i32 %4944, %4946
  %4950 = add nuw nsw i32 %4949, %4948
  %4951 = icmp eq i32 %4950, 2
  %4952 = zext i1 %4951 to i8
  store i8 %4952, i8* %38, align 1
  %4953 = add i64 %4905, -2072
  %4954 = add i64 %4907, 34
  store i64 %4954, i64* %3, align 8
  %4955 = inttoptr i64 %4953 to i32*
  store i32 %4928, i32* %4955, align 4
  %4956 = load i64, i64* %RBP.i, align 8
  %4957 = add i64 %4956, -2152
  %4958 = load i64, i64* %3, align 8
  %4959 = add i64 %4958, 7
  store i64 %4959, i64* %3, align 8
  %4960 = inttoptr i64 %4957 to i32*
  %4961 = load i32, i32* %4960, align 4
  %4962 = sext i32 %4961 to i64
  store i64 %4962, i64* %RAX.i1400, align 8
  %4963 = shl nsw i64 %4962, 2
  %4964 = add i64 %4956, -2144
  %4965 = add i64 %4964, %4963
  %4966 = add i64 %4958, 14
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i32*
  %4968 = load i32, i32* %4967, align 4
  %4969 = zext i32 %4968 to i64
  store i64 %4969, i64* %RCX.i1818, align 8
  %4970 = add i64 %4958, 21
  store i64 %4970, i64* %3, align 8
  %4971 = load i32, i32* %4960, align 4
  %4972 = sext i32 %4971 to i64
  store i64 %4972, i64* %RAX.i1400, align 8
  %4973 = shl nsw i64 %4972, 2
  %4974 = add nsw i64 %4973, -2096
  %4975 = add i64 %4974, %4956
  %4976 = add i64 %4958, 28
  store i64 %4976, i64* %3, align 8
  %4977 = inttoptr i64 %4975 to i32*
  %4978 = load i32, i32* %4977, align 4
  %4979 = sub i32 %4968, %4978
  %4980 = zext i32 %4979 to i64
  store i64 %4980, i64* %RCX.i1818, align 8
  %4981 = icmp ult i32 %4968, %4978
  %4982 = zext i1 %4981 to i8
  store i8 %4982, i8* %14, align 1
  %4983 = and i32 %4979, 255
  %4984 = tail call i32 @llvm.ctpop.i32(i32 %4983)
  %4985 = trunc i32 %4984 to i8
  %4986 = and i8 %4985, 1
  %4987 = xor i8 %4986, 1
  store i8 %4987, i8* %21, align 1
  %4988 = xor i32 %4978, %4968
  %4989 = xor i32 %4988, %4979
  %4990 = lshr i32 %4989, 4
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  store i8 %4992, i8* %26, align 1
  %4993 = icmp eq i32 %4979, 0
  %4994 = zext i1 %4993 to i8
  store i8 %4994, i8* %29, align 1
  %4995 = lshr i32 %4979, 31
  %4996 = trunc i32 %4995 to i8
  store i8 %4996, i8* %32, align 1
  %4997 = lshr i32 %4968, 31
  %4998 = lshr i32 %4978, 31
  %4999 = xor i32 %4998, %4997
  %5000 = xor i32 %4995, %4997
  %5001 = add nuw nsw i32 %5000, %4999
  %5002 = icmp eq i32 %5001, 2
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %38, align 1
  %5004 = add i64 %4956, -2068
  %5005 = add i64 %4958, 34
  store i64 %5005, i64* %3, align 8
  %5006 = inttoptr i64 %5004 to i32*
  store i32 %4979, i32* %5006, align 4
  %5007 = load i64, i64* %RBP.i, align 8
  %5008 = add i64 %5007, -2080
  %5009 = load i64, i64* %3, align 8
  %5010 = add i64 %5009, 6
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5008 to i32*
  %5012 = load i32, i32* %5011, align 4
  %5013 = zext i32 %5012 to i64
  store i64 %5013, i64* %RCX.i1818, align 8
  %5014 = add i64 %5007, -2076
  %5015 = add i64 %5009, 12
  store i64 %5015, i64* %3, align 8
  %5016 = inttoptr i64 %5014 to i32*
  %5017 = load i32, i32* %5016, align 4
  %5018 = add i32 %5017, %5012
  %5019 = zext i32 %5018 to i64
  store i64 %5019, i64* %RCX.i1818, align 8
  %5020 = icmp ult i32 %5018, %5012
  %5021 = icmp ult i32 %5018, %5017
  %5022 = or i1 %5020, %5021
  %5023 = zext i1 %5022 to i8
  store i8 %5023, i8* %14, align 1
  %5024 = and i32 %5018, 255
  %5025 = tail call i32 @llvm.ctpop.i32(i32 %5024)
  %5026 = trunc i32 %5025 to i8
  %5027 = and i8 %5026, 1
  %5028 = xor i8 %5027, 1
  store i8 %5028, i8* %21, align 1
  %5029 = xor i32 %5017, %5012
  %5030 = xor i32 %5029, %5018
  %5031 = lshr i32 %5030, 4
  %5032 = trunc i32 %5031 to i8
  %5033 = and i8 %5032, 1
  store i8 %5033, i8* %26, align 1
  %5034 = icmp eq i32 %5018, 0
  %5035 = zext i1 %5034 to i8
  store i8 %5035, i8* %29, align 1
  %5036 = lshr i32 %5018, 31
  %5037 = trunc i32 %5036 to i8
  store i8 %5037, i8* %32, align 1
  %5038 = lshr i32 %5012, 31
  %5039 = lshr i32 %5017, 31
  %5040 = xor i32 %5036, %5038
  %5041 = xor i32 %5036, %5039
  %5042 = add nuw nsw i32 %5040, %5041
  %5043 = icmp eq i32 %5042, 2
  %5044 = zext i1 %5043 to i8
  store i8 %5044, i8* %38, align 1
  %5045 = add i64 %5007, -2152
  %5046 = add i64 %5009, 19
  store i64 %5046, i64* %3, align 8
  %5047 = inttoptr i64 %5045 to i32*
  %5048 = load i32, i32* %5047, align 4
  %5049 = sext i32 %5048 to i64
  store i64 %5049, i64* %RAX.i1400, align 8
  %5050 = shl nsw i64 %5049, 2
  %5051 = add i64 %5007, -2144
  %5052 = add i64 %5051, %5050
  %5053 = add i64 %5009, 26
  store i64 %5053, i64* %3, align 8
  %5054 = inttoptr i64 %5052 to i32*
  store i32 %5018, i32* %5054, align 4
  %5055 = load i64, i64* %RBP.i, align 8
  %5056 = add i64 %5055, -2080
  %5057 = load i64, i64* %3, align 8
  %5058 = add i64 %5057, 6
  store i64 %5058, i64* %3, align 8
  %5059 = inttoptr i64 %5056 to i32*
  %5060 = load i32, i32* %5059, align 4
  %5061 = zext i32 %5060 to i64
  store i64 %5061, i64* %RCX.i1818, align 8
  %5062 = add i64 %5055, -2076
  %5063 = add i64 %5057, 12
  store i64 %5063, i64* %3, align 8
  %5064 = inttoptr i64 %5062 to i32*
  %5065 = load i32, i32* %5064, align 4
  %5066 = sub i32 %5060, %5065
  %5067 = zext i32 %5066 to i64
  store i64 %5067, i64* %RCX.i1818, align 8
  %5068 = icmp ult i32 %5060, %5065
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %14, align 1
  %5070 = and i32 %5066, 255
  %5071 = tail call i32 @llvm.ctpop.i32(i32 %5070)
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = xor i8 %5073, 1
  store i8 %5074, i8* %21, align 1
  %5075 = xor i32 %5065, %5060
  %5076 = xor i32 %5075, %5066
  %5077 = lshr i32 %5076, 4
  %5078 = trunc i32 %5077 to i8
  %5079 = and i8 %5078, 1
  store i8 %5079, i8* %26, align 1
  %5080 = icmp eq i32 %5066, 0
  %5081 = zext i1 %5080 to i8
  store i8 %5081, i8* %29, align 1
  %5082 = lshr i32 %5066, 31
  %5083 = trunc i32 %5082 to i8
  store i8 %5083, i8* %32, align 1
  %5084 = lshr i32 %5060, 31
  %5085 = lshr i32 %5065, 31
  %5086 = xor i32 %5085, %5084
  %5087 = xor i32 %5082, %5084
  %5088 = add nuw nsw i32 %5087, %5086
  %5089 = icmp eq i32 %5088, 2
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %38, align 1
  %5091 = add i64 %5055, -2152
  %5092 = add i64 %5057, 19
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i32*
  %5094 = load i32, i32* %5093, align 4
  %5095 = sext i32 %5094 to i64
  store i64 %5095, i64* %RAX.i1400, align 8
  %5096 = shl nsw i64 %5095, 2
  %5097 = add i64 %5055, -2112
  %5098 = add i64 %5097, %5096
  %5099 = add i64 %5057, 26
  store i64 %5099, i64* %3, align 8
  %5100 = inttoptr i64 %5098 to i32*
  store i32 %5066, i32* %5100, align 4
  %5101 = load i64, i64* %RBP.i, align 8
  %5102 = add i64 %5101, -2072
  %5103 = load i64, i64* %3, align 8
  %5104 = add i64 %5103, 6
  store i64 %5104, i64* %3, align 8
  %5105 = inttoptr i64 %5102 to i32*
  %5106 = load i32, i32* %5105, align 4
  %5107 = zext i32 %5106 to i64
  store i64 %5107, i64* %RCX.i1818, align 8
  %5108 = add i64 %5101, -2068
  %5109 = add i64 %5103, 12
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5108 to i32*
  %5111 = load i32, i32* %5110, align 4
  %5112 = add i32 %5111, %5106
  %5113 = zext i32 %5112 to i64
  store i64 %5113, i64* %RCX.i1818, align 8
  %5114 = icmp ult i32 %5112, %5106
  %5115 = icmp ult i32 %5112, %5111
  %5116 = or i1 %5114, %5115
  %5117 = zext i1 %5116 to i8
  store i8 %5117, i8* %14, align 1
  %5118 = and i32 %5112, 255
  %5119 = tail call i32 @llvm.ctpop.i32(i32 %5118)
  %5120 = trunc i32 %5119 to i8
  %5121 = and i8 %5120, 1
  %5122 = xor i8 %5121, 1
  store i8 %5122, i8* %21, align 1
  %5123 = xor i32 %5111, %5106
  %5124 = xor i32 %5123, %5112
  %5125 = lshr i32 %5124, 4
  %5126 = trunc i32 %5125 to i8
  %5127 = and i8 %5126, 1
  store i8 %5127, i8* %26, align 1
  %5128 = icmp eq i32 %5112, 0
  %5129 = zext i1 %5128 to i8
  store i8 %5129, i8* %29, align 1
  %5130 = lshr i32 %5112, 31
  %5131 = trunc i32 %5130 to i8
  store i8 %5131, i8* %32, align 1
  %5132 = lshr i32 %5106, 31
  %5133 = lshr i32 %5111, 31
  %5134 = xor i32 %5130, %5132
  %5135 = xor i32 %5130, %5133
  %5136 = add nuw nsw i32 %5134, %5135
  %5137 = icmp eq i32 %5136, 2
  %5138 = zext i1 %5137 to i8
  store i8 %5138, i8* %38, align 1
  %5139 = add i64 %5101, -2152
  %5140 = add i64 %5103, 19
  store i64 %5140, i64* %3, align 8
  %5141 = inttoptr i64 %5139 to i32*
  %5142 = load i32, i32* %5141, align 4
  %5143 = sext i32 %5142 to i64
  store i64 %5143, i64* %RAX.i1400, align 8
  %5144 = shl nsw i64 %5143, 2
  %5145 = add i64 %5101, -2128
  %5146 = add i64 %5145, %5144
  %5147 = add i64 %5103, 26
  store i64 %5147, i64* %3, align 8
  %5148 = inttoptr i64 %5146 to i32*
  store i32 %5112, i32* %5148, align 4
  %5149 = load i64, i64* %RBP.i, align 8
  %5150 = add i64 %5149, -2068
  %5151 = load i64, i64* %3, align 8
  %5152 = add i64 %5151, 6
  store i64 %5152, i64* %3, align 8
  %5153 = inttoptr i64 %5150 to i32*
  %5154 = load i32, i32* %5153, align 4
  %5155 = zext i32 %5154 to i64
  store i64 %5155, i64* %RCX.i1818, align 8
  %5156 = add i64 %5149, -2072
  %5157 = add i64 %5151, 12
  store i64 %5157, i64* %3, align 8
  %5158 = inttoptr i64 %5156 to i32*
  %5159 = load i32, i32* %5158, align 4
  %5160 = sub i32 %5154, %5159
  %5161 = zext i32 %5160 to i64
  store i64 %5161, i64* %RCX.i1818, align 8
  %5162 = icmp ult i32 %5154, %5159
  %5163 = zext i1 %5162 to i8
  store i8 %5163, i8* %14, align 1
  %5164 = and i32 %5160, 255
  %5165 = tail call i32 @llvm.ctpop.i32(i32 %5164)
  %5166 = trunc i32 %5165 to i8
  %5167 = and i8 %5166, 1
  %5168 = xor i8 %5167, 1
  store i8 %5168, i8* %21, align 1
  %5169 = xor i32 %5159, %5154
  %5170 = xor i32 %5169, %5160
  %5171 = lshr i32 %5170, 4
  %5172 = trunc i32 %5171 to i8
  %5173 = and i8 %5172, 1
  store i8 %5173, i8* %26, align 1
  %5174 = icmp eq i32 %5160, 0
  %5175 = zext i1 %5174 to i8
  store i8 %5175, i8* %29, align 1
  %5176 = lshr i32 %5160, 31
  %5177 = trunc i32 %5176 to i8
  store i8 %5177, i8* %32, align 1
  %5178 = lshr i32 %5154, 31
  %5179 = lshr i32 %5159, 31
  %5180 = xor i32 %5179, %5178
  %5181 = xor i32 %5176, %5178
  %5182 = add nuw nsw i32 %5181, %5180
  %5183 = icmp eq i32 %5182, 2
  %5184 = zext i1 %5183 to i8
  store i8 %5184, i8* %38, align 1
  %5185 = add i64 %5149, -2152
  %5186 = add i64 %5151, 19
  store i64 %5186, i64* %3, align 8
  %5187 = inttoptr i64 %5185 to i32*
  %5188 = load i32, i32* %5187, align 4
  %5189 = sext i32 %5188 to i64
  store i64 %5189, i64* %RAX.i1400, align 8
  %5190 = shl nsw i64 %5189, 2
  %5191 = add i64 %5149, -2096
  %5192 = add i64 %5191, %5190
  %5193 = add i64 %5151, 26
  store i64 %5193, i64* %3, align 8
  %5194 = inttoptr i64 %5192 to i32*
  store i32 %5160, i32* %5194, align 4
  %5195 = load i64, i64* %RBP.i, align 8
  %5196 = add i64 %5195, -2152
  %5197 = load i64, i64* %3, align 8
  %5198 = add i64 %5197, 6
  store i64 %5198, i64* %3, align 8
  %5199 = inttoptr i64 %5196 to i32*
  %5200 = load i32, i32* %5199, align 4
  %5201 = add i32 %5200, 1
  %5202 = zext i32 %5201 to i64
  store i64 %5202, i64* %RAX.i1400, align 8
  %5203 = icmp eq i32 %5200, -1
  %5204 = icmp eq i32 %5201, 0
  %5205 = or i1 %5203, %5204
  %5206 = zext i1 %5205 to i8
  store i8 %5206, i8* %14, align 1
  %5207 = and i32 %5201, 255
  %5208 = tail call i32 @llvm.ctpop.i32(i32 %5207)
  %5209 = trunc i32 %5208 to i8
  %5210 = and i8 %5209, 1
  %5211 = xor i8 %5210, 1
  store i8 %5211, i8* %21, align 1
  %5212 = xor i32 %5201, %5200
  %5213 = lshr i32 %5212, 4
  %5214 = trunc i32 %5213 to i8
  %5215 = and i8 %5214, 1
  store i8 %5215, i8* %26, align 1
  %5216 = zext i1 %5204 to i8
  store i8 %5216, i8* %29, align 1
  %5217 = lshr i32 %5201, 31
  %5218 = trunc i32 %5217 to i8
  store i8 %5218, i8* %32, align 1
  %5219 = lshr i32 %5200, 31
  %5220 = xor i32 %5217, %5219
  %5221 = add nuw nsw i32 %5220, %5217
  %5222 = icmp eq i32 %5221, 2
  %5223 = zext i1 %5222 to i8
  store i8 %5223, i8* %38, align 1
  %5224 = add i64 %5197, 15
  store i64 %5224, i64* %3, align 8
  store i32 %5201, i32* %5199, align 4
  %5225 = load i64, i64* %3, align 8
  %5226 = add i64 %5225, -268
  store i64 %5226, i64* %3, align 8
  br label %block_.L_449a88

block_.L_449b99:                                  ; preds = %block_.L_449a88
  %5227 = add i64 %4774, -2148
  %5228 = add i64 %4802, 10
  store i64 %5228, i64* %3, align 8
  %5229 = inttoptr i64 %5227 to i32*
  store i32 0, i32* %5229, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_449ba3

block_.L_449ba3:                                  ; preds = %block_.L_449d3e, %block_.L_449b99
  %5230 = phi i64 [ %.pre162, %block_.L_449b99 ], [ %6168, %block_.L_449d3e ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.24, %block_.L_449b99 ], [ %MEMORY.28, %block_.L_449d3e ]
  %5231 = load i64, i64* %RBP.i, align 8
  %5232 = add i64 %5231, -2148
  %5233 = add i64 %5230, 7
  store i64 %5233, i64* %3, align 8
  %5234 = inttoptr i64 %5232 to i32*
  %5235 = load i32, i32* %5234, align 4
  %5236 = add i32 %5235, -4
  %5237 = icmp ult i32 %5235, 4
  %5238 = zext i1 %5237 to i8
  store i8 %5238, i8* %14, align 1
  %5239 = and i32 %5236, 255
  %5240 = tail call i32 @llvm.ctpop.i32(i32 %5239)
  %5241 = trunc i32 %5240 to i8
  %5242 = and i8 %5241, 1
  %5243 = xor i8 %5242, 1
  store i8 %5243, i8* %21, align 1
  %5244 = xor i32 %5236, %5235
  %5245 = lshr i32 %5244, 4
  %5246 = trunc i32 %5245 to i8
  %5247 = and i8 %5246, 1
  store i8 %5247, i8* %26, align 1
  %5248 = icmp eq i32 %5236, 0
  %5249 = zext i1 %5248 to i8
  store i8 %5249, i8* %29, align 1
  %5250 = lshr i32 %5236, 31
  %5251 = trunc i32 %5250 to i8
  store i8 %5251, i8* %32, align 1
  %5252 = lshr i32 %5235, 31
  %5253 = xor i32 %5250, %5252
  %5254 = add nuw nsw i32 %5253, %5252
  %5255 = icmp eq i32 %5254, 2
  %5256 = zext i1 %5255 to i8
  store i8 %5256, i8* %38, align 1
  %5257 = icmp ne i8 %5251, 0
  %5258 = xor i1 %5257, %5255
  %.v219 = select i1 %5258, i64 13, i64 436
  %5259 = add i64 %5230, %.v219
  store i64 %5259, i64* %3, align 8
  br i1 %5258, label %block_449bb0, label %block_.L_449d57

block_449bb0:                                     ; preds = %block_.L_449ba3
  %5260 = add i64 %5231, -2144
  store i64 %5260, i64* %RAX.i1400, align 8
  %5261 = add i64 %5259, 14
  store i64 %5261, i64* %3, align 8
  %5262 = load i32, i32* %5234, align 4
  %5263 = sext i32 %5262 to i64
  %5264 = shl nsw i64 %5263, 4
  store i64 %5264, i64* %RCX.i1818, align 8
  %5265 = add i64 %5264, %5260
  store i64 %5265, i64* %RDX.i1820, align 8
  %5266 = icmp ult i64 %5265, %5260
  %5267 = icmp ult i64 %5265, %5264
  %5268 = or i1 %5266, %5267
  %5269 = zext i1 %5268 to i8
  store i8 %5269, i8* %14, align 1
  %5270 = trunc i64 %5265 to i32
  %5271 = and i32 %5270, 255
  %5272 = tail call i32 @llvm.ctpop.i32(i32 %5271)
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = xor i8 %5274, 1
  store i8 %5275, i8* %21, align 1
  %5276 = xor i64 %5264, %5260
  %5277 = xor i64 %5276, %5265
  %5278 = lshr i64 %5277, 4
  %5279 = trunc i64 %5278 to i8
  %5280 = and i8 %5279, 1
  store i8 %5280, i8* %26, align 1
  %5281 = icmp eq i64 %5265, 0
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %29, align 1
  %5283 = lshr i64 %5265, 63
  %5284 = trunc i64 %5283 to i8
  store i8 %5284, i8* %32, align 1
  %5285 = lshr i64 %5260, 63
  %5286 = lshr i64 %5263, 59
  %5287 = and i64 %5286, 1
  %5288 = xor i64 %5283, %5285
  %5289 = xor i64 %5283, %5287
  %5290 = add nuw nsw i64 %5288, %5289
  %5291 = icmp eq i64 %5290, 2
  %5292 = zext i1 %5291 to i8
  store i8 %5292, i8* %38, align 1
  %5293 = inttoptr i64 %5265 to i32*
  %5294 = add i64 %5259, 26
  store i64 %5294, i64* %3, align 8
  %5295 = load i32, i32* %5293, align 4
  %5296 = zext i32 %5295 to i64
  store i64 %5296, i64* %RSI.i1859, align 8
  %5297 = add i64 %5259, 33
  store i64 %5297, i64* %3, align 8
  %5298 = load i32, i32* %5234, align 4
  %5299 = sext i32 %5298 to i64
  %5300 = shl nsw i64 %5299, 4
  store i64 %5300, i64* %RCX.i1818, align 8
  %5301 = load i64, i64* %RAX.i1400, align 8
  %5302 = add i64 %5300, %5301
  store i64 %5302, i64* %RDX.i1820, align 8
  %5303 = icmp ult i64 %5302, %5301
  %5304 = icmp ult i64 %5302, %5300
  %5305 = or i1 %5303, %5304
  %5306 = zext i1 %5305 to i8
  store i8 %5306, i8* %14, align 1
  %5307 = trunc i64 %5302 to i32
  %5308 = and i32 %5307, 255
  %5309 = tail call i32 @llvm.ctpop.i32(i32 %5308)
  %5310 = trunc i32 %5309 to i8
  %5311 = and i8 %5310, 1
  %5312 = xor i8 %5311, 1
  store i8 %5312, i8* %21, align 1
  %5313 = xor i64 %5300, %5301
  %5314 = xor i64 %5313, %5302
  %5315 = lshr i64 %5314, 4
  %5316 = trunc i64 %5315 to i8
  %5317 = and i8 %5316, 1
  store i8 %5317, i8* %26, align 1
  %5318 = icmp eq i64 %5302, 0
  %5319 = zext i1 %5318 to i8
  store i8 %5319, i8* %29, align 1
  %5320 = lshr i64 %5302, 63
  %5321 = trunc i64 %5320 to i8
  store i8 %5321, i8* %32, align 1
  %5322 = lshr i64 %5301, 63
  %5323 = lshr i64 %5299, 59
  %5324 = and i64 %5323, 1
  %5325 = xor i64 %5320, %5322
  %5326 = xor i64 %5320, %5324
  %5327 = add nuw nsw i64 %5325, %5326
  %5328 = icmp eq i64 %5327, 2
  %5329 = zext i1 %5328 to i8
  store i8 %5329, i8* %38, align 1
  %5330 = add i64 %5302, 12
  %5331 = add i64 %5259, 46
  store i64 %5331, i64* %3, align 8
  %5332 = inttoptr i64 %5330 to i32*
  %5333 = load i32, i32* %5332, align 4
  %5334 = add i32 %5333, %5295
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RSI.i1859, align 8
  %5336 = icmp ult i32 %5334, %5295
  %5337 = icmp ult i32 %5334, %5333
  %5338 = or i1 %5336, %5337
  %5339 = zext i1 %5338 to i8
  store i8 %5339, i8* %14, align 1
  %5340 = and i32 %5334, 255
  %5341 = tail call i32 @llvm.ctpop.i32(i32 %5340)
  %5342 = trunc i32 %5341 to i8
  %5343 = and i8 %5342, 1
  %5344 = xor i8 %5343, 1
  store i8 %5344, i8* %21, align 1
  %5345 = xor i32 %5333, %5295
  %5346 = xor i32 %5345, %5334
  %5347 = lshr i32 %5346, 4
  %5348 = trunc i32 %5347 to i8
  %5349 = and i8 %5348, 1
  store i8 %5349, i8* %26, align 1
  %5350 = icmp eq i32 %5334, 0
  %5351 = zext i1 %5350 to i8
  store i8 %5351, i8* %29, align 1
  %5352 = lshr i32 %5334, 31
  %5353 = trunc i32 %5352 to i8
  store i8 %5353, i8* %32, align 1
  %5354 = lshr i32 %5295, 31
  %5355 = lshr i32 %5333, 31
  %5356 = xor i32 %5352, %5354
  %5357 = xor i32 %5352, %5355
  %5358 = add nuw nsw i32 %5356, %5357
  %5359 = icmp eq i32 %5358, 2
  %5360 = zext i1 %5359 to i8
  store i8 %5360, i8* %38, align 1
  %5361 = load i64, i64* %RBP.i, align 8
  %5362 = add i64 %5361, -2080
  %5363 = add i64 %5259, 52
  store i64 %5363, i64* %3, align 8
  %5364 = inttoptr i64 %5362 to i32*
  store i32 %5334, i32* %5364, align 4
  %5365 = load i64, i64* %RBP.i, align 8
  %5366 = add i64 %5365, -2148
  %5367 = load i64, i64* %3, align 8
  %5368 = add i64 %5367, 7
  store i64 %5368, i64* %3, align 8
  %5369 = inttoptr i64 %5366 to i32*
  %5370 = load i32, i32* %5369, align 4
  %5371 = sext i32 %5370 to i64
  %5372 = shl nsw i64 %5371, 4
  store i64 %5372, i64* %RCX.i1818, align 8
  %5373 = load i64, i64* %RAX.i1400, align 8
  %5374 = add i64 %5372, %5373
  store i64 %5374, i64* %RDX.i1820, align 8
  %5375 = icmp ult i64 %5374, %5373
  %5376 = icmp ult i64 %5374, %5372
  %5377 = or i1 %5375, %5376
  %5378 = zext i1 %5377 to i8
  store i8 %5378, i8* %14, align 1
  %5379 = trunc i64 %5374 to i32
  %5380 = and i32 %5379, 255
  %5381 = tail call i32 @llvm.ctpop.i32(i32 %5380)
  %5382 = trunc i32 %5381 to i8
  %5383 = and i8 %5382, 1
  %5384 = xor i8 %5383, 1
  store i8 %5384, i8* %21, align 1
  %5385 = xor i64 %5372, %5373
  %5386 = xor i64 %5385, %5374
  %5387 = lshr i64 %5386, 4
  %5388 = trunc i64 %5387 to i8
  %5389 = and i8 %5388, 1
  store i8 %5389, i8* %26, align 1
  %5390 = icmp eq i64 %5374, 0
  %5391 = zext i1 %5390 to i8
  store i8 %5391, i8* %29, align 1
  %5392 = lshr i64 %5374, 63
  %5393 = trunc i64 %5392 to i8
  store i8 %5393, i8* %32, align 1
  %5394 = lshr i64 %5373, 63
  %5395 = lshr i64 %5371, 59
  %5396 = and i64 %5395, 1
  %5397 = xor i64 %5392, %5394
  %5398 = xor i64 %5392, %5396
  %5399 = add nuw nsw i64 %5397, %5398
  %5400 = icmp eq i64 %5399, 2
  %5401 = zext i1 %5400 to i8
  store i8 %5401, i8* %38, align 1
  %5402 = add i64 %5374, 4
  %5403 = add i64 %5367, 20
  store i64 %5403, i64* %3, align 8
  %5404 = inttoptr i64 %5402 to i32*
  %5405 = load i32, i32* %5404, align 4
  %5406 = zext i32 %5405 to i64
  store i64 %5406, i64* %RSI.i1859, align 8
  %5407 = add i64 %5367, 27
  store i64 %5407, i64* %3, align 8
  %5408 = load i32, i32* %5369, align 4
  %5409 = sext i32 %5408 to i64
  %5410 = shl nsw i64 %5409, 4
  store i64 %5410, i64* %RCX.i1818, align 8
  %5411 = add i64 %5410, %5373
  store i64 %5411, i64* %RDX.i1820, align 8
  %5412 = icmp ult i64 %5411, %5373
  %5413 = icmp ult i64 %5411, %5410
  %5414 = or i1 %5412, %5413
  %5415 = zext i1 %5414 to i8
  store i8 %5415, i8* %14, align 1
  %5416 = trunc i64 %5411 to i32
  %5417 = and i32 %5416, 255
  %5418 = tail call i32 @llvm.ctpop.i32(i32 %5417)
  %5419 = trunc i32 %5418 to i8
  %5420 = and i8 %5419, 1
  %5421 = xor i8 %5420, 1
  store i8 %5421, i8* %21, align 1
  %5422 = xor i64 %5410, %5373
  %5423 = xor i64 %5422, %5411
  %5424 = lshr i64 %5423, 4
  %5425 = trunc i64 %5424 to i8
  %5426 = and i8 %5425, 1
  store i8 %5426, i8* %26, align 1
  %5427 = icmp eq i64 %5411, 0
  %5428 = zext i1 %5427 to i8
  store i8 %5428, i8* %29, align 1
  %5429 = lshr i64 %5411, 63
  %5430 = trunc i64 %5429 to i8
  store i8 %5430, i8* %32, align 1
  %5431 = lshr i64 %5409, 59
  %5432 = and i64 %5431, 1
  %5433 = xor i64 %5429, %5394
  %5434 = xor i64 %5429, %5432
  %5435 = add nuw nsw i64 %5433, %5434
  %5436 = icmp eq i64 %5435, 2
  %5437 = zext i1 %5436 to i8
  store i8 %5437, i8* %38, align 1
  %5438 = add i64 %5411, 8
  %5439 = add i64 %5367, 40
  store i64 %5439, i64* %3, align 8
  %5440 = inttoptr i64 %5438 to i32*
  %5441 = load i32, i32* %5440, align 4
  %5442 = add i32 %5441, %5405
  %5443 = zext i32 %5442 to i64
  store i64 %5443, i64* %RSI.i1859, align 8
  %5444 = icmp ult i32 %5442, %5405
  %5445 = icmp ult i32 %5442, %5441
  %5446 = or i1 %5444, %5445
  %5447 = zext i1 %5446 to i8
  store i8 %5447, i8* %14, align 1
  %5448 = and i32 %5442, 255
  %5449 = tail call i32 @llvm.ctpop.i32(i32 %5448)
  %5450 = trunc i32 %5449 to i8
  %5451 = and i8 %5450, 1
  %5452 = xor i8 %5451, 1
  store i8 %5452, i8* %21, align 1
  %5453 = xor i32 %5441, %5405
  %5454 = xor i32 %5453, %5442
  %5455 = lshr i32 %5454, 4
  %5456 = trunc i32 %5455 to i8
  %5457 = and i8 %5456, 1
  store i8 %5457, i8* %26, align 1
  %5458 = icmp eq i32 %5442, 0
  %5459 = zext i1 %5458 to i8
  store i8 %5459, i8* %29, align 1
  %5460 = lshr i32 %5442, 31
  %5461 = trunc i32 %5460 to i8
  store i8 %5461, i8* %32, align 1
  %5462 = lshr i32 %5405, 31
  %5463 = lshr i32 %5441, 31
  %5464 = xor i32 %5460, %5462
  %5465 = xor i32 %5460, %5463
  %5466 = add nuw nsw i32 %5464, %5465
  %5467 = icmp eq i32 %5466, 2
  %5468 = zext i1 %5467 to i8
  store i8 %5468, i8* %38, align 1
  %5469 = load i64, i64* %RBP.i, align 8
  %5470 = add i64 %5469, -2076
  %5471 = add i64 %5367, 46
  store i64 %5471, i64* %3, align 8
  %5472 = inttoptr i64 %5470 to i32*
  store i32 %5442, i32* %5472, align 4
  %5473 = load i64, i64* %RBP.i, align 8
  %5474 = add i64 %5473, -2148
  %5475 = load i64, i64* %3, align 8
  %5476 = add i64 %5475, 7
  store i64 %5476, i64* %3, align 8
  %5477 = inttoptr i64 %5474 to i32*
  %5478 = load i32, i32* %5477, align 4
  %5479 = sext i32 %5478 to i64
  %5480 = shl nsw i64 %5479, 4
  store i64 %5480, i64* %RCX.i1818, align 8
  %5481 = load i64, i64* %RAX.i1400, align 8
  %5482 = add i64 %5480, %5481
  store i64 %5482, i64* %RDX.i1820, align 8
  %5483 = icmp ult i64 %5482, %5481
  %5484 = icmp ult i64 %5482, %5480
  %5485 = or i1 %5483, %5484
  %5486 = zext i1 %5485 to i8
  store i8 %5486, i8* %14, align 1
  %5487 = trunc i64 %5482 to i32
  %5488 = and i32 %5487, 255
  %5489 = tail call i32 @llvm.ctpop.i32(i32 %5488)
  %5490 = trunc i32 %5489 to i8
  %5491 = and i8 %5490, 1
  %5492 = xor i8 %5491, 1
  store i8 %5492, i8* %21, align 1
  %5493 = xor i64 %5480, %5481
  %5494 = xor i64 %5493, %5482
  %5495 = lshr i64 %5494, 4
  %5496 = trunc i64 %5495 to i8
  %5497 = and i8 %5496, 1
  store i8 %5497, i8* %26, align 1
  %5498 = icmp eq i64 %5482, 0
  %5499 = zext i1 %5498 to i8
  store i8 %5499, i8* %29, align 1
  %5500 = lshr i64 %5482, 63
  %5501 = trunc i64 %5500 to i8
  store i8 %5501, i8* %32, align 1
  %5502 = lshr i64 %5481, 63
  %5503 = lshr i64 %5479, 59
  %5504 = and i64 %5503, 1
  %5505 = xor i64 %5500, %5502
  %5506 = xor i64 %5500, %5504
  %5507 = add nuw nsw i64 %5505, %5506
  %5508 = icmp eq i64 %5507, 2
  %5509 = zext i1 %5508 to i8
  store i8 %5509, i8* %38, align 1
  %5510 = add i64 %5482, 4
  %5511 = add i64 %5475, 20
  store i64 %5511, i64* %3, align 8
  %5512 = inttoptr i64 %5510 to i32*
  %5513 = load i32, i32* %5512, align 4
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RSI.i1859, align 8
  %5515 = add i64 %5475, 27
  store i64 %5515, i64* %3, align 8
  %5516 = load i32, i32* %5477, align 4
  %5517 = sext i32 %5516 to i64
  %5518 = shl nsw i64 %5517, 4
  store i64 %5518, i64* %RCX.i1818, align 8
  %5519 = add i64 %5518, %5481
  store i64 %5519, i64* %RDX.i1820, align 8
  %5520 = icmp ult i64 %5519, %5481
  %5521 = icmp ult i64 %5519, %5518
  %5522 = or i1 %5520, %5521
  %5523 = zext i1 %5522 to i8
  store i8 %5523, i8* %14, align 1
  %5524 = trunc i64 %5519 to i32
  %5525 = and i32 %5524, 255
  %5526 = tail call i32 @llvm.ctpop.i32(i32 %5525)
  %5527 = trunc i32 %5526 to i8
  %5528 = and i8 %5527, 1
  %5529 = xor i8 %5528, 1
  store i8 %5529, i8* %21, align 1
  %5530 = xor i64 %5518, %5481
  %5531 = xor i64 %5530, %5519
  %5532 = lshr i64 %5531, 4
  %5533 = trunc i64 %5532 to i8
  %5534 = and i8 %5533, 1
  store i8 %5534, i8* %26, align 1
  %5535 = icmp eq i64 %5519, 0
  %5536 = zext i1 %5535 to i8
  store i8 %5536, i8* %29, align 1
  %5537 = lshr i64 %5519, 63
  %5538 = trunc i64 %5537 to i8
  store i8 %5538, i8* %32, align 1
  %5539 = lshr i64 %5517, 59
  %5540 = and i64 %5539, 1
  %5541 = xor i64 %5537, %5502
  %5542 = xor i64 %5537, %5540
  %5543 = add nuw nsw i64 %5541, %5542
  %5544 = icmp eq i64 %5543, 2
  %5545 = zext i1 %5544 to i8
  store i8 %5545, i8* %38, align 1
  %5546 = add i64 %5519, 8
  %5547 = add i64 %5475, 40
  store i64 %5547, i64* %3, align 8
  %5548 = inttoptr i64 %5546 to i32*
  %5549 = load i32, i32* %5548, align 4
  %5550 = sub i32 %5513, %5549
  %5551 = zext i32 %5550 to i64
  store i64 %5551, i64* %RSI.i1859, align 8
  %5552 = icmp ult i32 %5513, %5549
  %5553 = zext i1 %5552 to i8
  store i8 %5553, i8* %14, align 1
  %5554 = and i32 %5550, 255
  %5555 = tail call i32 @llvm.ctpop.i32(i32 %5554)
  %5556 = trunc i32 %5555 to i8
  %5557 = and i8 %5556, 1
  %5558 = xor i8 %5557, 1
  store i8 %5558, i8* %21, align 1
  %5559 = xor i32 %5549, %5513
  %5560 = xor i32 %5559, %5550
  %5561 = lshr i32 %5560, 4
  %5562 = trunc i32 %5561 to i8
  %5563 = and i8 %5562, 1
  store i8 %5563, i8* %26, align 1
  %5564 = icmp eq i32 %5550, 0
  %5565 = zext i1 %5564 to i8
  store i8 %5565, i8* %29, align 1
  %5566 = lshr i32 %5550, 31
  %5567 = trunc i32 %5566 to i8
  store i8 %5567, i8* %32, align 1
  %5568 = lshr i32 %5513, 31
  %5569 = lshr i32 %5549, 31
  %5570 = xor i32 %5569, %5568
  %5571 = xor i32 %5566, %5568
  %5572 = add nuw nsw i32 %5571, %5570
  %5573 = icmp eq i32 %5572, 2
  %5574 = zext i1 %5573 to i8
  store i8 %5574, i8* %38, align 1
  %5575 = load i64, i64* %RBP.i, align 8
  %5576 = add i64 %5575, -2072
  %5577 = add i64 %5475, 46
  store i64 %5577, i64* %3, align 8
  %5578 = inttoptr i64 %5576 to i32*
  store i32 %5550, i32* %5578, align 4
  %5579 = load i64, i64* %RBP.i, align 8
  %5580 = add i64 %5579, -2148
  %5581 = load i64, i64* %3, align 8
  %5582 = add i64 %5581, 7
  store i64 %5582, i64* %3, align 8
  %5583 = inttoptr i64 %5580 to i32*
  %5584 = load i32, i32* %5583, align 4
  %5585 = sext i32 %5584 to i64
  %5586 = shl nsw i64 %5585, 4
  store i64 %5586, i64* %RCX.i1818, align 8
  %5587 = load i64, i64* %RAX.i1400, align 8
  %5588 = add i64 %5586, %5587
  store i64 %5588, i64* %RDX.i1820, align 8
  %5589 = icmp ult i64 %5588, %5587
  %5590 = icmp ult i64 %5588, %5586
  %5591 = or i1 %5589, %5590
  %5592 = zext i1 %5591 to i8
  store i8 %5592, i8* %14, align 1
  %5593 = trunc i64 %5588 to i32
  %5594 = and i32 %5593, 255
  %5595 = tail call i32 @llvm.ctpop.i32(i32 %5594)
  %5596 = trunc i32 %5595 to i8
  %5597 = and i8 %5596, 1
  %5598 = xor i8 %5597, 1
  store i8 %5598, i8* %21, align 1
  %5599 = xor i64 %5586, %5587
  %5600 = xor i64 %5599, %5588
  %5601 = lshr i64 %5600, 4
  %5602 = trunc i64 %5601 to i8
  %5603 = and i8 %5602, 1
  store i8 %5603, i8* %26, align 1
  %5604 = icmp eq i64 %5588, 0
  %5605 = zext i1 %5604 to i8
  store i8 %5605, i8* %29, align 1
  %5606 = lshr i64 %5588, 63
  %5607 = trunc i64 %5606 to i8
  store i8 %5607, i8* %32, align 1
  %5608 = lshr i64 %5587, 63
  %5609 = lshr i64 %5585, 59
  %5610 = and i64 %5609, 1
  %5611 = xor i64 %5606, %5608
  %5612 = xor i64 %5606, %5610
  %5613 = add nuw nsw i64 %5611, %5612
  %5614 = icmp eq i64 %5613, 2
  %5615 = zext i1 %5614 to i8
  store i8 %5615, i8* %38, align 1
  %5616 = inttoptr i64 %5588 to i32*
  %5617 = add i64 %5581, 19
  store i64 %5617, i64* %3, align 8
  %5618 = load i32, i32* %5616, align 4
  %5619 = zext i32 %5618 to i64
  store i64 %5619, i64* %RSI.i1859, align 8
  %5620 = add i64 %5581, 26
  store i64 %5620, i64* %3, align 8
  %5621 = load i32, i32* %5583, align 4
  %5622 = sext i32 %5621 to i64
  %5623 = shl nsw i64 %5622, 4
  store i64 %5623, i64* %RCX.i1818, align 8
  %5624 = add i64 %5623, %5587
  store i64 %5624, i64* %RDX.i1820, align 8
  %5625 = icmp ult i64 %5624, %5587
  %5626 = icmp ult i64 %5624, %5623
  %5627 = or i1 %5625, %5626
  %5628 = zext i1 %5627 to i8
  store i8 %5628, i8* %14, align 1
  %5629 = trunc i64 %5624 to i32
  %5630 = and i32 %5629, 255
  %5631 = tail call i32 @llvm.ctpop.i32(i32 %5630)
  %5632 = trunc i32 %5631 to i8
  %5633 = and i8 %5632, 1
  %5634 = xor i8 %5633, 1
  store i8 %5634, i8* %21, align 1
  %5635 = xor i64 %5623, %5587
  %5636 = xor i64 %5635, %5624
  %5637 = lshr i64 %5636, 4
  %5638 = trunc i64 %5637 to i8
  %5639 = and i8 %5638, 1
  store i8 %5639, i8* %26, align 1
  %5640 = icmp eq i64 %5624, 0
  %5641 = zext i1 %5640 to i8
  store i8 %5641, i8* %29, align 1
  %5642 = lshr i64 %5624, 63
  %5643 = trunc i64 %5642 to i8
  store i8 %5643, i8* %32, align 1
  %5644 = lshr i64 %5622, 59
  %5645 = and i64 %5644, 1
  %5646 = xor i64 %5642, %5608
  %5647 = xor i64 %5642, %5645
  %5648 = add nuw nsw i64 %5646, %5647
  %5649 = icmp eq i64 %5648, 2
  %5650 = zext i1 %5649 to i8
  store i8 %5650, i8* %38, align 1
  %5651 = add i64 %5624, 12
  %5652 = add i64 %5581, 39
  store i64 %5652, i64* %3, align 8
  %5653 = inttoptr i64 %5651 to i32*
  %5654 = load i32, i32* %5653, align 4
  %5655 = sub i32 %5618, %5654
  %5656 = zext i32 %5655 to i64
  store i64 %5656, i64* %RSI.i1859, align 8
  %5657 = icmp ult i32 %5618, %5654
  %5658 = zext i1 %5657 to i8
  store i8 %5658, i8* %14, align 1
  %5659 = and i32 %5655, 255
  %5660 = tail call i32 @llvm.ctpop.i32(i32 %5659)
  %5661 = trunc i32 %5660 to i8
  %5662 = and i8 %5661, 1
  %5663 = xor i8 %5662, 1
  store i8 %5663, i8* %21, align 1
  %5664 = xor i32 %5654, %5618
  %5665 = xor i32 %5664, %5655
  %5666 = lshr i32 %5665, 4
  %5667 = trunc i32 %5666 to i8
  %5668 = and i8 %5667, 1
  store i8 %5668, i8* %26, align 1
  %5669 = icmp eq i32 %5655, 0
  %5670 = zext i1 %5669 to i8
  store i8 %5670, i8* %29, align 1
  %5671 = lshr i32 %5655, 31
  %5672 = trunc i32 %5671 to i8
  store i8 %5672, i8* %32, align 1
  %5673 = lshr i32 %5618, 31
  %5674 = lshr i32 %5654, 31
  %5675 = xor i32 %5674, %5673
  %5676 = xor i32 %5671, %5673
  %5677 = add nuw nsw i32 %5676, %5675
  %5678 = icmp eq i32 %5677, 2
  %5679 = zext i1 %5678 to i8
  store i8 %5679, i8* %38, align 1
  %5680 = load i64, i64* %RBP.i, align 8
  %5681 = add i64 %5680, -2068
  %5682 = add i64 %5581, 45
  store i64 %5682, i64* %3, align 8
  %5683 = inttoptr i64 %5681 to i32*
  store i32 %5655, i32* %5683, align 4
  %5684 = load i64, i64* %RBP.i, align 8
  %5685 = add i64 %5684, -2080
  %5686 = load i64, i64* %3, align 8
  %5687 = add i64 %5686, 6
  store i64 %5687, i64* %3, align 8
  %5688 = inttoptr i64 %5685 to i32*
  %5689 = load i32, i32* %5688, align 4
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RSI.i1859, align 8
  %5691 = add i64 %5684, -2076
  %5692 = add i64 %5686, 12
  store i64 %5692, i64* %3, align 8
  %5693 = inttoptr i64 %5691 to i32*
  %5694 = load i32, i32* %5693, align 4
  %5695 = add i32 %5694, %5689
  %5696 = zext i32 %5695 to i64
  store i64 %5696, i64* %RSI.i1859, align 8
  %5697 = icmp ult i32 %5695, %5689
  %5698 = icmp ult i32 %5695, %5694
  %5699 = or i1 %5697, %5698
  %5700 = zext i1 %5699 to i8
  store i8 %5700, i8* %14, align 1
  %5701 = and i32 %5695, 255
  %5702 = tail call i32 @llvm.ctpop.i32(i32 %5701)
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  %5705 = xor i8 %5704, 1
  store i8 %5705, i8* %21, align 1
  %5706 = xor i32 %5694, %5689
  %5707 = xor i32 %5706, %5695
  %5708 = lshr i32 %5707, 4
  %5709 = trunc i32 %5708 to i8
  %5710 = and i8 %5709, 1
  store i8 %5710, i8* %26, align 1
  %5711 = icmp eq i32 %5695, 0
  %5712 = zext i1 %5711 to i8
  store i8 %5712, i8* %29, align 1
  %5713 = lshr i32 %5695, 31
  %5714 = trunc i32 %5713 to i8
  store i8 %5714, i8* %32, align 1
  %5715 = lshr i32 %5689, 31
  %5716 = lshr i32 %5694, 31
  %5717 = xor i32 %5713, %5715
  %5718 = xor i32 %5713, %5716
  %5719 = add nuw nsw i32 %5717, %5718
  %5720 = icmp eq i32 %5719, 2
  %5721 = zext i1 %5720 to i8
  store i8 %5721, i8* %38, align 1
  %5722 = add i64 %5684, -2148
  %5723 = add i64 %5686, 19
  store i64 %5723, i64* %3, align 8
  %5724 = inttoptr i64 %5722 to i32*
  %5725 = load i32, i32* %5724, align 4
  %5726 = sext i32 %5725 to i64
  %5727 = shl nsw i64 %5726, 4
  store i64 %5727, i64* %RCX.i1818, align 8
  %5728 = load i64, i64* %RAX.i1400, align 8
  %5729 = add i64 %5727, %5728
  store i64 %5729, i64* %RDX.i1820, align 8
  %5730 = icmp ult i64 %5729, %5728
  %5731 = icmp ult i64 %5729, %5727
  %5732 = or i1 %5730, %5731
  %5733 = zext i1 %5732 to i8
  store i8 %5733, i8* %14, align 1
  %5734 = trunc i64 %5729 to i32
  %5735 = and i32 %5734, 255
  %5736 = tail call i32 @llvm.ctpop.i32(i32 %5735)
  %5737 = trunc i32 %5736 to i8
  %5738 = and i8 %5737, 1
  %5739 = xor i8 %5738, 1
  store i8 %5739, i8* %21, align 1
  %5740 = xor i64 %5727, %5728
  %5741 = xor i64 %5740, %5729
  %5742 = lshr i64 %5741, 4
  %5743 = trunc i64 %5742 to i8
  %5744 = and i8 %5743, 1
  store i8 %5744, i8* %26, align 1
  %5745 = icmp eq i64 %5729, 0
  %5746 = zext i1 %5745 to i8
  store i8 %5746, i8* %29, align 1
  %5747 = lshr i64 %5729, 63
  %5748 = trunc i64 %5747 to i8
  store i8 %5748, i8* %32, align 1
  %5749 = lshr i64 %5728, 63
  %5750 = lshr i64 %5726, 59
  %5751 = and i64 %5750, 1
  %5752 = xor i64 %5747, %5749
  %5753 = xor i64 %5747, %5751
  %5754 = add nuw nsw i64 %5752, %5753
  %5755 = icmp eq i64 %5754, 2
  %5756 = zext i1 %5755 to i8
  store i8 %5756, i8* %38, align 1
  %5757 = inttoptr i64 %5729 to i32*
  %5758 = load i32, i32* %ESI.i1822, align 4
  %5759 = add i64 %5686, 31
  store i64 %5759, i64* %3, align 8
  store i32 %5758, i32* %5757, align 4
  %5760 = load i64, i64* %RBP.i, align 8
  %5761 = add i64 %5760, -2080
  %5762 = load i64, i64* %3, align 8
  %5763 = add i64 %5762, 6
  store i64 %5763, i64* %3, align 8
  %5764 = inttoptr i64 %5761 to i32*
  %5765 = load i32, i32* %5764, align 4
  %5766 = zext i32 %5765 to i64
  store i64 %5766, i64* %RSI.i1859, align 8
  %5767 = add i64 %5760, -2076
  %5768 = add i64 %5762, 12
  store i64 %5768, i64* %3, align 8
  %5769 = inttoptr i64 %5767 to i32*
  %5770 = load i32, i32* %5769, align 4
  %5771 = sub i32 %5765, %5770
  %5772 = zext i32 %5771 to i64
  store i64 %5772, i64* %RSI.i1859, align 8
  %5773 = icmp ult i32 %5765, %5770
  %5774 = zext i1 %5773 to i8
  store i8 %5774, i8* %14, align 1
  %5775 = and i32 %5771, 255
  %5776 = tail call i32 @llvm.ctpop.i32(i32 %5775)
  %5777 = trunc i32 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = xor i8 %5778, 1
  store i8 %5779, i8* %21, align 1
  %5780 = xor i32 %5770, %5765
  %5781 = xor i32 %5780, %5771
  %5782 = lshr i32 %5781, 4
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  store i8 %5784, i8* %26, align 1
  %5785 = icmp eq i32 %5771, 0
  %5786 = zext i1 %5785 to i8
  store i8 %5786, i8* %29, align 1
  %5787 = lshr i32 %5771, 31
  %5788 = trunc i32 %5787 to i8
  store i8 %5788, i8* %32, align 1
  %5789 = lshr i32 %5765, 31
  %5790 = lshr i32 %5770, 31
  %5791 = xor i32 %5790, %5789
  %5792 = xor i32 %5787, %5789
  %5793 = add nuw nsw i32 %5792, %5791
  %5794 = icmp eq i32 %5793, 2
  %5795 = zext i1 %5794 to i8
  store i8 %5795, i8* %38, align 1
  %5796 = add i64 %5760, -2148
  %5797 = add i64 %5762, 19
  store i64 %5797, i64* %3, align 8
  %5798 = inttoptr i64 %5796 to i32*
  %5799 = load i32, i32* %5798, align 4
  %5800 = sext i32 %5799 to i64
  %5801 = shl nsw i64 %5800, 4
  store i64 %5801, i64* %RCX.i1818, align 8
  %5802 = load i64, i64* %RAX.i1400, align 8
  %5803 = add i64 %5801, %5802
  store i64 %5803, i64* %RDX.i1820, align 8
  %5804 = icmp ult i64 %5803, %5802
  %5805 = icmp ult i64 %5803, %5801
  %5806 = or i1 %5804, %5805
  %5807 = zext i1 %5806 to i8
  store i8 %5807, i8* %14, align 1
  %5808 = trunc i64 %5803 to i32
  %5809 = and i32 %5808, 255
  %5810 = tail call i32 @llvm.ctpop.i32(i32 %5809)
  %5811 = trunc i32 %5810 to i8
  %5812 = and i8 %5811, 1
  %5813 = xor i8 %5812, 1
  store i8 %5813, i8* %21, align 1
  %5814 = xor i64 %5801, %5802
  %5815 = xor i64 %5814, %5803
  %5816 = lshr i64 %5815, 4
  %5817 = trunc i64 %5816 to i8
  %5818 = and i8 %5817, 1
  store i8 %5818, i8* %26, align 1
  %5819 = icmp eq i64 %5803, 0
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %29, align 1
  %5821 = lshr i64 %5803, 63
  %5822 = trunc i64 %5821 to i8
  store i8 %5822, i8* %32, align 1
  %5823 = lshr i64 %5802, 63
  %5824 = lshr i64 %5800, 59
  %5825 = and i64 %5824, 1
  %5826 = xor i64 %5821, %5823
  %5827 = xor i64 %5821, %5825
  %5828 = add nuw nsw i64 %5826, %5827
  %5829 = icmp eq i64 %5828, 2
  %5830 = zext i1 %5829 to i8
  store i8 %5830, i8* %38, align 1
  %5831 = add i64 %5803, 8
  %5832 = load i32, i32* %ESI.i1822, align 4
  %5833 = add i64 %5762, 32
  store i64 %5833, i64* %3, align 8
  %5834 = inttoptr i64 %5831 to i32*
  store i32 %5832, i32* %5834, align 4
  %5835 = load i64, i64* %RBP.i, align 8
  %5836 = add i64 %5835, -2072
  %5837 = load i64, i64* %3, align 8
  %5838 = add i64 %5837, 6
  store i64 %5838, i64* %3, align 8
  %5839 = inttoptr i64 %5836 to i32*
  %5840 = load i32, i32* %5839, align 4
  %5841 = zext i32 %5840 to i64
  store i64 %5841, i64* %RSI.i1859, align 8
  %5842 = add i64 %5835, -2068
  %5843 = add i64 %5837, 12
  store i64 %5843, i64* %3, align 8
  %5844 = inttoptr i64 %5842 to i32*
  %5845 = load i32, i32* %5844, align 4
  %5846 = add i32 %5845, %5840
  %5847 = zext i32 %5846 to i64
  store i64 %5847, i64* %RSI.i1859, align 8
  %5848 = icmp ult i32 %5846, %5840
  %5849 = icmp ult i32 %5846, %5845
  %5850 = or i1 %5848, %5849
  %5851 = zext i1 %5850 to i8
  store i8 %5851, i8* %14, align 1
  %5852 = and i32 %5846, 255
  %5853 = tail call i32 @llvm.ctpop.i32(i32 %5852)
  %5854 = trunc i32 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = xor i8 %5855, 1
  store i8 %5856, i8* %21, align 1
  %5857 = xor i32 %5845, %5840
  %5858 = xor i32 %5857, %5846
  %5859 = lshr i32 %5858, 4
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  store i8 %5861, i8* %26, align 1
  %5862 = icmp eq i32 %5846, 0
  %5863 = zext i1 %5862 to i8
  store i8 %5863, i8* %29, align 1
  %5864 = lshr i32 %5846, 31
  %5865 = trunc i32 %5864 to i8
  store i8 %5865, i8* %32, align 1
  %5866 = lshr i32 %5840, 31
  %5867 = lshr i32 %5845, 31
  %5868 = xor i32 %5864, %5866
  %5869 = xor i32 %5864, %5867
  %5870 = add nuw nsw i32 %5868, %5869
  %5871 = icmp eq i32 %5870, 2
  %5872 = zext i1 %5871 to i8
  store i8 %5872, i8* %38, align 1
  %5873 = add i64 %5835, -2148
  %5874 = add i64 %5837, 19
  store i64 %5874, i64* %3, align 8
  %5875 = inttoptr i64 %5873 to i32*
  %5876 = load i32, i32* %5875, align 4
  %5877 = sext i32 %5876 to i64
  %5878 = shl nsw i64 %5877, 4
  store i64 %5878, i64* %RCX.i1818, align 8
  %5879 = load i64, i64* %RAX.i1400, align 8
  %5880 = add i64 %5878, %5879
  store i64 %5880, i64* %RDX.i1820, align 8
  %5881 = icmp ult i64 %5880, %5879
  %5882 = icmp ult i64 %5880, %5878
  %5883 = or i1 %5881, %5882
  %5884 = zext i1 %5883 to i8
  store i8 %5884, i8* %14, align 1
  %5885 = trunc i64 %5880 to i32
  %5886 = and i32 %5885, 255
  %5887 = tail call i32 @llvm.ctpop.i32(i32 %5886)
  %5888 = trunc i32 %5887 to i8
  %5889 = and i8 %5888, 1
  %5890 = xor i8 %5889, 1
  store i8 %5890, i8* %21, align 1
  %5891 = xor i64 %5878, %5879
  %5892 = xor i64 %5891, %5880
  %5893 = lshr i64 %5892, 4
  %5894 = trunc i64 %5893 to i8
  %5895 = and i8 %5894, 1
  store i8 %5895, i8* %26, align 1
  %5896 = icmp eq i64 %5880, 0
  %5897 = zext i1 %5896 to i8
  store i8 %5897, i8* %29, align 1
  %5898 = lshr i64 %5880, 63
  %5899 = trunc i64 %5898 to i8
  store i8 %5899, i8* %32, align 1
  %5900 = lshr i64 %5879, 63
  %5901 = lshr i64 %5877, 59
  %5902 = and i64 %5901, 1
  %5903 = xor i64 %5898, %5900
  %5904 = xor i64 %5898, %5902
  %5905 = add nuw nsw i64 %5903, %5904
  %5906 = icmp eq i64 %5905, 2
  %5907 = zext i1 %5906 to i8
  store i8 %5907, i8* %38, align 1
  %5908 = add i64 %5880, 4
  %5909 = load i32, i32* %ESI.i1822, align 4
  %5910 = add i64 %5837, 32
  store i64 %5910, i64* %3, align 8
  %5911 = inttoptr i64 %5908 to i32*
  store i32 %5909, i32* %5911, align 4
  %5912 = load i64, i64* %RBP.i, align 8
  %5913 = add i64 %5912, -2068
  %5914 = load i64, i64* %3, align 8
  %5915 = add i64 %5914, 6
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5913 to i32*
  %5917 = load i32, i32* %5916, align 4
  %5918 = zext i32 %5917 to i64
  store i64 %5918, i64* %RSI.i1859, align 8
  %5919 = add i64 %5912, -2072
  %5920 = add i64 %5914, 12
  store i64 %5920, i64* %3, align 8
  %5921 = inttoptr i64 %5919 to i32*
  %5922 = load i32, i32* %5921, align 4
  %5923 = sub i32 %5917, %5922
  %5924 = zext i32 %5923 to i64
  store i64 %5924, i64* %RSI.i1859, align 8
  %5925 = icmp ult i32 %5917, %5922
  %5926 = zext i1 %5925 to i8
  store i8 %5926, i8* %14, align 1
  %5927 = and i32 %5923, 255
  %5928 = tail call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  store i8 %5931, i8* %21, align 1
  %5932 = xor i32 %5922, %5917
  %5933 = xor i32 %5932, %5923
  %5934 = lshr i32 %5933, 4
  %5935 = trunc i32 %5934 to i8
  %5936 = and i8 %5935, 1
  store i8 %5936, i8* %26, align 1
  %5937 = icmp eq i32 %5923, 0
  %5938 = zext i1 %5937 to i8
  store i8 %5938, i8* %29, align 1
  %5939 = lshr i32 %5923, 31
  %5940 = trunc i32 %5939 to i8
  store i8 %5940, i8* %32, align 1
  %5941 = lshr i32 %5917, 31
  %5942 = lshr i32 %5922, 31
  %5943 = xor i32 %5942, %5941
  %5944 = xor i32 %5939, %5941
  %5945 = add nuw nsw i32 %5944, %5943
  %5946 = icmp eq i32 %5945, 2
  %5947 = zext i1 %5946 to i8
  store i8 %5947, i8* %38, align 1
  %5948 = add i64 %5912, -2148
  %5949 = add i64 %5914, 19
  store i64 %5949, i64* %3, align 8
  %5950 = inttoptr i64 %5948 to i32*
  %5951 = load i32, i32* %5950, align 4
  %5952 = sext i32 %5951 to i64
  %5953 = shl nsw i64 %5952, 4
  store i64 %5953, i64* %RCX.i1818, align 8
  %5954 = load i64, i64* %RAX.i1400, align 8
  %5955 = add i64 %5953, %5954
  store i64 %5955, i64* %RAX.i1400, align 8
  %5956 = icmp ult i64 %5955, %5954
  %5957 = icmp ult i64 %5955, %5953
  %5958 = or i1 %5956, %5957
  %5959 = zext i1 %5958 to i8
  store i8 %5959, i8* %14, align 1
  %5960 = trunc i64 %5955 to i32
  %5961 = and i32 %5960, 255
  %5962 = tail call i32 @llvm.ctpop.i32(i32 %5961)
  %5963 = trunc i32 %5962 to i8
  %5964 = and i8 %5963, 1
  %5965 = xor i8 %5964, 1
  store i8 %5965, i8* %21, align 1
  %5966 = xor i64 %5953, %5954
  %5967 = xor i64 %5966, %5955
  %5968 = lshr i64 %5967, 4
  %5969 = trunc i64 %5968 to i8
  %5970 = and i8 %5969, 1
  store i8 %5970, i8* %26, align 1
  %5971 = icmp eq i64 %5955, 0
  %5972 = zext i1 %5971 to i8
  store i8 %5972, i8* %29, align 1
  %5973 = lshr i64 %5955, 63
  %5974 = trunc i64 %5973 to i8
  store i8 %5974, i8* %32, align 1
  %5975 = lshr i64 %5954, 63
  %5976 = lshr i64 %5952, 59
  %5977 = and i64 %5976, 1
  %5978 = xor i64 %5973, %5975
  %5979 = xor i64 %5973, %5977
  %5980 = add nuw nsw i64 %5978, %5979
  %5981 = icmp eq i64 %5980, 2
  %5982 = zext i1 %5981 to i8
  store i8 %5982, i8* %38, align 1
  %5983 = add i64 %5955, 12
  %5984 = add i64 %5914, 29
  store i64 %5984, i64* %3, align 8
  %5985 = inttoptr i64 %5983 to i32*
  store i32 %5923, i32* %5985, align 4
  %5986 = load i64, i64* %RBP.i, align 8
  %5987 = add i64 %5986, -2152
  %5988 = load i64, i64* %3, align 8
  %5989 = add i64 %5988, 10
  store i64 %5989, i64* %3, align 8
  %5990 = inttoptr i64 %5987 to i32*
  store i32 0, i32* %5990, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_449cf3

block_.L_449cf3:                                  ; preds = %block_449d00, %block_449bb0
  %5991 = phi i64 [ %.pre165, %block_449bb0 ], [ %6138, %block_449d00 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.27, %block_449bb0 ], [ %6070, %block_449d00 ]
  %5992 = load i64, i64* %RBP.i, align 8
  %5993 = add i64 %5992, -2152
  %5994 = add i64 %5991, 7
  store i64 %5994, i64* %3, align 8
  %5995 = inttoptr i64 %5993 to i32*
  %5996 = load i32, i32* %5995, align 4
  %5997 = add i32 %5996, -4
  %5998 = icmp ult i32 %5996, 4
  %5999 = zext i1 %5998 to i8
  store i8 %5999, i8* %14, align 1
  %6000 = and i32 %5997, 255
  %6001 = tail call i32 @llvm.ctpop.i32(i32 %6000)
  %6002 = trunc i32 %6001 to i8
  %6003 = and i8 %6002, 1
  %6004 = xor i8 %6003, 1
  store i8 %6004, i8* %21, align 1
  %6005 = xor i32 %5997, %5996
  %6006 = lshr i32 %6005, 4
  %6007 = trunc i32 %6006 to i8
  %6008 = and i8 %6007, 1
  store i8 %6008, i8* %26, align 1
  %6009 = icmp eq i32 %5997, 0
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %29, align 1
  %6011 = lshr i32 %5997, 31
  %6012 = trunc i32 %6011 to i8
  store i8 %6012, i8* %32, align 1
  %6013 = lshr i32 %5996, 31
  %6014 = xor i32 %6011, %6013
  %6015 = add nuw nsw i32 %6014, %6013
  %6016 = icmp eq i32 %6015, 2
  %6017 = zext i1 %6016 to i8
  store i8 %6017, i8* %38, align 1
  %6018 = icmp ne i8 %6012, 0
  %6019 = xor i1 %6018, %6016
  %.v = select i1 %6019, i64 13, i64 75
  %6020 = add i64 %5991, %.v
  store i64 %6020, i64* %3, align 8
  br i1 %6019, label %block_449d00, label %block_.L_449d3e

block_449d00:                                     ; preds = %block_.L_449cf3
  %6021 = add i64 %5992, -2144
  store i64 %6021, i64* %RAX.i1400, align 8
  %6022 = add i64 %5992, -2148
  %6023 = add i64 %6020, 14
  store i64 %6023, i64* %3, align 8
  %6024 = inttoptr i64 %6022 to i32*
  %6025 = load i32, i32* %6024, align 4
  %6026 = sext i32 %6025 to i64
  %6027 = shl nsw i64 %6026, 4
  store i64 %6027, i64* %RCX.i1818, align 8
  %6028 = add i64 %6027, %6021
  store i64 %6028, i64* %RAX.i1400, align 8
  %6029 = icmp ult i64 %6028, %6021
  %6030 = icmp ult i64 %6028, %6027
  %6031 = or i1 %6029, %6030
  %6032 = zext i1 %6031 to i8
  store i8 %6032, i8* %14, align 1
  %6033 = trunc i64 %6028 to i32
  %6034 = and i32 %6033, 255
  %6035 = tail call i32 @llvm.ctpop.i32(i32 %6034)
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  %6038 = xor i8 %6037, 1
  store i8 %6038, i8* %21, align 1
  %6039 = xor i64 %6027, %6021
  %6040 = xor i64 %6039, %6028
  %6041 = lshr i64 %6040, 4
  %6042 = trunc i64 %6041 to i8
  %6043 = and i8 %6042, 1
  store i8 %6043, i8* %26, align 1
  %6044 = icmp eq i64 %6028, 0
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %29, align 1
  %6046 = lshr i64 %6028, 63
  %6047 = trunc i64 %6046 to i8
  store i8 %6047, i8* %32, align 1
  %6048 = lshr i64 %6021, 63
  %6049 = lshr i64 %6026, 59
  %6050 = and i64 %6049, 1
  %6051 = xor i64 %6046, %6048
  %6052 = xor i64 %6046, %6050
  %6053 = add nuw nsw i64 %6051, %6052
  %6054 = icmp eq i64 %6053, 2
  %6055 = zext i1 %6054 to i8
  store i8 %6055, i8* %38, align 1
  %6056 = add i64 %6020, 28
  store i64 %6056, i64* %3, align 8
  %6057 = load i32, i32* %5995, align 4
  %6058 = sext i32 %6057 to i64
  store i64 %6058, i64* %RCX.i1818, align 8
  %6059 = shl nsw i64 %6058, 2
  %6060 = add i64 %6059, %6028
  %6061 = add i64 %6020, 31
  store i64 %6061, i64* %3, align 8
  %6062 = inttoptr i64 %6060 to i32*
  %6063 = load i32, i32* %6062, align 4
  %6064 = zext i32 %6063 to i64
  store i64 %6064, i64* %RDI.i490, align 8
  %6065 = add i64 %6020, -298240
  %6066 = add i64 %6020, 36
  %6067 = load i64, i64* %6, align 8
  %6068 = add i64 %6067, -8
  %6069 = inttoptr i64 %6068 to i64*
  store i64 %6066, i64* %6069, align 8
  store i64 %6068, i64* %6, align 8
  store i64 %6065, i64* %3, align 8
  %6070 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.28)
  %6071 = load i64, i64* %RAX.i1400, align 8
  %6072 = load i64, i64* %RBP.i, align 8
  %6073 = add i64 %6072, -12
  %6074 = load i64, i64* %3, align 8
  %6075 = add i64 %6074, 3
  store i64 %6075, i64* %3, align 8
  %6076 = trunc i64 %6071 to i32
  %6077 = inttoptr i64 %6073 to i32*
  %6078 = load i32, i32* %6077, align 4
  %6079 = add i32 %6078, %6076
  %6080 = zext i32 %6079 to i64
  store i64 %6080, i64* %RAX.i1400, align 8
  %6081 = icmp ult i32 %6079, %6076
  %6082 = icmp ult i32 %6079, %6078
  %6083 = or i1 %6081, %6082
  %6084 = zext i1 %6083 to i8
  store i8 %6084, i8* %14, align 1
  %6085 = and i32 %6079, 255
  %6086 = tail call i32 @llvm.ctpop.i32(i32 %6085)
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  %6089 = xor i8 %6088, 1
  store i8 %6089, i8* %21, align 1
  %6090 = xor i32 %6078, %6076
  %6091 = xor i32 %6090, %6079
  %6092 = lshr i32 %6091, 4
  %6093 = trunc i32 %6092 to i8
  %6094 = and i8 %6093, 1
  store i8 %6094, i8* %26, align 1
  %6095 = icmp eq i32 %6079, 0
  %6096 = zext i1 %6095 to i8
  store i8 %6096, i8* %29, align 1
  %6097 = lshr i32 %6079, 31
  %6098 = trunc i32 %6097 to i8
  store i8 %6098, i8* %32, align 1
  %6099 = lshr i32 %6076, 31
  %6100 = lshr i32 %6078, 31
  %6101 = xor i32 %6097, %6099
  %6102 = xor i32 %6097, %6100
  %6103 = add nuw nsw i32 %6101, %6102
  %6104 = icmp eq i32 %6103, 2
  %6105 = zext i1 %6104 to i8
  store i8 %6105, i8* %38, align 1
  %6106 = add i64 %6074, 6
  store i64 %6106, i64* %3, align 8
  store i32 %6079, i32* %6077, align 4
  %6107 = load i64, i64* %RBP.i, align 8
  %6108 = add i64 %6107, -2152
  %6109 = load i64, i64* %3, align 8
  %6110 = add i64 %6109, 6
  store i64 %6110, i64* %3, align 8
  %6111 = inttoptr i64 %6108 to i32*
  %6112 = load i32, i32* %6111, align 4
  %6113 = add i32 %6112, 1
  %6114 = zext i32 %6113 to i64
  store i64 %6114, i64* %RAX.i1400, align 8
  %6115 = icmp eq i32 %6112, -1
  %6116 = icmp eq i32 %6113, 0
  %6117 = or i1 %6115, %6116
  %6118 = zext i1 %6117 to i8
  store i8 %6118, i8* %14, align 1
  %6119 = and i32 %6113, 255
  %6120 = tail call i32 @llvm.ctpop.i32(i32 %6119)
  %6121 = trunc i32 %6120 to i8
  %6122 = and i8 %6121, 1
  %6123 = xor i8 %6122, 1
  store i8 %6123, i8* %21, align 1
  %6124 = xor i32 %6113, %6112
  %6125 = lshr i32 %6124, 4
  %6126 = trunc i32 %6125 to i8
  %6127 = and i8 %6126, 1
  store i8 %6127, i8* %26, align 1
  %6128 = zext i1 %6116 to i8
  store i8 %6128, i8* %29, align 1
  %6129 = lshr i32 %6113, 31
  %6130 = trunc i32 %6129 to i8
  store i8 %6130, i8* %32, align 1
  %6131 = lshr i32 %6112, 31
  %6132 = xor i32 %6129, %6131
  %6133 = add nuw nsw i32 %6132, %6129
  %6134 = icmp eq i32 %6133, 2
  %6135 = zext i1 %6134 to i8
  store i8 %6135, i8* %38, align 1
  %6136 = add i64 %6109, 15
  store i64 %6136, i64* %3, align 8
  store i32 %6113, i32* %6111, align 4
  %6137 = load i64, i64* %3, align 8
  %6138 = add i64 %6137, -70
  store i64 %6138, i64* %3, align 8
  br label %block_.L_449cf3

block_.L_449d3e:                                  ; preds = %block_.L_449cf3
  %6139 = add i64 %5992, -2148
  %6140 = add i64 %6020, 11
  store i64 %6140, i64* %3, align 8
  %6141 = inttoptr i64 %6139 to i32*
  %6142 = load i32, i32* %6141, align 4
  %6143 = add i32 %6142, 1
  %6144 = zext i32 %6143 to i64
  store i64 %6144, i64* %RAX.i1400, align 8
  %6145 = icmp eq i32 %6142, -1
  %6146 = icmp eq i32 %6143, 0
  %6147 = or i1 %6145, %6146
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %14, align 1
  %6149 = and i32 %6143, 255
  %6150 = tail call i32 @llvm.ctpop.i32(i32 %6149)
  %6151 = trunc i32 %6150 to i8
  %6152 = and i8 %6151, 1
  %6153 = xor i8 %6152, 1
  store i8 %6153, i8* %21, align 1
  %6154 = xor i32 %6143, %6142
  %6155 = lshr i32 %6154, 4
  %6156 = trunc i32 %6155 to i8
  %6157 = and i8 %6156, 1
  store i8 %6157, i8* %26, align 1
  %6158 = zext i1 %6146 to i8
  store i8 %6158, i8* %29, align 1
  %6159 = lshr i32 %6143, 31
  %6160 = trunc i32 %6159 to i8
  store i8 %6160, i8* %32, align 1
  %6161 = lshr i32 %6142, 31
  %6162 = xor i32 %6159, %6161
  %6163 = add nuw nsw i32 %6162, %6159
  %6164 = icmp eq i32 %6163, 2
  %6165 = zext i1 %6164 to i8
  store i8 %6165, i8* %38, align 1
  %6166 = add i64 %6020, 20
  store i64 %6166, i64* %3, align 8
  store i32 %6143, i32* %6141, align 4
  %6167 = load i64, i64* %3, align 8
  %6168 = add i64 %6167, -431
  store i64 %6168, i64* %3, align 8
  br label %block_.L_449ba3

block_.L_449d57:                                  ; preds = %block_.L_449ba3
  %6169 = add i64 %5231, -12
  %6170 = add i64 %5259, 3
  store i64 %6170, i64* %3, align 8
  %6171 = inttoptr i64 %6169 to i32*
  %6172 = load i32, i32* %6171, align 4
  %6173 = zext i32 %6172 to i64
  store i64 %6173, i64* %RAX.i1400, align 8
  %6174 = add i64 %5231, -16
  %6175 = add i64 %5259, 6
  store i64 %6175, i64* %3, align 8
  %6176 = inttoptr i64 %6174 to i32*
  %6177 = load i32, i32* %6176, align 4
  %6178 = sub i32 %6172, %6177
  %6179 = icmp ult i32 %6172, %6177
  %6180 = zext i1 %6179 to i8
  store i8 %6180, i8* %14, align 1
  %6181 = and i32 %6178, 255
  %6182 = tail call i32 @llvm.ctpop.i32(i32 %6181)
  %6183 = trunc i32 %6182 to i8
  %6184 = and i8 %6183, 1
  %6185 = xor i8 %6184, 1
  store i8 %6185, i8* %21, align 1
  %6186 = xor i32 %6177, %6172
  %6187 = xor i32 %6186, %6178
  %6188 = lshr i32 %6187, 4
  %6189 = trunc i32 %6188 to i8
  %6190 = and i8 %6189, 1
  store i8 %6190, i8* %26, align 1
  %6191 = icmp eq i32 %6178, 0
  %6192 = zext i1 %6191 to i8
  store i8 %6192, i8* %29, align 1
  %6193 = lshr i32 %6178, 31
  %6194 = trunc i32 %6193 to i8
  store i8 %6194, i8* %32, align 1
  %6195 = lshr i32 %6172, 31
  %6196 = lshr i32 %6177, 31
  %6197 = xor i32 %6196, %6195
  %6198 = xor i32 %6193, %6195
  %6199 = add nuw nsw i32 %6198, %6197
  %6200 = icmp eq i32 %6199, 2
  %6201 = zext i1 %6200 to i8
  store i8 %6201, i8* %38, align 1
  %6202 = icmp ne i8 %6194, 0
  %6203 = xor i1 %6202, %6200
  %.v220 = select i1 %6203, i64 12, i64 30
  %6204 = add i64 %5259, %.v220
  store i64 %6204, i64* %3, align 8
  br i1 %6203, label %block_449d63, label %block_.L_449d75

block_449d63:                                     ; preds = %block_.L_449d57
  %6205 = add i64 %6204, 3
  store i64 %6205, i64* %3, align 8
  %6206 = load i32, i32* %6171, align 4
  %6207 = zext i32 %6206 to i64
  store i64 %6207, i64* %RAX.i1400, align 8
  %6208 = add i64 %6204, 6
  store i64 %6208, i64* %3, align 8
  store i32 %6206, i32* %6176, align 4
  %6209 = load i64, i64* %RBP.i, align 8
  %6210 = add i64 %6209, -2156
  %6211 = load i64, i64* %3, align 8
  %6212 = add i64 %6211, 6
  store i64 %6212, i64* %3, align 8
  %6213 = inttoptr i64 %6210 to i32*
  %6214 = load i32, i32* %6213, align 4
  %6215 = zext i32 %6214 to i64
  store i64 %6215, i64* %RAX.i1400, align 8
  %6216 = add i64 %6209, -8
  %6217 = add i64 %6211, 10
  store i64 %6217, i64* %3, align 8
  %6218 = inttoptr i64 %6216 to i64*
  %6219 = load i64, i64* %6218, align 8
  store i64 %6219, i64* %RCX.i1818, align 8
  %6220 = add i64 %6211, 12
  store i64 %6220, i64* %3, align 8
  %6221 = inttoptr i64 %6219 to i32*
  store i32 %6214, i32* %6221, align 4
  %.pre163 = load i64, i64* %3, align 8
  %.pre164.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_449d75

block_.L_449d75:                                  ; preds = %block_.L_449d57, %block_449d63
  %.pre164.pre = phi i64 [ %5231, %block_.L_449d57 ], [ %.pre164.pre.pre, %block_449d63 ]
  %6222 = phi i64 [ %6204, %block_.L_449d57 ], [ %.pre163, %block_449d63 ]
  %6223 = add i64 %6222, 5
  store i64 %6223, i64* %3, align 8
  br label %block_.L_449d7a

block_.L_449d7a:                                  ; preds = %block_.L_449d75, %block_.L_449241
  %.pre164 = phi i64 [ %566, %block_.L_449241 ], [ %.pre164.pre, %block_.L_449d75 ]
  %storemerge = phi i64 [ %866, %block_.L_449241 ], [ %6223, %block_.L_449d75 ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.6, %block_.L_449241 ], [ %MEMORY.27, %block_.L_449d75 ]
  %6224 = add i64 %storemerge, 5
  br label %block_.L_449d7f

block_.L_449d7f:                                  ; preds = %block_.L_449d7a, %block_4491cf, %block_.L_4491a8
  %6225 = phi i64 [ %.pre164, %block_.L_449d7a ], [ %566, %block_4491cf ], [ %566, %block_.L_4491a8 ]
  %.sink = phi i64 [ %6224, %block_.L_449d7a ], [ %729, %block_4491cf ], [ %689, %block_.L_4491a8 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.30, %block_.L_449d7a ], [ %MEMORY.6, %block_4491cf ], [ %MEMORY.6, %block_.L_4491a8 ]
  %6226 = add i64 %6225, -2156
  %6227 = add i64 %.sink, 6
  store i64 %6227, i64* %3, align 8
  %6228 = inttoptr i64 %6226 to i32*
  %6229 = load i32, i32* %6228, align 4
  %6230 = add i32 %6229, 1
  %6231 = zext i32 %6230 to i64
  store i64 %6231, i64* %RAX.i1400, align 8
  %6232 = icmp eq i32 %6229, -1
  %6233 = icmp eq i32 %6230, 0
  %6234 = or i1 %6232, %6233
  %6235 = zext i1 %6234 to i8
  store i8 %6235, i8* %14, align 1
  %6236 = and i32 %6230, 255
  %6237 = tail call i32 @llvm.ctpop.i32(i32 %6236)
  %6238 = trunc i32 %6237 to i8
  %6239 = and i8 %6238, 1
  %6240 = xor i8 %6239, 1
  store i8 %6240, i8* %21, align 1
  %6241 = xor i32 %6230, %6229
  %6242 = lshr i32 %6241, 4
  %6243 = trunc i32 %6242 to i8
  %6244 = and i8 %6243, 1
  store i8 %6244, i8* %26, align 1
  %6245 = zext i1 %6233 to i8
  store i8 %6245, i8* %29, align 1
  %6246 = lshr i32 %6230, 31
  %6247 = trunc i32 %6246 to i8
  store i8 %6247, i8* %32, align 1
  %6248 = lshr i32 %6229, 31
  %6249 = xor i32 %6246, %6248
  %6250 = add nuw nsw i32 %6249, %6246
  %6251 = icmp eq i32 %6250, 2
  %6252 = zext i1 %6251 to i8
  store i8 %6252, i8* %38, align 1
  %6253 = add i64 %.sink, 15
  store i64 %6253, i64* %3, align 8
  store i32 %6230, i32* %6228, align 4
  %6254 = load i64, i64* %3, align 8
  %6255 = add i64 %6254, -3145
  store i64 %6255, i64* %3, align 8
  br label %block_.L_449145

block_.L_449d93:                                  ; preds = %block_.L_449145
  store i64 2, i64* %RAX.i1400, align 8
  %6256 = add i64 %566, -16
  %6257 = add i64 %594, 8
  store i64 %6257, i64* %3, align 8
  %6258 = inttoptr i64 %6256 to i32*
  %6259 = load i32, i32* %6258, align 4
  %6260 = zext i32 %6259 to i64
  store i64 %6260, i64* %RCX.i1818, align 8
  %6261 = add i64 %566, -2652
  %6262 = add i64 %594, 14
  store i64 %6262, i64* %3, align 8
  %6263 = inttoptr i64 %6261 to i32*
  store i32 2, i32* %6263, align 4
  %6264 = load i32, i32* %ECX.i487, align 4
  %6265 = zext i32 %6264 to i64
  %6266 = load i64, i64* %3, align 8
  store i64 %6265, i64* %RAX.i1400, align 8
  %6267 = sext i32 %6264 to i64
  %6268 = lshr i64 %6267, 32
  store i64 %6268, i64* %RDX.i1848, align 8
  %6269 = load i64, i64* %RBP.i, align 8
  %6270 = add i64 %6269, -2652
  %6271 = add i64 %6266, 9
  store i64 %6271, i64* %3, align 8
  %6272 = inttoptr i64 %6270 to i32*
  %6273 = load i32, i32* %6272, align 4
  %6274 = zext i32 %6273 to i64
  store i64 %6274, i64* %RCX.i1818, align 8
  %6275 = add i64 %6266, 11
  store i64 %6275, i64* %3, align 8
  %6276 = sext i32 %6273 to i64
  %6277 = shl nuw i64 %6268, 32
  %6278 = or i64 %6277, %6265
  %6279 = sdiv i64 %6278, %6276
  %6280 = shl i64 %6279, 32
  %6281 = ashr exact i64 %6280, 32
  %6282 = icmp eq i64 %6279, %6281
  br i1 %6282, label %6285, label %6283

; <label>:6283:                                   ; preds = %block_.L_449d93
  %6284 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6275, %struct.Memory* %MEMORY.6)
  %.pre155 = load i64, i64* %RBP.i, align 8
  %.pre156 = load i32, i32* %EAX.i1420, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:6285:                                   ; preds = %block_.L_449d93
  %6286 = srem i64 %6278, %6276
  %6287 = and i64 %6279, 4294967295
  store i64 %6287, i64* %RAX.i1400, align 8
  %6288 = and i64 %6286, 4294967295
  store i64 %6288, i64* %RDX.i1820, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %6289 = trunc i64 %6279 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %6285, %6283
  %6290 = phi i64 [ %.pre157, %6283 ], [ %6275, %6285 ]
  %6291 = phi i32 [ %.pre156, %6283 ], [ %6289, %6285 ]
  %6292 = phi i64 [ %.pre155, %6283 ], [ %6269, %6285 ]
  %6293 = phi %struct.Memory* [ %6284, %6283 ], [ %MEMORY.6, %6285 ]
  %6294 = add i64 %6292, -16
  %6295 = add i64 %6290, 3
  store i64 %6295, i64* %3, align 8
  %6296 = inttoptr i64 %6294 to i32*
  store i32 %6291, i32* %6296, align 4
  %6297 = load i64, i64* %RBP.i, align 8
  %6298 = add i64 %6297, -16
  %6299 = load i64, i64* %3, align 8
  %6300 = add i64 %6299, 3
  store i64 %6300, i64* %3, align 8
  %6301 = inttoptr i64 %6298 to i32*
  %6302 = load i32, i32* %6301, align 4
  %6303 = zext i32 %6302 to i64
  store i64 %6303, i64* %RAX.i1400, align 8
  %6304 = load i64, i64* %6, align 8
  %6305 = add i64 %6304, 2656
  store i64 %6305, i64* %6, align 8
  %6306 = icmp ugt i64 %6304, -2657
  %6307 = zext i1 %6306 to i8
  store i8 %6307, i8* %14, align 1
  %6308 = trunc i64 %6305 to i32
  %6309 = and i32 %6308, 255
  %6310 = tail call i32 @llvm.ctpop.i32(i32 %6309)
  %6311 = trunc i32 %6310 to i8
  %6312 = and i8 %6311, 1
  %6313 = xor i8 %6312, 1
  store i8 %6313, i8* %21, align 1
  %6314 = xor i64 %6305, %6304
  %6315 = lshr i64 %6314, 4
  %6316 = trunc i64 %6315 to i8
  %6317 = and i8 %6316, 1
  store i8 %6317, i8* %26, align 1
  %6318 = icmp eq i64 %6305, 0
  %6319 = zext i1 %6318 to i8
  store i8 %6319, i8* %29, align 1
  %6320 = lshr i64 %6305, 63
  %6321 = trunc i64 %6320 to i8
  store i8 %6321, i8* %32, align 1
  %6322 = lshr i64 %6304, 63
  %6323 = xor i64 %6320, %6322
  %6324 = add nuw nsw i64 %6323, %6320
  %6325 = icmp eq i64 %6324, 2
  %6326 = zext i1 %6325 to i8
  store i8 %6326, i8* %38, align 1
  %6327 = add i64 %6299, 11
  store i64 %6327, i64* %3, align 8
  %6328 = add i64 %6304, 2664
  %6329 = inttoptr i64 %6305 to i64*
  %6330 = load i64, i64* %6329, align 8
  store i64 %6330, i64* %RBP.i, align 8
  store i64 %6328, i64* %6, align 8
  %6331 = add i64 %6299, 12
  store i64 %6331, i64* %3, align 8
  %6332 = inttoptr i64 %6328 to i64*
  %6333 = load i64, i64* %6332, align 8
  store i64 %6333, i64* %3, align 8
  %6334 = add i64 %6304, 2672
  store i64 %6334, i64* %6, align 8
  ret %struct.Memory* %6293
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
define %struct.Memory* @routine_subq__0xa60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -2656
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 2656
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
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__eax__MINUS0x878__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x11__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -17
  %10 = icmp ult i32 %8, 17
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
define %struct.Memory* @routine_jge_.L_448f91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RSI, align 8
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
define %struct.Memory* @routine_leaq_MINUS0xa30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2608
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x878__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2168
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
define %struct.Memory* @routine_movl_MINUS0x864__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
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
define %struct.Memory* @routine_movslq_MINUS0x864__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
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
define %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448f3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0xffffffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x890__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xd8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 216
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
define %struct.Memory* @routine_jne_.L_448fee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x890__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2192
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
define %struct.Memory* @routine_movl__eax__MINUS0xa34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2612
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2584
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
define %struct.Memory* @routine_movl__eax__MINUS0xa38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2616
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2608
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
define %struct.Memory* @routine_movl__eax__MINUS0xa3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2620
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44912a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x890__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2192
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
define %struct.Memory* @routine_je_.L_44901f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x88c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2188
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
define %struct.Memory* @routine_movl__edx__MINUS0xa40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2624
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44902c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xa40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2624
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2624
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
define %struct.Memory* @routine_movl__0x1__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xa38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4490e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4490ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11868__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
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
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl___rcx__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xa44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2628
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4490ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2628
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2628
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
define %struct.Memory* @routine_andl_MINUS0xa38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2616
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44904c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2608
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
define %struct.Memory* @routine_je_.L_449111(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xa2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2604
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
define %struct.Memory* @routine_movl__edx__MINUS0xa48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2632
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44911e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2632
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2632
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
define %struct.Memory* @routine_movl__0xf423f__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 999999, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x2____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 2, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_449d93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x95c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2396
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
define %struct.Memory* @routine_je_.L_449179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_4491d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x96c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2412
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
define %struct.Memory* @routine_je_.L_4491ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
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
define %struct.Memory* @routine_je_.L_4491a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jne_.L_4491ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449d7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x970__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2416
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
define %struct.Memory* @routine_je_.L_4491d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_4491d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4491d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4491f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2612
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
define %struct.Memory* @routine_je_.L_449241(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44920d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2616
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
define %struct.Memory* @routine_jne_.L_449246(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2620
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
define %struct.Memory* @routine_jmpq_.L_449d7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x868__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4493c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x10__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4493af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x810__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2064
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x410__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x726418___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xac__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 172
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x868__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -2152
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %5
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %5, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa8__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x864__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -2148
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %5
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %5, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rsi__rdi_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x12b8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4792
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -4793
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
define %struct.Memory* @routine_movslq_MINUS0x86c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 9
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 55
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 54
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rsi__rdi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__r9d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %6 = load i32, i32* %R8D, align 4
  %7 = load i32, i32* %R9D, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = sub i32 %6, %7
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %6, %7
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
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %10
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %10, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
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
define %struct.Memory* @routine_movl__r8d____rdi__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x864__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2148
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2636
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl_MINUS0xa4c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2636
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 56
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 55
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
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
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x868__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
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
define %struct.Memory* @routine_movl__r8d____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449267(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4493b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449250(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x874__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x874__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4499cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x870__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x870__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4499b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_44969e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x810__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2064
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2164
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
define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x300___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 768
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -769
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
define %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2160
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
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2164
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
define %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
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
  store i64 %14, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x820__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2080
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x100___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 256
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -257
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x200___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 512
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x81c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2076
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x818__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2072
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x814__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2068
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2080
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x81c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2076
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x81c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2076
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x818__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2072
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x814__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2068
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x814__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2068
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x818__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2072
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__0x300___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 768
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -769
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
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_44999a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 56
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 55
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x30__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 48
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 16
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x20__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 32
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
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
define %struct.Memory* @routine_subl_0x20__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 32
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x30__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 48
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x20__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 32
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x10__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 16
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x30__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 48
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_449981(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x868__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2152
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
define %struct.Memory* @routine_je_.L_449968(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44996d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449900(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449986(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4496a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44999f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x870__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2160
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
define %struct.Memory* @routine_movl__eax__MINUS0x870__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4493f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4499b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x874__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2164
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
define %struct.Memory* @routine_movl__eax__MINUS0x874__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4493d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_449a7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_449a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x860__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x810__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2064
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2648
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa58__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax____r8__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4499ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449a6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4499d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_449b99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x860__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2144
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x830__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2096
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x820__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2080
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x850__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2128
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x840__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2112
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x81c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2076
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x840__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2112
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x818__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2072
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x830__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2096
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x814__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2068
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x820__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2080
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
define %struct.Memory* @routine_addl_MINUS0x81c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2076
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
define %struct.Memory* @routine_movl__ecx__MINUS0x860__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2144
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x81c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2076
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x840__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2112
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x818__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2072
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
define %struct.Memory* @routine_addl_MINUS0x814__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2068
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
define %struct.Memory* @routine_movl__ecx__MINUS0x850__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2128
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x814__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2068
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
define %struct.Memory* @routine_subl_MINUS0x818__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2072
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x830__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2096
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449a88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_449d57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_subl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_subl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_449d3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449cf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449d43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449ba3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jge_.L_449d75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x86c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2156
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
define %struct.Memory* @routine_movl__eax__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449145(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0xa5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2652
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2652
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_addq__0xa60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2656
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -2657
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
